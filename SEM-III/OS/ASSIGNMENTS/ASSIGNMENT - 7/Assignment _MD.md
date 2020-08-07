# OS Lab Assignment - 7

------

**Submitted By -:  Priyanshu Vishwakarma**
**Section  -:  C**
**Roll No. -:  31**
**Subject  -:  Operating System Lab (BCSC 0803)**
**Submitted To -:  Ms. Nidhi**

**NOTE:** *[Github link for Script](https://github.com/CodePredator01/B.TECH-CS/tree/master/SEM-III/OS/ASSIGNMENTS/ASSIGNMENT%20-%207)*

------

### # Write a shell script that finds whether an entered number is even or odd.

```sh

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
```



##### **OUTPUT:**

![Even_Odd](F:\GITHUB\B.TECH- CS\SEM-III\OS\ASSIGNMENTS\ASSIGNMENT - 7\Even_Odd.png)

------

