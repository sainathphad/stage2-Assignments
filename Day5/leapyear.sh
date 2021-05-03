#! /bin/bash
read -p "Enter year " year
if [ $(( $year % 4)) -eq 0 -a $(( $year % 100 )) -ne 100 ]
then
	echo "This is a leap year"
elif [ $(( $year % 400 )) -eq 0 ]
then
	echo "This is a leap year"
else
	echo "This is not a leap year"
fi
