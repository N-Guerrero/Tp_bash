#!/bin/bash
if [ $# -lt 2 ]; then
    echo "Se requieren al menos 2 argumentos."
    exit 1
fi
sed -E ':begin;N;s/[^a-zA-Z]|\n//g;tbegin' $1  >$2

sed -i -e 's/\(.*\)/\L\1/' -e 's/cueva/dobla/g' -e 's/secreta/izquierda/g' -e 's/pocos/despues/g' -e 's/metros/derecha/g' -e 's/arriba/delante/g' -e 's/atras/reversa/g' $2