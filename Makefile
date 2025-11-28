CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -g

SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

EXEC = program

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all clean
