#! /bin/bash
declare -a array_add
array_add=(3 0 5 6 10 13 -3)
size=${#array_add[@]}
for (( i=0; i<$size; i++ ))
do
	for (( j=$i+1; j<$size; j++ ))
	do
		for (( k=$j+1; k<$size; k++ ))
		do
			sum=$((array_add[i]+array_add[j]+array_add[k]))
			if [ $sum -eq 0 ]
			then
				echo "Elements having sum zero " ${array_add[i]} ${array_add[j]} ${array_add[k]}
			fi
		done
	done
done
