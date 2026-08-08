.PHONY: all chap2 chap3 clean

all: chap2 chap3

chap2:
	$(MAKE) -C chap2/src

chap3:
	$(MAKE) -C chap3/main

clean:
	$(MAKE) -C chap2/src clean
	$(MAKE) -C chap3/main clean
