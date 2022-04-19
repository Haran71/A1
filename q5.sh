#!/bin/bash
echo $1 | rev
echo $1 | rev | tr a-z b-za
input="$1"
let len=${#input}
for (( i=(($len-1)/2); i>=0; i-- ))
do
   reversed_string="$reversed_string${input:$i:1}"
   
done
substr="${input:((len/2))}"
  

echo "$reversed_string$substr"
