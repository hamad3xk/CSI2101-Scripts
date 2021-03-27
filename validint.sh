#!/bin/bash
#this while loop prompts user for the fisrt input
while true; do
    read -p "Input first integer: " var1
    
        if [[ $var1 -eq 20 ]] || [[ $var1 -eq 40 ]]; then #if this if statement is reached then the loop will end here
            echo " input is equal to 20 or 40"  
            break #this will break the while loop once the if statement has been met
    
        elif ! echo $var1 | egrep -q '^[0-9]+$' ; then #if the user enters anything other than an interger then this will be implemented
            echo "input is not a valid interger"
       
        elif ! [[ $var1 -eq 20 ]] || [[ $var1 -eq 40 ]]; then #if the entered variable is not equal to 20 or 40 then this will be implemented
            echo " input is not equal to 20 or 40. Try again"  

        fi  
done
#this while loop is for the second input uses the same script as the first input
while true; do
    read -p "Input second integer: " var2
        if [[ $var2 -eq 20 ]] || [[ $var2 -eq 40 ]]; then
            echo " input is equal to 20 or 40"  
            break

        elif ! echo $var2 | egrep -q '^[0-9]+$' ; then
            echo "input is not a valid interger"
        
        elif ! [[ $var2 -eq 20 ]] || [[ $var2 -eq 40 ]]; then
            echo " input is not equal to 20 or 40. Try again"  

        fi  
done
echo "valid intergers have been entered thank you"
exit 0



