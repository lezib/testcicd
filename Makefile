# Variables
CC = gcc
CFLAGS := -Werror -Wall -Wextra 
LIBS_MAIN = -lSDL2
LIBS_TEST = -lSDL2 -lcunit

# Fichiers objets
OBJ_MAIN = calculator.c
OBJ_TESTS = calculator.c tests/tests.c

# Cible principale (application)
calculator: $(OBJ_MAIN)
	$(CC) $(CFLAGS) -o calculator $(OBJ_MAIN) $(LIBS_MAIN)

# Cible pour les tests (avec TEST_MODE)
testsuite: $(OBJ_TESTS)
	$(CC) $(CFLAGS) -DTEST_MODE -o testsuite $(OBJ_TESTS) $(LIBS_TEST)

# Règles de compilation
# calculator.o: calculator.c
# 	$(CC) $(CFLAGS) -c calculator.c $(LIBS)
#
# tests/tests.o: tests/tests.c
# 	$(CC) $(CFLAGS) -DTEST_MODE -c tests/tests.c $(LIBS)
#
# Nettoyage
clean:
	rm -f *.o tests/*.o calculator testsuite
