# Work with Python

## Installing Python packages and virtual environments

The standard way to install Python packages is by using the [_pip_](https://packaging.python.org/tutorials/installing-packages/) package management system.  You often see installation instructions such as:
```sh
$ pip install HTSeq
```

If you attempt to run this as is on the cluster, you get lots of errors complaining about lack of write permissions etc., which is because it tries to install the package in the system-wide Python package folder.  There are a few ways for non-privileged users to install Python packages and the most convenient way is to use make use of so called _virtual environment_ in Python.  Below is an example on how to install the [HTSeq](https://htseq.readthedocs.io/en/master/install.html#installation-on-linux) package.


<div class="alert alert-info" role="alert">
Virtual environment are not used just for cluster environments - many Python users and developers choose to use virtual environment on their local computers whenever they work in Python.
</div>



### Setup (once per project)

Start by creating a folder specific to the project you are currently working on.  Each project folder will have its own unique set of installed packages.  Do the following once:
```sh
[alice@{{ site.interactive.name }} ~]$ $ module load CBC python
[alice@{{ site.interactive.name }} ~]$ $ python --version
Python 2.7.15
[alice@{{ site.interactive.name }} ~]$ $ virtualenv my_project
New python executable in my_project/bin/python2.7
Also creating executable in my_project/bin/python
Installing setuptools, pip, wheel...done.
[alice@{{ site.interactive.name }} ~]$ cd my_project
[alice@{{ site.interactive.name }} my_project]$ . bin/activate   ## IMPORTANT! Note period in front
(my_project) [alice@{{ site.interactive.name }} my_project]$ which python
/home/alice/my_project/bin/python
(my_project) [alice@{{ site.interactive.name }} my_project]$ python --version
Python 2.7.15
(my_project) [alice@{{ site.interactive.name }} my_project]$ 
```

Note how `(my_project) ` is prepended to the shell prompt when the virtual environment `my_project` is _activate_.  To see what Python packages are currently installed, use:
```sh
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip list
Package    Version
---------- -------
pip        18.1   
setuptools 40.4.3 
wheel      0.32.1
(my_project) [alice@{{ site.interactive.name }} my_project]$ 
```


### Installing packages (once per package)

Now you can install Python packages using `pip`.  For instance,

```sh
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip install HTSeq
Collecting HTSeq
  Downloading https://files.pythonhosted.org/packages/5f/e5/5248ec7d3253b3701d663c7a1b10c7d75c7d24193a5ce95f2a86337adaf8/HTSeq-0.11.0-cp27-cp27m-manylinux1_x86_64.whl (1.0MB)
    100% |████████████████████████████████| 1.0MB 3.4MB/s 
Collecting pysam>=0.9.0 (from HTSeq)
  Downloading https://files.pythonhosted.org/packages/b4/d8/9afa92bd4b48ebd6896d22bb7cdaeb5aa4577983333df5e99160c62fb6ff/pysam-0.15.1-cp27-cp27m-manylinux1_x86_64.whl (9.0MB)
    100% |████████████████████████████████| 9.0MB 258kB/s 
Collecting numpy (from HTSeq)
  Downloading https://files.pythonhosted.org/packages/c8/c6/e8e430828247adf0fc34e5499cfe17c66022c8afb778542808d009eb1457/numpy-1.15.2-cp27-cp27m-manylinux1_x86_64.whl (13.8MB)
    100% |████████████████████████████████| 13.8MB 663kB/s 
Installing collected packages: pysam, numpy, HTSeq
Successfully installed HTSeq-0.11.0 numpy-1.15.2 pysam-0.15.1
```

To see which packages are installed in the virtual environment (the "project folder") and what their versions are, do:
```sh
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip list
Package        Version   
-------------- ----------
HTSeq      0.11.0 
numpy      1.15.2 
pip        18.1   
pysam      0.15.1 
setuptools 40.4.3 
wheel      0.32.1
```



### Using a virtual environment

Whenever you open a new terminal, make sure to _activate_ the virtual environment ("project folder"), otherwise it will not find the packages you've installed.  Pay attention to the shell prompt:

```sh
[alice@{{ site.interactive.name }} ~]$ module load CBC python
[alice@{{ site.interactive.name }} ~]$ cd my_project
[alice@{{ site.interactive.name }} my_project]$ pip show HTSeq   ## gives empty output
[alice@{{ site.interactive.name }} my_project]$ . bin/activate   ## ACTIVATE!
(my_project) [alice@{{ site.interactive.name }} my_project]$ python --version
Python 2.7.15
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip show HTSeq
Name: HTSeq
Version: 0.11.0
Summary: A framework to process and analyze data from high-throughput sequencing (HTS) assays
Home-page: https://github.com/simon-anders/htseq
Author: Simon Anders
Author-email: sanders@fs.tum.de
License: GPL3
Location: /home/cbctest2/tmp/my_project/lib/python2.7/site-packages
Requires: pysam, numpy
Required-by: 
[alice@{{ site.interactive.name }} my_project]$ 
```

When submitting jobs to the scheduler, make sure the job scripts load all required modules and activate the virtual environment.


To _deactivate_ a Python virtual environment, either open a fresh terminal (e.g. log out and back in), or use:
```sh
(my_project) [alice@{{ site.interactive.name }} ~]$ deactivate
[alice@{{ site.interactive.name }} ~]$ deactivate
```

Note how prefix `(my_project) ` was dropped from the shell prompt.
