all: prog
prog: main.o main.exe isEven.o isOdd.o
	gcc main.o main.exe isEven.o isOdd.o -o prog
main.exe: main.o
	gcc -o main.exe main.o
main.o: main.c
	gcc -c main.c
isEven.o: isEven.c
	gcc -c isEven.c
isOdd.o: isOdd.c
	gcc -c isOdd.c
clean:
	rm -rf *.o 5 main.exe
