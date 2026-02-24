#!/bin/bash

<<info 
this is used for move all file in one folder
info

src="$1"
dest="$2"

for item in "$src"/*; do
	if [ "$item" != "$dest" ]; then
		mv "$item" "$dest"
	fi
done

echo "All files moved from $src to $dest successfully!"
