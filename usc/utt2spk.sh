#!/bin/bash
while read -r uttids;
do
temp1=$(echo $uttids | cut -d \_ -f1)
temp2=$(echo $uttids | cut -d \_ -f2)
echo $uttids $temp1 >> $1
done < $2

