#! /bin/bash
var1=$(( RANDOM%(7-1)+1 ))
echo " num1 " $var1
var2=$(( RANDOM%(7-1)+1 ))
echo " num2 " $var2
sum=$(( $var1 + $var2 ))
echo " Addition = " $sum
