#include "util.h"

#include "ourgetopt.h"

using namespace std;


/* Interface helpers
 */
void useageMessage();

/*  Checking different types of operators
 */
bool isUnaryOp(std:: string opstr);
bool isIntOperator(std::string str);
bool isRelopOperator(std::string opstr);
bool isAssignOperator(std::string opstr);

/*  Array handler
 */
bool isIndexed(TreeNode* node);
TreeNode* handleArray(TreeNode* node);

bool checkSymbol(TreeNode* syntaxTree, bool isNewCompound);
TreeNode* checkExpKind(TreeNode* syntaxTree);
void checkDeclKind(TreeNode* syntaxTree, bool isNewCompound);
void checkStmtKind(TreeNode* syntaxTree, bool functionDeclared);

void printSymbolTable(TreeNode* savedTree, bool functionDeclared=false, bool isNewCompound=false);

/* Globals
 */
int numErrors = 0;
bool mainDefined = false;
vector<string> *symbolNames = new vector<string>;
vector<string> *symbolStack = new vector<string>;
const char* ExpTypeStr[] = {"void", "int", "bool", "char", "charint", "equal", "undefinedtype"};
const char* UnaryStr[] = {"and", "not"};

/*  Main Function
 */
int main(int argc, char* argv[]) {
    int c;
    extern char *optarg;
    extern int optind;
    int pflg = 0;
    int dflg = 0;
    bool printFlag, typeFlag, symFlag = false;
    int optCount = 1;

    while ((c = ourGetopt(argc, argv, (char *)"phdDP:")) != EOF) {
        switch (c) {
            case 'p':
                printFlag = true;
                break;
            case 'd':
                yydebug=1;
                break;
            case 'D':
                symFlag = true;
                break;
            case 'h':
                useageMessage();
                return 0;
                break;
            case 'P':
                typeFlag = true;
                break;
            default:
                cout << "no option given" << endl;
                break;
        }
        optCount++;
    }

    if (argc > 1) {
        if ((yyin = fopen(argv[optCount], "r"))) {
            yyparse();
            if (printFlag) printTree(savedTree, "", 0);
            if (symFlag) { 
                symbolTable.debug(symFlag);
            }
            printSymbolTable(savedTree);
            if (!mainDefined) {
                printf("ERROR(LINKER): A function named 'main()' must be defined.\n");
                numErrors++;
            }
            if (numErrors == 0) printTree(savedTree, "", 0, typeFlag);
            printf("Number of errors: %d\n", numErrors);
        }
        else {
            yyin = stdin;
            yyparse();
            if (printFlag) printTree(savedTree, "", 0);
            if (symFlag) { 
                symbolTable.debug(symFlag);
                printSymbolTable(savedTree);
                if (numErrors == 0) printTree(savedTree, "", 0, typeFlag);
                printf("Number of errors: %d\n", numErrors);
            }
        }
    }

    return 0;  
}

/*  Usage Message
 */
void useageMessage() {
    printf("Usage: c-[options] [sourceFile]\n");
    printf("options\n");
    printf("-d      - turn on parser debugging\n");
    printf("-D      - turn on symbol table debugging\n");
    printf("-h      - this usage message\n");
    printf("-p      - print the abstract syntax tree\n");
    printf("-P      - print the abstract syntax tree plus type information\n");
}

bool checkSymbol(TreeNode* node, bool isNewCompound) {
    bool symExist = true;
    char* tokenString = node->token->tokenstr;
    TreeNode* globalSym = NULL;

    if (!isNewCompound) {
        globalSym = (TreeNode* )symbolTable.lookupGlobal(tokenString);
    }
    TreeNode* localSym = (TreeNode* )symbolTable.lookupLocal(tokenString);

    if (globalSym) {
        cout <<"ERROR("<<node->token->linenum<<"): Symbol '"<<tokenString<<"' is already declared at line "<<globalSym->token->linenum<<"."<<endl;
        numErrors++;
    } else if(localSym) {
        cout <<"ERROR("<<node->token->linenum<<"): Symbol '"<<tokenString<<"' is already declared at line "<<localSym->token->linenum<<"."<<endl;
        numErrors++;
    } else {
        symExist = false;
    }

    return symExist;
}

/* printing symbol table
 */
void printSymbolTable(TreeNode* syntaxTree, bool functionDeclared, bool isNewCompound) {
    if (!syntaxTree) return;
    switch(syntaxTree->nodekind) {
        case DeclK:
            checkDeclKind(syntaxTree, isNewCompound);
            break;

        case StmtK:
            checkStmtKind(syntaxTree, functionDeclared);
            break;

        case ExpK:
            checkExpKind(syntaxTree);
            break;

        default:
            break;
    }

    if (syntaxTree->sibling != NULL) {
        printSymbolTable(syntaxTree->sibling, false, isNewCompound);
    }

}

void checkDeclKind(TreeNode* syntaxTree, bool isNewCompound) {
    if(!syntaxTree) {
        return;
    }

    bool newScope = false;
    bool symExists = checkSymbol(syntaxTree, isNewCompound);

    switch(syntaxTree->subkind.decl) {
        case VarK:
            if (!symExists) {
                symbolTable.insert(syntaxTree->token->tokenstr, syntaxTree);
            }
            break;

        case ParamK:
            if (!symExists) {
                symbolTable.insert(syntaxTree->token->tokenstr, syntaxTree);
            }
            break;

        case FuncK:
            if (!symExists) {
                symbolTable.insert(syntaxTree->token->tokenstr, syntaxTree);
                symbolTable.enter(syntaxTree->token->tokenstr);
                newScope = true;

                if (strcmp(syntaxTree->token->tokenstr, "main") == 0 and !syntaxTree->child[0]) {
                    mainDefined = true;
                }
            } 
            break;

        default:
            cout << "INVALID DeclK" << endl;
            exit(-1);
            break;
    }

    for (int i = 0; i < MAXCHILDREN; i++) {
        if (syntaxTree->child[i] != NULL) {
            printSymbolTable(syntaxTree->child[i], true);
        }
    }

    if (newScope) symbolTable.leave();

    return;
}

void checkStmtKind(TreeNode* node, bool functionDeclared) {
    if (!node) return;

    bool scopeEntered = false;
    bool isNewCompound = false;
    bool newScope = false;
    switch(node->subkind.stmt) {
        case CompoundK:
            if (!functionDeclared) {
                symbolTable.enter("Compound Statmenet");
                scopeEntered = true;
                isNewCompound = true;
            }
            break;

        case IfK:
            symbolTable.enter("If Statmenet");
            scopeEntered = true;
            newScope = true;
            break;

        case WhileK:
            symbolTable.enter("While Loop");
            scopeEntered = true;
            newScope = true;
            break;

        case ForK:
            symbolTable.enter("For Loop");
            scopeEntered = true;
            newScope = true;
            break;

        case RangeK:
            break;

        case ReturnK:
            if (node->child[0] and node->child[0]->subkind.exp == IdK) {
                string symbolName = string(node->child[0]->token->tokenstr);
                TreeNode* symNode = (TreeNode*)symbolTable.lookup(symbolName);

                if (symNode and symNode->isArray) {
                    printf("ERROR(%d): Cannot return an array.\n", node->lineno);
                    numErrors++;
                }
            }
            break;

        case BreakK:
            break;

        case NullK:
            break;

        default:
            break;
    }

    for (int i = 0; i < MAXCHILDREN; i++){
        if (node->child[i] != NULL){
            printSymbolTable(node->child[i], newScope, isNewCompound);
        }
    }

    if (scopeEntered) symbolTable.leave();

    return;
}


TreeNode* handleArray(TreeNode* node) {
    TreeNode* lhs, *rhs;
    lhs = node->child[0] ? checkExpKind(node->child[0]) : node;
    rhs = node->child[1] ? checkExpKind(node->child[1]) : node;

    if (!lhs->isArray) {
        printf("ERROR(%d): Cannot index nonarray '%s'.\n", node->lineno, lhs->token->tokenstr);
        numErrors++;
    }
    if (ExpTypeStr[rhs->expType] != ExpTypeStr[1]) {
        printf("ERROR(%d): Array '%s' should be indexed by type int but got type %s.\n", node->lineno, node->child[0]->token->tokenstr, ExpTypeStr[rhs->expType]);
        numErrors++;
    }

    if (rhs->isArray and !node->child[1]->child[0]) {
        printf("ERROR(%d): Array index is the unindexed array '%s'.\n", node->lineno, rhs->token->tokenstr);
        numErrors++;
    }

    // if (lhs->isArray and ExpTypeStr[rhs->type]=="integer") return rhs;

    return lhs;
}


TreeNode* checkExpKind(TreeNode* node) {
    if (!node) return NULL;

    TreeNode *lhs, *rhs, *symNode;
    char* tokenString;

    switch(node->subkind.exp) {
        case OpK:
            tokenString = node->token->tokenstr;

            if (node->isArray) {
                return handleArray(node);
            }

            lhs = node->child[0] ? checkExpKind(node->child[0]) : node;
            rhs = node->child[1] ? checkExpKind(node->child[1]) : node;

            if (!lhs or !rhs) return NULL;

            if (isRelopOperator((std::string)tokenString)) {
                if(lhs->expType != rhs->expType) {
                    printf("ERROR(%d): '%s' requires operands of the same type but lhs is type %s and rhs is type %s.\n", node->lineno, tokenString, ExpTypeStr[lhs->expType], ExpTypeStr[rhs->expType]);
                    numErrors++;
                }
                // comparasion among arrays 
                if (!rhs->isArray and lhs->isArray and !node->child[0]->child[1]) {
                    printf("ERROR(%d): '%s' requires both operands be arrays or not but lhs is an array and rhs is not an array.\n", node->lineno, tokenString);
                    numErrors++;
                }
                else if (!lhs->isArray and rhs->isArray) {
                    printf("ERROR(%d): '%s' requires both operands be arrays or not but lhs is not an array and rhs is an array.\n", node->lineno, tokenString);
                    numErrors++;
                }
                else if (lhs->expType == rhs->expType) {
                    node->expType = Boolean;
                    return node;
                }
            }
            else if (isIntOperator((std::string)tokenString)) {
                if (ExpTypeStr[lhs->expType] != ExpTypeStr[1]) {
                    printf("ERROR(%d): '%s' requires operands of type %s but lhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[lhs->expType]);
                    numErrors++;
                }
                if (ExpTypeStr[rhs->expType] != ExpTypeStr[1]) {
                    printf("ERROR(%d): '%s' requires operands of type %s but rhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[rhs->expType]);
                    numErrors++;
                }
                if (lhs->isArray or rhs->isArray) {
                    printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                    numErrors++;
                }
            }
            else if (isUnaryOp((std::string)tokenString)) {
                if ((std::string)tokenString == "sizeof") {
                    if ( (lhs->isArray and node->child[0]->child[1] ) or !lhs->isArray) {
                        printf("ERROR(%d): The operation '%s' only works with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                    }
                    else if (lhs->isArray and !node->child[0]->child[1]) {
                        lhs->expType = Integer;
                    }
                } 
                else if ((std::string)tokenString=="?" or (std::string)tokenString=="chsign") {
                    if (lhs->isArray and ExpTypeStr[lhs->expType] != ExpTypeStr[1]) {
                        printf("ERROR(%d): Unary '%s' requires an operand of type %s but was given type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[lhs->expType]);
                        numErrors++;
                    }
                    if (lhs->isArray and !node->child[0]->child[1] and !node->child[0]->child[0]) {
                        printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                    } else if (ExpTypeStr[lhs->expType] != ExpTypeStr[1]) {
                        printf("ERROR(%d): Unary '%s' requires an operand of type %s but was given type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[lhs->expType]);
                        numErrors++;
                    }
                } 
                else if ((std::string)tokenString=="not") {
                    if (ExpTypeStr[lhs->expType] != ExpTypeStr[2]) {
                        printf("ERROR(%d): Unary '%s' requires an operand of type %s but was given type %s.\n", node->lineno, tokenString, ExpTypeStr[2], ExpTypeStr[lhs->expType]);
                        numErrors++;
                    }
                    else if (lhs->isArray and !isIndexed(node) ) {
                        printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                    }
                } 
                else if ((std::string)tokenString=="and" or (std::string)tokenString=="or") {
                        if (ExpTypeStr[lhs->expType] != ExpTypeStr[2]) {
                            printf("ERROR(%d): '%s' requires operands of type %s but lhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[2], ExpTypeStr[lhs->expType]);
                            numErrors++;
                        } 
                        if (ExpTypeStr[rhs->expType] != ExpTypeStr[2]) {
                            printf("ERROR(%d): '%s' requires operands of type %s but rhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[2], ExpTypeStr[rhs->expType]);
                            numErrors++;
                        }
                        else if ( (lhs->isArray and !isIndexed(node)) or (rhs->isArray and !isIndexed(node)) ) {
                            printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                            numErrors++;
                        }
                }
            }

            return lhs;

        case ConstantK:
            return node;

        case IdK:
            tokenString = node->token->tokenstr;
            symNode = (TreeNode*) symbolTable.lookupGlobal(tokenString);
            symNode = symNode ? symNode : (TreeNode*) symbolTable.lookup(tokenString);

            if(!symNode) {
                printf("ERROR(%d): Symbol '%s' is not declared.\n", node->token->linenum, tokenString);
                numErrors++;
            }
            else if (symNode->subkind.decl == FuncK) {
                printf("ERROR(%d): Cannot use function '%s' as a variable.\n", node->lineno, tokenString);
                numErrors++;
            }

            return symNode;

        case AssignK:
            tokenString = node->token->tokenstr;
            lhs = node->child[0] ? checkExpKind(node->child[0]) : node;
            rhs = node->child[1] ? checkExpKind(node->child[1]) : node;

            if (!lhs or !rhs) return NULL;
            
            if (strcmp(tokenString, "=") == 0) {
                // check is lhs is indexed arry of same type as non array rhs
                if (lhs->isArray and node->child[0]->child[1] and (lhs->expType == rhs->expType)) {
                    return rhs;
                }

                if ((lhs->isArray and !node->child[0]->child[1]) and !rhs->isArray) {
                    printf("ERROR(%d): '%s' requires both operands be arrays or not but lhs is an array and rhs is not an array.\n", node->lineno, tokenString);
                    numErrors++;
                } 
                else if ( !lhs->isArray and rhs->isArray and !node->child[1]->child[1]) {
                    printf("ERROR(%d): '%s' requires both operands be arrays or not but lhs is not an array and rhs is an array.\n", node->lineno, tokenString);
                    numErrors++;
                }
                else if(lhs->expType != rhs->expType) {
                    printf("ERROR(%d): '%s' requires operands of the same type but lhs is type %s and rhs is type %s.\n", node->lineno, tokenString, ExpTypeStr[lhs->expType], ExpTypeStr[rhs->expType]);
                    numErrors++;
                }
                else if (lhs->isArray and rhs->isArray and node->child[1]->child[1]) {
                    printf("ERROR(%d): '%s' requires both operands be arrays or not but lhs is an array and rhs is not an array.\n", node->lineno, tokenString);
                    numErrors++;
                }

                return lhs;
            }

            if (isAssignOperator((std::string)tokenString)) {
                if (strcmp(tokenString, "++")==0 or strcmp(tokenString, "--")==0) {
                    if (lhs->isArray) {
                        printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                    }
                    else if (ExpTypeStr[lhs->expType] != ExpTypeStr[1]) { //or ExpTypeStr[rhs->expType] != ExpTypeStr[1]) {
                        printf("ERROR(%d): Unary '%s' requires an operand of type %s but was given type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[lhs->expType]);
                        numErrors++;
                    }
                }
                else if (ExpTypeStr[lhs->expType] != ExpTypeStr[1]) {
                    printf("ERROR(%d): '%s' requires operands of type %s but lhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[lhs->expType]);
                    numErrors++;
                }

                return lhs;
            }
            break;

        case InitK:
            break;

        case CallK:
            lhs = node->child[0] ? checkExpKind(node->child[0]) : node;
            tokenString = node->token->tokenstr;
            symNode = (TreeNode*) symbolTable.lookupGlobal(tokenString);
            symNode = symNode ? symNode : (TreeNode*) symbolTable.lookup(tokenString);
            if(!symNode) {
                // if ()
                printf("ERROR(%d): Symbol '%s' is not declared.\n", node->token->linenum, tokenString);
                numErrors++;
            } else if (symNode and symNode->subkind.decl == VarK) {
                printf("ERROR(%d): '%s' is a simple variable and cannot be called.\n", node->lineno, tokenString);
                numErrors++;
            } else

            return symNode;
    }

    for (int i = 0; i < MAXCHILDREN; i++){
        if (node->child[i] != NULL){
            printSymbolTable(node->child[i], false);
        }
    }

    return NULL;
}

bool isIndexed(TreeNode* node) {
    return node->child[0]->child[1] ? true : false;
}

bool isIntOperator(std::string opstr) {
    return (opstr=="+" or opstr=="-" or opstr=="*" or opstr=="/" or opstr=="%" or opstr==":>:" or opstr==":<:") ? true : false;
}

bool isUnaryOp(std:: string opstr) {
    return (opstr=="chsign" or opstr=="sizeof" or opstr=="?" or opstr=="and" or opstr=="not" or opstr=="or") ? true : false;
}

// bool isminmaxOp()

/*  return true if integer operators
 */
bool isAssignOperator(std::string opstr) {
    return (opstr=="+=" or opstr=="-=" or opstr=="*=" or opstr=="/=" or opstr=="++" or opstr=="--") ? true : false;
}

bool isRelopOperator(std::string opstr) {
    return (opstr=="<" or opstr==">" or opstr=="!=" or opstr=="<=" or opstr==">=" or opstr=="==") ? true: false;
}
