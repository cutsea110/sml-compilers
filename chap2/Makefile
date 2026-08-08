SMLSHARP = smlsharp
SMLFLAGS = -O2
LIBS =
all: Main
Main: src/TM.smi src/Eval.smi src/Main.smi src/TM.o src/Eval.o src/Main.o
	$(SMLSHARP) $(LDFLAGS) -o Main src/Main.smi $(LIBS)
src/TM.o: src/TM.sml src/TM.smi
	$(SMLSHARP) $(SMLFLAGS) -o src/TM.o -c src/TM.sml
src/Eval.o: src/Eval.sml src/TM.smi src/Eval.smi
	$(SMLSHARP) $(SMLFLAGS) -o src/Eval.o -c src/Eval.sml
src/Main.o: src/Main.sml src/TM.smi src/Eval.smi src/Main.smi
	$(SMLSHARP) $(SMLFLAGS) -o src/Main.o -c src/Main.sml
clean:
	rm Main src/*.o

