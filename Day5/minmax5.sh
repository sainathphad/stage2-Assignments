#! /bin/bash
var1=$(( RANDOM%(1000-100)+100 ))
var2=$(( RANDOM%(1000-100)+100 ))
var3=$(( RANDOM%(1000-100)+100 ))
var4=$(( RANDOM%(1000-100)+100 ))
var5=$(( RANDOM%(1000-100)+100 ))
echo "value1" $var1 "value2" $var2 "value3" $var3 "value4" $var4 "value5" $var5
if [ $var1 -gt $var2 -a $var1 -gt $var3 -a $var1 -gt $var4 -a $var1 -gt $var5 ]
then
	echo $var1 " is maximum"
elif [ $var2 -gt $var3 -a $var2 -gt $var4 -a $var2 -gt $var5 ]
then
	echo $var2 " is maximum"
elif [ $var3 -gt $var4 -a $var3 -gt $var5 ]
then
	echo $var3 " is maximum"
elif [ $var4 -gt $var5 ]
then
	echo $var4 " is maximum"
else
	echo $var5 " is maximum"
fi

if [ $var1 -lt $var2 -a $var1 -lt $var3 -a $var1 -lt $var4 -a $var1 -lt $var5 ]
then
	echo $var1 "is minimum"
elif [ $var2 -lt $var3 -a $var2 -lt $var4 -a $var2 -lt $var5 ]
then
	echo $var2 "is minimum"
elif [ $var3 -lt $var4 -a $var3 -lt $var5 ]
then
	echo $var3 " is minimum"
elif [ $var4 -lt $var5 ]
then
	echo $var4 " is minimum"
else
	echo $var5 " is minimum"
fi
