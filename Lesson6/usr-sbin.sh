#!/bin/bash
for file in /usr/sbin/* 
do 
 if [ -d "$file" ]
  then echo "$file is directory"
 elif ([ -x "$file" ] || [ -r "$file"]); then 
  echo "$file" >> usr-sbin-files.txt
 fi
done