#!/bin/bash

<<info 
this is while loop script
info

i=0
while [ $i -le 5 ]
do
	echo $i
	((i++))
done

echo "loop finished"
