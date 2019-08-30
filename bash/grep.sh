#!/bin/bash

### only grep n lines: parameter: -m
#ps aux | grep -m1 vim

### count grep result number
#ps aux | grep -c vim

pid=`ps aux | grep vim | awk -F" " '{print $2}'`

for i in $pid
do
	echo $i
	echo ""
done

exit
keyword=( \
		"internal compiler error" \
		"Segmentation fault" \
		"Exception stack" \
		"PC is at" \
		"Not tainted" \
		"corrupted" \
		"IRQs" \
		"panic"
	  )

end=${#keyword[@]}

for (( i=0; i<$end; i++ ))
do
	grep -nw "${keyword[$i]}" *.log
done


