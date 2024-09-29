CC := gcc
CFLAGS := -Werror -Wall -Wextra 
TARGET := main
OBJS := 

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) -lm -lSDL2 

test_suite : ./tests/tests.c
	$(CC) $(CFLAGS) -o test_suite ./tests/tests.c -lm -lSDL2 -lcunit

.PHONY: clean
clean :
	rm -r *.o $(TARGET)
