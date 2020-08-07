# !/usr/bin/bash

# For run this shell script use this syntax "sh Even_Odd.sh"

#--------------------------------------------------------------------------
# Write a shell script that finds whether an entered number is even or odd.
#--------------------------------------------------------------------------

# This command for clear all running statement in terminal
clear

echo "---------------------------------------------------------------------"
echo "\t Check Entered number is even or odd"
echo "---------------------------------------------------------------------"

# For take number from user
read -p "Enter a Number : " number   
# Logic for Even no.           
rem=$(($number % 2))

# Condition (if else)
if [ $rem -eq 0 ]
then 
    echo
    echo "$number Number is Even !"
    echo "--------------------"
else 
    echo
    echo "$number Number is Odd !"
    echo "--------------------"
fi
echo 
echo
echo "THANK YOU !"

