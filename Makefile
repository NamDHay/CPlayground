src = fresher
out = output

all: env evenbit bubbleSort fibonacci

env:
	mkdir -p ${out}

evenbit: env
	${CC} -Wall ${src}/evenbit.c ${LDFLAGS} -o ${out}/evenbit

bubbleSort: env
	${CC} -Wall ${src}/bubbleSort.c ${LDFLAGS} -o ${out}/bubbleSort

fibonacci: env
	${CC} -Wall ${src}/fibonacci.c ${LDFLAGS} -o ${out}/fibonacci

install:
	mkdir -p $(DESTDIR)/usr/bin
	cp ${out}/* $(DESTDIR)/usr/bin/

clean:
	rm -rf ${out}
