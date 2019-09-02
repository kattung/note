#!/bin/bash

file=$1

while read line
do
	echo $line
	echo ""
done < $file

