#!/bin/bash
while read -r uttids;
do
temp1=$(echo $uttids | cut -d \_ -f1)
temp2=$(echo $uttids | cut -d \_ -f2)
echo $temp2 >> $1
if [ $temp1 != "f1" ] ; then
break
fi
done < $2
