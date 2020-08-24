# !/usr/bin/bash

# For run this shell script use syntax in terminal  "sh Grades.sh"

#---------------------------------------------------------------------------------------
# Write a shell script to input the marks of a student in 3 subjects and find his grade.
#---------------------------------------------------------------------------------------

# This is for clear all running Statement in terminal
clear

echo "----------------------------------------------------------"
echo "\t Enter Subject Numbers"
echo "----------------------------------------------------------"
echo

read -p "Computer Science : " cs
read -p "English : " english
read -p "Maths : " maths

sum=`expr $cs + $english + $maths`
per=`expr $sum / 3`
echo "Percentage : $per"

if [ $per -ge 60 ] && [ $per -le 70 ]
then
    echo
    echo "Your grade is 'D'"
else if [ $per -ge 71 ] && [ $per -le 80 ]
then
    echo
    echo "Your grade is 'C'"
else if [ $per -ge 81 ] && [ $per -le 90 ]
then 
    echo
    echo "Your grade is 'B'"
else if [ $per -ge 91 ] && [ $per -le 100 ]
then
    echo
    echo "Your grade is 'A'"
else
    echo
    echo "Fail !"
fi
fi
fi
fi
echo "----------------------------------------------------------"
echo 
echo "Thank You !"