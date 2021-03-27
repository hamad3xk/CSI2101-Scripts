#!/bin/bash


read -p "Enter search term here: " searchT
option1=("Whole words matches" "Matches on any line" "Inverterted whole word matches" "Inverted match on any line" "Quit")
PS3='enter option here: '
select find in "${option1[@]}"; do

    case $find in

# optionally call a function or run some code her 
        "Whole words matches")
           if [ $((n=$(grep -wic "$searchT" access_log.txt))) -ge 1 ]; then
                echo "${n} matches found"
                echo "$(grep -n -wi "$searchT" test.txt)"

           else 
                echo "No matches found"
           fi ;;

	    
        

# optionally call a function or run some code here
        "Matches on any line")
            if [ $((n=$(grep -ic ".${searchT}." access_log.txt))) -ge 1 ]; then
                echo "${n} matches found"
                echo "$(grep -n -i ".${searchT}." access_log.txt)"
   
            else 
                echo "No matches found"
            fi ;;
	    
        


        "Inverterted whole word matches")
            if [ $((n=$(grep -vwic "$searchT" access_log.txt))) -ge 1 ]; then
                echo "${n} matches found"
                echo "$(grep -n -vwi "$searchT" access_log.txt)"
        
            else 
                echo "No matches found"
            fi ;;
	    
        

# searches for match and saves it as "n" where if n is greater than or equal to 1 then if statement is true
        "Inverted match on any line")
            if [ $((n=$(grep -vic ".${searchT}." access_log.txt))) -ge 1 ]; then 
                echo "${n} matches found"
                echo "$(grep -n -vi ".${searchT}." access_log.txt)"
   
            else #if "n" is 0 then the else statement will be used
                echo "No matches found"
            fi ;;          
           

#the option to quit or exit the script, which if selected will break the loop and exit the script.
	"Quit")
	    echo "User requested exit" && break ;;

        *) echo "invalid option" ;; # The * indicates if any values other than the 1-5 are enterd it will output invalid option.
    esac
done

exit 0