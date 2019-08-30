#!/bin/bash

function print_usage()
{
	echo "Usage: $0 -i input -p \"program argument\""
	exit
}


while getopts ':hi:p:' option
do
	case "$option" in
		h)
			print_usage
			;;
		i)
			input=${OPTARG}
			;;
		p)
			program=${OPTARG}
			pro_check=`echo $program | awk -F" " '{print $1}'`
			;;
		?)
			print_usage
			;;
		:)
			echo "Option -$OPTARG requires an argument"
			exit 1
			;;
	esac
done

# check if get correct input
if [ -z $input ] || [ -z $pro_check ]; then
	print_usage
fi

echo "got option -i $input"
echo "got option -p $program"

./bash_inputpara.sh $program
