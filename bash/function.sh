#!/bin/bash

function printhihi ()
{
	echo $1
	if [ "$i" -eq "8" ]; then
		echo "exit"
		exit
	fi
	echo "hihi"
}
echo $0


function myadd ()
{
	local res=1
	((res = $1 + $2))
	return_value=$res
	return $res
	### when the number is larger, it will be truncate
	#return 123123234
}

name="meow"

function test_passing ()
{
	### test pass argument and return value
	myadd 5 2
	result=$?
	echo "result $result"
	echo "return_value $return_value"
}

test_passing

for (( i=0; i<10; i++ ))
do
	printhihi $i
done
