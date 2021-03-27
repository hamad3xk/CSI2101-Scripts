#!/bin/bash
#adds all user given variables
let sum=$1+$2+$3 

#if condition to check if the sum of variables is greater thn or equal to 30
if [ $sum -le 30 ]; then
    echo "The sum of $1 $2 and $3 is $sum"
#if the sum is greater then 30 it will echo it is exceeded
else 
    echo "The sum exceeds maximum allowable"

fi

exit 0