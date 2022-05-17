#!/bin/bash
while read -r uttids;
do
temp1=$(echo $uttids | cut -d \_ -f1)
temp2=$(echo $uttids | cut -d \_ -f2)
echo $uttids >> $1
done < $2
