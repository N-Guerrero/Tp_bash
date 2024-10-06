#!/bin/bash

if [ $# -lt 3 ]; then
    echo "Se requieren al menos 3 argumentos."
    exit 1
fi

cant=$(grep -o "misterio" $1 | wc -l) 

echo $cant > $3
factorial=1
num=$2
fib1=0
fib2=1

if [ $((num % 2)) -eq 0 ];then

    while [ $num -gt 1 ];do
        factorial=$((factorial * num ))
        num=$(( num - 1))
    done
    
    echo  $factorial >>$3
else

    for (( i=0;$((i<num)); i++ ));
    do
        echo -n "$fib1 ">>$3
        fn=$((fib1 + fib2))
        fib1=$fib2
        fib2=$fn
    done

fi
