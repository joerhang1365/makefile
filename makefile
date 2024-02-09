CC=gcc
CFLAGS= -g -O0 -std=c99 -Wall -Werror -Wpedantic -I./include
LDFLAGS= -lm
PROJECT_NAME=program

SOURCE_FILES=$(wildcard src/*.c)

build:
	$(CC) $(CFLAGS) $(LDFLAGS) main.c $(SOURCE_FILES) -o $(PROJECT_NAME)

clean:
	rm -f $(PROJECT_NAME)
