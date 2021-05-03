#! /bin/bash
capital=100
while [ $capital -gt 0 -a $capital -lt 200 ]
do
        	if [ $(( RANDOM%2 )) -eq 0 ]
        	then
                	(( capital++ ))
        	else
                	(( capital-- ))
        	fi
	result==$capital
done
echo $result
