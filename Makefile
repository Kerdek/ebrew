
default: stage5

stage%: .dummy
	mkdir -p $@
	$(MAKE) -f build.mak --no-print-directory STAGE=$@ $@/ebrew

clean: .dummy
	rm -f stage*/*
	rmdir stage*

.dummy:
