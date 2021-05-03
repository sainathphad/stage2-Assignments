#! /bin/bash
declare -a random_array
large=0
second_large=0
small=1000
second_samll=99
for (( count=0; count<10; count++ ))
do
	random_value=$(( RANDOM%(1000-100)+100 ))
	random_array[$count]=$random_value
done
echo ${random_array[@]}
for (( i=0; i<10; i++ ))
do
	if [ ${random_array[$i]} -gt $large ]
	then
		second_large=$large
		large=${random_array[$i]}
	elif [ ${random_array[$i]} -gt $second_large -a ${random_array[$i]} -lt $large ]
	then
		second_large=${random_array[$i]}
	fi
done
echo "largest " $large
echo "second largest " $second_large
for (( i=0; i<10; i++ ))
do
	if [ ${random_array[$i]} -lt $small ]
	then
		second_small=$small
		small=${random_array[$i]}
	elif [ ${random_array[$i]} -lt $second_small -a ${random_array[$i]} -gt $small ]
	then
		second_small=${random_array[$i]}
	fi
done
echo "smallest " $small
echo "second small " $second_small
