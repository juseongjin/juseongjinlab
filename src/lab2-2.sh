#!/bin/sh
case $2 in
	+)	
		nt=`expr $1 + $3`
		echo $nt;;
	-)	
		nt=`expr $1 - $3`
		echo $nt;;
	*)
		echo "+ 아니면 -만 입력했어야죠";;
esac
exit 0
