#!/bin/sh
hgt=`expr $2 \* $2`
hgt=$(echo "scale=2; $hgt / 10000" | bc)
bmi=$(echo "scale=2; $1 / $hgt" | bc)
bmi=$(echo "scale=2; $bmi * 100" | bc)
bmi=$(echo $(printf %.f $bmi))
x=2300
y=1850
if [ $bmi -ge $x ]
then	
	echo 과체중입니다.
elif [ $bmi -ge $y ]

then
	echo 정상체중입니다.
else
	echo 저체중입니다.
fi

