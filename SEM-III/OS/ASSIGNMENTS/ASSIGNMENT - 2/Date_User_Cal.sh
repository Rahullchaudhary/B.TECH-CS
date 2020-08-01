# !/usr/bin/bash

# Three Types Date Format
echo "Current Date In The System -:"
Date_1=$(date +"%d-%m-%y")
Date_2=$(date +"%d-%h-%y")
Date_3=$(date +"%d/%m/%y")   
echo $Date_1 
echo $Date_2 
echo $Date_3

# Number Of Users Currently Login
echo "Currently Login Users Number -:"
No_Users=$(who | wc -l) 
echo $No_Users

# Current Month Calendar
echo "Current Month Calendar -:"
calendar=$(cal)
echo $calendar
