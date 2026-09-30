#!/bin/bash
read -p "Введіть кількість чисел Фібоначчі: " n

if [ -z "$n" ] || [ "$n" -le 0 ]; then
    exit 0
fi

a=0
b=1

echo -n "Перші $n чисел Фібоначчі: "

for (( i=0; i<n; i++ ))
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
echo ""
