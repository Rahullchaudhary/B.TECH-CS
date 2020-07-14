#!/bin/bash

<<COMMENT
 
    THINKING HOW TO RUN THIS FILE AS SCRIPT?
        OPEN YOUR TERMINAL AND TYPE FOLOWING COMMANDS TO RUN THIS FILE AS BASH SCRIPT:
            ---------->       sh Exercise-1.sh
        THAT'S IT :)
    MADE BY---->PIYUSH KESHARI(insane_banda)
COMMENT

ls #Lists files and directory in current directory

man ls #Opens manual

pwd #Prints path of current working directory(aka present working directory)

who #Displays the users that are currently logged into computer system.

whoami #Print current user name

date #Prints current date and time

cal 2 2000 #Prints calender for month of FEB in year 2000

mkdir experiment #Makes a directory called experiment in current directory

rm anything.txt #Deletes anything.txt file if exists

rm *.txt #Deletes any file with .txt extension if exists

rmdir experiment #Deletes experiment directory if exists and is empty

rm -rf experiment #Deletes experiment directory if exists and may or may not be empty

<<COMMENT
    The -r option remove directories and their contents recursively including all files.
    The -f option to rm command ignore nonexistent files and arguments, never prompt for anything.
COMMENT

<<COMMENT
    HOW TO GET VISUAL CONFIRMATION ABOUT DELETING DIRECTORY?
    Pass the -v to the rm command
COMMENT

rm -vrf experiment
<<COMMENT
    Deletes experiment directory if exists
    and may or may not be empty and also gives
    visual information of all the files and directories deleted
COMMENT

rm -Ir experiment
<<COMMENT
    HOW TO GET CONFIRMATION PROMPT BEFORE EVERY REMOVAL OF A DIR
    You need to pass the -i option to the rm command
COMMENT

rmdir experiment #Deletes experiment directory if exists and is empty

cat README.md #Opens Readme.md file if exists

head blahblah.txt #Displays first 10 lines of the file blahblah.txt

tail blahblah.txt #Displays last 10 lines of the file blahblah.txt

<<COMMENT
    As 'cat' command displays the file content.
    Same way 'more' command also displays the content of a file.
    Only difference is that, in case of larger files, 'cat' command output will scroll off
    your screen while 'more' command displays output one screenful at a time.
COMMENT

more README.md #Opens Readme.md file if exists(for large files it will display contents full in screen)

<<COMMENT
    On Linux systems, less is a command that displays file contents or command output one page at a time in your terminal.
    The content displayed by less can be navigated by entering keyboard shortcuts.
COMMENT

less README.md #Opens Readme.md file if exists

less -N README.md #Opens Readme.md file if exists and displays line number for each line

cp README.md check/readme.md #Copys the contents of README.md to check/readme.md(directory named check should exist)

cp README.md check/ #Copys README.md to check/(directory named check should exist)

mv README.md check/readme.md #Moves the contents of README.md to check/readme.md(directory named check should exist)

mv README.md check/ #Moves README.md to check/(directory named check should exist)

echo "Piyush Keshari" #Displays line of text/string that are passed as an argument

echo -e "Piyush Keshari" #Displays line of text/string that are passed as an argument and -e here enables the interpretation of backslash escapes

echo -n "Piyush Keshari" #Displays line of text/string that are passed as an argument and -n here omit echoing trailing newline