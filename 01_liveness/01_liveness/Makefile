all:
#   build: compiling + assembling + linking. (3 stemp전체)
#	gcc -o main main.c

# compile only : c --> assembly code generation
	gcc -o main.s -S main.c 
	gcc -o incr.s -S incr.c

# assembling only: assembly -> binary code (machine, object)
	as -o main.o main.s
	as -o incr.o incr.s

# linking..: integrating all object and library
	gcc -o main main.o incr.o
	
# Executing...
	./main

clean:
	rm -rf main *.o
