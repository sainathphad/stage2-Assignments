#! /bin/bash
declare -a array
int=1
for (( count=0; count<100; count++ ))
do
	value=$(($int%11))
	if [ $value -eq 0 ]
	then
		array[count]=$((int))
	fi
	((int++))
done
echo ${array[@]}


