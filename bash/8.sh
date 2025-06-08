#!/bin/bash

lc_vars=$(env | grep '^LC_' | cut -d= -f2 | sort -u)

count=$(echo "$lc_vars" | wc -l)

if [ "$count" -eq 1 ]; then
    echo "Все LC_ переменные имеют одинаковое значение: $lc_vars"
else
    echo "Ошибка: LC_ переменные имеют разные значения"
    env | grep '^LC_'
    exit 1
fi
