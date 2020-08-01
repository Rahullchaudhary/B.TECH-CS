# !/usr/bin/bash

# MERGE CONTENT OF TWO FILES 
<<COMMENT
          cat > File_1.txt 
          cat > File_2.txt
          Let's Suppose These Two Files Already Exist
          File_1.txt Have Data => Kali Linux 
          File_2.txt Have Data => Is A Very Useful Operating System 
COMMENT

echo "Now We Merge Both Files In New Files (Out.txt) Form ! "
Merge=$(cat File_1.txt File_2.txt > Out.txt)
echo "Merge File Is :  Out.txt $Merge"
View=$(expand Out.txt)
echo "--------------------------------------------------"
echo "View Of Merge File Is : "
echo "$View"
