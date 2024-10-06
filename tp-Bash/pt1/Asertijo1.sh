#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Se requieren al menos 2 argumentos."
    exit 1
fi

grep -E "[7]{1}" $1 |grep -E "resbaló en el barro|limpió las pezuñas" |
grep -E "[0-9]{2}:[0-9]{1}[13579]"|
head -n 1|
awk '{print "Hora indicada para capturar a Pato :" $1}'>$2