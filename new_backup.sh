#!/bin/bash

<<info 
this new backup script
info

src=$1
dest=$2
timestamp=$(date '+%y-%m-%d-%H:%M:%S')

zip -r "$dest/backup-$timestamp.zip" $src

echo "successfully backup completed for $src file yash"

