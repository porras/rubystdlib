libmylib.dylib: mylib.cr
	crystal mylib.cr --link-flags "-dynamic -bundle -Wl,-undefined,dynamic_lookup" -o libmylib.dylib

.PHONY: clean run

clean:
	rm *.dylib

run: libmylib.dylib
	ruby mylib.rb
