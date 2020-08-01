# !/usr/bin/bash

echo "Please, Enter Your Good Name :"
read NAME
HOUR=$(date +"%H")
if [ $Hour -lt 12 ]
then echo "Hello $NAME, Good Morning !"
else if [ $d -lt 16 ]
then echo "Hello $Name, Good Afternoon ! "
else 
echo "Hello $Name, Good Evening !"
fi 
fi

