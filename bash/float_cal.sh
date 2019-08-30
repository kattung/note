#!/bin/bash

number1="30"
number2="100"
let inst=$number1*$number2


# to calculate float, use bc, but there's no leading zero
percent=`bc <<< "scale=2; $number1/$number2"`

# use awk can calculate float
percent=`echo $number1 $number2 | awk '{printf "%f", $2 / $1}'`

echo $number1, $number2
echo $inst
echo $percent

### flost comparison
a=1.2
b=2.3
ret=`echo "$a < $b" | bc`
# if condition true, ret will be 1, else be 0
if [ $ret == 1 ]; then
	echo "a $a < b $b"
else
	echo "a $a > b $b"
fi
