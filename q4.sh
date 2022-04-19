#!/bin/bash
clear
IFS=',' read -a Num 
len=${#Num[*]}


for (( i=0; i<$len; i++ ))
do
  for (( j=0; j<$len-$i-1; j++ ))
  do
    if [[ ${Num[j]} -gt ${Num[j+1]} ]]
    then
       temp=${Num[j]}
       Num[j]=${Num[j+1]}
       Num[j+1]=$temp
    fi
  done
done
echo ${Num[*]}

