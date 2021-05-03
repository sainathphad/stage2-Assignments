#! /bin/bash
read -p "Enter a number" num
count=0
flag=0
for (( counter=2; counter<num; counter++ ))
do
	if [ $(( num%counter )) -eq 0 ]
	then
		flag=1
		break
	fi
done
if [ $flag -eq 0 ]
then
	echo "The number is prime"
else
	echo "The number is not prime"
fi
