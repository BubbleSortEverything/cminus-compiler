BIN  = c-
CC   = g++
CFLAGS = -std=c++14 -DCPLUSPLUS -g -O1    # for use with C++ if file ext is .c

SRCS = $(BIN).y $(BIN).l main.cpp ourgetopt.c TokenTree.cpp symbolTable.cpp semantic.cpp yyerror.cpp emitcode_latest.cpp codegen.cpp
HDRS = ourgetopt.h TokenTree.h symbolTable.h semantic.h yyerror.h emitcode_latest.h codegen.h
OBJS = lex.yy.o $(BIN).tab.o main.o ourgetopt.o TokenTree.o symbolTable.o semantic.o yyerror.o emitcode_latest.o codegen.o
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
	rm -f mem.out $(OBJS) $(BIN) lex.yy.c $(BIN).tab.h $(BIN).tab.c $(BIN).tar $(BIN).output *~

tar:
	tar -cvf $(BIN).tar $(SRCS) $(HDRS) makefile 
	ls -l $(BIN).tar
