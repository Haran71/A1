#!/bin/bash
clear
wc -c $1 | awk '{print $1}'
let line_count=$(wc -l $1 | awk '{print $1}')
echo $line_count
let word_count=$(wc -w $1 | awk '{print $1}')
echo $word_count
let line_num=1
while read line;do
  echo "Line No:$line_num - $(echo $line | wc -w | awk '{print $1}')"
  ((line_num++))
done < $1
grep -wo "[[:alnum:]]\+" $1 > temp1.txt
cat -n temp1.txt | sort -k2 | uniq -cdf1 | sort -nk2 > temp.txt 
while read line
do
  echo "$(echo $line | awk '{print "Word: " $3 " Count of repition: " $1}')"
done < temp.txt
