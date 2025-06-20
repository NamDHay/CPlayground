src:=fresher
out:=output

all: evenbit bubbleSort fibonacci

evenbit: 
	gcc -Wall ${src}/evenbit.c -o ${out}/evenbit

bubbleSort: 
	gcc -Wall ${src}/bubbleSort.c -o ${out}/bubbleSort

fibonacci: 
	gcc -Wall ${src}/fibonacci.c -o ${out}/fibonacci

clean:
	rm -rf ${out}/*
