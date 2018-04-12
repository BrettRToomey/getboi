CC=kai
EXEC=getboi

debug:   CFLAGS =
release: CFLAGS = -O3

all: debug

app:
	$(CC) -o $(EXEC) $(CFLAGS) src/main.kai

debug: app
release: app

test:
	$(CC) -test -o all src/main.kai 
	./test_all

.PHONY: all test app debug release
