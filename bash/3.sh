#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <file1> [file2 ...]"
    exit 1
fi

for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "$file => not found"
        continue
    fi

    line_count=$(wc -l < "$file")
    echo "$file => $line_count"
done

