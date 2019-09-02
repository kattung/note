#!/bin/bash

### add lines to text.txt at the end ###
#sed -i '$a new line\nanother line' text.txt
### add lines to text.txt at the begining ###
sed -i '1i begin \nfirst line' text.txt

### replace abc with def
#sed -i 's/abc/def/g' text.txt

### replace line 1-8 with words "No 1-8 lines" in text.txt
#sed -i '1,8c No 1-8 lines' text.txt

### replace the fifth line with newword
#newword="000000000"
#sed -i "5c $newword" text.txt

### remove first line in file
#sed -i 1d tmp.txt

### remove last line in file
#sed -i '$d' tmp.txt

### delete the line with matching words
# sed -i '/abc/d' tmp.txt
