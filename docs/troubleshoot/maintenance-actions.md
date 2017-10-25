# Head Node Troubleshooting

## Inspect processes on master (head node)

The `tipcc master` command reports on (i) the five _non-user_ processes that consumes the most memory on the head node as well as (ii) any _user_ processes running on the head node (excluding basic ones such as `ls`, `more`, `cp` etc.)
 
```sh
$ tipcc master
alice [Alice Aliceson (alice@honeypot.ucsf.edu)]:
PIDs (on the head node): 87013
USER        PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
alice    87013  0.0  0.0 100944   104 pts/77   S+   Sep27   0:00 tail -f pilot.minfi.R.out

bob [Bob Bobson (bob@honeypot.ucsf.edu)]:
PIDs (on the head node): 514934
USER        PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
bob      514934  0.0  0.3 789660 403548 pts/51  S+   Sep16   1:05 /opt/R/R-3.2.0/lib64/R/bin/exec/R
```
