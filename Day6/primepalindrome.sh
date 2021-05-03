#! /bin/bash
function prime(){

        flag=0
        num=$1
        for (( counter=2; counter<num; counter++ ))
        do
                if [ $(( num%counter )) -eq 0 ]
                then
                        flag=1
                        break
                fi
        done
        if [ $flag -eq 0 ]
        then
                echo $num
        else
                echo "The number is not prime"
        fi
}

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

read -p "Enter a number" number
result1=$( prime $number )
echo $result1
result2=$( palindrome $number )
echo $result2
if [ $result1 -eq $result2 ]
then
	echo " number is both prime and palindrome"
else
	echo " number is neither prime nor palindrome"
fi
