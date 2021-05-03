#! /bin/bash
read -p "Enter the power " n
for (( counter=0; counter<=$n; counter++ ))
do
	pow=$(( 2**counter ))
	echo "2 to the power " $counter "is" $pow
done

