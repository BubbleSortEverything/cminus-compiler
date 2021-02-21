
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

//*******************************************************************

// enums of tree nodes
// typedef enum { StmtK, ExpK, DeclK } NodeKind;

// typedef enum {

// 	LoopK, WhileK, CompoundK, IfK, 
// 	ReturnK, BreakK, CallK,
// 	OpK, AssignK, VarK, FunK, ParamK,
// 	TypeK, ConstK, IdK, UnaryK, RangeK, LoopForeverK, ElsifK
// } Kind;

// typedef enum {Int, Void, Char, Bool, String } Type;


// the exact type of the token or node involved.  These are divided into
// various "kinds" in the enums that follow

// Kinds of Operators
// these are the token numbers for the operators same as in flex
typedef int OpKind;  

// Kinds of Statements
//typedef enum {DeclK, StmtK, ExpK} NodeKind;
enum NodeKind {DeclK, StmtK, ExpK, TypeK};

// Subkinds of Declarations
enum DeclKind {VarK, FuncK, ParamK};

// Subkinds of Statements
enum  StmtKind {NullK, IfK, WhileK, ForK, CompoundK, ReturnK, BreakK, RangeK};

// Subkinds of Expressions
enum ExpKind {OpK, ConstantK, IdK, AssignK, InitK, CallK};

// ExpType is used for type checking (Void means no type or value, UndefinedType means undefined)
enum ExpType {Void, Integer, Boolean, Char, CharInt, Equal, UndefinedType};

// What kind of scoping is used?  (decided during typing)
enum VarKind {None, Local, Global, Parameter, LocalStatic};


#define MAXCHILDREN 3

typedef struct treeNode {
    // connectivity in the tree
    struct treeNode *child[MAXCHILDREN];   // children of the node
    struct treeNode *sibling;              // siblings for the node

    // what kind of node
    int lineno;                            // linenum relevant to this node
    NodeKind nodekind;                     // type of this node
    union {                                  // subtype of type
        DeclKind decl;                     // used when DeclK
        StmtKind stmt;                     // used when StmtK
        ExpKind exp;                      // used when ExpK
    } subkind;
    
    // extra properties about the node depending on type of the node
    union {                                  // relevant data to type -> attr
        OpKind op;                         // type of token (same as in bison)
        int value;                         // used when an integer constant or boolean
        unsigned char cvalue;               // used when a character
        char *string;                      // used when a string constant
        char *name;                        // used when IdK
    } attr;                                 
    ExpType expType;                   // used when ExpK for type checking
    bool isArray;                          // is this an array
    bool isStatic;                         // is staticly allocated?

    TokenData* token;           // for tokens

    // even more semantic stuff will go here in later assignments.
} TreeNode;
#endif


// struct TreeNode
// {
//     int lineno;             
//     char * svalue; 

//     bool isStatic;         
//     bool isArray; 

//     NodeKind nodekind;  
//     Kind kind;          
//     Type nodetype;          

//     TokenData * token;      
//     int arraySize;          
    
//     int numChildren;                        
//     struct TreeNode *child[MAXCHILDREN]; 
//     bool isConstant;   
//     struct TreeNode *sibling;               

     
         
//     bool isIndex;          
       
// };
