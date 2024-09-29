CC := gcc
CFLAGS := -Werror -Wall -Wextra 
TARGET := test
OBJS := 

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) -lm -lSDL2 

test : ./tests/tests.c
	$(CC) $(CFLAGS) -o test ./tests/tests.c -lm -lSDL2 -lcunit

.PHONY: clean
clean :
	rm -r *.o test
