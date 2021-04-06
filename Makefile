BIN  = c-
CC   = g++ -std=c++14
CFLAGS = -DCPLUSPLUS -g    # for use with C++ if file ext is .c

SRCS = $(BIN).y $(BIN).l util.c ourgetopt.c main.cpp symbolTable.cpp yyerror.cpp
HDRS = scanType.h globals.h util.h ourgetopt.h symbolTable.h yyerror.h
OBJS = lex.yy.o $(BIN).tab.o  main.o util.o ourgetopt.o symbolTable.o yyerror.o
LIBS = -lm 
EXEC = bin

$(BIN): $(OBJS) $(HDRS)
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o $(BIN)

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
