#!/bin/bash

function print_usage()
{
	echo "Usage: $0 mem_type bin_file output_file"
	echo "support type: ddr sram"
	exit
}

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then
	print_usage
fi

mem_type=$1
input=$2
output=$3

if [ $mem_type != "ddr" ] && [ $mem_type != "sram" ]; then
	echo "input type error"
	print_usage
fi

tmp_xxd=tmp.xxd
tmp_xxd_awk=tmp.xxd.awk

if [ $mem_type == "ddr" ]; then
	xxd -g 1 -c 4 $input > $tmp_xxd
	awk '{print $5$4$3$2;}' $tmp_xxd > $tmp_xxd_awk
	sed 's/^[0-9 a-f]*/0x&/' $tmp_xxd_awk > $output
else
	xxd -g 1 -c 8 $input > $tmp_xxd
	awk '{ print $6$7$8$9$2$3$4$5;}' $tmp_xxd > $tmp_xxd_awk
    xxd -p -r $tmp_xxd_awk > $output
fi

rm $tmp_xxd $tmp_xxd_awk
