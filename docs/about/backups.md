<div class="alert alert-warning" role="alert">
Only user's home directories under <code>/home/</code> are backed up - <em>no other directories on the cluster file system are backed up!</em>
</div>

# File Backups (/home/ only)

All users' `/home/` directories are backed up regularly.  _Note that no other directories than `/home/` are backed up_.  The below two types of backups are performed.

## DIY-recovery backups
* **Weekly** backups to another disk (starts Fridays @ 11:00 PM and completes in ~5 hours)
* Backup history: **Only last backup**
* Recovery: Do it yourself by copying from `/backup/home/$USER/`
  - Modified files: Previous version of a modified file can be recovered from the backup until next backup runs
  - Deleted files: A deleted file can be recovered from the backup until next backup runs
* Technical details: `rsync -avzHAX --delete /home/$USER/` is used to backup. See `cat /backup/home/home_backup.log` for the log.

## Archival backups


* **Nightly** backups to tape (full every weekend and incremental nightly)
* Backup history: **~8 months**
* Recovery: Contact your [sysadm](@hgputnam)
  - Modified files: Previous versions of a modified file can be recovered from the archive for up to 8 months
  - Deleted files: A deleted file can be recovered from the archive for up to 8 months
  - Backups were re-instantiated on 2020-05-01 we cannot restore files from before then.
  - Remember - this is a *tape* backup system. Restores are manual and require attention.
  - Restores will be done within 5 business days of the restore request.
  - Please submit restore requests using the [Issue Tracker](https://github.com/UCSF-TI/TIPCC/issues)
