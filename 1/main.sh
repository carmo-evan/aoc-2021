#!/bin/bash
input="./input.txt"
prev=""
count=0
while read -r line
do 
    curr=$line
    if [ $prev != "" -a $curr -gt $prev ]; then
        count=$((count+1))
    fi
    prev=$line
done < $input
echo $count