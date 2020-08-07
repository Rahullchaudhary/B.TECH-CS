# # !/usr/bin/bash

# For run this shell script use this syntax "sh Exist_File.sh"

#--------------------------------------------------------------------------------------
# Write a shell script to input the name of a file as command line argument and display
# whether it is a file, a directory or anything else.
#--------------------------------------------------------------------------------------

# This command for clear all running statement in terminal
clear

echo "-------------------------------------------------------------------------"
echo "\t Entered name is file, a directory or something else"
echo "-------------------------------------------------------------------------"

# Enter File Name Foer Check
read -p "File_Name : " file

# if else conditions
if [ -d $file ]
then
    echo
    echo "$file File Name is Directory !"
else if [ -f $file ]
then
    echo
    echo "$file File Name is File !"
else
    echo
    echo "Something Else !"
fi
fi
echo "-------------------------------------------------------------------------"
echo 
echo "Thank You !"
