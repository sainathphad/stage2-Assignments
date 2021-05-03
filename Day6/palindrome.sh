#! /bin/bash
function palindrome(){
	num=$1
	remainder=0
	reverse=0
	temp=$1
	while [ $num -gt 0 ]
	do
		remainder=$(( $num%10 ))
		reverse=$(( ($reverse*10)+$remainder ))
		num=$(( $num/10 ))
	done
	if [ $temp -eq $reverse ]
	then
		echo $reverse
	else
		echo "number is not palindrome"
	fi

}
read -p "Enter number1 " num1
read -p "Enter number2 " num2
result1=$( palindrome $num1 )
result2=$( palindrome $num2 )
if [ $result1 -eq $result2 ]
then
	echo "two numbers are palindrome to each other"
else
	echo "not palindrome to each other"
fi
