default: stage5

bin:
	mkdir -p bin

bin/ebrew.o: ebrew.s | bin
	as -o $@ -c $^

bin/ebrew: bin/ebrew.o | bin
	ld -o $@ $^

stage%: ebrew.eb lib.eh bin/ebrew
	mkdir -p $@
	$(MAKE) -f build.mak --no-print-directory STAGE=$@ $@/ebrew

clean:
	rm -rf bin stage*