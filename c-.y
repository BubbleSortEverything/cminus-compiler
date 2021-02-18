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


TreeNode *savedTree; /* stores syntax tree for later return */

#ifdef CPLUSPLUS
extern int yylex();
extern int yylineno;
extern char *yytext;
extern FILE* yyin;
#endif

void yyerror(const char *msg) {
	printf("Error: %s while parsing `%s` on line %d.\n", msg, yytext, yylineno);
}

//void printTree(TreeNode *tree, int nChild, int nSibling, bool isChild, bool isSibling, string formatStr) {

//    if (!tree) return;

//    string printVal = "";

//    if (isChild) formatStr += ".   "; printVal += (formatStr + "Child: " + to_string(nChild) + " "); 
//    if (isSibling) printVal += (formatStr + "Sibling: " + to_string(nSibling) + " " );

//    switch (tree->kind) {
//	    case BreakK:
//			printVal += ("Break [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case ReturnK:
//			printVal += ("Return [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case ElsifK:
//			printVal += ("Elsif [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case LoopK:
//			printVal += ("Loop [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case LoopForeverK:
//			printVal += ("LoopForever [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case WhileK:
//			printVal += ("While [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case RangeK:
//			printVal += ("Range [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case IfK:
//			printVal += ("If [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//		case CompoundK:
//			printVal += ("Compound [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case AssignK:
//			printVal += ("Assign: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case OpK:
//			printVal += ("Op: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case CallK:
//			printVal += ("Call: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case IdK:
//			printVal += ("Id: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case UnaryK:
//			printVal += ("Op: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
//			cout << printVal << endl;
//			break;

//	    case FunK:
//			printVal += ("Func: " + string(tree->token->tokenstr) + " returns type ");
//			switch (tree->nodetype)
//    		{
//			    case Int:
//	            	printVal += ("int [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;

//			    case Bool:
//					printVal += ("bool [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;
				
//			    case Char:
//					printVal += ("char [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;

//			    case Void:
//					printVal += ("void [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;
//    		}
//		    break;

//	    case ParamK:
//			printVal += ("Parm: " + string(tree->token->tokenstr) + " ");
//			if (tree->isArray) printVal += "is array ";

//			switch (tree->nodetype) {
//			    case Int:
//	            	printVal += ("of type int [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
				
//					break;

//			    case Bool:
//					printVal += ("of type bool [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
				
//					break;
				
//			    case Char:
//					printVal += ("of type char [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
				
//					break;			
//	    	}
//		break;


//	    case VarK:
//			printVal += ("Var: " + string(tree->token->tokenstr) + " ");
//			if (tree->isArray) printVal += "is array ";

//			switch (tree->nodetype)
//    		{
//			    case Int:
//		            printVal += ("of type int [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;

//			    case Bool:
//					printVal += ("of type bool [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;
			
//			    case Char:
//					printVal += ("of type char [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;
//    		}
//			break;
		
//	    case ConstK:
//			switch (tree->nodetype)
//	    	{
				
//			    case Int:
//					printVal += ("Const of type int: " + to_string(tree->token->numValue) + " [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;

//			    case Bool:
//					printVal += ("Const of type bool: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
//					cout << printVal << endl;
//					break;

//			    case Char:
//					if (tree->isArray) {
//						printVal += ("Const: " + string("\"") + string(tree->token->strValue) + string("\"") + " [line: " + to_string(tree->token->linenum) + "]");
//						cout << printVal << endl;
//					}
//					else {
//						string subPrint = string(tree->token->strValue);
//						printVal += ("Const: " + string("'") + subPrint + string("'") + " [line: " + to_string(tree->token->linenum) + "]");
//						cout << printVal << endl;
//					}
//					break;
//	    	}
//			break;
//    }

//    printTree(tree->child[0], 0, -1, true, false, formatStr);
//    printTree(tree->child[1], 1, -1, true, false, formatStr);
//    printTree(tree->child[2], 2, -1, true, false, formatStr);

//    nSibling++;
//    printTree(tree->sibling, 0, nSibling, false, true, formatStr);
//}

%}

%union {
    TreeNode *treeNode;
    TokenData *tokenData;           
}

// token specifies the token classes from the scanner
%token <tokenData> INT ID BOOL BY BOOLCONST NUMCONST MIN MAX ADDASS SUBASS DIVASS MULASS EQ LEQ GEQ NEQ 
%token <tokenData> AND OR NOT IF THEN TO ELSIF ELSE WHILE FOR DO BREAK LOOP RANGE FOREVER STATIC RETURN 
%token <tokenData> CHAR DEC INC CHARCONST STRINGCONST UNDEFINED ';' ',' '[' ']' '(' ')' '{' '}' '=' '<' '>' '+' '-' '*' '/' '%' '?' ':'
// type specifies the token classes used only in the parser
%type <treeNode> program declarationList declaration varDeclaration varDeclList varDeclInitialize varDeclId simpleExpression andExpression unaryRelExpression relExpression sumExpression mulExpression unaryExpression factor immutable constant typeSpecifier scopedTypeSpecifier scopedVarDeclaration paramId paramIdList paramTypeList paramList params funDeclaration argList args call expression relop mulop unaryop mutable sumop statement matched expressionStmt compoundStmt localDeclarations statementList matchedSelStmt unmatched unmatchedSelStmt iterationRange matchedWhileStmt unmatchedWhileStmt matchedLoopStmt unmatchedLoopStmt matchedElsif unmatchedElsif returnStmt breakStmt
%%

//List of things that may cause problems:
// 1. put semicolon after program -> declarationList to allow parsing of single line programs
// 2. added scopedVarDeclaration { $$ = $1; } to declaration to allow parsing of static vars before statemnt defined
// 3. replaced statement with CONST in production for funDeclaration to allow for parsing of functions before grammar for statement was defined
// 4. Id's come off of declarations
// 5. expressions in declInitialize



program: declarationList  { savedTree = $1;}
	   ;


declarationList: declarationList declaration
				{ 
					TreeNode *t = $1;
					if (t != NULL) {
						while (t->sibling != NULL){ t = t->sibling; }
						t->sibling = $2;
						$$ = $1;
					}
					else { $$ = $2;}
				}
				| declaration { $$ = $1; }
				;


declaration: varDeclaration { $$ = $1; }
	       | funDeclaration { $$ = $1; }
	       ;


varDeclaration    : typeSpecifier varDeclList ';'
		    {
			TreeNode *t = $2;
			
			while( t != NULL) {
				t->nodetype = $1->nodetype;
				t = t->sibling;
        		}
			$$ = $2;

		    }
		  ;


scopedVarDeclaration    : scopedTypeSpecifier varDeclList ';'
		          {
			   $$ = $2;
			   if ($1->isStatic) $$->isStatic = true;
			   TreeNode *t = $2;
			   while( t != NULL) {
				t->nodetype = $1->nodetype;
				t->isStatic = true;
				t = t->sibling;
        		   }
		          }
		        ;



varDeclList    : varDeclList ',' varDeclInitialize
			{ TreeNode *t = $1;
		           if (t != NULL) {
                               while (t->sibling != NULL){ t = t->sibling; }
                               t->sibling = $3;
                               $$ = $1;
                           }
                           else { $$ = $3;}
		         }
		  | varDeclInitialize { $$ = $1; }
		  ;

varDeclInitialize    : varDeclId
		     | varDeclId ':' simpleExpression
			 { 
			   $1->child[0] = $3;
			   $$ = $1;
		         }
		     ;


varDeclId    : ID 
		{
		 $$ = newNode(DeclK, VarK, Void, $1->linenum, $1); 
    		
		}

	     | ID '[' NUMCONST ']'
		{
		 $$ = newNode(DeclK, VarK, Void, $1->linenum, $1);
		 $$->isArray = true;
		 $$->arraySize = $3->numValue;
		}
	     ;

scopedTypeSpecifier    : STATIC typeSpecifier { $2->isStatic = true; $$ = $2; }
		       | typeSpecifier { $$ = $1; }
		       ;


typeSpecifier    : INT {  $$ = newNode(DeclK, TypeK, Int, $1->linenum, $1); }
		 | BOOL { $$ = newNode(DeclK, TypeK, Bool, $1->linenum, $1); }
		 | CHAR { $$ = newNode(DeclK, TypeK, Char, $1->linenum, $1); }
		 ;

funDeclaration    : typeSpecifier ID '(' params ')' statement
		    { $$ = newNode(DeclK, FunK, $1->nodetype, $2->linenum, $2);
		      $$->child[0] = $4;
		      $$->child[1] = $6;
		    }
		  | ID '(' params ')' statement
		    { $$ = newNode(DeclK, FunK, Void, $1->linenum, $1);
		      $$->child[0] = $3;
		      $$->child[1] = $5;
		    }
		  ;

params    : paramList 
	  | { $$ = NULL; }
	  ;

paramList    : paramList ';' paramTypeList
			{ TreeNode *t = $1;
		           if (t != NULL) {
                               while (t->sibling != NULL){ t = t->sibling; }
                               t->sibling = $3;
                               $$ = $1;
                           }
                           else { $$ = $3;}
		         }
	     | paramTypeList { $$ = $1; }
	     ;

paramTypeList    : typeSpecifier paramIdList 
		    {
			TreeNode *t = $2;
			
			while( t != NULL) {
				t->nodetype = $1->nodetype;
				t = t->sibling;
        		}
			$$ = $2;
		    }
		  ;

paramIdList    : paramIdList ',' paramId
			{ TreeNode *t = $1;
		           if (t != NULL) {
                               while (t->sibling != NULL){ t = t->sibling; }
                               t->sibling = $3;
                               $$ = $1;
                           }
                           else { $$ = $3;}
		         }
	       | paramId { $$ = $1; }
	       ;

paramId: ID { $$ = newNode(DeclK, ParamK, Void, $1->linenum, $1); }
	   | ID '[' ']' { $$ = newNode(DeclK, ParamK, Void, $1->linenum, $1); $$->isArray = true; }
	   ;


statement    : matched { $$ = $1; } | unmatched { $$ = $1; }
	     ;

matched    : expressionStmt { $$ = $1; }
	   | compoundStmt { $$ = $1; }
	   | matchedSelStmt { $$ = $1; }
	   | matchedWhileStmt { $$ = $1; }
	   | matchedLoopStmt { $$ = $1; }
	   | returnStmt { $$ = $1; }
	   | breakStmt { $$ = $1; }
	   ;

unmatched    : unmatchedSelStmt { $$ = $1; }
	     | unmatchedWhileStmt { $$ = $1; }
	     | unmatchedLoopStmt { $$ = $1; }
	     
	     ;

compoundStmt    : '{' localDeclarations statementList '}'
			{ $$ = newNode(StmtK, CompoundK, Void, $1->linenum, $1);
			  $$->child[0] = $2;
			  $$->child[1] = $3;
			}
		;

matchedSelStmt    : IF simpleExpression THEN matched matchedElsif
			{
			 $$ = newNode(StmtK, IfK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			 $$->child[2] = $5;
			}
		   ;

matchedElsif    : ELSIF simpleExpression THEN matched matchedElsif
			{
			 $$ = newNode(StmtK, ElsifK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			 $$->child[2] = $5;
			}			
			
		 | ELSE matched { $$ = $2; }
		 ;

unmatchedSelStmt    : IF simpleExpression THEN unmatched
			{ 
			 $$ = newNode(StmtK, IfK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			}
		    | IF simpleExpression THEN matched
			{ 
			 $$ = newNode(StmtK, IfK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			}

		    | IF simpleExpression THEN matched unmatchedElsif
			{
			 $$ = newNode(StmtK, IfK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			 $$->child[2] = $5;
			}
		     ;

unmatchedElsif    : ELSIF simpleExpression THEN matched unmatchedElsif
			{
			 $$ = newNode(StmtK, ElsifK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			 $$->child[2] = $5;
			} 
		  | ELSIF simpleExpression THEN matched
			{
			 $$ = newNode(StmtK, ElsifK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			} 
		  | ELSIF simpleExpression THEN unmatched
			{
			 $$ = newNode(StmtK, ElsifK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			} 
		  | ELSE unmatched { $$ = $2; }
		  ;	
			 

matchedWhileStmt    : WHILE simpleExpression DO matched
			{
			 $$ = newNode(StmtK, WhileK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			}
		    ;

unmatchedWhileStmt    : WHILE simpleExpression DO unmatched
			{
			 $$ = newNode(StmtK, WhileK, Void, $1->linenum, $1);
			 $$->child[0] = $2;
			 $$->child[1] = $4;
			}
		      ;

matchedLoopStmt    : LOOP ID '=' iterationRange DO matched
			{
			 $$ = newNode(StmtK, LoopK, Void, $1->linenum, $1);
			 TreeNode *idNode = newNode(ExpK, IdK, Void, $2->linenum, $2);
			 $$->child[0] = idNode;
			 $$->child[1] = $4;
			 $$->child[2] = $6;
			}
		   | LOOP FOREVER matched
			{
			 $$ = newNode(StmtK, LoopForeverK, Void, $1->linenum, $1);
			 $$->child[1] = $3;
			}
		      ;

unmatchedLoopStmt    : LOOP ID '=' iterationRange DO unmatched
			{
			 $$ = newNode(StmtK, LoopK, Void, $1->linenum, $1);
			 TreeNode *idNode = newNode(ExpK, IdK, Void, $2->linenum, $2);
			 $$->child[0] = idNode;
			 $$->child[1] = $4;
			 $$->child[2] = $6;
			}
		   | LOOP FOREVER unmatched
			{
			 $$ = newNode(StmtK, LoopForeverK, Void, $1->linenum, $1);
			 $$->child[1] = $3;
			}
		      ;

returnStmt    : RETURN ';' 
		{
		 $$ = newNode(StmtK, ReturnK, Void, $1->linenum, $1);
		}
	      | RETURN expression ';'
		{
		 $$ = newNode(StmtK, ReturnK, Void, $1->linenum, $1);
		 $$->child[0] = $2;
		}
	      ;

breakStmt    : BREAK ';' { $$ = newNode(StmtK, BreakK, Void, $1->linenum, $1); }
	      ;

localDeclarations    : localDeclarations scopedVarDeclaration
			{ TreeNode *t = $1;
		           if (t != NULL) {
                               while (t->sibling != NULL){ t = t->sibling; }
                               t->sibling = $2;
                               $$ = $1;
                           }
                           else { $$ = $2;}
		         }
		     |  { $$ = NULL; }
		     
		      ;



iterationRange    : simpleExpression RANGE simpleExpression
		    {
			$$ = newNode(ExpK, RangeK, Void, $2->linenum, $2);
			$$->child[0] = $1;
			$$->child[1] = $3;

			TokenData *newToken = new TokenData;
			newToken->tokenstr = new char('1');
			newToken->numValue = 1;
			newToken->linenum = $2->linenum;

			$$->child[2] = newNode(ExpK, ConstK, Int, $2->linenum, newToken);

			
		    }
		   | simpleExpression RANGE simpleExpression ':' simpleExpression
		    { 
			$$ = newNode(ExpK, RangeK, Void, $2->linenum, $2);
			$$->child[0] = $1;
			$$->child[1] = $3;
			$$->child[2] = $5;
		    }

		   ;

statementList    : statementList statement
			{ TreeNode *t = $1;
		           if (t != NULL) {
                               while (t->sibling != NULL){ t = t->sibling; }
                               t->sibling = $2;
                               $$ = $1;
                           }
                           else { $$ = $2;}
		         }
		| { $$ = NULL; }
		     
		      ;


expressionStmt    : expression ';' { $$ = $1; }
		  | ';' { $$ = NULL; }
		  ;

expression    : mutable '=' expression 
		{ $$ = newNode(ExpK, AssignK, Void, $2->linenum, $2); 
		  $$->child[0] = $1;
		  $$->child[1] = $3;
		}

	      | mutable INC
		{ $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
		  $$->child[0] = $1;
		}
	      | mutable DEC
		{ $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
		  $$->child[0] = $1;
		}
	      |	mutable ADDASS expression 
		{ $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
		  $$->child[0] = $1;
		  $$->child[1] = $3;
		}
	      |	mutable SUBASS expression 
		{ $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
		  $$->child[0] = $1;
		  $$->child[1] = $3;
		}
	      |	mutable MULASS expression 
		{ $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
		  $$->child[0] = $1;
		  $$->child[1] = $3;
		}
	      |	mutable DIVASS expression 
		{ $$ = newNode(ExpK, AssignK, Int, $2->linenum, $2); 
		  $$->child[0] = $1;
		  $$->child[1] = $3;
		}
	      | simpleExpression { $$ = $1; }
	      ;

simpleExpression    : simpleExpression OR andExpression
			{
			 $$ = newNode(ExpK, OpK, Bool, $2->linenum, $2);
			 $$->child[0] = $1;
			 $$->child[1] = $3;
			 if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
				$$->isConstant = true;
			}

		    | andExpression { $$ = $1; }
       		    ;


andExpression    : andExpression AND unaryRelExpression
			{
			 $$ = newNode(ExpK, OpK, Bool, $2->linenum, $2);
			 $$->child[0] = $1;
			 $$->child[1] = $3;
			 if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
				$$->isConstant = true;
			}
		 | unaryRelExpression { $$ = $1; }
       		 ;

unaryRelExpression    : NOT unaryRelExpression 
			{
			 $$ = newNode(ExpK, UnaryK, Bool, $1->linenum, $1);
			 $$->child[0] = $2;
			
			 if ($2 != NULL && $2->isConstant) $$->isConstant = true;
			 else $$->isConstant = false;
			}

		      | relExpression { $$ = $1; }
       		      ;

relExpression    : sumExpression relop sumExpression
			{
			 $$ = $2;
			 $$->child[0] = $1;
			 $$->child[1] = $3;
			 if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
				$$->isConstant = true;
			}
		 | sumExpression { $$ = $1; }
       		 ;

relop    : LEQ { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
	 | '<' { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
	 | '>' { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
	 | GEQ { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
	 | EQ { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
	 | NEQ { $$ = newNode(ExpK, OpK, Bool, $1->linenum, $1) ; }
	 ;

sumExpression    : sumExpression sumop mulExpression
			{
			 $$ = $2;
			 $$->child[0] = $1;
			 $$->child[1] = $3;
			 if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
				$$->isConstant = true;
			}	

		 | mulExpression { $$ = $1; }
       		 ;

sumop    : '+' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
	 | '-' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
	 ;

mulExpression    : mulExpression mulop unaryExpression
			{
			 $$ = $2;
			 $$->child[0] = $1;
			 $$->child[1] = $3;
			 if ($1 != NULL && $3 != NULL && $1->isConstant && $1->isConstant)
				$$->isConstant = true;
			}

		 | unaryExpression { $$ = $1; }
       		 ;

mulop    : '/' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
	 | '*' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
	 | '%' { $$ = newNode(ExpK, OpK, Int, $1->linenum, $1); }
	 ;


unaryExpression    : unaryop unaryExpression
			{
			 $$ = $1;
			 for (int i = 0; i <= 2; i++)
				if ($$->child[i] == NULL){ $$->child[i] = $2; break; }
			
			 if ($2 != NULL && $2->isConstant) $$->isConstant = true;
			 else $$->isConstant = false;
		
			}
		   | factor { $$ = $1; }
		   ; 

unaryop    : '-' { $$ = newNode(ExpK, UnaryK, Int, $1->linenum, $1); }
	   | '*' { $$ = newNode(ExpK, UnaryK, Int, $1->linenum, $1); }
	   | '?' { $$ = newNode(ExpK, UnaryK, Int, $1->linenum, $1); }
	   ;


factor    : mutable { $$ = $1; } | immutable { $$ = $1; }
	  ;

mutable    : ID { $$ = newNode(ExpK, IdK, Void, $1->linenum, $1); }
	   | mutable '[' expression ']' 
		{
		 $$ = newNode(ExpK, OpK, Void, $2->linenum, $2);
		 $$->child[0] = $1;

		 $3->isIndex = true;
		 $$->child[1] = $3;
		}
	   ;

immutable    : '(' expression ')' { $$ = $2; }
	     | call { $$ = $1; }
	     | constant { $$ = $1; }
	     ;


call    : ID '(' args ')'
		{
		 if ($3 != NULL){
			$$ = newNode(ExpK, CallK, $3->nodetype, $1->linenum, $1);
			$$->child[0] = $3;
		 }
		 else{
			$$ = newNode(ExpK, CallK, Void, $1->linenum, $1);
		 }
		}
	;


args    : argList { $$ = $1; }
	| { $$ = NULL; }
	;


argList    : argList ',' expression
		{ TreeNode *t = $1;
	           if (t != NULL) {
                       while (t->sibling != NULL){ t = t->sibling; }
                       t->sibling = $3;
                       $$ = $1;
                   }
                   else { $$ = $3;}
	         }
	    | expression { $$ = $1; }
	    ;
		 


constant    : NUMCONST
                 { $$ = newNode(ExpK, ConstK, Int, $1->linenum, $1);
                   $$->isConstant = true;
                 }
	  | BOOLCONST
		{ $$ = newNode(ExpK, ConstK, Bool, $1->linenum, $1);
		  $$->isConstant = true;
		}
	  | CHARCONST
		{ $$ = newNode(ExpK, ConstK, Char, $1->linenum, $1);
		  $$->isConstant = true;
		}
	  | STRINGCONST
		{ $$ = newNode(ExpK, ConstK, Char, $1->linenum, $1);
		  $$->isConstant = true;
		  $$->isArray = true;
		}
	  ;


%%

int main(int argc, char* argv[])
{
	int c;
	extern char *optarg;
	extern int optind;
	int pflg = 0;
	int dflg = 0;
	bool printFlag = false;
	int optCount = 1;

	while ((c = ourGetopt(argc, argv, (char *)"pd:")) != EOF){
	   	switch (c) {
		   case	'p':
		       printFlag = true;
		       break;
		   case	'd':
		        yydebug=1;
				break;
		    }
		optCount++;
	}

    if (argc > 1) {
        if ((yyin = fopen(argv[optCount], "r"))) {
			yyparse();   // call the parse
			if (printFlag) cout << "print tree is called" << endl;//printTree(savedTree, 0, -1, false, false, "");
        }
        else {
            yyin = stdin;
			yyparse();   // call the parse
			if (printFlag) cout << "print tree is called" << endl;//printTree(savedTree, 0, -1, false, false, "");
        }
    }

	return 0;
}

