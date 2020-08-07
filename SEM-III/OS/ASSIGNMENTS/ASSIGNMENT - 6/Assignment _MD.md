# OS Lab Assignment - 6

------

**Submitted By -:  Priyanshu Vishwakarma**
**Section  -:  C**
**Roll No. -:  31**
**Subject  -:  Operating System Lab (BCSC 0803)**
**Submitted To -:  Ms. Nidhi**

**NOTE:** *[Github link for Script](https://github.com/CodePredator01/B.TECH-CS/tree/master/SEM-III/OS/ASSIGNMENTS/ASSIGNMENT%20-%206)*

------

### # Write a shell script to create a tsv file containing name, roll no. and age of 10    students. Then use that tsv file to display only the names of the students in alphabetical order.

```sh

# !/usr/bin/bash

# For run this shell script use syntax in terminal  "sh Students_Info.sh"

#----------------------------------------------------------------------------------
# Write a shell script to create a tsv file containing name, roll no. and age of 10
# students. Then use that tsv file to display only the names of the students in
# alphabetical order.
#----------------------------------------------------------------------------------

# This is for clear all running Statement in terminal
clear

# Create a Info.tsv file
cat > Info.tsv << EOF
-----------------------------------------
|   Name    |	Roll No. | 	Age    |

| Priyanshu |	31       |	19     |
| Piyush    |	12       |	19     |
| Shivansh  |	33       |	19     |
| Rohan     |	53       |	19     |
| Nikhil    |	31       |	19     |
| Abhishek  |	15       |	19     |
| Aditya    |	32       |	19     |
| Rishab    |	47       |	19     |
| Vivek     |	22       |	19     |
| Yash      |	56       |	19     |
-----------------------------------------
EOF
# Close Info.tsv file

echo "--------------------------------------------"
echo "\tFile Content "

# For see Current file content
expand Info.tsv 
echo
echo "\tSorted File Content "

# For see sorted file content in alphabetical order
sed '1,2d' Info.tsv | cut -d "	" -f 1 | sort
echo "--------------------------------------------"
echo "THANK YOU !"
```



##### **OUTPUT:**

![](F:\GITHUB\B.TECH- CS\SEM-III\OS\ASSIGNMENTS\ASSIGNMENT - 6\Students_Info.png)

------

