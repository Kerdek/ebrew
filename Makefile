
default: stage3

stage%: .dummy
	mkdir -p $@
	$(MAKE) -f build.mak --no-print-directory BUILDING=$@ $@/ebrew

clean: .dummy
	rm -f stage*/*
	rmdir stage*

.dummy:
