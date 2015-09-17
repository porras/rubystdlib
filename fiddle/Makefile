libmylib.so: mylib.o
	gcc -shared -o libmylib.so mylib.o

mylib.o: mylib.c
	gcc -c -Wall -Werror -fpic mylib.c

.PHONY: clean run

clean:
	rm *.o *.so

run: libmylib.so
	ruby mylib.rb
