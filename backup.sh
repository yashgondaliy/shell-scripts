#!/bin/bash

<<info
this file is used to backup 
info

src=$1
dest=$2
timestamp=$(date '+%y-%m-%d-%H:%M:%S')

zip -r "$dest/backup-$timestamp.zip" $src

aws s3 sync $dest s3://aws-backups-y

echo "successfully backup completed & Stored in s3 success"


