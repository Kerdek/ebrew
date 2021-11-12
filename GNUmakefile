
HEADERS = lib.eh ebrew.eh tokens.eh io.eh gnugas.eh types.eh parsers.eh nodes.eh lex.eh 

EBREW_UNIT = $(HEADERS) ebrew.eb
TOKENS_UNIT = $(HEADERS) tokens.eb
NODES_UNIT = $(HEADERS) nodes.eb
PARSERS_UNIT = $(HEADERS) parsers.eb
TYPES_UNIT = $(HEADERS) types.eb

BOOT != find bin -name 'ebrew-*' | sort --version-sort | tail -n 1

default: all

all: .dummy
	$(MAKE) --no-print-directory stage/ebrew stagea/ebrew stageaa/ebrew stageaaa/ebrew bin/ebrew

info: .dummy
	@echo "using bootstrap compiler: $(BOOT)"

bin/ebrew: stageaaa/ebrew
	cp $^ $@

%/ebrew: %/ebrew.o %/nodes.o %/tokens.o %/parsers.o %/types.o
	ld -o $@ -m elf_x86_64 $^

%.o: %.a
	as -g -o $@ -c $^

stage/ebrew.a: $(EBREW_UNIT)
	cat $^ | $(BOOT) > $@
%a/ebrew.a: $(EBREW_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

stage/tokens.a: $(TOKENS_UNIT)
	cat $^ | $(BOOT) > $@
%a/tokens.a: $(TOKENS_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

stage/nodes.a: $(NODES_UNIT)
	cat $^ | $(BOOT) > $@
%a/nodes.a: $(NODES_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

stage/parsers.a: $(PARSERS_UNIT)
	cat $^ | $(BOOT) > $@
%a/parsers.a: $(PARSERS_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

stage/types.a: $(TYPES_UNIT)
	cat $^ | $(BOOT) > $@
%a/types.a: $(TYPES_UNIT) | %/ebrew
	cat $^ | $*/ebrew > $@

clean: .dummy
	rm -f stage*/*

.dummy:
