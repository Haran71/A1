#!/bin/bash
clear
grep -wo "[[:alnum:]]\+" $1 > temp1.txt
cat -n temp1.txt | sort -k2 | uniq -cdf1 > temp3.txt
cat temp3.txt | sort -nk2 > temp.txt 
while read line
do
  echo "$(echo $line | awk '{print "Word: " $3 " Count of repition: " $1}')"
done < temp.txt
