all: getstd.c
	gcc -c -fPIC getstd.c -o getstd.o
	gcc getstd.o -shared -o libgetstd.so
