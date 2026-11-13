#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage : $0 <nom_du_projet>"
    exit 1
fi

projet=$1

if [ -e "$projet" ]; then
    echo "Erreur : '$projet' existe déjà."
    exit 1
fi

mkdir -p "$projet"/{src,include,build,bin}

# Fichier principal
cat > "$projet/src/main.c" << 'EOF'
#include <stdio.h>

int main(void)
{
    printf("Hello, world!\n");
    return 0;
}
EOF

# Fichier d'en-tête
cat > "$projet/include/${projet}.h" << EOF
#ifndef ${projet^^}_H
#define ${projet^^}_H

#endif
EOF

# Makefile
cat > "$projet/Makefile" << EOF
CC = gcc
CFLAGS = -Wall -Wextra -Iinclude
SRC = \$(wildcard src/*.c)
OBJ = \$(SRC:src/%.c=build/%.o)
TARGET = bin/$projet

all: \$(TARGET)

\$(TARGET): \$(OBJ)
\$(CC) \$(OBJ) -o \$@

build/%.o: src/%.c
\$(CC) \$(CFLAGS) -c \$< -o \$@

clean:
rm -f build/*.o \$(TARGET)

.PHONY: all clean
EOF

# README et .gitignore
echo "# $projet" > "$projet/README.md"
printf "build/\nbin/\n" > "$projet/.gitignore"

echo "Projet '$projet' créé."
