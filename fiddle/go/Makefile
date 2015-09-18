libmylib.so: mylib.go
	go build -buildmode=c-shared -o libmylib.so mylib.go

.PHONY: clean run

clean:
	rm *.so

run: libmylib.so
	ruby mylib.rb
