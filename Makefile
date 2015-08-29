-include Makefile.settings

CFLAGS+=-fPIC

all: otr.so

otr.so: otr.o
	$(CC) $(CFLAGS) -shared $(LDFLAGS) $< -o $@ $(OTRFLAGS)

clean:
	rm -f otr.o otr.so

distclean: clean
	rm -f Makefile.settings

.PHONY: clean distclean
