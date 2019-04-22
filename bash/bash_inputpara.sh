#/bin/bash
### use command: ./bash_inputpara.sh xxx xdb 2 ###

if [ -z "$1" ]; then #if first parameter is empty 
	echo empty
else
	echo "$1"
fi

exit

if [ $2 ]; then		#if second parameter is exist
	echo "$2"
fi

if [ $2 ] && [ "$2" -eq "1" ]; then
	echo "$2 equals 1"
fi

#echo $1 $2

if [ "$2" == "XDB" ] || [ "$2" == "xdb" ]; then
	echo "correct"
else
	echo "wrong"
fi

### larger >, and smaller < ###
if [ 4 -gt 7 ]; then
	echo "4 > 7"	
elif [ 4 -lt 7 ]; then
	echo "4 < 7"
fi



### pick up part of a word ###
line=#0x8000
addr=${line:1:10}					# work well
echo ${addr}
echo $line|awk -F"#" '{print $2}'	# this cannot be save as a variable



### switch case ###
option=$3

case $option in
	0|3	) echo "this is 0 or 3"
			echo "another line";;
	2|4	) echo "this is 2 or 4 -->" $option;;
	*	) echo "what are you thinking";;
esac


### practice pwd
path=$4		# $PWD
echo ${path}



### array practice ###
array=(abc def qqq)
echo "output array"
echo "${array[0]}"
echo "${array[1]}"
echo ${array[2]}
echo ${array[*]}
echo ${array[@]}
echo ${#array}


typ=abc
typ=${array[@]}
case $typ in
	"abc") echo "typ abc";;
	"def") echo "typ def";;
	"qqq") echo "typ qqq";;
esac


