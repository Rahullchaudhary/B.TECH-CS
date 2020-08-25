# OS Lab Assignment - 13

------

**Submitted By -:  Priyanshu Vishwakarma**
**Section  -:  C**
**Roll No. -:  31**
**Subject  -:  Operating System Lab (BCSC 0803)**
**Submitted To -:  Ms. Nidhi**

**NOTE:** *[Github link for Script](https://github.com/CodePredator01/B.TECH-CS/tree/master/SEM-III/OS/ASSIGNMENTS/ASSIGNMENT-13)*

------

### # Write a shell script that print reverse of a given positive number.

```sh
# !/usr/bin/bash

# For run this shell script use this syntax "sh ReverseNumber.sh"

# This command for clear all running statement in terminal
clear
echo "-------------------------------------------------------------"
echo "\t Reverse of  Entered Number"
echo "-------------------------------------------------------------"

read -p "Please enter a positive number: " number
echo

# store original number
on=$number

# store single digit number
sd=0

# store reverse number
rev=""

# use while loop to caclulate the sum of all digits
while [ $number -gt 0 ]
do
   sd=$(($number % 10)) # get Remainder
   number=$(($number / 10)) # get next digit
   # store previoues number and current digit in rev
   rev=$( echo $rev$sd )
done

echo "$on in a reverse order $rev"
echo "-------------------------------------------------------------"
echo
echo "Thank you !"
```



##### **OUTPUT:**

![ReverseNumber](F:\GITHUB\B.TECH- CS\SEM-III\OS\ASSIGNMENTS\ASSIGNMENT-13\ReverseNumber.png)

------