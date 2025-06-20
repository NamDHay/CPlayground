CC ?= gcc
CFLAGS ?= -g

src = fresher
out = output

all: env evenbit bubbleSort fibonacci

env:
	mkdir -p ${out}

evenbit: env
	${CC} -Wall ${src}/evenbit.c -o ${out}/evenbit

bubbleSort: env
	${CC} -Wall ${src}/bubbleSort.c -o ${out}/bubbleSort

fibonacci: env
	${CC} -Wall ${src}/fibonacci.c -o ${out}/fibonacci

clean:
	rm -rf ${out}
