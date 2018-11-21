# HOW TO: Compress files (as a job)
Instead of running `gzip` in the terminal, you can submit a job for doing it using `qgzip`.  For example, to submit a job that compresses all FASTQ files in a certain directory, do:
```sh
qgzip /path/to/*.fastq
```
or
```sh
cd /path/to/
qgzip *.fastq
```
This "queued" version of `gzip` takes the same options as `gzip`, so you can also do things such as:
```sh
## Recursively find all files and compress them with maximum efficiency
qgzip -r -9 /path/to/
```

Analogous to `qgzip` there is a queued version of `bzip2`, i.e. `qbzip2`.  


## Advanced
One can combine [`find`](find-files.html), `xargs`, and `qgzip` to search for certain files and compress them in chunks via the scheduler.  For example, to find all FASTQ files under the current directory (`.`) that are greater than 50,000 KiB, and compress them in chunks of 20 per job, we can use:

```sh
$ find . -type f -name '*.fastq' -o -name '*.fq' -size +50000k | xargs -n 20 qgzip
```


## Benchmarking
Compressing a 10 GiB FASTQ file on `/scratch/` using `gzip` took approximately 25 minutes and resulted in a 2.2 GiB FASTQ.gz file. 
