CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -g

SRC = main.c chunk.c debug.c memory.c
OBJ = $(SRC:.c=.o)
DEPS = chunk.h debug.h memory.h common.h

EXEC = program

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all clean
