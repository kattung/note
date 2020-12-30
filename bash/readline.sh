#!/bin/bash

file=$1

while read line
do
	echo $line
	echo ""
done < $file

### to preserve leading/tailing whitespace
### need to unset the field separator variable
while IFS= read -r line
do
	echo $line
	echo ""
done < $file
