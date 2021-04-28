%{
    // INCLUDES
    #include <stdlib.h>
    #include <stdio.h>
    #include <string.h>

    #include "yyerror.h"

    #include "TokenTree.h"

    // GLOBALS
    extern TokenTree *syntaxTree;

    // EXTERNAL STUFF
    extern int yylex();
    
%}

%code requires { #include "TokenTree.h" }

%union {
    TokenTree *tree;
}

// Non-terminals
%type <tree> program
%type <tree> declList
%type <tree> decl
%type <tree> varDecl
%type <tree> scopedVarDecl
%type <tree> varDeclList
%type <tree> varDeclInit
%type <tree> varDeclId
%type <tree> typeSpec
%type <tree> funDecl
%type <tree> params
%type <tree> paramList
%type <tree> paramTypeList
%type <tree> paramIdList
%type <tree> paramId
%type <tree> stmt
%type <tree> simpleStmt
%type <tree> openStmt
%type <tree> closedStmt
%type <tree> expStmt
%type <tree> compoundStmt
%type <tree> localDecls
%type <tree> stmtList
%type <tree> selectStmt
%type <tree> closedSelStmt
%type <tree> openIterStmt
%type <tree> closedIterStmt
%type <tree> returnStmt
%type <tree> breakStmt
%type <tree> exp
%type <tree> simpleExp
%type <tree> andExpr
%type <tree> unaryRelExp
%type <tree> relExp
%type <tree> relop
%type <tree> sumExp
%type <tree> sumop
%type <tree> mulExp
%type <tree> mulOp
%type <tree> unaryExp
%type <tree> unaryop
%type <tree> factor
%type <tree> mutable
%type <tree> immutable
%type <tree> call
%type <tree> args
%type <tree> argList
%type <tree> constant
%type <tree> minmaxop
%type <tree> minmaxExp

// Operators
%token <tree> ADDASS DEC DIVASS INC MULASS SUBASS
%token <tree> EQ GEQ LEQ NEQ NOT AND OR MIN MAX
%token <tree> '+' '-' '=' '|' '&' '!' '<' '>' '*' '/' '%' '?'

// Keywords / Syntax
%token <tree> BOOL BREAK CHAR ELSE FOR TO IF THEN INT RETURN STATIC WHILE DO
%token <tree> ID
%token <tree> BOOLCONST
%token <tree> NUMCONST
%token <tree> CHARCONST
%token <tree> STRINGCONST
%token <tree> ',' ':' '(' ')' ';' '[' ']' '{' '}'

%%
program         
    : declList                                  { syntaxTree = $1; }
    ;       
        
declList                
    : declList decl                             { $$ = $1; if ($$ != NULL) $$->addSibling($2); }
    | decl                                      { $$ = $1; }
    ;       
        
decl                    
    : varDecl                                   { $$ = $1; }
    | funDecl                                   { $$ = $1; }
    | error                                     { $$ = NULL; }
    ;       
        
varDecl                 
    : typeSpec varDeclList ';'                  { $$ = $2; $$->typeSiblings($1->getExprType()); yyerrok; }
    | error varDeclList ';'                     { $$ = NULL; }
    | typeSpec error ';'                        { $$ = NULL; yyerrok; }
    ;       
        
scopedVarDecl           
    : STATIC typeSpec varDeclList ';'           {
                                                    $$ = $3;
                                                    $$->typeSiblings($2->getExprType());
                                                    $$->staticSiblings();
                                                    yyerrok;
                                                }
    | typeSpec varDeclList ';'                  {
                                                    $$ = $2;
                                                    $$->typeSiblings($1->getExprType());
                                                    yyerrok;
                                                }
    | error varDeclList ';'                     { $$ = NULL; yyerrok; }
    ;       
        
varDeclList             
    : varDeclList ',' varDeclInit               {
                                                    $$ = $1;
                                                    if ($$ != NULL) $$->addSibling($3);
                                                    yyerrok;
                                                }
    | varDeclInit                               { $$ = $1; }
    | varDeclList ',' error                     { $$ = NULL; }
    | error                                     { $$ = NULL; }
    ;       
        
varDeclInit             
    : varDeclId                                 { $$ = $1; }
    | varDeclId ':' simpleExp                   {
                                                    $$ = $1;
                                                    if ($$ != NULL) $$->children[0] = $3;
                                                }
    | error ':' simpleExp                       { $$ = NULL; yyerrok; }
    | varDeclId ':' error                       { $$ = NULL; }
    ;       
        
varDeclId               
    : ID                                        {
                                                    $$ = $1;
                                                    $$->setDeclKind(DeclKind::VARIABLE);
                                                }
    | ID '[' NUMCONST ']'                       {
                                                    $$ = $1;
                                                    $$->setIsArray(true);
                                                    $$->setMemorySize($3->getNumValue() + 1);
                                                    $$->setDeclKind(DeclKind::VARIABLE);
                                                }
    | ID '[' error                              { $$ = NULL; }
    | error ']'                                 { $$ = NULL; yyerrok; }
    ;       
        
typeSpec                
    : INT                                       { $$ = $1; $$->setExprType(ExprType::INT); }
    | BOOL                                      { $$ = $1; $$->setExprType(ExprType::BOOL); }
    | CHAR                                      { $$ = $1; $$->setExprType(ExprType::CHAR); }
    ;       
        
funDecl                 
    : typeSpec ID '(' params ')' stmt           {
                                                    $$ = $2;
                                                    $$->setDeclKind(DeclKind::FUNCTION);
                                                    $$->setExprType($1->getExprType());
                                                    $$->children[0] = $4;
                                                    $$->children[1] = $6;
                                                }
    | ID '(' params ')' stmt                    {
                                                    $$ = $1;
                                                    $$->setDeclKind(DeclKind::FUNCTION);
                                                    $$->setExprType(ExprType::VOID);
                                                    $$->children[0] = $3;
                                                    $$->children[1] = $5;
                                                }
    | typeSpec error                            { $$ = NULL; }
    | typeSpec ID '(' error                     { $$ = NULL; }
    | typeSpec ID '(' params ')' error          { $$ = NULL; }
    | ID '(' error                              { $$ = NULL; }
    | ID '(' params ')' error                   { $$ = NULL; }
    ;

params          
    : paramList                                 { $$ = $1; }
    | %empty                                    { $$ = NULL; }
    ;

paramList       
    : paramList ';' paramTypeList               { $$ = $1; if ($$ != NULL) $$->addSibling($3); }
    | paramTypeList                             { $$ = $1; }
    | paramList ';' error                       { $$ = NULL; }
    | error                                     { $$ = NULL; }
    ;

paramTypeList   
    : typeSpec paramIdList                      { $$ = $2; $$->typeSiblings($1->getExprType()); }
    | typeSpec error                            { $$ = NULL; }
    ;

paramIdList     
    : paramIdList ',' paramId                   { $$ = $1; if ($$ != NULL) $$->addSibling($3); yyerrok; }
    | paramId                                   { $$ = $1; }
    | paramIdList ',' error                     { $$ = NULL; }
    | error                                     { $$ = NULL; }
    ;

paramId         
    : ID                                        { $$ = $1; $$->setDeclKind(DeclKind::PARAM); }
    | ID '[' ']'                                { $$ = $1; $$->setDeclKind(DeclKind::PARAM); $$->setIsArray(true); }
    ;

/* ---------- */
//stmt
//    :   matched         { $$ = $1; }
//    |   unmatched       { $$ = $1; }
//    ;

//matched
//    :   expStmt         { $$ = $1; }
//    |   compoundStmt    { $$ = $1; }
//    |   selectStmt      { $$ = $1; }
//    |   iterStmt        { $$ = $1; }
//    ;

/* ---------- */


stmt            : openStmt { $$ = $1; }
                | closedStmt { $$ = $1; }
                ;
simpleStmt      : expStmt { $$ = $1; }
                | compoundStmt { $$ = $1; }
                | returnStmt { $$ = $1; }
                | breakStmt { $$ = $1; }
                ;
openStmt        : selectStmt { $$ = $1; }
                | openIterStmt { $$ = $1; }
                ;
closedStmt      : simpleStmt { $$ = $1; }
                | closedSelStmt { $$ = $1; }
                | closedIterStmt { $$ = $1; }
                ;
expStmt         : exp ';'   { $$ = $1; }
                | ';'       { $$ = NULL; }
                | error ';' { $$ = NULL; yyerrok; }
                ;

compoundStmt    : '{' localDecls stmtList '}'   { $$ = $1; $$->setStmtKind(StmtKind::COMPOUND);
                                                    $$->children[0] = $2;
                                                    $$->children[1] = $3;
                                                    yyerrok;
                                                }
                ;

localDecls      : localDecls scopedVarDecl      {
                                                    if ($1 == NULL) {
                                                        $$ = $2;
                                                    } else {
                                                        $$ = $1;
                                                        $$->addSibling($2);
                                                    }
                                                }
                | %empty { $$ = NULL; }
                ;

stmtList        : stmtList stmt {
                                    if ($1 == NULL) {
                                        $$ = $2;
                                    } else {
                                        $$ = $1;
                                        $$->addSibling($2);
                                    }
                                }
                | %empty { $$ = NULL; }
                ;
selectStmt     
    : IF simpleExp THEN stmt                        {
                                                        $$ = $1;
                                                        $$->setStmtKind(StmtKind::SELECTION);
                                                        $$->children[0] = $2;
                                                        $$->children[1] = $4;
                                                    }
    | IF simpleExp THEN stmt ELSE stmt              {
                                                        $$ = $1;
                                                        $$->setStmtKind(StmtKind::SELECTION);
                                                        $$->children[0] = $2;
                                                        $$->children[1] = $4;
                                                        $$->children[2] = $6;
                                                    }                                                 
    ;

closedSelStmt   : IF '(' simpleExp ')' closedStmt ELSE closedStmt   {
                                                                        $$ = $1;
                                                                        $$->setStmtKind(StmtKind::SELECTION);
                                                                        $$->children[0] = $3;
                                                                        $$->children[1] = $5;
                                                                        $$->children[2] = $7;
                                                                    }
                | IF error  { $$ = NULL; }
                | IF error ELSE closedStmt  { $$ = NULL; yyerrok; }
                | IF error ')' closedStmt ELSE closedStmt   { $$ = NULL; yyerrok; }
                ;
openIterStmt    : WHILE '(' simpleExp ')' openStmt  {
                                                        $$ = $1;
                                                        $$->setStmtKind(StmtKind::WHILE);
                                                        $$->children[0] = $3;
                                                        $$->children[1] = $5;
                                                    }
                | FOR '(' ID TO ID ')' openStmt {
                                                    $$ = $1;
                                                    $3->setExprType(ExprType::UNDEFINED);
                                                    $3->setDeclKind(DeclKind::VARIABLE);
                                                    $5->setExprKind(ExprKind::ID);
                                                    $$->setStmtKind(StmtKind::FOR);
                                                    $$->children[0] = $3;
                                                    $$->children[1] = $5;
                                                    $$->children[2] = $7;                                                
                                                }
                ;
closedIterStmt  
    : WHILE simpleExp DO stmt                   {
                                                    $$ = $1;
                                                    $$->setStmtKind(StmtKind::WHILE);
                                                    $$->children[0] = $2;
                                                    $$->children[1] = $4;
                                                }
    | FOR '(' ID TO ID ')' closedStmt           {
                                                    $$ = $1;
                                                    $3->setExprType(ExprType::UNDEFINED);
                                                    $3->setDeclKind(DeclKind::VARIABLE);
                                                    $5->setExprKind(ExprKind::ID);
                                                    $$->setStmtKind(StmtKind::FOR);
                                                    $$->children[0] = $3;
                                                    $$->children[1] = $5;
                                                    $$->children[2] = $7;                                                
                                                }
    | WHILE error ')' closedStmt                { $$ = NULL; yyerrok; }
    | WHILE error                               { $$ = NULL; }
    | FOR error ')' closedStmt                  { $$ = NULL; yyerrok; }
    | FOR error                                 { $$ = NULL; }
    ;

/* ---- */

//iterRange
//    : simpleExp TO simpleExp                    {
//                                                    $$ = $2;
//                                                    $2->setStmtKind(StmtKind::RANGE)
//                                                    $2->children[0] = $1;
//                                                    $2->children[1] = $3;
//                                                }
//    ;

/* ---- */

returnStmt              
    : RETURN ';'                                { $$ = $1; $$->setStmtKind(StmtKind::RETURN); }
    | RETURN exp ';'                            {
                                                    $$ = $1;
                                                    $$->setStmtKind(StmtKind::RETURN);
                                                    $$->children[0] = $2;
                                                    yyerrok;
                                                }
    | RETURN error ';'                          { $$ = NULL; yyerrok; }   
    ;

breakStmt       
    : BREAK ';'                                 { $$ = $1; $$->setStmtKind(StmtKind::BREAK); }
    ;

exp            
    : mutable '=' exp                           {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::ASSIGN);
                                                    $$->children[0] = $1;
                                                    $$->children[0]->cancelCheckInit(true);
                                                    $$->children[1] = $3;
                                                }
    | mutable ADDASS exp                        {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::ASSIGN);
                                                    $$->children[0] = $1;
                                                    $$->children[0]->cancelCheckInit(true);
                                                    $$->children[1] = $3;
                                                }
    | mutable SUBASS exp                        {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::ASSIGN);
                                                    $$->children[0] = $1;
                                                    $$->children[0]->cancelCheckInit(true);
                                                    $$->children[1] = $3;
                                                }
    | mutable MULASS exp                        {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::ASSIGN);
                                                    $$->children[0] = $1;
                                                    $$->children[0]->cancelCheckInit(true);
                                                    $$->children[1] = $3;
                                                }
    | mutable DIVASS exp                        {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::ASSIGN);
                                                    $$->children[0] = $1;
                                                    $$->children[0]->cancelCheckInit(true);
                                                    $$->children[1] = $3;
                                                }
    | mutable INC                               {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::ASSIGN);
                                                    $$->children[0] = $1;
                                                }
    | mutable DEC                               {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::ASSIGN);
                                                    $$->children[0] = $1;
                                                }
    | simpleExp                                 { $$ = $1; }
    | error '=' error                           { $$ = NULL; }
    | error ADDASS error                        { $$ = NULL; }
    | error SUBASS error                        { $$ = NULL; }
    | error MULASS error                        { $$ = NULL; }
    | error DIVASS error                        { $$ = NULL; }
    | error INC                                 { $$ = NULL; yyerrok; }
    | error DEC                                 { $$ = NULL; yyerrok; }
    ;

simpleExp       
    : simpleExp OR andExpr                      {
                                                    $2->setTokenString("|");
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $1;
                                                    $$->children[1] = $3;
                                                }
    | andExpr                                   { $$ = $1; }
    | simpleExp OR error                        { $2->setTokenString("|"); $$ = NULL; }
    ;

andExpr         
    : andExpr AND unaryRelExp                   {
                                                    $2->setTokenString("&");
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $1;
                                                    $$->children[1] = $3;
                                                }
    | unaryRelExp                               { $$ = $1; }
    | andExpr AND error                         { $2->setTokenString("&"); $$ = NULL; }
    ;           

unaryRelExp     
    : NOT unaryRelExp                           {
                                                    $1->setTokenString("!");
                                                    $$ = $1;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $2;
                                                }
    | relExp                                    { $$ = $1; }
    | NOT error                                 { $1->setTokenString("!"); $$ = NULL; }
    ;

relExp          
    : minmaxExp relop minmaxExp                 {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $1;
                                                    $$->children[1] = $3;
                                                }
    | minmaxExp                                 { $$ = $1; }
    | minmaxExp relop error                     { $$ = NULL; }
    ;

minmaxExp
    : minmaxExp minmaxop sumExp                 {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $1;
                                                    $$->children[1] = $3;  
                                                }
    | sumExp                                    { $$ = $1; }
    ;

minmaxop
    : MAX                                       { $$ = $1; }
    | MIN                                       { $$ = $1; }
    ;

relop           
    : LEQ                                       { $$ = $1; }
    | '<'                                       { $$ = $1; }
    | '>'                                       { $$ = $1; }
    | GEQ                                       { $$ = $1; }
    | EQ                                        { $$ = $1; }
    | NEQ                                       { $$ = $1; }
    ;

sumExp          
    : sumExp sumop mulExp                       {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $1;
                                                    $$->children[1] = $3;
                                                }
    | mulExp                                    { $$ = $1; }
    | sumExp sumop error                        { $$ = NULL; }
    ;

sumop           
    : '+'                                       { $$ = $1; }
    | '-'                                       { $$ = $1; }
    ;

mulExp          
    : mulExp mulOp unaryExp                     {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $1;
                                                    $$->children[1] = $3;
                                                }
    | unaryExp                                  { $$ = $1; }
    | mulExp mulOp error                        { $$ = NULL; }
    ;

mulOp           
    : '*'                                       { $$ = $1; }
    | '/'                                       { $$ = $1; }
    | '%'                                       { $$ = $1; }
    ;

unaryExp        
    : unaryop unaryExp                          {
                                                    $$ = $1;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $2;
                                                }
    | factor                                    { $$ = $1; }
    | unaryop error                             { $$ = NULL; }
    ;

unaryop         
    : '-'                                       { $$ = $1; }
    | '*'                                       { $$ = $1; }
    | '?'                                       { $$ = $1; }
    ;

factor          
    : immutable                                 { $$ = $1; }
    | mutable                                   { $$ = $1; }
    ;

mutable         
    : ID                                        { 
                                                    $$ = $1;
                                                    $$->setExprKind(ExprKind::ID);
                                                    $$->setExprName($$->getStringValue());
                                                }
    | mutable '[' exp ']'                       {
                                                    $$ = $2;
                                                    $$->setExprKind(ExprKind::OP);
                                                    $$->children[0] = $1;
                                                    $$->children[1] = $3;
                                                }
    ;

immutable       
    : '(' exp ')'                               { $$ = $2; yyerrok; }
    | call                                      { $$ = $1; }
    | constant                                  { $$ = $1; }
    | '(' error                                 { $$ = NULL; }
    ;

call            
    : ID '(' args ')'                           {
                                                    $$ = $1;
                                                    $$->setExprKind(ExprKind::CALL);
                                                    $$->setExprName($1->getStringValue());
                                                    $$->children[0] = $3;
                                                }
    | error '('                                 { $$ = NULL; yyerrok; }
    ;

args            
    : argList                                   { $$ = $1; }
    | %empty                                    { $$ = NULL; }
    ;

argList         
    : argList ',' exp                           { $$ = $1; if ($$ != NULL) $$->addSibling($3); yyerrok; }
    | exp                                       { $$ = $1; }
    | argList ',' error                         { $$ = NULL; }
    ;

constant        
    : NUMCONST                                  { $$ = $1; $$->setExprKind(ExprKind::CONSTANT); $$->setExprType(ExprType::INT); }
    | CHARCONST                                 { $$ = $1; $$->setExprKind(ExprKind::CONSTANT); $$->setExprType(ExprType::CHAR); }
    | STRINGCONST                               { $$ = $1; $$->setExprKind(ExprKind::CONSTANT); $$->setExprType(ExprType::CHAR); $$->setMemorySize($$->getNumValue() + 1); $$->setIsArray(true); }
    | BOOLCONST                                 { $$ = $1; $$->setExprKind(ExprKind::CONSTANT); $$->setExprType(ExprType::BOOL); }
    ;
%%
