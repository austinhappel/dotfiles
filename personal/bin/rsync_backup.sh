#!/bin/sh
# NOTE: Copied/modified from http://nicolasgallagher.com/mac-osx-bootable-backup-drive-with-rsync/
# NOTE: If backup is not bootable and throws this error: 
#   `dyld: shared cached file was build against a different libSystem.dylib, ignoring cache`
# Run `sudo update_dyld_shared_cache -force` on the drive to fix it.
# NOTE: rsync_backup_excludes.txt is from https://gist.github.com/tvwerkhoven/4541989 and was merged with original
# excludes found in top url.

PROG=$0
RSYNC="/usr/bin/rsync"
SRC=$1
DST=$2
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXCLUDE="$CWD/rsync_backup_excludes.txt"

USAGE_MSG="Usage: rsync_backup.sh <src> <destination>"

if [ -z "$SRC" ]; then
    echo $USAGE_MSG
    exit;
fi

if [ -z "$DST" ]; then
    echo $USAGE_MSG
    exit;
fi

# -v increase verbosity
# -a turns on archive mode (recursive copy + retain attributes)
# -x don't cross device boundaries (ignore mounted volumes)
# -S handles spare files efficiently
# -H preserves hard-links
# --extended-attributes preserves ACLs and Resource Forks
# --delete deletes any files that have been deleted locally
# --delete-excluded deletes any files that are part of the list of excluded files
# --exclude-from reference a list of files to exclude

if [ ! -r "$SRC" ]; then
  /usr/bin/logger -t $PROG "Source $SRC not readable - Cannot start the sync process"
  exit;
fi

if [ ! -w "$DST" ]; then
  /usr/bin/logger -t $PROG "Destination $DST not writeable - Cannot start the sync process"
  exit;
fi

/usr/bin/logger -t $PROG "Start rsync"

sudo $RSYNC -vax -S -H --extended-attributes --delete --exclude-from=$EXCLUDE "$SRC" "$DST"

/usr/bin/logger -t $PROG "End rsync"

# make the backup bootable
sudo bless -folder "$DST"/System/Library/CoreServices

exit 0