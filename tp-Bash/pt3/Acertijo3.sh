#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Se requieren al menos 1 argumentos."
    exit 1
fi

sed  's/ ,/,/g; s/, /,/g' $1|
sort -t"," -k2.7,2.10r -k2.4,2.5 -k2.1,2.2 -k3,3nr $1 > aux.txt
anio_mayor=$(head -n 1 aux.txt| sed 's/.*\/\([0-9]\{4\}\).*/\1/')


sed  's/ ,/,/g; s/, /,/g' $1|
sort -t"," -k2.7,2.10 $1 > aux.txt

anio_menor=$(head -n 1 aux.txt| sed 's/.*\/\([0-9]\{4\}\).*/\1/')

if test -f Infractores.txt; then
  rm Infractores.txt
fi


for((i=$(($anio_menor));i<=$(($anio_mayor));i++));
do
    grep "$i" aux.txt | sort -t',' -k3,3n > topanio.txt
    head -n 3 topanio.txt >> Infractores.txt
done
sort -t',' -k3,3n Infractores.txt | head -n 3 > acertijo3.txt
rm aux.txt
rm topanio.txt
