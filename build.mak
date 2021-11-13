
HEADERS = lib.eh ebrew.eh tokens.eh io.eh gnugas.eh types.eh parsers.eh nodes.eh lex.eh 

EBREW_UNIT = $(HEADERS) ebrew.eb
TOKENS_UNIT = $(HEADERS) tokens.eb
NODES_UNIT = $(HEADERS) nodes.eb
PARSERS_UNIT = $(HEADERS) parsers.eb
TYPES_UNIT = $(HEADERS) types.eb

BUILDING=stage3

ifeq ($(BUILDING),stage1)
BOOTSTRAP = bin
else
BOOTSTRAP_N != expr $(BUILDING:stage%=%) - 1
BOOTSTRAP = stage$(BOOTSTRAP_N)
endif


ifeq ($(BOOTSTRAP),bin)
bin/ebrew: .dummy
else
$(BOOTSTRAP)/ebrew: .dummy
	@$(MAKE) -f build.mak --no-print-directory BUILDING=$(BOOTSTRAP) $(BOOTSTRAP)/ebrew
endif

$(BUILDING): .dummy
	mkdir -p $(BUILDING)

$(BUILDING)/ebrew: $(BUILDING)/ebrew.o $(BUILDING)/nodes.o $(BUILDING)/tokens.o $(BUILDING)/parsers.o $(BUILDING)/types.o
	ld -o $@ -m elf_x86_64 $^

%.o: %.s
	as -g -o $@ -c $^

$(BUILDING)/ebrew.s: $(EBREW_UNIT) | $(BOOTSTRAP)/ebrew $(BUILDING)
	cat $^ | $(BOOTSTRAP)/ebrew > $@

$(BUILDING)/tokens.s: $(TOKENS_UNIT) | $(BOOTSTRAP)/ebrew $(BUILDING)
	cat $^ | $(BOOTSTRAP)/ebrew > $@

$(BUILDING)/nodes.s: $(NODES_UNIT) | $(BOOTSTRAP)/ebrew $(BUILDING)
	cat $^ | $(BOOTSTRAP)/ebrew > $@

$(BUILDING)/parsers.s: $(PARSERS_UNIT) | $(BOOTSTRAP)/ebrew $(BUILDING)
	cat $^ | $(BOOTSTRAP)/ebrew > $@

$(BUILDING)/types.s: $(TYPES_UNIT) | $(BOOTSTRAP)/ebrew $(BUILDING)
	cat $^ | $(BOOTSTRAP)/ebrew > $@

.dummy:
