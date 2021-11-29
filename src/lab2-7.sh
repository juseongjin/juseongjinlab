#!/bin/sh
if [ ! -d $1 ]
then
        mkdir $1
fi

eval cd $1
i=0
for fname in file0.txt file1.txt file2.txt file3.txt file4.txt
do
	touch $fname
done

for dname in file0 file1 file2 file3 file4
do
        mkdir $dname
done

for dname in file0 file1 file2 file3 file4
do 
	case $dname in
	       	file0)
			eval ln -s file0.txt $dname;;
		file1)
			eval ln -s file1.txt $dname;;
		file2)
                        eval ln -s file2.txt $dname;;
		file3)  
                        eval ln -s file3.txt $dname;;
		file4)  
                        eval ln -s file4.txt $dname;;
	esac

done
exit 0
