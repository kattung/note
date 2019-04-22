#!/bin/bash

for (( i=0; i<10; i++))
do
	echo $i
done


echo $PWD
path=$PWD
echo $path
source_path=${0%/*}
echo $source_path


new_path=`pwd`
echo $new_path

final=$PWD/${0%/*}
echo $final

echo $0

bin_path=$1
echo $bin_path
#cat $bin_path/make.mk


### show all directories here ###
for dir in $( ls -al );
do
	if [ -d "$dir" ]; then
		if [ ! "$dir" == "." ]; then
			if [ ! "$dir" == ".." ]; then
				echo "$dir"
			fi
		fi
	fi
done

string=abcd_ddd_ff
echo $string
string=${string%%_*}
echo $string

mod=4
let mod=$mod%2
echo "mode = " $mod

print_function ()
{
	echo "will it appear"
}

print_function

### count match word
#grep "match_words" file | wc -l
