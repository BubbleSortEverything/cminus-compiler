BIN  = c-
BIN2 = tree_test
CC   = g++ -std=c++14
CFLAGS = -DCPLUSPLUS -g    # for use with C++ if file ext is .c

SRCS = $(BIN).y $(BIN).l util.c ourgetopt.c
HDRS = scanType.h globals.h util.h ourgetopt.h
OBJS = lex.yy.o $(BIN).tab.o util.o ourgetopt.o
OBJS2 = util.o
LIBS = -lm 
EXEC = bin

$(BIN): $(OBJS) $(HDRS)
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o $(BIN)
# 	$(CC) $(CFLAGS) $(OBJS2) $(LIBS) -o $(EXEC)/$(BIN2)

# gcc -c part1.c -o part1.o
# gcc -c implementations.c -o implementations.o 
# gcc implementations.o part1.o -o myapp

$(BIN).tab.h $(BIN).tab.c: $(BIN).y
	bison -v -t -d $(BIN).y  

lex.yy.c: $(BIN).l $(BIN).tab.h
	flex $(BIN).l

all:    
	touch $(SRCS)
	make

clean:
	rm -f $(OBJS) $(BIN) lex.yy.c $(BIN).tab.h $(BIN).tab.c $(BIN).tar $(BIN).output *~

tar:
	tar -cvf $(BIN).tar $(SRCS) $(HDRS) makefile 
	ls -l $(BIN).tar
