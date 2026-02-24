#!/bin/bash 

echo "============== delete a user ============"

sudo userdel -r "$1"

cat /etc/passwd | grep $1 | wc | awk '{print $1}'
