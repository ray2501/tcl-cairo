CC = gcc
LIBS =  `pkg-config --libs cairo` -ltclstub8.6
CFLAGS = -DUSE_TCL_STUBS `pkg-config --cflags cairo` -I/usr/include
SO  = libcairo.so

.PHONY: all all-before all-after clean clean-custom

all: all-before $(SO) all-after

clean: clean-custom
	rm -f *.o *.c $(SO) pkgIndex.tcl

$(SO): cairo_wrap.c
	$(CC) -shared -fPIC $(CFLAGS) cairo_wrap.c -o $(SO) $(LIBS)
	./gen_pkgIndex.tcl

cairo_wrap.c: cairo.i
	swig -tcl -namespace -pkgversion 0.1 $<

