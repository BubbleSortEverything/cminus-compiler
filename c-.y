%{ 
#include <stdio.h>
#include <stdlib.h>
#include "scanType.h"
#include "globals.h"
#include "util.h"
#include <string>
#include <iostream>
#include "ourgetopt.h"

using namespace std;

TreeNode *savedTree;     /* stores syntax tree */

#ifdef CPLUSPLUS
extern int yylex();
extern FILE* yyin;
#endif

void yyerror(const char *msg) {
    printf("ERROR(PARSER): %s\n", msg);
}

%}


%union {
    ExpType type;            // for passing types.  typespec to pass up a type in decl like int or bool
    TreeNode *treeNode;
    TokenData *tokenData;
}

// token specifies the token classes from the scanner
%token <tokenData> INT ID BOOL BY BOOLCONST NUMCONST MIN MAX ADDASS SUBASS DIVASS MULASS EQ LEQ GEQ NEQ 
%token <tokenData> AND OR NOT IF THEN TO ELSIF ELSE WHILE FOR DO BREAK LOOP RANGE FOREVER STATIC RETURN 
%token <tokenData> CHAR DEC INC CHARCONST STRINGCONST UNDEFINED ';' ',' '[' ']' '(' ')' '{' '}' '=' '<' '>' '+' '-' '*' '/' '%' '?' ':'

//type specifies the token classes used only in the parser
%type <treeNode> program declList decl varDeclaration varDeclList varDeclInitialize varDeclId typeSpecifier//simpleExpression
//%type <treeNode> andExpression unaryRelExpression relExpression sumExpression mulExpression unaryExpression factor immutable 
//%type <treeNode> constant typeSpecifier scopedTypeSpecifier scopedVarDeclaration paramId paramIdList paramTypeList paramList 
//%type <treeNode> params funDeclaration argList args call expression relop mulop unaryop mutable sumop statement matched expressionStmt 
//%type <treeNode> compoundStmt localDeclarations statementList matchedSelStmt unmatched unmatchedSelStmt iterationRange matchedWhileStmt 
//%type <treeNode> unmatchedWhileStmt matchedLoopStmt unmatchedLoopStmt matchedElsif unmatchedElsif returnStmt breakStmt
%%

program: 
    declList  { savedTree = $1; }
    ;

declList: 
    declList decl { $$ = addSibling($1, $2); } |
    decl { $$ = $1; }
    ;

decl: 
    varDeclaration { $$ = $1; }
    //funDeclaration { $$ = $1; }
    ;

varDeclaration: 
    typeSpecifier varDeclList ';' {
        $$ = addSibling($1, $2);
        setType($1, $1->expType, false);
    }
    ;

typeSpecifier:
    INT  { $$ = newExpNode(InitK, Integer, $1); } |
    BOOL { $$ = newExpNode(InitK, Boolean, $1)} |
    CHAR { $$ = newExpNode(InitK, Char, $1) }
    ;

varDeclList: 
    varDeclList ',' varDeclInitialize { $$ = addSibling($1,$3); } |
    varDeclInitialize { $$ = $1; }
    ;

varDeclInitialize: 
    varDeclId { $$ = $1; }
    //varDeclId ':' simpleExpression
    //{ 
    //    $$ = newDeclNode(VarK, Void, $1, $3);
    //  // $1->child[0] = $3;
    //  // $$ = $1;
    //}
    ;

varDeclId:
    ID { $$ = newDeclNode(VarK, UndefinedType, $1); } |
    ID '[' NUMCONST ']' {
        /***** prolly need to save NUMCONST in the node for future reference *****/
        $$ = newDeclNode(VarK, UndefinedType, $1);
        $$->isArray = true;
    }
    ;

////scopedVarDeclaration    : scopedTypeSpecifier varDeclList ';'
////                    {
////                  $$ = $2;
////                  if ($1->isStatic) $$->isStatic = true;
////                  TreeNode *t = $2;
////                  while( t != NULL) {
////                    t->nodetype = $1->nodetype;
////                    t->isStatic = true;
////                    t = t->sibling;
////                  }
////                    }
////                  ;

////scopedTypeSpecifier    : STATIC typeSpecifier { $2->isStatic = true; $$ = $2; }
////                 | typeSpecifier { $$ = $1; }
////                 ;

//funDeclaration    : typeSpecifier ID '(' params ')' statement
//              { $$ = newNode(DeclK, FunK, $1->nodetype, $2->linenum, $2);
//                $$->child[0] = $4;
//                $$->child[1] = $6;
//              }
//            | ID '(' params ')' statement
//              { $$ = newNode(DeclK, FunK, Void, $1->linenum, $1);
//                $$->child[0] = $3;
//                $$->child[1] = $5;
//              }
//            ;

//params    : paramList 
//       | { $$ = NULL; }
//       ;

//paramList    : paramList ';' paramTypeList
//               { TreeNode *t = $1;
//                     if (t != NULL) {
//                               while (t->sibling != NULL){ t = t->sibling; }
//                               t->sibling = $3;
//                               $$ = $1;
//                           }
//                           else { $$ = $3;}
//                   }
//          | paramTypeList { $$ = $1; }
//          ;

//paramTypeList    : typeSpecifier paramIdList 
//              {
//               TreeNode *t = $2;
               
//               while( t != NULL) {
//                    t->nodetype = $1->nodetype;
//                    t = t->sibling;
//               }
//               $$ = $2;
//              }
//            ;

//paramIdList    : paramIdList ',' paramId
//               { TreeNode *t = $1;
//                     if (t != NULL) {
//                               while (t->sibling != NULL){ t = t->sibling; }
//                               t->sibling = $3;
//                               $$ = $1;
//                           }
//                           else { $$ = $3;}
//                   }
//            | paramId { $$ = $1; }
//            ;

//paramId: ID { $$ = newNode(DeclK, ParamK, Void, $1->linenum, $1); }
//        | ID '[' ']' { $$ = newNode(DeclK, ParamK, Void, $1->linenum, $1); $$->isArray = true; }
//        ;


//statement    : matched { $$ = $1; } | unmatched { $$ = $1; }
//          ;

//matched    : expressionStmt { $$ = $1; }
//        | compoundStmt { $$ = $1; }
//        | matchedSelStmt { $$ = $1; }
//        | matchedWhileStmt { $$ = $1; }
//        | matchedLoopStmt { $$ = $1; }
//        | returnStmt { $$ = $1; }
//        | breakStmt { $$ = $1; }
//        ;

//unmatched    : unmatchedSelStmt { $$ = $1; }
//          | unmatchedWhileStmt { $$ = $1; }
//          | unmatchedLoopStmt { $$ = $1; }
          
//          ;

//compoundStmt    : '{' localDeclarations statementList '}'
//               { $$ = newNode(StmtK, CompoundK, Void, $1->linenum, $1);
//                 $$->child[0] = $2;
//                 $$->child[1] = $3;
//               }
//          ;

//matchedSelStmt    : IF simpleExpression THEN matched matchedElsif
//               {
//                $$ = newNode(StmtK, IfK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//                $$->child[2] = $5;
//               }
//             ;

//matchedElsif    : ELSIF simpleExpression THEN matched matchedElsif
//               {
//                $$ = newNode(StmtK, ElsifK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//                $$->child[2] = $5;
//               }              
               
//           | ELSE matched { $$ = $2; }
//           ;

//unmatchedSelStmt    : IF simpleExpression THEN unmatched
//               { 
//                $$ = newNode(StmtK, IfK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//               }
//              | IF simpleExpression THEN matched
//               { 
//                $$ = newNode(StmtK, IfK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//               }

//              | IF simpleExpression THEN matched unmatchedElsif
//               {
//                $$ = newNode(StmtK, IfK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//                $$->child[2] = $5;
//               }
//               ;

//unmatchedElsif    : ELSIF simpleExpression THEN matched unmatchedElsif
//               {
//                $$ = newNode(StmtK, ElsifK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//                $$->child[2] = $5;
//               } 
//            | ELSIF simpleExpression THEN matched
//               {
//                $$ = newNode(StmtK, ElsifK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//               } 
//            | ELSIF simpleExpression THEN unmatched
//               {
//                $$ = newNode(StmtK, ElsifK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//               } 
//            | ELSE unmatched { $$ = $2; }
//            ;  
                

//matchedWhileStmt    : WHILE simpleExpression DO matched
//               {
//                $$ = newNode(StmtK, WhileK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//               }
//              ;

//unmatchedWhileStmt    : WHILE simpleExpression DO unmatched
//               {
//                $$ = newNode(StmtK, WhileK, Void, $1->linenum, $1);
//                $$->child[0] = $2;
//                $$->child[1] = $4;
//               }
//                ;

//matchedLoopStmt    : LOOP ID '=' iterationRange DO matched
//               {
//                $$ = newNode(StmtK, LoopK, Void, $1->linenum, $1);
//                TreeNode *idNode = newNode(ExpK, IdK, Void, $2->linenum, $2);
//                $$->child[0] = idNode;
//                $$->child[1] = $4;
//                $$->child[2] = $6;
//               }
//             | LOOP FOREVER matched
//               {
//                $$ = newNode(StmtK, LoopForeverK, Void, $1->linenum, $1);
//                $$->child[1] = $3;
//               }
//                ;

//unmatchedLoopStmt    : LOOP ID '=' iterationRange DO unmatched
//               {
//                $$ = newNode(StmtK, LoopK, Void, $1->linenum, $1);
//                TreeNode *idNode = newNode(ExpK, IdK, Void, $2->linenum, $2);
//                $$->child[0] = idNode;
//                $$->child[1] = $4;
//                $$->child[2] = $6;
//               }
//             | LOOP FOREVER unmatched
//               {
//                $$ = newNode(StmtK, LoopForeverK, Void, $1->linenum, $1);
//                $$->child[1] = $3;
//               }
//                ;

//returnStmt    : RETURN ';' 
//          {
//           $$ = newNode(StmtK, ReturnK, Void, $1->linenum, $1);
//          }
//           | RETURN expression ';'
//          {
//           $$ = newNode(StmtK, ReturnK, Void, $1->linenum, $1);
//           $$->child[0] = $2;
//          }
//           ;

//breakStmt    : BREAK ';' { $$ = newNode(StmtK, BreakK, Void, $1->linenum, $1); }
//           ;

//localDeclarations    : localDeclarations scopedVarDeclaration
//               { TreeNode *t = $1;
//                     if (t != NULL) {
//                               while (t->sibling != NULL){ t = t->sibling; }
//                               t->sibling = $2;
//                               $$ = $1;
//                           }
//                           else { $$ = $2;}
//                   }
//               |  { $$ = NULL; }
               
//                ;



//iterationRange    : simpleExpression RANGE simpleExpression
//              {
//               $$ = newNode(ExpK, RangeK, Void, $2->linenum, $2);
//               $$->child[0] = $1;
//               $$->child[1] = $3;

//               TokenData *newToken = new TokenData;
//               newToken->tokenstr = new char('1');
//               newToken->numValue = 1;
//               newToken->linenum = $2->linenum;

//               $$->child[2] = newNode(ExpK, ConstK, Int, $2->linenum, newToken);

               
//              }
//             | simpleExpression RANGE simpleExpression ':' simpleExpression
//              { 
//               $$ = newNode(ExpK, RangeK, Void, $2->linenum, $2);
//               $$->child[0] = $1;
//               $$->child[1] = $3;
//               $$->child[2] = $5;
//              }

//             ;

//statementList    : statementList statement
//               { TreeNode *t = $1;
//                     if (t != NULL) {
//                               while (t->sibling != NULL){ t = t->sibling; }
//                               t->sibling = $2;
//                               $$ = $1;
//                           }
//                           else { $$ = $2;}
//                   }
//          | { $$ = NULL; }
               
//                ;


//expressionStmt    : expression ';' { $$ = $1; }
//            | ';' { $$ = NULL; }
//            ;

//expression    : mutable '=' expression 
//          { $$ = newNode(ExpK, AssignK, Void, $2->linenum, $2); 
//            $$->child[0] = $1;
//            $$->child[1] = $3;
//          }

//           | mutable INC
//          { $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
//            $$->child[0] = $1;
//          }
//           | mutable DEC
//          { $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
//            $$->child[0] = $1;
//          }
//           |   mutable ADDASS expression 
//          { $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
//            $$->child[0] = $1;
//            $$->child[1] = $3;
//          }
//           |   mutable SUBASS expression 
//          { $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
//            $$->child[0] = $1;
//            $$->child[1] = $3;
//          }
//           |   mutable MULASS expression 
//          { $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
//            $$->child[0] = $1;
//            $$->child[1] = $3;
//          }
//           |   mutable DIVASS expression 
//          { $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
//            $$->child[0] = $1;
//            $$->child[1] = $3;
//          }
//           | simpleExpression { $$ = $1; }
//           ;

//simpleExpression    : simpleExpression OR andExpression
//               {
//                $$ = newNode(ExpK, OpK, Bool, $2->linenum, $2);
//                $$->child[0] = $1;
//                $$->child[1] = $3;
//                if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
//                    $$->isConstant = true;
//               }

//              | andExpression { $$ = $1; }
//                   ;


//andExpression    : andExpression AND unaryRelExpression
//               {
//                $$ = newNode(ExpK, OpK, Bool, $2->linenum, $2);
//                $$->child[0] = $1;
//                $$->child[1] = $3;
//                if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
//                    $$->isConstant = true;
//               }
//           | unaryRelExpression { $$ = $1; }
//                ;

//unaryRelExpression    : NOT unaryRelExpression 
//               {
//                $$ = newNode(ExpK, UnaryK, Bool, $1->linenum, $1);
//                $$->child[0] = $2;
               
//                if ($2 != NULL && $2->isConstant) $$->isConstant = true;
//                else $$->isConstant = false;
//               }

//                | relExpression { $$ = $1; }
//                     ;

//relExpression    : sumExpression relop sumExpression
//               {
//                $$ = $2;
//                $$->child[0] = $1;
//                $$->child[1] = $3;
//                if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
//                    $$->isConstant = true;
//               }
//           | sumExpression { $$ = $1; }
//                ;

//relop     : LEQ { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
//      | '<' { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
//      | '>' { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
//      | GEQ { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
//      | EQ { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
//      | NEQ { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
//      ;

//sumExpression    : sumExpression sumop mulExpression
//               {
//                $$ = $2;
//                $$->child[0] = $1;
//                $$->child[1] = $3;
//                if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
//                    $$->isConstant = true;
//               }    

//           | mulExpression { $$ = $1; }
//                ;

//sumop    : '+' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
//      | '-' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
//      ;

//mulExpression    : mulExpression mulop unaryExpression
//               {
//                $$ = $2;
//                $$->child[0] = $1;
//                $$->child[1] = $3;
//                if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
//                    $$->isConstant = true;
//               }

//           | unaryExpression { $$ = $1; }
//                ;

//mulop    : '/' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
//      | '*' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
//      | '%' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
//      ;


//unaryExpression    : unaryop unaryExpression
//               {
//                $$ = $1;
//                for (int i = 0; i <= 2; i++)
//                    if ($$->child[i] == NULL){ $$->child[i] = $2; break; }
               
//                if ($2 != NULL && $2->isConstant) $$->isConstant = true;
//                else $$->isConstant = false;
          
//               }
//             | factor { $$ = $1; }
//             ; 

//unaryop    : '-' { $$ = newNode(ExpK, UnaryK, Int, $1->linenum, $1); }
//        | '*' { $$ = newNode(ExpK, UnaryK, Int, $1->linenum, $1); }
//        | '?' { $$ = newNode(ExpK, UnaryK, Int, $1->linenum, $1); }
//        ;


//factor    : mutable { $$ = $1; } | immutable { $$ = $1; }
//       ;

//mutable    : ID { $$ = newNode(ExpK, IdK, Void, $1->linenum, $1); }
//        | mutable '[' expression ']' 
//          {
//           $$ = newNode(ExpK, OpK, Void, $2->linenum, $2);
//           $$->child[0] = $1;

//           $3->isIndex = true;
//           $$->child[1] = $3;
//          }
//        ;

//immutable    : '(' expression ')' { $$ = $2; }
//          | call { $$ = $1; }
//          | constant { $$ = $1; }
//          ;


//call    : ID '(' args ')'
//          {
//           if ($3 != NULL){
//               $$ = newNode(ExpK, CallK, $3->nodetype, $1->linenum, $1);
//               $$->child[0] = $3;
//           }
//           else{
//               $$ = newNode(ExpK, CallK, Void, $1->linenum, $1);
//           }
//          }
//     ;


//args    : argList { $$ = $1; }
//     | { $$ = NULL; }
//     ;


//argList    : argList ',' expression
//          { TreeNode *t = $1;
//                if (t != NULL) {
//                       while (t->sibling != NULL){ t = t->sibling; }
//                       t->sibling = $3;
//                       $$ = $1;
//                   }
//                   else { $$ = $3;}
//              }
//         | expression { $$ = $1; }
//         ;
           


//constant    : NUMCONST
//                 { $$ = newNode(ExpK, ConstK, Int, $1->linenum, $1);
//                   $$->isConstant = true;
//                 }
//       | BOOLCONST
//          { $$ = newNode(ExpK, ConstK, Bool, $1->linenum, $1);
//            $$->isConstant = true;
//          }
//       | CHARCONST
//          { $$ = newNode(ExpK, ConstK, Char, $1->linenum, $1);
//            $$->isConstant = true;
//          }
//       | STRINGCONST
//          { $$ = newNode(ExpK, ConstK, Char, $1->linenum, $1);
//            $$->isConstant = true;
//            $$->isArray = true;
//          }
//       ;

%%

int main(int argc, char* argv[]) {
     int c;
     extern char *optarg;
     extern int optind;
     int pflg = 0;
     int dflg = 0;
     bool printFlag = false;
     int optCount = 1;

     while ((c = ourGetopt(argc, argv, (char *)"pd:")) != EOF){
          switch (c) {
             case   'p':
                 printFlag = true;
                 break;
             // case   'd':
             //      yydebug=1;
             //        break;
              }
          optCount++;
     }

     if (argc > 1) {
        if ((yyin = fopen(argv[optCount], "r"))) {
               yyparse();
               // TreeNode* tmp = savedTree;
               // while(tmp->sibling != NULL) {
               //      cout << tmp->sibling->subkind.decl << endl;
               //      tmp = tmp->sibling;
               // }
               // cout << savedTree->sibling->subkind.decl << endl;
               if (printFlag) printTree(savedTree, 0, 0); //printTree(savedTree, 0, -1, false, false, "");
        }
        else {
               yyin = stdin;
               yyparse();
               if (printFlag) printTree(savedTree, 0, 0); //printTree(savedTree, 0, -1, false, false, "");
        }
     }

     return 0;  
}
