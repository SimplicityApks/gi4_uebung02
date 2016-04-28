CC = gcc
CFLAGS = -Wall -g   	# compiler flags
LDFLAGS =               # no linker flags

TARGET = editor
SRC = main.c input.c
OBJ = $(SRC:%.c=%.o)

.PHONY: default clean install depend

default: editor

clean:
	rm -f $(TARGET) $(OBJ) dependencies

install: $(TARGET)
	cp $(TARGET) /usr/bin/$(TARGET)
	chmod 555 /usr/bin/$(TARGET)

depend:
	gcc -MM $(SRC) > dependencies


$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

main.o: main.c input.o utils.h

input.o: input.c types.h

utils.h: types.h defs.h

# include dependencies if they have been generated, otherwise use the defaults above
-include dependencies


%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@
