#!/bin/bash
clear
let word_count=$(wc -w $1 | awk '{print $1}')
echo $word_count
