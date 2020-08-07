# OS Lab Assignment - 10

------

**Submitted By -:  Priyanshu Vishwakarma**
**Section  -:  C**
**Roll No. -:  31**
**Subject  -:  Operating System Lab (BCSC 0803)**
**Submitted To -:  Ms. Nidhi**

**NOTE:** *[Github link for Script](https://github.com/CodePredator01/B.TECH-CS/tree/master/SEM-III/OS/ASSIGNMENTS/ASSIGNMENT-10)*

------

### # You are given a file of tab-delimited weather data (TSV). There is no header column in this data file. The first five columns of this data are: (a) the name of the city (b) the average monthly temperature in Jan (in Fahrenheit). (c) The average monthly temperature in April (in Fahrenheit). (d) The average monthly temperature in July (in Fahrenheit). (e) the average monthly temperature in October (in Fahrenheit).You need to sort this file on the basis of average monthly temperature in April.

```sh

# !/usr/bin/bash

# For run this shell script use this syntax "sh Months_Temp.sh"
#-----------------------------------------------------------------------------------------------------------

# This command for clear all running statement in terminal
clear

# Create a Demo.tsv file
cat > Month_Temp.tsv << EOF
---------------------------------------------------------------------------
| Agra      |	65       |      80     |	88         |	75      |
| Aligarh   |	70       |      75     |	89         |	74      |
| Mathura   |	68       |      85     |	80         |	77      |
| Delhi     |	75       |      90     |	78         |	80      |
| Lucknow   |	80       |      70     |	83         |	85      |
---------------------------------------------------------------------------
EOF
# Close Info.tsv file

echo "---------------------------------------------------------------"
echo "\t File Content "
echo "---------------------------------------------------------------"
expand Month_Temp.tsv
echo "---------------------------------------------------------------"
echo "\t Sorted File Content order by 3rd column"
echo "---------------------------------------------------------------"
sort -k 6n Month_Temp.tsv
echo "-------------------------------------------------------------------------"
echo
echo "Thank You !"
```



##### **OUTPUT:**

![Months_Temp](F:\GITHUB\B.TECH- CS\SEM-III\OS\ASSIGNMENTS\ASSIGNMENT-10\Months_Temp.png)

------

