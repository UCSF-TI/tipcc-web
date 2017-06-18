# HOW TO: Troubleshoot cluster performance

## Identify what processes runs

### All processes on the cluster
```sh
ps uax | bpstat -P
```

### All processes on a particular node
For example, node \#17:
```sh
ps uax | bpstat -P | grep -E "^17 "
```

### All processes on the head node
All processes on the head node (i.e. those without a node assignment in the first column):
```sh
ps uax | bpstat -P | grep -E "^  "
```
All processes on the head node by a certain user:
```sh
ps uax | bpstat -P | grep -E "^  " | grep cbctest
```
A bit cleaner:
```sh
user=cbctest
ps uax | bpstat -P | grep -E "^  " | grep -v "grep $user" | grep -v root | grep $user
```

All processes on the head node by all users:
```sh
users=$(cat /etc/passwd | grep -F "/home/" | grep -E "(@|inactive)" | cut -d':' -f1)
for user in $users; do echo $user:; ps uax | bpstat -P | grep -E "^  " | grep -v "grep $user" | grep -v root | grep $user; done
```

## Find large files of a certain type

All FASTQ and SAM files larger than 50 MiB in your home directory
```sh
$ find ~ -type f -name '*.fastq' -o -name '*.fq' -o -name '*.sam' -size +50000k -exec ls -lh {} \; | awk '{ print $9 ": " $5 " (" $6 " " $7 " " $8 ")" }'
./projects/aroma.seq/redundancyTests/archive/20130711/AB042_ATGTCA_L007_R1_001.sam: 949M (Mar 13 12:57)
[...]
```