all: build run

build: main
	chmod +x main

main: obj/main.o obj/sum.o
	g++ obj/main.o obj/sum.o -o main

obj/sum.o: sum.cpp | obj
	g++ -c sum.cpp -o obj/sum.o

obj/main.o: main.cpp sum.h | obj
	g++ -c main.cpp -o obj/main.o

obj:
	mkdir obj

run: main
	./main
