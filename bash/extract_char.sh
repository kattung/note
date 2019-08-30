#!/bin/bash

function print_usage ()
{
	echo "$0 pattern_file"
	exit
}

if [ -z $1 ]; then
	print_usage
fi

if [ $1 == "pattern1" ]; then
	pattern_list=tmp
elif [ $1 == "pattern2" ]; then
	pattern_list=tmp2
fi

while read line
do
	if [ ${line:0:1} == "#" ]; then
		continue
	fi
	echo $line
done < $pattern_list
