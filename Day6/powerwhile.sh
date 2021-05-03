#! /bin/bash
read -p "Enter the power " n
counter=0
limit=256
power=0
while [ $counter -le $n -a $power -lt $limit ]
do
	power=$(( 2**counter ))
	echo "2 to the power " $counter "is" $power
	counter=$(( counter+1 ))
done
