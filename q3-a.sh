#!/bin/bash
clear
wc -c $1 | awk '{print $1}'
