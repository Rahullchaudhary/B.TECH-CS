# !/usr/bin/bash

# For run this shell script use syntax in terminal  "sh Table.sh"

#----------------------------------------------------------------------
# Write a shell script that print multiplication table of a given no.
#----------------------------------------------------------------------

# This is for clear all running Statement in terminal
clear

echo "----------------------------------------------------------"
echo "\t Multiplication Table "
echo "----------------------------------------------------------"

read -p "Please Enter Your Number : " number             
i=1
read -p "Please Enter Range : " range
echo "----------------------------------------------------------"
while [ $i -le $range ]
do
	echo " $number x $i = `expr $number \* $i`"
	i=`expr $i + 1`
done
echo "----------------------------------------------------------"
echo 
echo "Thank You !"