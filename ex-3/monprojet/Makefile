CC = gcc
CFLAGS = -Wall -Wextra -Iinclude
SRC = $(wildcard src/*.c)
OBJ = $(SRC:src/%.c=build/%.o)
TARGET = bin/monprojet

all: $(TARGET)

$(TARGET): $(OBJ)
$(CC) $(OBJ) -o $@

build/%.o: src/%.c
$(CC) $(CFLAGS) -c $< -o $@

clean:
rm -f build/*.o $(TARGET)

.PHONY: all clean
