#! /bin/bash
read -p "Enter choice 1.Feet to Inch 2.Feet to Meter 3.Inch to Feet 4. Meter to Feet " choice
read -p "Enter Length " num
case $choice in
	1)
		var1=$(( num*12 ))
		echo $var1 "inch"
	;;
	2)
		var2=$(( num/3 ))
		echo $var2 "Meter"
	;;
	3)
		var3=$(( num/12 ))
		echo $var3 "Feet"
	;;
	4)
		var4=$(( num*3 ))
		echo $var4 "Feet"
	;;
	*)
		echo "invalid choice"
	;;
esac
