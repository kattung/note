#!/bin/bash


### print, start from Nth line
#tail --line=+2 text.txt
tail -n +2 text.txt

### print, start from the end Nth line
#tail --line=2 text.txt
#tail -n 2 text.txt

### print the first Nth line
#head --line=2 text.txt
#head -n 2 text.txt

### print all, but the last Nth line
#head --line=-2 text.txt
#head -n -2 text.txt
