#!/bin/bash

#awk -F':' '{print $1}' /etc/passwd

#ls -l /etc | awk '{print $1 "\t" $9}'


string="abc def:111 222\nefg hij:333"
echo "---------------------------------"
echo -e $string
echo "---------------------------------"

echo "--- Result of grep ---"
abc=`echo -e $string | grep a`
echo $abc

echo "--- Grep and awk using space to seperate, print first ---"
abc=`echo -e $string | grep a | awk -F" " '{ print $1 }'`
echo $abc

echo "--- Grep and awk using space to seperate, print 2nd to fourth ---"
abc=`echo -e $string | grep a | awk -F" " '{ print "2->"$2 "  3->" $3 "  4->" $4 }'`
echo $abc

echo "--- Grep and awk using space to seperate, print 5th ---"
abc=`echo -e $string | grep a | awk -F" " '{ print $5 }'`
echo $abc

echo "--- Grep and awk using : to seperate, print first ---"
abc=`echo -e $string | grep a | awk -F":" '{ print $1 }'`
echo $abc

string="abc def 111 222 efg hij 333"
echo "--- get the last character 333"
abc=`echo -e $string | awk -F" " '{ print $NF}'`
echo $abc
