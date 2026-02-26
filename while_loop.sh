#!/bin/bash

<<info 
this is while loop script
info

echo "this is fine"

i=0
while [ $i -le 5 ]
do
	echo $i
	((i++))
done

echo "loop finished"
