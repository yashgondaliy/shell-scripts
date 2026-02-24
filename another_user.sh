#!/bin/bash

echo "=============create a user through argument==============="


sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "successfull user create $1"


echo "================ delete a user ==================="

sudo userdel -r "$1" 2>/dev/null

if [ $(cat /etc/passwd | grep $1 | wc | awk '{print $1}') == 0 ];
then
	echo "user does not exists"
else
	echo "user exists"
fi
