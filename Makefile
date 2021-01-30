BIN  = parser
BIN2 = c-
CC   = g++ -std=c++11
CFLAGS = -DCPLUSPLUS -g -O3 -Wall     # for use with C++ if file ext is .c

SRCS = $(BIN).y $(BIN).l
HDRS = scanType.h
OBJS = lex.yy.o $(BIN).tab.o
LIBS = -lm 

$(BIN): $(OBJS)
	$(CC) -w $(CFLAGS) $(OBJS) $(LIBS) -o $(BIN2)

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