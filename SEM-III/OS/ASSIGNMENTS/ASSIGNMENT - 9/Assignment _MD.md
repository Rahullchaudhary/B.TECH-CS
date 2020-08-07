# OS Lab Assignment - 9

------

**Submitted By -:  Priyanshu Vishwakarma**
**Section  -:  C**
**Roll No. -:  31**
**Subject  -:  Operating System Lab (BCSC 0803)**
**Submitted To -:  Ms. Nidhi**

**NOTE:** *[Github link for Script](https://github.com/CodePredator01/B.TECH-CS/tree/master/SEM-III/OS/ASSIGNMENTS/ASSIGNMENT%20-%209)*

------

### # Write a shell script to take name as a input and display a greeting message to the user by checking system clock. (Ex :- Hello John Good Morning in morning time else Hello John Good Afternoon in afternoon time else Hello John Good Evening in Evening time).

```sh

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
```



##### **OUTPUT:**

![Greet](F:\GITHUB\B.TECH- CS\SEM-III\OS\ASSIGNMENTS\ASSIGNMENT - 9\Greet.png)

------

