<div class="alert alert-info" role="alert">
This change alone should <em>not</em> affect any of your existing scripts or experience at the command line.
</div>

# Enable Software Modules (beta)

Since December 2016, there is support for [software environment modules].  However, as these modules are currently in beta, each user needs to enable them explicitly.

## Instructions

To enable the module system,

1. To the top of your `~/.bashrc` startup script, add the following _before_ the if-then statement that calls `/etc/bashrc`:
```sh
MODULE_FRAMEWORK=lmod
```
(use `lmod,quiet` to avoid seeing a "reminding" message at each login).

2. Log in and out, or just start a new shell.

3. To confirm, type `module --version` and make sure it says:
```sh
Modules based on Lua: Version 7.5  2017-06-16 14:32 +02:00
    by Robert McLay mclay@tacc.utexas.edu
```
	
That's it!  You now have access to a large number of software tools.  See `module avail` and [software environment modules].


## Example

Here is what `~/.bashrc` may look like after adding the above:
```sh
MODULE_FRAMEWORK=lmod
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
```

_Comment_: If you already use `source /home/shared/cbc/bashrc`, make sure it follows _after_ the if-statement that calls `/etc/bashrc`.


## Technical Details
This module framework is using the [Lmod Module Framework](https://lmod.readthedocs.io/en/latest/), which is a framework that supports both the classical modules written in the Tcl language as well as modules written in the Lua language.


[software environment modules]: {{ '/software/modules.html' | relative_url }}
