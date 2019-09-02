#!/bin/bash


echo ${0}
echo "delete all after /, here that means: the filename"
echo ${0%/*}
echo $PWD

echo -e "\n"
echo "abab_cde_fghfgh"
abc="abab_cde_fghfgh"
echo "search from begin, and delete match"
echo "#\"ab\": " ${abc#"ab"}
echo "##\"ab\": " ${abc##"ab"}
echo "##\"*b\": " ${abc##"*b"}
echo "#*ab: " ${abc#*ab}
echo "##*ab: " ${abc##*ab}
echo "##*c: " ${abc##*c}
echo "search from end, and delete match"
echo "%g*: " ${abc%g*}
echo "%%g*: " ${abc%%g*}
echo "%fgh: " ${abc%fgh}
echo "%%fgh: " ${abc%%fgh}
echo "%fg: " ${abc%fg}
echo "%%fg: " ${abc%%fg}


echo -e "\n"
echo "replace"
echo "/ab/123: " ${abc/"ab"/"123"}
echo "replace all"
echo "//ab/123: " ${abc//"ab"/"123"}

aaa="555"
if [[ $aaa = *[[:digit:]]* ]]; then
	echo "aaa is a number"
	echo $aaa
else
	echo "aaa is not a number"
	echo $aaa
fi
