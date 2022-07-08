#!/bin/bash

count = 1
while IFS= read -r line; do
 count=$((count+1))
 if [ $count -le 10 ] 
  then echo "$line" | awk '{print substr($1,11,50)}' >> usr-sbin-10.txt
 fi
done < usr-sbin-files.txt
echo "$count"
