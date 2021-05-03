#! /bin/bash
read -p "Enter no 1 " num1
read -p "Enter no 2 " num2
read -p "Enter no 3 " num3
oprn1=$(( $num1 + ( $num2 * $num3 ) ))
oprn2=$(( ( $num1 % $num2 ) + $num3 ))
oprn3=$(( $num3 + ( $num1 / $num2 ) ))
oprn4=$(( ( $num1 * $num2 ) + $num3 ))
echo "operation 1" $oprn1
echo "operation 2" $oprn2
echo "operation 3" $oprn3
echo "operation 4" $oprn4
if [ $oprn1 -gt $oprn2 -a $oprn1 -gt $oprn3 -a $oprn1 -gt $oprn4 ]
then
	echo $oprn1 "is maximum"
elif [ $oprn2 -gt $oprn3 -a $oprn2 -gt $oprn4 ]
then
	echo $oprn2 "is maximum"
elif [ $oprn3 -gt $oprn4 ]
then
	echo $oprn3 "is maximum"
else
	echo $oprn4 "is maximum"
fi

if [ $oprn1 -lt $oprn2 -a $oprn1 -lt $oprn3 -a $oprn1 -lt $oprn4 ]
then
        echo $oprn1 "is minimum"
elif [ $oprn2 -lt $oprn3 -a $oprn2 -lt $oprn4 ]
then
        echo $oprn2 "is minimum"
elif [ $oprn3 -lt $oprn4 ]
then
        echo $oprn3 "is minimum"
else
        echo $oprn4 "is minimum"
fi
