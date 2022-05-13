#!/bin/bash
while read utt1 utt2
do

nid=$(echo $utt1| cut -d \_ -f2)
if [[ $nid[1] == 0 ]]; then
	
    if [[ $nid[2] == 0 ]]; then

	nid=$nid[3]\p
   
    else

   	nid=$nid[2]$nid[3]\p

    fi

else
   
   nid=$nid\p

fi

res=$(sed -n $nid transcriptions.txt | cut -f2)

echo $utt1 $res >> $1
done < $2
