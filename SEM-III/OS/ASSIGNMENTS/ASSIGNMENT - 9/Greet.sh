# !/usr/bin/bash

# # For run this shell script use this syntax "sh Greet.sh"

#-------------------------------------------------------------------------------------------
# Write a shell script to take name as a input and display a greeting message to the user 
# by checking system clock. (Ex :- Hello John Good Morning in morning time else Hello John 
# Good Afternoon in afternoon time else Hello John Good Evening in Evening time)
#-------------------------------------------------------------------------------------------

# This command for clear all running statement in terminal
clear

echo "-------------------------------------------------------------------------"
echo "\t Greeting Message"
echo "-------------------------------------------------------------------------"

echo "Please, Enter Your Good Name : \c"
read name
echo

# this for check time
hour=$(date +"%H")

# if else conditions
if [ $hour -lt 12 ]
then echo "Hello $name, Good Morning !"
else if [ $hour -lt 16 ]
then echo "Hello $name, Good Afternoon ! "
else 
echo "Hello $name, Good Evening !"
fi 
fi
echo "----------------------------------------------------------------------------------------"
echo
echo "Thank You !"

