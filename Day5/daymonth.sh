#! /bin/bash
read -p "Enter day " day
read -p "Enter month " month
if [ $month -eq 3 -a $day -ge 20 ] && [ $day -le 31 ]

then
	echo "True"
elif [ $month -eq 4 -a $day -lt 31 ]
then
	echo "True"
elif [ $month -eq 5 -a $day -le 31 ]
then
	echo "True"
elif [ $month -eq 6 -a $day -lt 20 ]
then
	echo "True"
else
	echo "False"

fi
