#!/bin/bash 

<<info
this is example of function
info

username=$1
password=$2

function create_user(){
	sudo useradd -m "$username"
	echo -e "$password\n$password" | sudo passwd "$username"
	echo "successfully user create"
}

for i in {1..5};do
	create_user
done
