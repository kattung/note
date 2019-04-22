#!/bin/bash

echo "bash begin"

#cmd="ssh user@server"
#{
#	echo "#!/usr/bin/expect -f"
#	echo "spawn "${cmd}
#	echo "expect {"
#	echo "\"passwor:\" { send -- \03\" } "
#	echo "}"
#	echo "expect eof"
#} | /usr/bin/expect

## press ctrl+C ###
expect -c "
spawn ssh user@server
expect \"*password* \"
	 send -- \03\"

expect eof
"

echo "bash end"
