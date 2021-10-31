bin/ebrew: bin/stage3/ebrew
	cp $^ $@

bin/stage1/ebrew: bin/stage1/ebrew.o
	ld -o $@ -m elf_x86_64 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu/10/crtbegin.o -dynamic-linker /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 $^ /usr/lib/x86_64-linux-gnu/libc.so /usr/lib/gcc/x86_64-linux-gnu/10/libgcc.a /usr/lib/gcc/x86_64-linux-gnu/10/crtend.o /usr/lib/x86_64-linux-gnu/crtn.o
bin/stage2/ebrew: bin/stage2/ebrew.o
	ld -o $@ -m elf_x86_64 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu/10/crtbegin.o -dynamic-linker /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 $^ /usr/lib/x86_64-linux-gnu/libc.so /usr/lib/gcc/x86_64-linux-gnu/10/libgcc.a /usr/lib/gcc/x86_64-linux-gnu/10/crtend.o /usr/lib/x86_64-linux-gnu/crtn.o
bin/stage3/ebrew: bin/stage3/ebrew.o
	ld -o $@ -m elf_x86_64 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu/10/crtbegin.o -dynamic-linker /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 $^ /usr/lib/x86_64-linux-gnu/libc.so /usr/lib/gcc/x86_64-linux-gnu/10/libgcc.a /usr/lib/gcc/x86_64-linux-gnu/10/crtend.o /usr/lib/x86_64-linux-gnu/crtn.o

%.o: %.a
	as -f -o $@ -c $^

bin/stage1/%.a: %.eb
	$(CC) $^ $@
bin/stage2/%.a: %.eb | bin/stage1/ebrew
	bin/stage1/ebrew $^ $@
#diff bin/stage2/$*.a bin/stage1/$*.a
bin/stage3/%.a: %.eb | bin/stage2/ebrew
	bin/stage2/ebrew $^ $@

clean:
	rm -f bin/stage*/*