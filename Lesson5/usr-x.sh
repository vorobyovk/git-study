#!/bin/bash
for file in /usr/* 
do 
 if [ -d "$file" ]
  then echo "$file is directory"
 elif [ -x "$file" ]
  then echo "$file is a execute file" >> usr-x-files.txt
 fi
done