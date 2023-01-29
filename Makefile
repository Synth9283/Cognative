TARGET = main
CC = gcc
RUNOBJS = main.o
CFLAGS = -I/usr/local/include -g
LINKLIBS = -g -ldiscord -lcurl -lm -lpthread -pthread -lsqlite3 `pkg-config --cflags --libs gtk+-3.0` -L/usr/local/lib

all: $(TARGET)

$(TARGET): $(RUNOBJS)
	$(CC) $(OBJS) $(RUNOBJS) $(LINKLIBS) -o main

.SUFFIXES: .c .o

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -rfv $(OBJS) $(RUNOBJS) $(TARGET)
