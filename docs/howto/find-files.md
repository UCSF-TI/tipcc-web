# Find Files

## Find files of a certain type

To find all FASTQ or SAM files under $TMPDIR, do
```sh
find $TMPDIR -type f -name '*.fastq' -o -name '*.fq' -o -name '*.sam'
```

## Find large files of a certain type

To find all FASTQ and SAM files larger than 50,000 KiB (~= 48.8 MiB) in your home directory, do
```sh
find ~ -type f -name '*.fastq' -o -name '*.fq' -o -name '*.sam' -size +50000k
```

To do the same but also list their file sizes and time stamps:
```sh
find ~ -type f -name '*.fastq' -o -name '*.fq' -o -name '*.sam' -size +50000k -exec ls -lh {} \; | awk '{ print $9 ": " $5 " (" $6 " " $7 " " $8 ")" }'
```

## Find files older than 14 days

To find all files under `/scratch/alice/` that have not been modified during the last 14 days, do:
```sh
find /scratch/alice/ -type f -mtime +14
```

To remove these files interactively (`rm -i`), do:
```sh
find /scratch/alice/ -type f -mtime +14 -exec rm -i {} \;
```
