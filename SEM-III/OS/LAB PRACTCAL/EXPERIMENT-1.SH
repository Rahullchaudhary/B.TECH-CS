#!/bin/bash
-------------------------------------------------------------------------------------------------------------------
<<COMMENT
    THINKING HOW TO RUN THIS FILE AS SCRIPT?
        OPEN YOUR TERMINAL AND TYPE FOLOWING COMMANDS TO RUN THIS FILE AS BASH SCRIPT:
            ---------->       sh EXPERIMENT-1.SH
        THAT'S IT :)
    MADE BY---->Priyanshu Vishwakarma(nikhil)
COMMENT
-------------------------------------------------------------------------------------------------------------------
ls    #Lists files and directory in current directory
ls -a #Lists all the files(including hidden files and directory) in current directory
ls -l #Lists all the files(including permission of admin, group and public)
ls -s #Lists all the files with file size(in blocks, not byte)
-------------------------------------------------------------------------------------------------------------------
mkdir experiment #Makes a directory called experiment in current directory
-------------------------------------------------------------------------------------------------------------------
cd experiment  #Sets path to experiment directory
cd .. #Moves one directory back
cd C:// #Moves to C drive
cd ~ #Moves to home directory
-------------------------------------------------------------------------------------------------------------------
cat README.md #Opens Readme.md file if exists
-------------------------------------------------------------------------------------------------------------------
man ls #Opens manual
-------------------------------------------------------------------------------------------------------------------
date #Prints current date and time
-------------------------------------------------------------------------------------------------------------------
cal 2 2000 #Prints calender for month of FEB in year 2000
-------------------------------------------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------------------------------------------
head blahblah.txt #Displays first 10 lines of the file blahblah.txt
tail blahblah.txt #Displays last 10 lines of the file blahblah.txt
-------------------------------------------------------------------------------------------------------------------
pwd #Prints path of current working directory(aka present working directory)