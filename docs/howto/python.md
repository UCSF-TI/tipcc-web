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
Python 2.7.9
[alice@{{ site.interactive.name }} ~]$ $ virtualenv my_project
New python executable in my_project/bin/python2.7
Also creating executable in my_project/bin/python
Installing setuptools, pip...done.
[alice@{{ site.interactive.name }} ~]$ cd my_project
[alice@{{ site.interactive.name }} my_project]$ . bin/activate   ## IMPORTANT! Note period in front
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip install --upgrade pip
You are using pip version 6.1.1, however version 18.0 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
Collecting pip
  Using cached https://files.pythonhosted.org/packages/5f/25/e52d3f31441505a5f3af41213346e5b6c221c9e086a166f3703d2ddaf940/pip-18.0-py2.py3-none-any.whl
Installing collected packages: pip
  Found existing installation: pip 6.1.1
    Uninstalling pip-6.1.1:
      Successfully uninstalled pip-6.1.1
Successfully installed pip-18.0
(my_project) [alice@{{ site.interactive.name }} my_project]$ 
```

Note how `(my_project) ` is prepended to the shell prompt when the virtual environment `my_project` is _activate_.  To see what Python packages are currently installed, use:
```sh
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip list
Package    Version
---------- -------
pip        18.0   
setuptools 15.0
(my_project) [alice@{{ site.interactive.name }} my_project]$ 
```


### Installing packages (once per package)

Now you can install Python packages using `pip`.  For instance,

```sh
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip install HTSeq
Collecting HTSseq
  Could not find a version that satisfies the requirement HTSseq (from versions: )
No matching distribution found for HTSseq
(my_project)** ON INTERACTIVE NODE ** [alice@{{ site.interactive.name }} my_project]$ pip install HTSeq
Collecting HTSeq
  Using cached https://files.pythonhosted.org/packages/3b/be/a47447b1128a8b24b10780dd6804dc964eb79bebb8f468012264c6c766e1/HTSeq-0.10.0-cp27-cp27m-manylinux1_x86_64.whl
Requirement already satisfied: pysam>=0.9.0 in /home/alice/.local/lib/python2.7/site-packages (from HTSeq) (0.11.2)
Collecting numpy (from HTSeq)
  Using cached https://files.pythonhosted.org/packages/ab/2a/4d49a45f21880213f0cd8fb80bcdc695115d331e27894577a35de1bd2e18/numpy-1.15.1-cp27-cp27m-manylinux1_x86_64.whl
pandas 0.20.2 requires python-dateutil, which is not installed.
pandas 0.20.2 requires pytz>=2011k, which is not installed.
cnvkit 0.8.5 requires biopython>=1.62, which is not installed.
cnvkit 0.8.5 requires matplotlib>=1.3.1, which is not installed.
cnvkit 0.8.5 requires scipy>=0.15.0, which is not installed.
Installing collected packages: numpy, HTSeq
Successfully installed HTSeq-0.10.0 numpy-1.15.1
```

To see which packages are installed in the virtual environment (the "project folder") and what their versions are, do:
```sh
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip list
Package        Version   
-------------- ----------
$ 
HTSeq      0.10.0 
numpy      1.15.1 
pip        18.0   
pysam      0.15.0 
setuptools 15.0   
```



### Using a virtual environment

Whenever you open a new terminal, make sure to _activate_ the virtual environment ("project folder"), otherwise it will not find the packages you've installed.  Pay attention to the shell prompt:

```sh
[alice@{{ site.interactive.name }} ~]$ module load CBC python
[alice@{{ site.interactive.name }} ~]$ cd my_project
[alice@{{ site.interactive.name }} my_project]$ pip show HTSeq   ## gives empty output
[alice@{{ site.interactive.name }} my_project]$ . bin/activate   ## ACTIVATE!
(my_project) [alice@{{ site.interactive.name }} my_project]$ python --version
Python 2.7.9
(my_project) [alice@{{ site.interactive.name }} my_project]$ pip show HTSeq
Name: HTSeq
Version: 0.10.0
Summary: A framework to process and analyze data from high-throughput sequencing (HTS) assays
Home-page: https://github.com/simon-anders/htseq
Author: Simon Anders
Author-email: sanders@fs.tum.de
License: GPL3
Location: /home/alice/tests/htseq/my_project/lib/python2.7/site-packages
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
