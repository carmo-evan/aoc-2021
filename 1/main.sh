#!/bin/bash
input="./input.txt"
prev=0
count=0
while read -r line
do 
    curr=$line
    if [ $prev != 0 -a $curr -gt $prev ]; then
        count=$((count+1))
    fi
    prev=$line
done < $input
echo $count