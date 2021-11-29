#!/bin/sh
if [ ! -d $1 ]
then
	mkdir $1
fi

eval cd $1
i=0

if [ ! -d $1 ]
then
        mkdir $1    
fi

read -a file
while [ $i -lt 5 ]
do	
	touch ${file[i]}
	echo ${file[i]}
	i=`expr $i + 1`
done

eval cd $1
j=0

while [ $j -lt 5 ]
do
        touch ${file[j]}
        j=`expr $j + 1`
done

eval tar cf ${file[5]} file0.txt file1.txt file2.txt file3.txt file4.txt
exit 0
