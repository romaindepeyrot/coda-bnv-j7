#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage : $0 <minute>"
	exit 1
fi

total=$1
heures=$((total / 60))
minutes=$((total % 60))

echo "$total minutes = $heures h $minutes min"