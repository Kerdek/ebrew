
HEADERS = lib.eh ebrew.eh tokens.eh io.eh gnugas.eh types.eh parsers.eh nodes.eh lex.eh 

EBREW_UNIT = $(HEADERS) ebrew.eb tokens.eb nodes.eb parsers.eb types.eb

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

$(BUILDING)/ebrew: $(BUILDING)/ebrew.o
	ld -o $@ -m elf_x86_64 $^

%.o: %.s
	as -g -o $@ -c $^

$(BUILDING)/ebrew.s: $(EBREW_UNIT) | $(BOOTSTRAP)/ebrew $(BUILDING)
	cat $^ | $(BOOTSTRAP)/ebrew > $@

.dummy:
