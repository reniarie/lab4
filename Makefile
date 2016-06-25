.PHONY: clean

bin/qwrt: obj/main.o obj/qwrt.o
	gcc -o bin/qwrt obj/main.o obj/qwrt.o -lm

obj/main.o:
	gcc -c src/main.c -o obj/main.o

obj/qwrt.o:
	gcc -c src/qwrt.c -o obj/qwrt.o

clean:
	rm -rf bin/* obj/*