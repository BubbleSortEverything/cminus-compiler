
#ifndef _GLOBALS_H_
#define _GLOBALS_H_

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include "scanType.h"


#define ENDFILE 0

#ifndef FALSE
#define FALSE 0
#endif

#ifndef TRUE
#define TRUE 1
#endif

#define MAXRESERVED 8

typedef int TokenType; 

extern FILE* source; 
extern FILE* listing; 
extern FILE* code; 

extern int lineno; 

/*  Node kinds, expression kinds, expression types, and variable kinds.
 */
enum NodeKind { DeclK, StmtK, ExpK };
enum DeclKind { VarK, FuncK, ParamK };
enum VarKind  { None, Local, Global, Parameter, LocalStatic };
enum ExpKind  { OpK, ConstantK, IdK, AssignK, InitK, CallK };
enum ExpType  { Void, Integer, Boolean, Char, CharInt, Equal, UndefinedType };
enum StmtKind { NullK, IfK, WhileK, ForK, CompoundK, ReturnK, BreakK, RangeK };

typedef int OpKind;  

#define MAXCHILDREN 3

/* Node structure
 */
typedef struct treeNode {

    /* connectivity in the tree
     */
    struct treeNode *child[MAXCHILDREN];   // children of the node
    struct treeNode *sibling;              // siblings for the node

    /* What kind of node
     */
    int lineno;                            // linenum relevant to this node
    NodeKind nodekind;                     // type of this node
    union {                                  // subtype of type
        DeclKind decl;                     // used when DeclK
        StmtKind stmt;                     // used when StmtK
        ExpKind exp;                      // used when ExpK
    } subkind;
    
    /* Extra properties about the node depending on type of the node
     */
    union {                                  // relevant data to type -> attr
        OpKind op;                         // type of token (same as in bison)
        int value;                         // used when an integer constant or boolean
        int arrSize;                    // size of array if array
        unsigned char cvalue;               // used when a character
        char *string;                      // used when a string constant
        char *name;                        // used when IdK
    } attr;

    ExpType expType;                   // used when ExpK for type checking
    
    /* Memory management
     */
    int memOffset;
    VarKind varKind;
    int memSize;

    /* Boolean properties
     */
    bool isUsed;                       // true if the variable is used.
    bool isArray;                          // is this an array
    bool isStatic;                         // is staticly allocated?
    bool hasReturn;
    bool changedToInt;                        // is sizeof an array
    bool isInitialized;

    bool isInit;
    bool isAlreadySeen;

    TokenData* token;           // for tokens

    // even more semantic stuff will go here in later assignments.
} TreeNode;
#endif
