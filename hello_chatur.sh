#!/bin/bash

echo "this is chatur first shell file"

echo "create a new folder name devops" 

read -p "Enter the folder name you want to create: " name

mkdir -p "$name"

echo "successfully folder is created $name"

echo "hello this shell through created file" > demo.txt

touch 3_idiots.sh

