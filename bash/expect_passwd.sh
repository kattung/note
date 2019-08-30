#!/usr/bin/expect

set dir PWD
set target [lrange $argv 0 0]

spawn ssh user@server

expect "password: "
send "xxxxx\r"

interact
exit

# you can use $dir and $target

