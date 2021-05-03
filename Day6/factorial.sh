#! /bin/bash
read -p "Enter a number for factorial " num
fact=1
for (( counter=1; counter<=$num; counter++ ))
do
	fact=$(( fact*counter ))
done
	echo $fact
