#! /bin/bash
Heads=0
Tails=0
while [ $Heads -lt 11 ] && [ $Tails -lt 11 ]
do
        if [ $(( RANDOM%2 )) -eq 0 ]
        then
                (( Heads++ ))
        else
                (( Tails++ ))
        fi
        result1=$Heads
	result2=$Tails
done
echo $result1 "Heads"
echo $result2 "Tails"
