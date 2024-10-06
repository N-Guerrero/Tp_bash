#!/bin/bash
if [ $# -lt 2 ]; then
    echo "Se requieren al menos 2 argumentos."
    exit 1
fi

 sed '/^[a-z]\{2\}\|^[A-Z]\{2\}\|^[a-z][A-Z]\|[aeiou]\{3\}\|[0-9]/d' $1 | sed 's/[aeiou]/X/g'> aux.txt
 awk '{ if ($0 ~ /^(\S+\s+){0,4}\S+$/) { print | "rev" } else { print } }' aux.txt >$2
 rm aux.txt
 
 