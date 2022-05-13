#!/bin/bash
read_file=$(cat $1)
write_file=$2

for line in $read_file
do
path=""/wav/"$line".wav""
write_path="/wav.scp"
echo "$line" "$path" >> "$write_file$write_path"
done
