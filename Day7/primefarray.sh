#! /bin/bash
read -p "Enter a number " n
declare -a array
for (( i=2; i<=$n; i++ ))
do
	while [ $(( n % i )) -eq 0 ]
	do
		echo "factors are" $i
		array[((count++))]=$i
		n=$(($n/$i))
	done
done
echo "Elements in array" ${array[@]}
