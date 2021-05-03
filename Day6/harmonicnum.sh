#! /bin/bash
read -p "Enter nth number " number
harm=1
for (( count=2; count<=$number; count++ ))
do
        harm=`echo "$harm+1/$count"`
done
printf "$harm"
