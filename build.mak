ifeq ($(STAGE),stage1)
BOOTSTRAP = bin
else
BOOTSTRAP_N != expr $(STAGE:stage%=%) - 1
BOOTSTRAP = stage$(BOOTSTRAP_N)
endif

ifeq ($(BOOTSTRAP),bin)
bin/ebrew:
else
$(BOOTSTRAP)/ebrew:
	@$(MAKE) -f build.mak --no-print-directory STAGE=$(BOOTSTRAP) $(BOOTSTRAP)/ebrew
endif

$(STAGE):
	mkdir -p $(STAGE)

%ebrew: %ebrew.o
	ld -o $@ $^

%ebrew.o: %ebrew.s
	as -o $@ -c $^

$(STAGE)/ebrew.s: lib.eh ebrew.eb | $(BOOTSTRAP)/ebrew $(STAGE)
	cat $^ | $(BOOTSTRAP)/ebrew > $@

.dummy:
