# Using local /scratch/ space

All nodes have their own locally storage mounted as `/scratch/`.  The `/scratch/` storage is fast - faster than system-wide storage such as `/home/` and `/work/` - which make it ideal for holding intermediate data files.  This will also lower the load on the system-wide storage and the local network.

<div class="alert alert-warning" role="alert">
Please remove files from local <code>/scratch</code> space when you are done with them - see the below example for having your jobs do this automatically.  Any remaining files will be automatically removed after 14 days.
</div>


Here is how you should use `/scratch/`:

* **Write to `/scratch/$USER/`**.  This will minimize the risk for clashing with other users, which may happen if you use the same filename and write to `/scratch/`.

* **Write _intermediate_ data files to `/scratch/$USER/` whenever possible**.  Any job that writes _intermediate_ data to file and later read then back will run faster if using the local scratch storage on the node.

* **Don't leave files on `/scratch/` longer than necessary**.  For instance, have your jobs cleanup after themselves.

* **Files on `/scratch` older than 14 days will be removed automatically**.

* **Specify how much local storage your job will need _per core_**.  Local storage is limited to [0.84 - 10.7 TiB depending on node]({{ '/about/cluster-hardware.html' | relative_url }}).  If your single-core job will use up to 400 GiB of disk space, you can specify this resource as `-l gres=scratch:400` (in units of GiB) when submitting the job.  A node with 2,000 GiB of scratch space will at most have five `-l gres=scratch:400` single-core jobs running at the same time.  **The `gres=scratch` specification is per core**, that is, if you request four cores, and your job requires 400 GiB in total, then you should request `-l gres=scratch:100` because 4 * 100 GiB = 400 GiB.

* **All files on `/scratch/` are local to that node**.  Any files copied / written to a node's `/scratch/` space will only be accessible from that node and not from anywhere else.

## Example

Here is a script called `ex-scratch.sh` that illustrates how to set up a job-specific local scratch folder that will, using a so called signal trap(*), be automatically removed upon exit (regardless of error or not).  The script then copies input files over from the NFS-mounted `/data` drive to this local scratch folder.  After processing of the input files is complete, the output files are moved from the local scratch to `/data`.

```sh
#!/bin/env bash
#PBS -j oe

## 0. Create job-specific scratch folder that ...
SCRATCH_JOB=/scratch/$USER/job/$PBS_JOBID
mkdir -p $SCRATCH_JOB
##    ... is automatically removed upon exit
##    (regardless of success or failure)
trap "{ cd /scratch; chmod -R +w $SCRATCH_JOB/; rm -rf $SCRATCH_JOB/ ; }" EXIT

## 1. Copy input files from global disk to local scratch
cp /data/$USER/sample.fq $SCRATCH_JOB/
cp /data/$USER/reference.fa $SCRATCH_JOB/

## 2. Process input files
cd $SCRATCH_JOB
/path/to/my_pipeline --cores=$PBS_NUM_PPN reference.fa sample.fq > output.bam

## 3. Move output files back to global disk
mv output.bam /data/$USER/
```

Assume that the total amount of local scratch you need for your input files and your output files and whatever intermediate files `my_pipeline` needs is 300 GiB, and assume that the process requires up to 4 GiB of RAM to complete.  Moreover, let's say you wish to run in parallel using two cores.  Then you should submit this job script as:
```sh
$ qsub -l nodes=1:ppn=2 -l gres=scratch:150 -l vmem=4gb ex-scratch.sh
```
This will identify a node with 2 cores, 2 * 150 GiB = 300 GiB of scratch, and 4 GiB of RAM available.

<br>
(*) The `trap` command is a built-in function of the Bourne Again Shell (aka Bash).  If you use a non-Bash shell, please consult that shells documentation for similar features, e.g. in Zsh you can use `TRAPEXIT`.  Other shells might not have signal trap mechanisms - in such cases, make sure to remove the files using `rm` at the end of the script.


## Technical details

To clarify, the `gres:scratch` resource is just a bunch of tokens available per node that are handed out to jobs and recollected when those jobs are done.  The number of tokens available for a given node depends on how big it's `/scratch/` drive is.  What is _not_ automatically accounted for is the actual _free_ disk space available on `/scratch/`.  In other words, it is possible for a node's `/scratch` to become full although there are `gres:scratch` tokens available for that node.  When `/scratch` becomes full, any attempts to write to the drive will generate
```sh
write error: No space left on device
```
Because of this, it is _very important_ that we all have our jobs clean up `/scratch/` usage after themselves so the next user / job can safely run.
