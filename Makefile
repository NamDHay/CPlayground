src = fresher
out = output

.PHONY: all
all: evenbit bubbleSort fibonacci

.PHONY += env
env:
	mkdir -p ${out}

.PHONY += evenbit
evenbit: env
	${CC} -Wall ${src}/evenbit.c ${LDFLAGS} -o ${out}/evenbit

.PHONY += bubbleSort
bubbleSort: env
	${CC} -Wall ${src}/bubbleSort.c ${LDFLAGS} -o ${out}/bubbleSort

.PHONY += fibonacci
fibonacci: env
	${CC} -Wall ${src}/fibonacci.c ${LDFLAGS} -o ${out}/fibonacci

.PHONY += install
install: all
	mkdir -p $(DESTDIR)/usr/bin
	cp ${out}/* $(DESTDIR)/usr/bin/

.PHONY += clean
clean:
	rm -rf ${out}
