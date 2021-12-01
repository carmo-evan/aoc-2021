#!/bin/bash
lineCount=$(wc -l input.txt | awk '{ print $1 }')
prev=0
count=0
for (( i=1; i<=lineCount; i++ ))
do 
    j=$((i+1))
    k=$((i+2))
    a=$(sed -n "${i}p" input.txt)
    b=$(sed -n "${j}p" input.txt)
    c=$(sed -n "${k}p" input.txt)
    curr=$((a+b+c))
    if [ $prev != 0 -a $curr -gt $prev ]; then
        count=$((count+1))
    fi
    prev=$curr
done
echo $count