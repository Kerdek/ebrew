default: stage5

bin:
	mkdir -p bin

bin/ebrew.o: ebrew.s | bin
	as -o $@ -c $^

bin/ebrew: bin/ebrew.o bin/def.o | bin
	ld -o $@ $^

bin/def.o: def.s | bin
	as -o $@ -c $^

stage%: ebrew.eb lib.eh bin/ebrew bin/def.o
	mkdir -p $@
	$(MAKE) -f build.mak --no-print-directory STAGE=$@ $@/ebrew

clean:
	rm -rf bin stage*