#!/bin/sh
num=$1
while [ $num -ge 1 ]
do
	echo hello world
	num=`expr $num - 1`
done
exit 0
