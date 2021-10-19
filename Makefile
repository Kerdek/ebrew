bin/chub: bin/stage3/chub
	cp $^ $@

bin/stage1/chub: bin/stage1/codegen.o bin/stage1/main.o bin/stage1/parse.o bin/stage1/tokenize.o bin/stage1/type.o
	ld -o $@ -m elf_x86_64 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu/10/crtbegin.o -dynamic-linker /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 $^ /usr/lib/x86_64-linux-gnu/libc.so /usr/lib/gcc/x86_64-linux-gnu/10/libgcc.a /usr/lib/gcc/x86_64-linux-gnu/10/crtend.o /usr/lib/x86_64-linux-gnu/crtn.o
bin/stage2/chub: bin/stage2/codegen.o bin/stage2/main.o bin/stage2/parse.o bin/stage2/tokenize.o bin/stage2/type.o
	ld -o $@ -m elf_x86_64 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu/10/crtbegin.o -dynamic-linker /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 $^ /usr/lib/x86_64-linux-gnu/libc.so /usr/lib/gcc/x86_64-linux-gnu/10/libgcc.a /usr/lib/gcc/x86_64-linux-gnu/10/crtend.o /usr/lib/x86_64-linux-gnu/crtn.o
bin/stage3/chub: bin/stage3/codegen.o bin/stage3/main.o bin/stage3/parse.o bin/stage3/tokenize.o bin/stage3/type.o
	ld -o $@ -m elf_x86_64 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu/10/crtbegin.o -dynamic-linker /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 $^ /usr/lib/x86_64-linux-gnu/libc.so /usr/lib/gcc/x86_64-linux-gnu/10/libgcc.a /usr/lib/gcc/x86_64-linux-gnu/10/crtend.o /usr/lib/x86_64-linux-gnu/crtn.o

%.o: %.a
	as -o $@ -c $^

bin/stage1/%.a: %.cb
	$(CC) $^ ; mv $*.a $@
bin/stage2/%.a: %.cb | bin/stage1/chub
	bin/stage1/chub $^ ; mv $*.a $@
bin/stage3/%.a: %.cb | bin/stage2/chub
	bin/stage2/chub $^ ; mv $*.a $@

*.cb : | chub.hb

clean:
	rm bin/stage*/*