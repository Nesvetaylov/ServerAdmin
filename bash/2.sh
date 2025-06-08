#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Использование: $0 <путь к директории>"
    exit 1
fi

path="$1"

if [ ! -d "$path" ]; then
    echo "Ошибка: путь '$path' не существует или не является директорией"
    exit 1
fi

cd "$path" || exit 1

for dir in */; do
    dir_name=${dir%/}
    count=$(ls -A "$dir" | wc -l)
    echo "$count" > "../${dir_name}_count.txt"
done

echo "Файлы с количеством элементов созданы в родительской директории"
