#!/bin/bash
clear
let line_num=1
while read line;do
  echo "Line No:$line_num - $(echo $line | wc -w | awk '{print $1}')"
  ((line_num++))
done < $1
