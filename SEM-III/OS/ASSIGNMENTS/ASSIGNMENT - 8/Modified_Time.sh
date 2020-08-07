# !usr/bin/bash

# For run this shell script use this syntax "sh Modified_Time.sh"

#------------------------------------------------------------------------------
#  Write a Shell script to accept a filename as argument and displays the last
#  modification time if the file exists and a suitable message if it doesn't.
#------------------------------------------------------------------------------

# This command for clear all running statement in terminal
clear

echo "-------------------------------------------------------------------------"
echo "\t Last Modification time of entered file"
echo "-------------------------------------------------------------------------"

# File_Name for see last modification time
read -p "Enter File_Name : " File_Name
echo

# Make sure Entered File Exist 
if [ ! -f $File_Name ]
then
       echo "$File_Name File doesn't Exist. "
       echo "-------------------------------------------------------------------------"
       exit 1   # If condition is true then exit the script
fi

# Use stat command to display the result
echo "$File_Name was last modified on $(stat -c %x $File_Name)"
echo "-------------------------------------------------------------------------"
echo
echo "Thank You !"

