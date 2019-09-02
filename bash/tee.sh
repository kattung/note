#!/bin/bash

###### run error.sh and see how standard message and error message is printed out ######

### output standard error to error.log
### but the standard out is on screen
#./error.sh 2> error.log
#
#### this is output standard out to stdout.log
#### and output standard error to error.log
#./error.sh > stdout.log 2> error.log
#
#
#### this is output standard out and standard error to the same file
#./error.sh 1> stdout.log 2>&1
#
#
#### output standard output to stdout.log and screen
#### standard error is printed on screen
#./error.sh | tee stdout.log

### output standard output and error to stdout.log and screen
#./error.sh 2>&1 | tee stdout.log
#./error.sh > tee stdout.log 2>&1

#./error.sh > >( tee stdout.log) 2> >(tee error.log >&2)

### ouput standard error to pipe ###
#gcc -v 2>&1 | less

### output standard output and error to file
./error.sh >& stdout.log
