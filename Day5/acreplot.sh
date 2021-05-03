#! /bin/bash
area=$(( ( 60 * 40 ) * 25 ))
acre=$(( $area / 43560 ))
echo $acre "acres"
