override CFLAGS += -I./
override LDLIBS += -lsharedexample

all : shared-lib-dependee-example

shared-lib-dependee-example: shared-lib-dependee-example.o
	$(CC) $(LDFLAGS) -o shared-lib-dependee-example shared-lib-dependee-example.o $(LDLIBS)

shared-lib-dependee-example.o :  shared-lib-dependee-example.c
	$(CC) $(CFLAGS) -c shared-lib-dependee-example.c

clean :
	rm -rf *.so *.o
