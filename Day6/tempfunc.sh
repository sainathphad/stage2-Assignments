#! /bin/bash
function Temp_cel(){
	temp=$1
	if [ $temp -ge 32 -a $temp -le 212 ]
	then
		cels=$(( (temp-32)*(5/9) ))
		echo $cels "celsius"
	else
		echo "invalid"
	fi
}

function Temp_fahr(){
	temp=$1
	if [ $temp -ge 0 -a $temp -le 100 ]
	then
		fahrn=$(( (temp*(9/5))+32 ))

		echo $fahrn "fahrenheit"
	else
		echo "invalid"
	fi
}

read -p "Enter Temperature " temp
read -p "Enter choice 1.In celsius 2.In Fahrenheit " choice
celsius=$( Temp_cel $temp )
fahrenheit=$( Temp_fahr $temp )
case $choice in
	1)
		echo $celsius
	;;
	2)
		echo $fahrenheit

	;;
	*)
		echo "invalid"
	;;
esac
