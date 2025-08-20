all:
#   build: compiling + assembling + linking. (3 stemp전체)
#	gcc -o maine main.c

# compile only : c --> assembly code generation
	gcc -o main.s -S main.c 
	gcc -o incr_v1.s -S incr_v1.c
	gcc -o incr_v2.s -S incr_v2.c

# assembling only: assembly -> binary code (machine, object)
	as -o main.o main.s
	as -o incr_v1.o incr_v1.s
	as -o incr_v2.o incr_v2.s

# linking..: integrating all object and library
	gcc -o main main.o incr_v1.o incr_v2.o
	objdump -d -S main > main_dis.s

# Executing...
	./main

clean:
	rm -rf main *.o
