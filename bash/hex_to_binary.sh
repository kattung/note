#!/bin/bash


while read line
do
	echo $line
	hex_word=$(echo $line | hd)
	echo $hex_word
	for i in hex_word
	do
		binary=$(echo "obase=2; ibase=16; $i" | bc)
		echo $binary
	done

done < "text.txt"

