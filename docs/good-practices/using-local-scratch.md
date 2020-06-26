# Using Local /scratch (TMPDIR) on Compute Nodes

All nodes (compute and development) have their own locally storage mounted as `/scratch`.  The `/scratch` storage is fast - faster than system-wide storage such as home folders and lab storage - which make it ideal for holding intermediate data files.  This will also lower the load on the system-wide storage and the local network.  Using local `/scratch` is a win-win for everyone.

## Instructions

Here is how to use `/scratch`:

* **Use environment variable TMPDIR** - on compute nodes, it points to an already created job-specific folder under local `/scratch`.

* **Write intermediate files to folder `$TMPDIR`**.  Bonus: most software already acknowledges `TMPDIR` for their internal temporary files.

* When done, make sure to copy TMPDIR files to be kept to your persistent storage, e.g. to `$HOME`.

* The **job-specific TMPDIR folder (e.g. `/scratch/1816525.cclc01.som.ucsf.edu`) will be deleted automatically when the job terminates**.

* **Specify how much local scratch (TMPDIR) storage your job will need _per core_**.  Local storage is limited to [0.84 - 10.7 TiB depending on node]({{ '/about/cluster-hardware.html' | relative_url }}).  If your single-core job will use up to 400 GiB of disk space, you can specify this resource as `-l gres=scratch:400` (in units of GiB) when submitting the job.  A node with 2,000 GiB of scratch space will at most have five `-l gres=scratch:400` single-core jobs running at the same time.  **The `gres=scratch` specification is per core**, that is, if you request four cores, and your job requires 400 GiB in total, then you should request `-l gres=scratch:100` because 4 * 100 GiB = 400 GiB.


<div class="alert alert-warning" role="alert">
If you write to local <code>/scratch</code> outside of the job-specific <code>$TMPDIR</code> folder, then please make sure to remove such files and folders when you are done with them.  It is only the <code>$TMPDIR</code> folder that is automatically deleted.  Any remaining files will be automatically removed after 45 days.  The 45 days limit is in effect as of 2020-06-09. This limit will be decreased further in the near future.
</div>


## Example

Here is a script called `ex-scratch.sh` that make use of of the job-specific `$TMPDIR` folder (on local scratch).  At the beginning, the script copies input files over from the NFS-mounted `/data` drive to this local scratch folder.  After processing of the input files is complete, the output files are moved from the local scratch to `/data`.

```sh
#!/bin/env bash
#PBS -j oe

## 0. In case TMPDIR is not set (e.g. running on another system)
if [[ -z "$TMPDIR" ]]; then
  if [[ -d /scratch ]]; then TMPDIR=/scratch/$USER; else TMPDIR=/tmp/$USER; fi
  mkdir -p "$TMPDIR"
  export TMPDIR
fi

## 1. Copy input files from global disk to local scratch
cp /data/$USER/sample.fq $TMPDIR/
cp /data/$USER/reference.fa $TMPDIR/

## 2. Process input files
cd $TMPDIR
/path/to/my_pipeline --cores=$PBS_NUM_PPN reference.fa sample.fq > output.bam

## 3. Move output files back to global disk
mv output.bam /data/$USER/
```

Assume that the total amount of local scratch you need for your input files and your output files and whatever intermediate files `my_pipeline` needs is 300 GiB, and assume that the process requires up to 4 GiB of RAM to complete.  Moreover, let's say you wish to run in parallel using two cores.  Then you should submit this job script as:
```sh
$ qsub -l nodes=1:ppn=2 -l gres=scratch:150 -l vmem=4gb ex-scratch.sh
```
This will identify a node with 2 cores, 2 * 150 GiB = 300 GiB of scratch, and 4 GiB of RAM available.


## Technical details

To clarify, the `gres:scratch` resource is just a bunch of tokens available per node that are handed out to jobs and recollected when those jobs are done.  The number of tokens available for a given node depends on how big it's `/scratch/` drive is.  What is _not_ automatically accounted for is the actual _free_ disk space available on `/scratch/`.  In other words, it is possible for a node's `/scratch` to become full although there are `gres:scratch` tokens available for that node.  When `/scratch` becomes full, any attempts to write to the drive will generate
```sh
write error: No space left on device
```
Because of this, it is _very important_ that we all clean up after ourselves, if we make use of any `/scratch/` space outside of the job-specific `$TMPDIR` folder.
