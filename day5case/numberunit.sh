#! /bin/bash
read -p "Enter a number " num
case $num in
	1)
		echo "Unit"
	;;
	10)
		echo "Ten"
	;;
	100)
		echo "Hundred"
	;;
	1000)
		echo "Thousand"
	;;
	10000)
		echo "Ten Thousand"
	;;
	*)
		echo "invalid number"
	;;
esac
