bin/ebrew: stageaaa/ebrew
	cp $^ $@

%/ebrew: %/ebrew.o %/nodes.o %/tokens.o %/parsers.o %/types.o
	ld -o $@ -m elf_x86_64 $^

%.o: %.a
	as -g -o $@ -c $^

  EBREW_UNIT = lib.eh ebrew.eh tokens.eh io.eh gnugas.eh types.eh parsers.eh nodes.eh ebrew.eb
 TOKENS_UNIT = lib.eh ebrew.eh tokens.eh tokens.eb
  NODES_UNIT = lib.eh ebrew.eh tokens.eh io.eh gnugas.eh types.eh parsers.eh nodes.eh nodes.eb
PARSERS_UNIT = lib.eh ebrew.eh tokens.eh io.eh gnugas.eh types.eh parsers.eh nodes.eh parsers.eb
  TYPES_UNIT = lib.eh ebrew.eh tokens.eh types.eh types.eb

stage/ebrew.a: $(EBREW_UNIT)
	cat $^ | $(CC) > $@
%a/ebrew.a: $(EBREW_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

stage/tokens.a: $(TOKENS_UNIT)
	cat $^ | $(CC) > $@
%a/tokens.a: $(TOKENS_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

stage/nodes.a: $(NODES_UNIT)
	cat $^ | $(CC) > $@
%a/nodes.a: $(NODES_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

stage/parsers.a: $(PARSERS_UNIT)
	cat $^ | $(CC) > $@
%a/parsers.a: $(PARSERS_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

stage/types.a: $(TYPES_UNIT)
	cat $^ | $(CC) > $@
%a/types.a: $(TYPES_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

clean:
	rm -f stage*/*