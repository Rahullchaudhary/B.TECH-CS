# OS Lab Assignment - 15

------

**Submitted By -:  Priyanshu Vishwakarma**
**Section  -:  C**
**Roll No. -:  31**
**Subject  -:  Operating System Lab (BCSC 0803)**
**Submitted To -:  Ms. Nidhi**

**NOTE:** *[Github link for Script](https://github.com/CodePredator01/B.TECH-CS/tree/master/SEM-III/OS/ASSIGNMENTS/ASSIGNMENT-15)*

------

### # Write a shell script that print multiplication table of a given no.

```sh
# !/usr/bin/bash

# For run this shell script use syntax in terminal  "sh Table.sh"

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
```



##### **OUTPUT:**

![Table](F:\GITHUB\B.TECH- CS\SEM-III\OS\ASSIGNMENTS\ASSIGNMENT-15\Table.png)

------