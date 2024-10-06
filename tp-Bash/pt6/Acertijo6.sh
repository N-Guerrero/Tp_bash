#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Se requieren al menos 2 argumentos."
    exit 1
fi

sed -e 's/[129]/X/g' -e 's/[08]/_/g' $1 > $2