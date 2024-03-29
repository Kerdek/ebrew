default: stage10

bin:
	mkdir -p bin

bin/ebrew.o: ebrew.s | bin
	as -o $@ -c $^

bin/ebrew: bin/ebrew.o | bin
	ld -o $@ $^

STAGE.s = cat ebrew.eb | $$LAST > $$NEXT.s
STAGE.o = as -o $$NEXT.o -c $$NEXT.s
STAGE = ld -o $$NEXT $$NEXT.o

stage%: ebrew.eb bin/ebrew
	@LAST=bin/ebrew; \
	for i in $$(seq 1 $(@:stage%=%)); do \
		NEXT=stage$$i/ebrew; \
			mkdir -p stage$$i; \
			echo "$(STAGE.s)"; $(STAGE.s) || exit 1; \
			echo "$(STAGE.o)"; $(STAGE.o) || exit 1; \
			echo "$(STAGE)"; $(STAGE) || exit 1; \
		 LAST=$$NEXT; \
	done

clean:
	rm -rf bin
	rm -rf stage*
