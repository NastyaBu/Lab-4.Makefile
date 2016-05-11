.PHONY: clean
#Zametka Soni.bin/lab4 lab4-ipolnyaemiy file
bin/lab4: obj/main.o obj/sort.o
	gcc -Wall -o bin/lab4 obj/main.o obj/sort.o

obj/main.o: src/main.c
	gcc -o obj/main.o -c  src/main.c

obj/sort.o: src/sort.c
	gcc -o obj/sort.o -c src/sort.c

clean:
	rm -f bin/lab4 obj/main.o obj/sort.o