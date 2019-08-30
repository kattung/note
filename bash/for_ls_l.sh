#!/bin/bash

for folder in ./;
	do
	for dir in $( ls -l );
		do
		if [ -d "$dir" ]; then
			for a in $( ls -l );
			do
				if [ -d "$a" ]; then
					echo $a
				fi
			done
	fi
	done
done

