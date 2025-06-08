#!/bin/bash

# Проверка количества аргументов
if [ $# -ne 2 ]; then
    echo "Использование: $0 <имя файла> <время в секундах>"
    exit 1
fi

filename="$1"
duration="$2"

# Проверка, что второй аргумент - целое число
if ! [[ "$duration" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: второй аргумент должен быть целым числом (секунд)"
    exit 1
fi

# Основной цикл
i=0
while [ $i -lt $duration ]; do
    timestamp=$(date +%d/%m/%y\ %H:%M:%S)  # Добавлены секунды
    loadavg=$(cat /proc/loadavg | awk '{print $1}')
    echo "$timestamp = $loadavg" >> "$filename"
    sleep 1
    i=$((i + 1))
done

echo "Данные записаны в файл: $filename"
