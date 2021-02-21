
#ifndef _UTIL_H_
#define _UTIL_H_

#include "globals.h"
#include "stdio.h"
#include <string>
#include <iostream>

using namespace std;


TreeNode *newDeclNode(DeclKind kind, ExpType type,
                      TokenData *token=NULL,
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

void setType(TreeNode *t, ExpType type, bool isStatic);

// void printTree(TreeNode *tree, int nChild, int nSibling, bool isChild, bool isSibling, string formatStr);

void printTree(TreeNode *node, int indent, int nSibling);

string declString(TreeNode *node);
string typeString(ExpType type);
#endif
