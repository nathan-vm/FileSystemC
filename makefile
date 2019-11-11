main:	main.o	funcao.o	remover.o
	gcc main.o funcao.o remover.o -o main

main.o:	main.c
	gcc -c main.c
	
funcao.o:	funcao.c	funcao.h
	gcc -c funcao.c

remover.o:	remover.c	funcao.h
	gcc -c remover.c
	
clean:
	rm	*.o
