
#ifndef _UTIL_H_
#define _UTIL_H_

#include "stdio.h"
#include "globals.h"
#include "scanType.h"
#include "c-.tab.h"
#include "ourgetopt.h"
#include "symbolTable.h"

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string>
#include <string.h>
#include <iostream>

// #ifdef CPLUSPLUS
extern int yylex();
extern void yyerror();
extern int yyparse();
extern int yydebug;
extern FILE* yyin;
extern TreeNode* savedTree;
extern SymbolTable symbolTable;
// #endif  

using namespace std;


TreeNode *newDeclNode(DeclKind kind, ExpType type,
                      TokenData *token,
                      TreeNode *c0=NULL,
                      TreeNode *c1=NULL,
                      TreeNode *c2=NULL);  // save TokenData block!!

TreeNode *newStmtNode(StmtKind kind,
                      TokenData *token,
                      TreeNode *c0=NULL,
                      TreeNode *c1=NULL,
                      TreeNode *c2=NULL);

TreeNode *newExpNode(ExpKind kind, ExpType type,
                     TokenData *token,
                     TreeNode *c0=NULL,
                     TreeNode *c1=NULL,
                     TreeNode *c2=NULL);

TreeNode *addSibling(TreeNode *t, TreeNode *s);
TreeNode *addChild(TreeNode *p, TreeNode *c);

void setType(TreeNode *t, ExpType type, bool isStatic);

// void printTree(TreeNode *tree, int nChild, int nSibling, bool isChild, bool isSibling, string formatStr);

void printTree(TreeNode *node, string childIndent, int nSibling, bool typeFlag=false);

string declString(TreeNode *node);
string expString(TreeNode *node);
string stmtString(TreeNode *node);

string constValue(ExpType type, TreeNode* node);
string typeString(ExpType type);

#endif
