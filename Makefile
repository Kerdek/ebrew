CFLAGS=

SRCS=$(wildcard *.cb)

bin/chub: bin/stage2
	bin/stage2 $(CFLAGS) -o $@ $(SRCS) $(LDFLAGS)

bin/stage2: bin/stage1
	bin/stage1 $(CFLAGS) -o $@ $(SRCS) $(LDFLAGS)

bin/stage1: $(SRCS) chub.hb
	$(CC) $(CFLAGS) -o $@ $(SRCS) $(LDFLAGS)

clean:
	rm bin/stage1 bin/stage2 bin/chub