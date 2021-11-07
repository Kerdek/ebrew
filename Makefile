bin/ebrew: bin/stage3/ebrew
	cp $^ $@

bin/stage1/ebrew: bin/stage1/ebrew.o bin/stage1/nodes.o bin/stage1/tokens.o bin/stage1/parsers.o bin/stage1/types.o
	ld -o $@ -m elf_x86_64 $^
bin/stage2/ebrew: bin/stage2/ebrew.o bin/stage2/nodes.o bin/stage2/tokens.o bin/stage2/parsers.o bin/stage2/types.o
	ld -o $@ -m elf_x86_64 $^
bin/stage3/ebrew: bin/stage3/ebrew.o bin/stage3/nodes.o bin/stage3/tokens.o bin/stage3/parsers.o bin/stage3/types.o
	ld -o $@ -m elf_x86_64 $^

%.o: %.a
	as -g -o $@ -c $^

bin/stage1/ebrew.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh ebrew.eb
	cat $^ | $(CC) > $@
bin/stage2/ebrew.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh ebrew.eb | bin/stage1/ebrew
	cat $^ | bin/stage1/ebrew > $@
bin/stage3/ebrew.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh ebrew.eb | bin/stage2/ebrew
	cat $^ | bin/stage2/ebrew > $@

bin/stage1/tokens.a: lib.eh ebrew.eh tokens.eh tokens.eb
	cat $^ | $(CC) > $@
bin/stage2/tokens.a: lib.eh ebrew.eh tokens.eh tokens.eb | bin/stage1/ebrew
	cat $^ | bin/stage1/ebrew > $@
bin/stage3/tokens.a: lib.eh ebrew.eh tokens.eh tokens.eb | bin/stage2/ebrew
	cat $^ | bin/stage2/ebrew > $@

bin/stage1/nodes.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh types.eh nodes.eh nodes.eb
	cat $^ | $(CC) > $@
bin/stage2/nodes.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh types.eh nodes.eh nodes.eb | bin/stage1/ebrew
	cat $^ | bin/stage1/ebrew > $@
bin/stage3/nodes.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh types.eh nodes.eh nodes.eb | bin/stage2/ebrew
	cat $^ | bin/stage2/ebrew > $@

bin/stage1/parsers.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh types.eh nodes.eh parsers.eb
	cat $^ | $(CC) > $@
bin/stage2/parsers.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh types.eh nodes.eh parsers.eb | bin/stage1/ebrew
	cat $^ | bin/stage1/ebrew > $@
bin/stage3/parsers.a: lib.eh ebrew.eh tokens.eh io.eh gnugas.eh parsers.eh types.eh nodes.eh parsers.eb | bin/stage2/ebrew
	cat $^ | bin/stage2/ebrew > $@

bin/stage1/types.a: lib.eh ebrew.eh types.eh types.eb
	cat $^ | $(CC) > $@
bin/stage2/types.a: lib.eh ebrew.eh types.eh types.eb | bin/stage1/ebrew
	cat $^ | bin/stage1/ebrew > $@
bin/stage3/types.a: lib.eh ebrew.eh types.eh types.eb | bin/stage2/ebrew
	cat $^ | bin/stage2/ebrew > $@

clean:
	rm -f bin/stage*/*