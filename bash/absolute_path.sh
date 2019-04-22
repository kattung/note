#!/bin/bash

abspath=`realpath $0 --relative-to ../`
echo "relative path of this script to above directory: $abspath"
abspath=`readlink -e $0`
echo "absolute path of this script readlink: $abspath"
basename=`basename $0`
echo "basename $basename"
dirname=`dirname $0`
echo "dirname $dirname"
echo "dirname `dirname $abspath`"

pwd_path=`pwd`
echo "pwd: $pwd_path"
