VER = v2

add_basic.dll: add_basic.c 
	gcc -c -o add_basic.o add_basic.c
	gcc -o add_basic.dll -s -shared add_basic.o -Wl,--subsystem,windows

lib: 
	del add_basic.dll
	copy add_basic_$(VER).c add_basic.c
	make add_basic.dll

all: lib
	gcc -c -o main.o main.c
	gcc -o main.exe -s main.o -L. -ladd_basic

run:
	main.exe	

clean:
	del *.exe *.o *.dll
