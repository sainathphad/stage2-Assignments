#! /bin/bash
read -p "Enter lower limit " lower
read -p "Enter upper limit " upper
for (( outer_count=$lower; outer_count<=$upper; outer_count++ ))
do
	flag=0
	for (( inner_count=2; inner_count<$outer_count; inner_count++ ))
	do
		if [ $(( outer_count%inner_count )) -eq 0 ]
		then
			flag=1
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo $outer_count " is prime"
	else
		echo $outer_count " is not prime"
	fi
done
