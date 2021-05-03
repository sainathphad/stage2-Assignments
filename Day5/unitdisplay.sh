#! /bin/bash
read -p "Enter a number " num
if [ $num -eq 1 ]
then
        echo "Unit"
elif [ $num -eq 10 ]
then
        echo "ten"
elif [ $num -eq 100 ]
then
        echo "Hundred"
elif [ $num -eq 1000 ]
then
        echo "One Thousand"
elif [ $num -eq 10000 ]
then
        echo "Ten Thousand"
else
        "Invalid"
fi
