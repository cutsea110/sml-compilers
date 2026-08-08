SMLSHARP = smlsharp
SMLFLAGS = -O2
LIBS =
all: main/Main
main/Main: readstring/ReadString.smi main/Top.smi main/Main.smi \
 readstring/ReadString.o main/Top.o main/Main.o
	$(SMLSHARP) $(LDFLAGS) -o main/Main main/Main.smi $(LIBS)
readstring/ReadString.o: readstring/ReadString.sml readstring/ReadString.smi
	$(SMLSHARP) $(SMLFLAGS) -o readstring/ReadString.o -c \
 readstring/ReadString.sml
main/Top.o: main/Top.sml readstring/ReadString.smi main/Top.smi
	$(SMLSHARP) $(SMLFLAGS) -o main/Top.o -c main/Top.sml
main/Main.o: main/Main.sml readstring/ReadString.smi main/Top.smi main/Main.smi
	$(SMLSHARP) $(SMLFLAGS) -o main/Main.o -c main/Main.sml
