#!/bin/bash
clear
touch temp2.txt
while IFS= read -r line; do
     echo "$line" > temp.txt
     awk -F"~" '{print $2 " once said " "\""$1"\""}' temp.txt >> temp2.txt
done < quotes.txt 
mv temp2.txt quotes.txt
