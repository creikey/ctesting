CFILES=*.c
OFILES=*.o
HEADERS=*.h
HEADERDIR=ctesting
GCHFILES=*.gch
LIBNAME=libctesting.a

.PHONY: clean

install: core headers
	sudo cp lib/$(LIBNAME) /usr/local/lib
	sudo cp -r include/$(HEADERDIR) /usr/local/include

mobile: core headers
	cp lib/$(LIBNAME) /data/data/com.termux/files/usr/lib
	cp -r include/$(HEADERDIR) /data/data/com.termux/files/usr/include

uninstall:
	-sudo rm /usr/local/lib/$(LIBNAME)
	-sudo rm -r /usr/local/include/$(HEADERDIR)

core:
	gcc -c $(CFILES)
	-mkdir lib/
	ar rcs $(LIBNAME) *.o
	cp $(LIBNAME) lib/

headers:
	-mkdir -p include/$(HEADERDIR)
	cp $(HEADERS) include/$(HEADERDIR)

clean:
	-rm $(OFILES)
	-rm $(GCHFILES)
	-rm -r lib/
	-rm -r include/
