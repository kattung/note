#!/bin/bash

filename="/home/user/found_ice.txt"
ip=`ifconfig | grep "inet" | head -n 1 | awk -F" " '{ print $2 }'`
date=`date`
mail_message="ice found, please check: \
				$ip:$filename "
email_addr="user1@email.com user2@email.com"
has_sent_mail=0
wait_second=600

function grep_error ()
{
	keyword=( \
			"internal compiler error" \
			"Segmentation fault" \
			"Exception stack" \
			"PC is at" \
			"Not tainted" \
			"corrupted" \
			"IRQs" \
			"panic"
		  )

	end=${#keyword[@]}

	logfile="*.log"
	for (( i=0; i<$end; i++ ))
	do
		grep -Hnw "${keyword[$i]}" $logfile
	done
}
grep_error
exit

function keep_watch ()
{
	grep_error > $filename

	string=`ls -l $filename`
	size=`echo -e $string | awk -F" " '{ print $5 }'`

	# send email
	if [ "$size" -ne "0" ]; then
		echo "error found, send email"
		has_sent_mail=1
		echo $mail_message | sendmail $email_addr
		echo "$date exit"
		exit
	else
		echo -n "."
	fi
}

while [ "$has_sent_mail" -eq "0" ]
do
	#watch -n 20 keep_watch
	keep_watch
	sleep $wait_second
done
