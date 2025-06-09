#!/bin/bash

IFS=':' read -ra DIRS <<< "$PATH"
declare -A seen

for dir in "${DIRS[@]}"; do
    if [[ -n "${seen[$dir]}" ]]; then
        continue
    fi
    seen[$dir]=1

    if [[ ! -d "$dir" || ! -r "$dir" ]]; then
        continue
    fi

    count=$(find "$dir" -maxdepth 1 -type f 2>/dev/null | wc -l)
    echo "$dir => $count"
done
