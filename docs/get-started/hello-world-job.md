# 'Hello World' Job

The TIPCC cluster farm consists of a large number of [compute nodes] that are ready to serve users' compute tasks (aka jobs).  Since all compute nodes are configured the same way, for instance, they have the exact same set software installed, it does not matter on which compute node your analysis runs.

At any time, there will be many users using the cluster where some users run a single analysis whereas other run many multi-day jobs in parallel.  In order for users not to step on each others toes and for users to get a fair share of the compute resources, the cluster uses a so called _job scheduler_ to orchestrate the compute requests.  This works by users submitting their compute jobs to the _job queue_.  Then the scheduler will locate a compute node with enough free resources to process the submitted job and launch the job on that compute node.  The scheduler is configured to distribute the compute load across all compute nodes for overall maximum performance and fare share among the users.


## Instructions

The most common way of running compute tasks on the TIPCC cluster, consists of:

1. creating a script,

2. submitting the script to the queue,

3. waiting for the script to start and finish, and

4. looking at the results, e.g. output data files and text logs.

The TIPCC cluster uses Torque/PBS as its scheduler. Torque/PBS provides command `qsub` to submit a script ("job") and command `qstat` to check the status of a job.


<div class="alert alert-info" role="alert" style="margin-top: 3ex">
Further information with detailed examples on job submissions can be found on page 'Submit Jobs' under the 'How To' menu.
</div>


### Example

In this example we will run compute jobs that outputs the name of the compute node that runs the job, waits ten seconds to emulate some processing, and the time it runs.  The name of the current machine is available in environment variable `HOSTNAME` (standard in Unix) and the current time is outputted when calling the command `date`.  To do this as a compute job, create a script `~/tests/hello_world` containing:

```
#!/bin/env bash

echo "Hello world, I'm running on node $HOSTNAME"
sleep 10
date
```

Although not critical for the job scheduler, it is always convenient to set the file permission on this script file to be executable, e.g.
```sh
[alice@{{ site.devel.name }} ~]$ cd tests/
[alice@{{ site.devel.name }} tests]$ chmod ugo+x hello_world
```
This, in combination with the so called "she-bang" (`#! ...`) on the first line, allows you call the script just any other software, e.g.
```sh
[alice@{{ site.devel.name }} tests]$ ./hello_world
Hello world, I'm running on node {{ site.devel.name }}.
Mon Aug 28 16:31:29 PDT 2017
```
Note how it takes ten seconds between the `Hello world` message and the time stamp.  We have now confirm that the shell script does what we expect it to do, and we are ready to submit it to the job queue of the scheduler.  To do this, do:
```sh
[alice@{{ site.devel.name }} tests]$ qsub -d $(pwd) -j oe hello_world
918738.cclc01.som.ucsf.edu
```
_Explanation of command-line options_: The `-d $(pwd)` option tells the scheduler to launch the `hello_world` script and output the job log files to the current working directory (here `~/tests/`).  The `-j oe` option specifies that error message should be merged with regular output (instead of outputting to separate log files). 

When submitting a job, the scheduler assigned the job an identifier ("job id").  In the above example, the job id is '918738'.  Immediately after the job has been submitted, we can see that it queued but not launched;
```sh
[alice@{{ site.devel.name }} tests]$ qstat -u $USER

cclc01.som.ucsf.edu: 
                                                                                  Req'd    Req'd       Elap
Job ID                  Username    Queue    Jobname          SessID  NDS   TSK   Memory   Time    S   Time
----------------------- ----------- -------- ---------------- ------ ----- ------ ------ --------- - ---------
918738.cclc01.som.ucsf  henrik      batch    hello_world          --     1      1    --   99:23:59 Q        --
```

Later, when the job has been launched on one of the compute nodes, and we will something like:
```sh
[alice@{{ site.devel.name }} tests]$ qstat -u $USER

cclc01.som.ucsf.edu: 
                                                                                  Req'd    Req'd       Elap
Job ID                  Username    Queue    Jobname          SessID  NDS   TSK   Memory   Time    S   Time
----------------------- ----------- -------- ---------------- ------ ----- ------ ------ --------- - ---------
918738.cclc01.som.ucsf  henrik      batch    hello_world      183041     1      1    --   99:23:59 R  00:00:05
```

Eventually, when the job script finished, `qstat` will no longer list it (if you have no other jobs on the queue, `qstat` will not output anything).

So where is the output of the job?  Since we used `-j oe` and `-d $(pwd)` we will find a job output file in the current directory named `hello_world.o918738` that contains:
```sh
[alice@{{ site.devel.name }} tests]$ cat hello_world.o918738
Hello world, I'm running on node n4
Tue Sep 19 12:27:37 PDT 2017
[alice@{{ site.devel.name }} tests]$ 
```

There is of course nothing preventing us from submitting the same script multiple times.  If done, each submission will result in the script be launched on a compute node and a unique log file `hello_world.o<job_id>` will be outputted.  Please try that and see what `qstat` outputs.   Now, you may want to pass different arguments to your script each time, e.g. each job should process a different input data file.  For information on how to do this, see the [Submit Jobs] page.


[compute nodes]: {{ '/about/specs.html' | relative_url }}
[Submit Jobs]: {{ '/howto/submit-jobs-to-the-scheduler.html' | relative_url }}
