#!/bin/bash

#create a user script
<<help 
this is multi line comment
help

echo "===================== Create a New User ==================="

read -p "Enter a user name: " username
read -p "Enter a password: " password

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

echo "==============creation of user is completed ==============="
