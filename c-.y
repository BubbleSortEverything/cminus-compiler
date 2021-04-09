%{ 

//#include "symbolTable.h"
#include "util.h"

TreeNode *savedTree;    /* stores syntax tree */
SymbolTable symbolTable;   /* symbol table */

bool typeFlag = false;

/*
    void yyerror(const char *msg) {
        printf("ERROR(PARSER): %s\n", msg);
    }
*/

void yyerror(const char *msg);
#define YYERROR_VERBOSE 1

extern int yylineno;

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
%type <treeNode> program declList decl varDeclaration varDeclList varDeclInitialize varDeclId typeSpecifier simpleExpression
%type <treeNode> andExpression unaryRelExpression relExpression minmaxExp sumExpression mulExpression unaryExpression  
%type <treeNode> constant relop sumop mulop unaryop expression call args argList scopedVarDeclaration 
%type <treeNode> statement expressionStmt compoundStmt localDeclarations statementList paramList paramTypeList paramId paramIdList
%type <treeNode> selectStmt iterStmt iterRange returnStmt breakStmt minmaxop factor mutable immutable funDeclaration params
%type <treeNode> scopedTypeSpecifier matched unmatched

%%
program
    : declList  { savedTree = $1; }
    ;

declList
    : declList decl             { $$ = addSibling($1, $2); } 
    | decl                      { $$ = $1; }
    ;

decl
    : varDeclaration            { $$ = $1; } 
    | funDeclaration            { $$ = $1; } 
    | error                     { $$ = NULL; }
    ;

varDeclaration
    : typeSpecifier varDeclList ';'     { setType($2, $1->expType, false); $$ = $2; yyerrok; } 
    | error varDeclList ';'             { $$ = NULL; yyerrok; } 
    | typeSpecifier error ';'           { $$ = NULL; yyerrok; yyerrok; }
    ;

typeSpecifier
    : INT           { $$ = newExpNode(InitK, Integer, $1); } 
    | BOOL          { $$ = newExpNode(InitK, Boolean, $1); } 
    | CHAR          { $$ = newExpNode(InitK, Char, $1); }
    ;

varDeclList
    : varDeclList ',' varDeclInitialize     { $$ = addSibling($1,$3); yyerrok; } 
    | varDeclInitialize                     { $$ = $1; } 
    | varDeclList ',' error                 { $$ = NULL; } 
    | error                                 { $$ = NULL; }
    ;

varDeclInitialize
    : varDeclId { $$ = $1; } 
    | varDeclId ':' simpleExpression 
    {
        //$$ = newExpNode(InitK, UndefinedType, $2, $1, $3);
        $1 = addChild($1, $3);
        $$ = $1;
    } 
    | error ':' simpleExpression        { $$ = NULL; yyerrok; }
    ;

varDeclId
    : ID { $$ = newDeclNode(VarK, UndefinedType, $1); } 
    | ID '[' NUMCONST ']' 
    {
        /***** prolly need to save NUMCONST in the node for future reference *****/
        $$ = newDeclNode(VarK, UndefinedType, $1);
        $$->isArray = true;
    } 
    | ID '[' error                      { $$ = NULL; } 
    | error ']'                         { $$ = NULL; yyerrok; }
    ;

scopedVarDeclaration
    : scopedTypeSpecifier varDeclList 
    { 
        $$ = $2; 
        setType($2, $1->expType, $1->isStatic); 
        yyerrok; 
    }
    | scopedTypeSpecifier error ';'         { $$ = NULL; yyerrok; }
    | error varDeclList ';'                 { $$ = NULL; yyerrok; }
    ;

/*
scopedVarDeclaration
    : STATIC typeSpecifier varDeclList 
    { 
        $$ = $3; 
        setType($3, $2->expType, true); 
        yyerrok; 
    }
    | typeSpecifier varDeclList ';'         { $$ = $2; setType($2, $1->expType, false); yyerrok; }
    | STATIC typeSpecifier error ';'        { $$ = NULL; yyerrok; }
    | typeSpecifier error ';'               { $$ = NULL; yyerrok; }
    | error varDeclList ';'                 { $$ = NULL; yyerrok; }
    ;
*/


scopedTypeSpecifier
    : STATIC typeSpecifier                  { $2->isStatic = true; $$ = $2; } 
    | typeSpecifier                         { $$ = $1; }
    ;

funDeclaration
    : typeSpecifier ID '(' params ')' statement     { $$ = newDeclNode(FuncK, $1->expType, $2, $4, $6); } 
    | ID '(' params ')' statement                   { $$ = newDeclNode(FuncK, Void, $1, $3, $5); } 
    | typeSpecifier error                           { $$ = NULL; } 
    | typeSpecifier ID '(' error                    { $$ = NULL; }
    | typeSpecifier ID '(' params ')' error         { $$ = NULL; } 
    | ID '(' error                                  { $$ = NULL; } 
    | ID '(' params ')' error                       { $$ = NULL; }
    ;

params
    : paramList { $$ = $1; } 
    | { $$ = NULL; }
    ;

paramList
    : paramList ';' paramTypeList       { $$ = addSibling($1, $3); } 
    | paramTypeList                     { $$ = $1; } 
    | paramList ';' error               { $$ = NULL; } 
    | error                             { $$ = NULL; }
    ;

paramTypeList
    : typeSpecifier paramIdList         { setType($2, $1->expType, false); $$ = $2; } 
    | typeSpecifier error               { $$ = NULL; }
    ;

paramIdList
    : paramIdList ',' paramId           { $$ = addSibling($1, $3); yyerrok; } 
    | paramId                           { $$ = $1; } 
    | paramIdList ',' error             { $$ = NULL; } 
    | error                             { $$ = NULL; }
    ;

paramId
    : ID                { $$ = newDeclNode(ParamK, UndefinedType, $1); } 
    | ID '[' ']' 
    { 
                        $$ = newDeclNode(ParamK, UndefinedType, $1); 
                        $$->isArray = true;
    }
    ;

statement
    : expressionStmt                          { $$ = $1; } 
    | compoundStmt                            { $$ = $1; } 
    | selectStmt                              { $$ = $1; } 
    | iterStmt                                { $$ = $1; } 
    | returnStmt                              { $$ = $1; } 
    | breakStmt                               { $$ = $1; }
    | matched                                 { $$ = $1; }
    | unmatched                               { $$ = $1; }
    ;

matched 
    : IF error                                { $$ = NULL; }
    | IF error ELSE matched                   { $$ = NULL; yyerrok; }
    | IF error THEN matched ELSE matched      { $$ = NULL; yyerrok; }
    | WHILE error DO matched                  { $$ = NULL; yyerrok; }
    | WHILE error                             { $$ = NULL; }
    | FOR ID '=' error DO matched             { $$ = NULL; yyerrok; }
    | FOR error                               { $$ = NULL; }
    ;

unmatched    
    : IF error THEN statement                       { $$ = NULL; yyerrok; }
    | IF error THEN matched ELSE unmatched          { $$ = NULL; yyerrok; }
    ;

compoundStmt
    : '{' localDeclarations statementList '}'   { $$ = newStmtNode(CompoundK, $1, $2, $3); yyerrok; }
    ;

selectStmt
    : IF simpleExpression THEN statement                { $$ = newStmtNode(IfK, $1, $2, $4); } 
    | IF simpleExpression THEN statement ELSE statement { $$ = newStmtNode(IfK, $1, $2, $4, $6); }
    ;

iterStmt
    : WHILE simpleExpression DO statement       { $$ = newStmtNode(WhileK, $1, $2, $4);} 
    | FOR ID '=' iterRange DO statement         { 
                                                    TreeNode *var = newDeclNode(VarK, Integer, $2); 
                                                    $$ = newStmtNode(ForK, $1, var, $4, $6); 
                                                }
    ;

iterRange
    : simpleExpression TO simpleExpression                      { $$ = newStmtNode(RangeK, $2, $1, $3); }
    | simpleExpression TO simpleExpression BY simpleExpression  { $$ = newStmtNode(RangeK, $2, $1, $3, $5); }
    | simpleExpression TO error                                 { $$ = NULL; }
    | error BY error                                            { $$ = NULL; yyerrok; }
    | simpleExpression TO simpleExpression BY error             { $$ = NULL; }
    ; 

returnStmt
    : RETURN ';'                    { $$ = newStmtNode(ReturnK, $1); } 
    | RETURN expression ';'         { $$ = newStmtNode(ReturnK, $1, $2); yyerrok; }
    | RETURN error ';'              { $$ = NULL; yyerrok; }
    ;

breakStmt
    : BREAK ';' { $$ = newStmtNode(BreakK, $1); }
    ;

localDeclarations
    : localDeclarations scopedVarDeclaration ';' { $$ = addSibling($1, $2); } 
    | {  $$ = NULL; }
    ;

statementList
    : statementList statement 
    { 
        if ($2 == NULL) {
            $$ = $1;
        } else {
            $$ = addSibling($1, $2);
        }
    } 
    | { $$ = NULL; }
    ;

expressionStmt
    : expression ';'        { $$ = $1; yyerrok; }
    | ';'                   { $$ = NULL; yyerrok; }
    | error ';'             { $$ = NULL; yyerrok; }
    ;

expression
    : mutable '=' expression        { $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); } 
    | mutable INC                   { $$ = newExpNode(AssignK, UndefinedType, $2, $1); } 
    | mutable DEC                   { $$ = newExpNode(AssignK, UndefinedType, $2, $1); } 
    | mutable ADDASS expression     { $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); } 
    | mutable SUBASS expression     { $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); } 
    | mutable MULASS expression     { $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); } 
    | mutable DIVASS expression     { $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); } 
    | simpleExpression              { $$ = $1; }
    | error '=' error               { $$ = NULL; }
    | mutable ADDASS error            { $$ = NULL; }
    | mutable SUBASS error            { $$ = NULL; }
    | mutable MULASS error            { $$ = NULL; }
    | mutable DIVASS error            { $$ = NULL; }
    | error ADDASS expression            { $$ = NULL; }
    | error SUBASS expression            { $$ = NULL; }
    | error MULASS expression            { $$ = NULL; }
    | error DIVASS expression            { $$ = NULL; }
    | error ADDASS error            { $$ = NULL; }
    | error SUBASS error            { $$ = NULL; }
    | error MULASS error            { $$ = NULL; }
    | error DIVASS error            { $$ = NULL; }
    | error INC                     { $$ = NULL; yyerrok; }
    | error DEC                     { $$ = NULL; yyerrok; }
    ;

simpleExpression
    : simpleExpression OR andExpression     { $2->tokenstr = "or"; $$ = newExpNode(OpK, UndefinedType, $2, $1, $3); } 
    | andExpression                         { $$ = $1; }
    | simpleExpression OR error             { $$ = NULL; }
    ;

/*
assignop
    : sumop         { $$ = $1; }
    | mulop         { $$ = $1; }
    | minmaxop      { $$ = $1; }
    | relop         { $$ = $1; }
    ;
*/

andExpression
    : andExpression AND unaryRelExpression 
    {
                                        $2->tokenstr = "and";
                                        $$ = newExpNode(OpK, UndefinedType, $2, $1, $3);
    } 
    | unaryRelExpression                { $$ = $1; }
    | andExpression AND error           { $$ = NULL; }
    ;

unaryRelExpression
    : NOT unaryRelExpression  
    {
                            $1->tokenstr = "not";
                            $$ = newExpNode(OpK, UndefinedType, $1, $2);
    } 
    | relExpression         { $$ = $1; }
    | NOT error             { $$ = NULL; }
    ;

relExpression:
    minmaxExp relop minmaxExp   { $$ = newExpNode(OpK, UndefinedType, $2->token, $1, $3); } 
    | minmaxExp                 { $$ = $1; }
    | minmaxExp relop error     { $$ = NULL; }
    ;

minmaxExp:
    minmaxExp minmaxop sumExpression {
        $$ = newExpNode(OpK, UndefinedType, $2->token, $1, $3);
    } |
    sumExpression { $$ = $1; };

sumExpression:
    sumExpression sumop mulExpression   { $$ = newExpNode(OpK, UndefinedType, $2->token, $1, $3); } 
    | mulExpression                     { $$ = $1; } 
    | sumExpression sumop error         { $$ = NULL; }
    ;

mulExpression: 
    mulExpression mulop unaryExpression     { $$ = newExpNode(OpK, UndefinedType, $2->token, $1, $3); } 
    | unaryExpression                       { $$ = $1; }
    | mulExpression mulop error             { $$ = NULL; }
    ;


minmaxop:
    MAX { $$ = newExpNode(OpK, UndefinedType, $1); } |
    MIN { $$ = newExpNode(OpK, UndefinedType, $1); };

relop: 
    '<' { $$ = newExpNode(OpK, UndefinedType, $1); } |
    '>' { $$ = newExpNode(OpK, UndefinedType, $1); } |
    LEQ { $$ = newExpNode(OpK, UndefinedType, $1); } |
    GEQ { $$ = newExpNode(OpK, UndefinedType, $1); } |
    NEQ { $$ = newExpNode(OpK, UndefinedType, $1); } |
    EQ { $$ = newExpNode(OpK, UndefinedType, $1); }
    ;

sumop: 
    '+' { $$ = newExpNode(OpK, UndefinedType, $1); } |
    '-' { $$ = newExpNode(OpK, UndefinedType, $1); } ;

mulop: 
    '/' { $$ = newExpNode(OpK, UndefinedType, $1); } |
    '*' { $$ = newExpNode(OpK, UndefinedType, $1); } |
    '%' { $$ = newExpNode(OpK, UndefinedType, $1); } ;

unaryExpression
    : unaryop unaryExpression       { $$ = newExpNode(OpK, UndefinedType, $1->token, $2); } 
    | factor                        { $$ = $1; } 
    | unaryop error                 { $$ = NULL; }
    ; 

unaryop
    : '-' 
    {
            $1->tokenstr = "chsign";
            $$ = newExpNode(OpK, UndefinedType, $1); 
    } 
    | '*' 
    { 
            $1->tokenstr = "sizeof";
            $$ = newExpNode(OpK, UndefinedType, $1); 
    } 
    | '?'   { $$ = newExpNode(OpK, UndefinedType, $1); }
    ;

factor: 
    mutable { $$ = $1; } | 
    immutable { $$ = $1; } ;

mutable
    : ID { $$ = newExpNode(IdK, UndefinedType, $1); } 
    | mutable '[' expression ']' 
    {
        $$ = newExpNode(OpK, UndefinedType, $2, $1, $3);
        $$->isArray = true;
    }
    ;

immutable: 
    '(' expression ')'              { $$ = $2; yyerrok; } 
    | call                          { $$ = $1; } 
    | constant                      { $$ = $1; }
    | '(' error                     { $$ = NULL; }
    ;

call
    : ID '(' args ')'           { $$ = newExpNode(CallK, UndefinedType, $1, $3); }
    | error '('                 { $$ = NULL; yyerrok; }
    ;

args
    : argList       { $$ = $1; } 
    | { $$ = NULL; }
    ;


argList
    : argList ',' expression        { $$ = addSibling($1, $3); yyerrok; } 
    | expression                    { $$ = $1; }
    | argList ',' error             { $$=NULL; }
    ;

constant    
    : NUMCONST          { $$ = newExpNode(ConstantK, Integer, $1); } 
    | BOOLCONST         { $$ = newExpNode(ConstantK, Boolean, $1); } 
    |CHARCONST          { $$ = newExpNode(ConstantK, Char, $1); } 
    | STRINGCONST 
    {
                        $$ = newExpNode(ConstantK, Char, $1);
                        $$->isArray = true;
    }
    ;
%%
