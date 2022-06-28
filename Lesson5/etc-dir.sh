#!/bin/bash
for file in /etc/*
do
 if [ -d "$file" ]
  then 
   echo "$file is a directory" >> etc-dir.txt
 elif [ -f "$file" ]
  then 
   echo "$file is a files" >> etc-files.txt
 fi
done