CC=g
CFLAGS=-W -Wall -ansi -pedantic
LDFLAGS=
EXEC=tobor
DIR=Source
SRC= $(wildcard $(DIR)*.c)
OBJ= $(SRC:.c=.o)

all: $(EXEC)

tobor: $(OBJ)
	@$(CC) -o $@ $^ $(LDFLAGS)

main.o: main.h

%.o: %.c
	@$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper

clean:
	@rm -rf *.o

mrproper: clean
	@rm -rf $(EXEC)