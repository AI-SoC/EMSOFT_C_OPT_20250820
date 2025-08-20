main.o: main.c
	gcc -c main.c -I./hl

foo.o: foo.c
	gcc -c foo.c -I./hl 

all: main.o foo.o
	gcc -o main main.o foo.o
	main
