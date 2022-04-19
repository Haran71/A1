#!/bin/bash
clear
let line_count=$(wc -l $1 | awk '{print $1}')
echo $line_count
