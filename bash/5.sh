#!/bin/bash

output_file="logs.log"

> "$output_file"

for logfile in /var/log/*.log; do
  if [[ -f "$logfile" ]]; then
    last_line=$(tail -n 1 "$logfile")
    echo "$last_line" >> "$output_file"
  fi
done
