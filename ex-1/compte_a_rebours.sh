#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage : $0 <nombre_de_départ>"
    exit 1
fi

n=$1

while [ "$n" -ge 0 ]; do
    echo "$n"
    sleep 1
    n=$((n - 1))
done

echo "Décollage !"
