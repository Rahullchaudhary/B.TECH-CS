#!/bin/bash

# For run this shell script use syntax in terminal  "sh Factorial.sh"

#----------------------------------------------------------------------
# Write a shell script that print factorial of given number.
#----------------------------------------------------------------------

# This is for clear all running Statement in terminal
clear

echo "----------------------------------------------------------"
echo "\t Factorial of given Number"
echo "----------------------------------------------------------"

read -p "Please enter a number: " number
fact=1
 
count=$number
 
while [ $count -gt 0 ]
do
   fact=$(($fact * $count))
   count=$(($count - 1 ))
done
 
echo
echo "Factorial of $number is $fact"
echo "----------------------------------------------------------"
echo
echo "THANK YOU !"