#!/bin/bash
read -p "Enter the name of the directory: " dirname
mkdir -p "$dirname"
for i in {1..17}; do
    mkdir -p "$dirname/week$i"
    echo "." > "$dirname/week$i/placeholder"
done
echo "Directory '$dirname' created with 17 folders, each containing a placeholder file."