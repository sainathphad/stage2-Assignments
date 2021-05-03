#! /bin/bash
declare -a random_array
for (( count=0; count<10; count++ ))
do
	random_value=$(( RANDOM%(1000-100)+100 ))
	random_array[$count]=$random_value
done
echo ${random_array[@]}
for (( i=0; i<10; i++ ))
do
	for (( j=0; j<10-1-i; j++ ))
	do
		if [ ${random_array[j]} -gt ${random_array[$((j+1))]} ]
		then
			temp=${random_array[j]}
			random_array[j]=${random_array[$((j+1))]}
			random_array[j+1]=$temp
		fi
	done
done
echo "sorted array " ${random_array[@]}
echo "second largest value " ${random_array[8]}
echo "second smallest value " ${random_array[1]}
