#!/bin/bash
clear
awk NF quotes.txt > temp.txt
mv temp.txt quotes.txt
cat quotes.txt
cat -n quotes.txt | sort -uk2 | sort -n | cut -f2- > temp.txt
mv temp.txt quotes.txt
