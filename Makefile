CC = gcc
AR = ar
CFLAGS = -Wall -Wextra -std=c11

.PHONY: all clean

all: calculator.exe

calculator.exe: main.o libcalculator.a
	$(CC) $(CFLAGS) -o $@ main.o libcalculator.a

libcalculator.a: calculator.o
	$(AR) rcs $@ calculator.o

main.o: main.c calculator.h
	$(CC) $(CFLAGS) -c main.c -o main.o

calculator.o: calculator.c calculator.h
	$(CC) $(CFLAGS) -c calculator.c -o calculator.o

clean:
	rm -f main.o calculator.o libcalculator.a calculator.exe
