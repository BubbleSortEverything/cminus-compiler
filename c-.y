%{ 

#include "util.h"

TreeNode *savedTree;    /* stores syntax tree */
SymbolTable symTable;   /* symbol table */

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
%type <treeNode> program declList decl varDeclaration varDeclList varDeclInitialize varDeclId typeSpecifier simpleExpression
%type <treeNode> andExpression unaryRelExpression relExpression minmaxExp sumExpression mulExpression unaryExpression  
%type <treeNode> constant relop sumop mulop unaryop expression call args argList scopedTypeSpecifier scopedVarDeclaration 
%type <treeNode> statement expressionStmt compoundStmt localDeclarations statementList paramList paramTypeList paramId paramIdList
%type <treeNode> selectStmt iterStmt iterRange returnStmt breakStmt minmaxop factor mutable immutable funDeclaration params

%%
program:
    declList  { savedTree = $1; };

declList: 
    declList decl { $$ = addSibling($1, $2); } |
    decl { $$ = $1; };

decl: 
    varDeclaration { $$ = $1; } |
    funDeclaration { $$ = $1; };

varDeclaration: 
    typeSpecifier varDeclList ';' {
        setType($2, $1->expType, false);
        $$ = $2;
    };

typeSpecifier:
    INT  { $$ = newExpNode(InitK, Integer, $1); } |
    BOOL { $$ = newExpNode(InitK, Boolean, $1); } |
    CHAR { $$ = newExpNode(InitK, Char, $1); };

varDeclList: 
    varDeclList ',' varDeclInitialize { $$ = addSibling($1,$3); } |
    varDeclInitialize { $$ = $1; };

varDeclInitialize: 
    varDeclId { $$ = $1; } |
    varDeclId ':' simpleExpression {
        $1 = addChild($1, $3);
        $$ = $1;
    };

varDeclId:
    ID { $$ = newDeclNode(VarK, UndefinedType, $1); } |
    ID '[' NUMCONST ']' {
        /***** prolly need to save NUMCONST in the node for future reference *****/
        $$ = newDeclNode(VarK, UndefinedType, $1);
        $$->isArray = true;
    };

scopedVarDeclaration: 
    scopedTypeSpecifier varDeclList {
        setType($2, $1->expType, $1->isStatic);
        $$ = $2;
    };

scopedTypeSpecifier: 
    STATIC typeSpecifier { $2->isStatic = true; $$ = $2; } |
    typeSpecifier { $$ = $1; };

funDeclaration: 
    typeSpecifier ID '(' params ')' statement { 
        $$ = newDeclNode(FuncK, $1->expType, $2, $4, $6);
    } | 
    ID '(' params ')' statement
    { 
         $$ = newDeclNode(FuncK, Void, $1, $3, $5);
    };

params: 
    paramList {
        $$ = $1;
    } | 
    { $$ = NULL; };

paramList: 
    paramList ';' paramTypeList {
        $$ = addSibling($1, $3);
    } |
    paramTypeList { $$ = $1; };

paramTypeList: 
    typeSpecifier paramIdList {
        setType($2, $1->expType, false);
        $$ = $2;
    };

paramIdList: 
    paramIdList ',' paramId {
        addSibling($1, $3);
    } |
    paramId { $$ = $1; }
    ;

paramId: 
    ID { $$ = newDeclNode(ParamK, UndefinedType, $1); } |
    ID '[' ']' { 
        $$ = newDeclNode(ParamK, UndefinedType, $1); 
        $$->isArray = true;
    };

statement: 
    expressionStmt { $$ = $1; } |
    compoundStmt { $$ = $1; } |
    selectStmt { $$ = $1; } |
    iterStmt { $$ = $1; } |
    returnStmt {$$ = $1; } |
    breakStmt { $$ = $1; };

compoundStmt: 
    '{' localDeclarations statementList '}' {
        $$ = newStmtNode(CompoundK, $1, $2, $3);
    };

selectStmt: 
    IF simpleExpression THEN statement {
        $$ = newStmtNode(IfK, $1, $2, $4);
    } | 
    IF simpleExpression THEN statement ELSE statement {
        $$ = newStmtNode(IfK, $1, $2, $4, $6);
    };

iterStmt:
    WHILE simpleExpression DO statement {
        $$ = newStmtNode(WhileK, $1, $2, $4);
    } |
    FOR ID '=' iterRange DO statement {
        TreeNode *var = newDeclNode(VarK, Integer, $2);
        $$ = newStmtNode(ForK, $1, var, $4, $6);
    };

iterRange:
    simpleExpression TO simpleExpression {
        $$ = newStmtNode(RangeK, $2, $1, $3);
    } |
    simpleExpression TO simpleExpression BY simpleExpression {
        $$ = newStmtNode(RangeK, $2, $1, $3, $5);
    };

returnStmt:
    RETURN ';' {
        $$ = newStmtNode(ReturnK, $1);
    } |
    RETURN expression ';' {
        $$ = newStmtNode(ReturnK, $1, $2);
    };

breakStmt:
    BREAK ';' {
        $$ = newStmtNode(BreakK, $1);
    };

localDeclarations: 
    localDeclarations scopedVarDeclaration ';' { 
        $$ = addSibling($1, $2);
    } |
    {  $$ = NULL; };

statementList:
    statementList statement { $$ = addSibling($1, $2); } |
    { $$ = NULL; };

expressionStmt: 
    expression ';' { $$ = $1; } |
    ';' { $$ = NULL; };

expression: 
    mutable '=' expression {
        $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); 
    } |
    mutable INC {
        $$ = newExpNode(AssignK, UndefinedType, $2, $1); 
    } |
    mutable DEC{ 
        $$ = newExpNode(AssignK, UndefinedType, $2, $1); 
    } |
    mutable ADDASS expression { 
        $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); 
    } |
    mutable SUBASS expression { 
        $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); 
    } |
    mutable MULASS expression { 
        $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); 
    } |
    mutable DIVASS expression { 
        $$ = newExpNode(AssignK, UndefinedType, $2, $1, $3); 
    } |
    simpleExpression { $$ = $1; };

simpleExpression: 
    simpleExpression OR andExpression {
        $2->tokenstr = "OR";
        $$ = newExpNode(OpK, UndefinedType, $2, $1, $3);
    } |
    andExpression {
        $$ = $1;
    };


andExpression: 
    andExpression AND unaryRelExpression {
        $2->tokenstr = "AND";
        $$ = newExpNode(OpK, UndefinedType, $2, $1, $3);
    } |
    unaryRelExpression { $$ = $1; };

unaryRelExpression: 
    NOT unaryRelExpression {
        $1->tokenstr = "NOT";
        $$ = newExpNode(OpK, UndefinedType, $1, $2);
    } | 
    relExpression { $$ = $1; };

relExpression:
    minmaxExp relop minmaxExp {
        $$ = newExpNode(OpK, UndefinedType, $2->token, $1, $3);
    } |
    minmaxExp { $$ = $1; };

minmaxExp:
    minmaxExp minmaxop sumExpression {
        $$ = newExpNode(OpK, UndefinedType, $2->token, $1, $3);
    } |
    sumExpression { $$ = $1; };

sumExpression:
    sumExpression sumop mulExpression {
        $$ = newExpNode(OpK, UndefinedType, $2->token, $1, $3);
    } | 
    mulExpression { $$ = $1; } ;

mulExpression: 
    mulExpression mulop unaryExpression {
        $$ = newExpNode(OpK, UndefinedType, $2->token, $1, $3);
    } |
    unaryExpression { $$ = $1; } ;

minmaxop:
    MAX { $$ = newExpNode(OpK, UndefinedType, $1); } |
    MIN { $$ = newExpNode(OpK, UndefinedType, $1); }

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

unaryExpression: 
    unaryop unaryExpression {
        $$ = newExpNode(OpK, UndefinedType, $1->token, $2);
    } |
    factor { $$ = $1; } ; 

unaryop:
    '-' {
        $1->tokenstr = "CHSIGN";
        $$ = newExpNode(OpK, UndefinedType, $1); 
    } |
    '*' { 
        $1->tokenstr = "SIZEOF";
        $$ = newExpNode(OpK, UndefinedType, $1); 
    } |
    '?' { $$ = newExpNode(OpK, UndefinedType, $1); };

factor: 
    mutable { $$ = $1; } | 
    immutable { $$ = $1; } ;

mutable: 
    ID { 
        $$ = newExpNode(IdK, UndefinedType, $1);
    } | 
    mutable '[' expression ']' {
        $$ = newExpNode(OpK, UndefinedType, $2, $1, $3);
    };

immutable: 
    '(' expression ')' { $$ = $2; } |
    call { $$ = $1; } |
    constant { $$ = $1; };

call: 
    ID '(' args ')' {
        $$ = newExpNode(CallK, UndefinedType, $1, $3);
    };

args: 
    argList { $$ = $1; } |
    { $$ = NULL; };


argList: 
    argList ',' expression {
        $$ = addSibling($1, $3);
    } |
    expression { $$ = $1; }
    ;

constant:
    NUMCONST { 
        $$ = newExpNode(ConstantK, Integer, $1);
    } |
    BOOLCONST {
        $$ = newExpNode(ConstantK, Boolean, $1);
    } |
    CHARCONST {
        $$ = newExpNode(ConstantK, Char, $1);
    } |
    STRINGCONST {
        $$ = newExpNode(ConstantK, Char, $1);
        $$->isArray = true;
    };
%%

// int main(int argc, char* argv[]) {
//     int c;
//     extern char *optarg;
//     extern int optind;
//     int pflg = 0;
//     int dflg = 0;
//     bool printFlag = false;
//     int optCount = 1;

//     while ((c = ourGetopt(argc, argv, (char *)"pd:")) != EOF){
//         switch (c) {
//             case 'p':
//                 printFlag = true;
//                 break;
//             case 'd':
//                 yydebug=1;
//                 break;
//         }
//         optCount++;
//     }

//     if (argc > 1) {
//         if ((yyin = fopen(argv[optCount], "r"))) {
//            yyparse();
//            if (printFlag) printTree(savedTree, "", 0);
//         }
//         else {
//            yyin = stdin;
//            yyparse();
//            if (printFlag) printTree(savedTree, "", 0);
//         }
//     }

//     return 0;  
// }

