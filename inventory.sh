#!/bin/bash

# TODO Change expression/command to account for files with more than average '.'

echo ""
echo "File extension inventory"
find ./ -type f | awk -F'.' '{print $3}' | sort | uniq -c
echo ""
