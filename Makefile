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
	$(CC) -test src/main.kai

.PHONY: all app debug release
