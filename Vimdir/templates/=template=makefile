SOURCE = 
TARGET = /tmp/main.o

main.o: $(SOURCE)
	g++ $(SOURCE) -o ${TARGET}

check:
	valgrind --tool=memcheck --leak-check=full --track-origins=yes ${TARGET}

run:
	${TARGET}

clean:
	rm ${TARGET}
