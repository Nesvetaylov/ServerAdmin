#!/bin/bash

if [ "$FOO" = "5" ] && [ "$BAR" = "1" ]; then
    echo "Ошибка: выполнение запрещено при FOO=5 и BAR=1"
    exit 1
fi

FILENAME="${1:-fix.txt}"
MAX_WAIT=5
WAITED=0

while [ ! -f "$FILENAME" ]; do
    sleep 1
    WAITED=$((WAITED + 1))
    if [ "$WAITED" -ge "$MAX_WAIT" ]; then
        echo "Файл не найден: $FILENAME (таймаут $MAX_WAIT сек)"
        exit 1
    fi
done

echo "Файл найден: $FILENAME"
