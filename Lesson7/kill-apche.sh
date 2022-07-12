#!/bin/bash

ps -aux | grep apache | grep -v grep | awk -F " " '{ print $2 }' > apache-process.txt

count = 1
while IFS= read -r line; do
 count=$((count+1))
 kill -15 $line
 echo "Process $line has been stopped"
done < apache-process.txt
echo "Killing $count APACHE process"
