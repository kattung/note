#!/usr/bin/awk -f
BEGIN {
	FS=","
}
{
	for(i=1;i<4;i++) {
		print $i
	}
}
