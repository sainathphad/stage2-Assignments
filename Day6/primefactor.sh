#! /bin/bash
read -p "Enter a number " n
for (( i=2; i<=$n; i++ ))
do
	while [ $(( n % i )) -eq 0 ]
	do
		echo "factors are" $i
		n=$(($n/$i))
	done
done
