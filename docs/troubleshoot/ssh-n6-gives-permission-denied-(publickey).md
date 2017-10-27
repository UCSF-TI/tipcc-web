## SSH gives "Permission denied (publickey)"
Do you get
```sh
$ ssh n6
Permission denied (publickey).
```
when you try to log into interactive node n6 from the master node?  In order to be able to log in that node, you need to have ssh public-private keys set up properly.  This should have been done for you already, but if for some reason it does not work, it is most likely because the file permissions on some security critical files of your are incorrect.  Here is how you can fix it.

## Troubleshooting and how to fix

### 1. Only you should have write permissions to your home `~/` folder

Make sure the _access permission_ on your home folder `~/` is something like this:
```sh
$ stat --format=%A ~/
drwxr-xr-x
```
The `stat` output has ten characters composed of four parts (left to right):

1.   `d`: tells us it is a directory (`d`)
2. `rwx`: specifies the permission for you the user (`u`)
3. `r-x`: specifies the permission for other users in the
   same group as you (`g`)
4. `r-x`: specifies the permission for all other users (`o`)

In turn, each of the three-character permission strings specifies, in order, read access (`r`), write access (`w`), and executable/entering access (`x`).  A dash (`-`) means lack of the corresponding permission.

_Comment:_ In the above example, this means that you (`u`) have full access to your home folder (makes sense), and that all other users (`g` and `o`) can enter (`x`) your home directory and list the files therein (`r`).


#### Do I have a problem?
If either "group" or "others" has write permission (`w`) to your home folder, then you will get the error 'Permission denied (publickey).' whenever you try to SSH into the cluster or an interactive node.  You can fix this by remove such write permission using:
```sh
$ chmod go-w ~/
```
The `chmod` option `go-w` should be read as "for (g)roup and (o)thers, remove(-) any (w)rite permissions".


### 2. Only you should have access to `~/.ssh/` folder

Make sure that only you can access folder `~/.ssh/`:
```sh
$ stat --format=%A ~/.ssh
drwx------
```
_Comment:_ The `x` specifies that you can enter the folder, i.e. you can do `cd ~/.ssh/`.

#### Do I have a problem?
If you see anything but `---` for (g)roup and (o)thers, such access permission must be removed:
```sh
$ chmod go-rwx ~/.ssh
```


### 3. Only you should have access to `~/.ssh/authorized_keys`

Make sure that only you can access file `~/.ssh/authorized_keys` (regardless of access rights to folder `~/.ssh/):
```sh
$ stat --format=%A ~/.ssh/authorized_keys
-rw-------
```
_Comment:_ Since this is a file, the first position that is used to indicate directories (`d`) we have a `-`.  Furthermore, this file is not executable (`x`), so in that position we have a `-`.

#### Do I have a problem?
If you see anything but `---` for (g)roup and (o)thers, such access permission must be removed:
```sh
$ chmod go-rwx ~/.ssh/authorized_keys
```


## Testing
Try to log in to node n6 again, i.e. `ssh n6`.

If the above wasn't the problem or didn't help, then regenerate a new pair of ssh keys _and_ append them `~/.ssh/authorized_keys`.  This can be done as:
```sh
$ ssh-keygen
$ cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
```
Again, make sure the file permissions on this file is correct.  Then retry with `ssh n6`.

