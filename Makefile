bin/ebrew: bin/stage3/ebrew
	cp $^ $@

bin/stage1/ebrew: bin/stage1/ebrew.o
	ld -o $@ -m elf_x86_64 $^
	strip $@
bin/stage2/ebrew: bin/stage2/ebrew.o
	ld -o $@ -m elf_x86_64 $^
	strip $@
bin/stage3/ebrew: bin/stage3/ebrew.o
	ld -o $@ -m elf_x86_64 $^
	strip $@

%.o: %.a
	as -o $@ -c $^

bin/stage1/%.a: %.eb
	$(CC) < $^ > $@
bin/stage2/%.a: %.eb | bin/stage1/ebrew
	bin/stage1/ebrew < $^ > $@
bin/stage3/%.a: %.eb | bin/stage2/ebrew
	bin/stage2/ebrew < $^ > $@

clean:
	rm -f bin/stage*/*