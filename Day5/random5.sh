#! /bin/bash -x
var1=$(( RANDOM%(99-10)+10 ))
var2=$(( RANDOM%(99-10)+10 ))
var3=$(( RANDOM%(99-10)+10 ))
var4=$(( RANDOM%(99-10)+10 ))
var5=$(( RANDOM%(99-10)+10 ))
echo "first no =" $var1 "second no =" $var2 "third no =" $var3 "fourth no =" $var4 "fifth no =" $var5
sum=$(( $var1 + $var2 + $var3 + $var4 + $var5 ))
avg=$(( $sum / 5 ))
echo "addition is " $sum
echo "average is " $avg
