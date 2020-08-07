# OS Lab Assignment - 12

------

**Submitted By -:  Priyanshu Vishwakarma**
**Section  -:  C**
**Roll No. -:  31**
**Subject  -:  Operating System Lab (BCSC 0803)**
**Submitted To -:  Ms. Nidhi**

**NOTE:** *[Github link for Script](https://github.com/CodePredator01/B.TECH-CS/tree/master/SEM-III/OS/ASSIGNMENTS/ASSIGNMENT-12)*

------

### # Write the shell script to take file name as input and if the file exists then print the number of lines and also print 10th line of that file.

```sh

# !/usr/bin/bash

# For run this shell script use this syntax "sh Num_Line.sh"

#------------------------------------------------------------------------------------------
# Write the shell script to take file name as input and if the file exists then print the
# number of lines and also print 10 th line of that file.            
#-----------------------------------------------------------------------------------------

# This command for clear all running statement in terminal
clear

echo "-------------------------------------------------------------------------"
echo "\t Print number of lines & Print 10th line"
echo "-------------------------------------------------------------------------"

# Enter File name for see result
read -p "File Name : " File_Name
echo

# Make sure file exist
if [ ! -f $File_Name ]
then
       echo "$File_Name not exist."
       echo "---------------------------------------------------------------------------------------"  
       exit 1   # If condition is true then exit the script
fi

echo "----------------------------------------------------------------------------------"

# use cat command for display file content
cat $File_Name
echo "-----------------------------------------------------------------------------------"

# wc command for display number of line
w=$(wc -l $File_Name)
echo "Number of lines : $w (File Name)"
echo "-----------------------------------------------------------------------------------"

# use sed command for display 10th line
s=$(sed -n '10p' $File_Name)
echo "10th Line : "
echo
echo $s 
echo "----------------------------------------------------------------------------------"
echo 
echo "Thank Yoy !"
```



##### **OUTPUT:**

![Num_Line](F:\GITHUB\B.TECH- CS\SEM-III\OS\ASSIGNMENTS\ASSIGNMENT-12\Num_Line.png)

------

