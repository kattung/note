#!/bin/bash

echo "bash begin"

pwd=mypasswd

### method 1 ###
#cmd="ssh user@server"
#{
#	echo "#!/usr/bin/expect -f"
#	echo "spawn "${cmd}
#	echo "expect {"
#	echo "\"password:\" { send -- \"${pwd}\r\" } "
#	echo "}"
#	echo "expect eof"
#} | /usr/bin/expect



### method 2 ###
#expect -c "
#spawn ssh user@server
#expect \"*password* \"
#	 send -- \"mypasswd\r\" 
#
#expect eof
#"



### method 3 ###
folder=( cross_build \
	kernel \
	libc \
	tool \
	vim_info
	)
for dir in ${folder[@]};
do
	echo "=== $dir ==="
	expect -c "
	spawn sudo rsync -avzhH --delete $dir user@server:/home/user/
	expect \"*password* \"
	 send -- \"$pwd\r\" 

	expect eof
	"
done

echo "rsync end"

## press ctrl+C ###
expect -c "
spawn ssh user@server
expect \"*password* \"
	 send -- \03\"

expect eof
"

echo "bash end"
