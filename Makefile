CC = gcc
OBJS = heap.o queue.o process.o main.o
HDRS = heap.h queue.h process.h

CFLAGS = -Wall

main.out : $(OBJS)
	$(CC) $(CFLAGS) -o main.out $(OBJS)

heap.o : heap.c
	$(CC) $(CFLAGS) -c heap.c

process.o : process.c
	$(CC) $(CFLAGS) -c process.c

queue.o : queue.c
	$(CC) $(CFLAGS) -c queue.c

main.o : main.c
	$(CC) $(CFLAGS) -c main.c

$(OBJS) : $(HDRS)

clean:
	rm *.o main.out