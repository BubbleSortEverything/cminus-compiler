#include "util.h"
#include "ourgetopt.h"

using namespace std;

extern SymbolTable symbolTable;
extern bool typeFlag;

/* Interface helpers
 */
void createIO();
void useageMessage();
void checkMainFuncParams();
TreeNode* getType(TreeNode* node);
void checkInitialization(TreeNode* syntaxTree);
void checkFuncParams(TreeNode* funcParam, TreeNode* callParam);
void checkRangeScalars(TreeNode* parentNode, TreeNode* posNode, int pos);
void checkBooleanCondition(TreeNode* parentNode, TreeNode* node, std::string stmtType);

/*  Checking different types of operators
 */
bool isUnaryOp(std:: string opstr);
bool isIntOperator(std::string str);
bool isRelopOperator(std::string opstr);
bool isBinaryOperator(std::string opstr);
bool isAssignOperator(std::string opstr);
void checkUnusedFunc();

/*  Array handler
 */
bool isIndexed(TreeNode* node);
bool checkSymbol(TreeNode* syntaxTree, bool isNewCompound);

void checkDeclKind(TreeNode* syntaxTree, bool isNewCompound);
void checkStmtKind(TreeNode* syntaxTree, bool functionDeclared);
void printSymbolTable(TreeNode* savedTree, bool functionDeclared=false, bool isNewCompound=false);

TreeNode* handleArray(TreeNode* node, bool isLHS);
TreeNode* checkExpKind(TreeNode* syntaxTree, bool isLHS=false);

/* Globals
 */
extern int numErrors;
int numWarnings = 0;
bool hasReturn = false;
bool mainDefined = false;

vector<string> *symbolNames = new vector<string>;
vector<string> *symbolStack = new vector<string>;

const char* ExpTypeStr[] = {"void", "int", "bool", "char", "charint", "equal", "undefinedtype"};
const char* UnaryStr[] = {"and", "not"};

/* Tracking Warnings
 */
std::vector<TreeNode*> symList;

/*  Main Function
 */
int main(int argc, char* argv[]) {
    int c;
    extern char *optarg;
    extern int optind;
    int pflg = 0;
    int dflg = 0;
    bool printFlag, symFlag = false;
    int optCount = 1;

    initErrorProcessing();
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
            if (symFlag) symbolTable.debug(symFlag);

            /*  create IO functions and go thru symbol table while generating erros
             *  chaeck for unused variables after done generating errors
             */
            createIO();
            printSymbolTable(savedTree);

            /*  check for unused variables and functions
             */
            numWarnings += symbolTable.checkUnusedVariable();
            /* check for main and main params
             */
            checkMainFuncParams();

            if (numErrors == 0) printTree(savedTree, "", 0);
            printf("Number of warnings: %d\n", numWarnings);
            printf("Number of errors: %d\n", numErrors);
        }
        else {
            yyin = stdin;
            yyparse();
            if (printFlag) printTree(savedTree, "", 0);
            if (symFlag) symbolTable.debug(symFlag);

            createIO();
            printSymbolTable(savedTree);
            numWarnings += symbolTable.checkUnusedVariable();
            checkMainFuncParams();

            if (numErrors == 0) printTree(savedTree, "", 0);
            printf("Number of warnings: %d\n", numWarnings);
            printf("Number of errors: %d\n", numWarnings);
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

void createIO() {
    std::string out1Str = "output";
    TokenData *out1 = new TokenData;
    out1->tokenstr = const_cast<char*>(out1Str.c_str());
    out1->strValue = const_cast<char*>(out1Str.c_str());
    out1->linenum = -1;

    std::string out2Str = "outputb";
    TokenData *out2 = new TokenData;
    out2->tokenstr = const_cast<char*>(out2Str.c_str());
    out2->strValue = const_cast<char*>(out2Str.c_str());
    out2->linenum = -1;

    std::string out3Str = "outputc";
    TokenData *out3 = new TokenData;
    out3->tokenstr = const_cast<char*>(out3Str.c_str());
    out3->strValue = const_cast<char*>(out3Str.c_str());
    out3->linenum = -1;

    std::string out4Str = "outnl";
    TokenData *out4 = new TokenData;
    out4->tokenstr = const_cast<char*>(out4Str.c_str());
    out4->strValue = const_cast<char*>(out4Str.c_str());
    out4->linenum = -1;

    std::string in1Str = "input";
    TokenData *in1 = new TokenData;
    in1->tokenstr = const_cast<char*>(in1Str.c_str());
    in1->strValue = const_cast<char*>(in1Str.c_str());
    in1->linenum = -1;

    std::string in2Str = "inputb";
    TokenData *in2 = new TokenData;
    in2->tokenstr = const_cast<char*>(in2Str.c_str());
    in2->strValue = const_cast<char*>(in2Str.c_str());
    in2->linenum = -1;

    std::string in3Str = "inputc";
    TokenData *in3 = new TokenData;
    in3->tokenstr = const_cast<char*>(in3Str.c_str());
    in3->strValue = const_cast<char*>(in3Str.c_str());
    in3->linenum = -1;

    std::string dummyStr = "dummy";
    TokenData *dummy = new TokenData;
    dummy->tokenstr = const_cast<char*>(dummyStr.c_str());
    dummy->strValue = const_cast<char*>(dummyStr.c_str());
    dummy->linenum = -1;

    TreeNode *dummyInt = newDeclNode(ParamK, Integer, dummy);
    TreeNode *outputNode = newDeclNode(FuncK, Void, out1, dummyInt);
    // outputNode->child[0] = dummyInt;

    TreeNode *dummyBool = newDeclNode(ParamK, Boolean, dummy);
    TreeNode *outputbNode = newDeclNode(FuncK, Void, out2);
    outputbNode->child[0] = dummyBool;

    TreeNode *dummyChar = newDeclNode(ParamK, Char, dummy);
    TreeNode *outputcNode = newDeclNode(FuncK, Void, out3);
    outputcNode->child[0] = dummyChar;

    TreeNode *outputnlNode = newDeclNode(FuncK, Void, out4);

    TreeNode *inputNode = newDeclNode(FuncK, Integer, in1);

    TreeNode *inputbNode = newDeclNode(FuncK, Boolean, in2);

    TreeNode *inputcNode = newDeclNode(FuncK, Char, in3);

    symbolTable.insert(out1Str, outputNode);
    symbolTable.insert(out2Str, outputbNode);
    symbolTable.insert(out3Str, outputcNode);
    symbolTable.insert(out4Str, outputnlNode);
    symbolTable.insert(in1Str, inputNode);
    symbolTable.insert(in2Str, inputbNode);
    symbolTable.insert(in3Str, inputcNode);
}

bool checkSymbol(TreeNode* node, bool isNewCompound) {
    bool symExist = true;
    char* tokenString = node->token->tokenstr;
    TreeNode* globalSym = NULL;

    if (!isNewCompound) {
        globalSym = (TreeNode* )symbolTable.lookupGlobal(tokenString);
    }

    TreeNode* localSym = (TreeNode* )symbolTable.lookupLocal(tokenString);
    if(localSym) {
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
            checkExpKind(syntaxTree, false);
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

    //  push all declarations to `symList` list
    bool newScope = false;
    bool symExists = checkSymbol(syntaxTree, isNewCompound);

    TreeNode* initNode;
    
    switch(syntaxTree->subkind.decl) {
        case VarK:
            if (!symExists) {
                symbolTable.insert(syntaxTree->token->tokenstr, syntaxTree);
                symbolTable.addSymbolToCurrentScope(syntaxTree);

                /*  check if the variable has been correctly initialized
                 */
                checkInitialization(syntaxTree);
                if (symbolTable.currentScopeName() == "For Loop") {
                    syntaxTree->isInitialized = true;
                }
            }
            break;

        case ParamK:
            if (!symExists) {
                symbolTable.insert(syntaxTree->token->tokenstr, syntaxTree);
                symbolTable.addSymbolToCurrentScope(syntaxTree);
                syntaxTree->isInitialized = true;
            }
            break;

        case FuncK:
            if (!symExists) {
                symbolTable.insert(syntaxTree->token->tokenstr, syntaxTree);
                symbolTable.enter(syntaxTree->token->tokenstr);

                isNewCompound = true;
                newScope = true;

                if (strcmp(syntaxTree->token->tokenstr, "main") == 0 and !syntaxTree->child[0]) {
                    mainDefined = true;
                }
                symbolTable.addSymbolToGlobalScope(syntaxTree);
                hasReturn = false;
                // printf("Func is: %s\n", syntaxTree->token->tokenstr);
            } 
            break;

        default:
            cout << "INVALID DeclK" << endl;
            exit(-1);
            break;
    }

    for (int i = 0; i < MAXCHILDREN; i++) {
        if (syntaxTree->child[i] != NULL) {
            printSymbolTable(syntaxTree->child[i], true, isNewCompound);
        }
    }

    if (newScope) {
        /*  WORK ON THIS WHEN YOU WAKE UP!!.
         *  IDEA: make function called lookupCurrentScope(std::string symbol)
         *        which retrus true if symbol exits in curretn scope else returns false.
         *  check if you are in function and it does not return any value
         */
        if (syntaxTree->subkind.decl == FuncK) {
            if (!hasReturn and syntaxTree->expType != Void) {
                printf("WARNING(%d): Expecting to return %s but function '%s' has no return statement.\n", syntaxTree->lineno, ExpTypeStr[syntaxTree->expType], syntaxTree->token->tokenstr);
                numWarnings++;            }
        }
        // symbolTable.checkUnusedVariable();
        symbolTable.leave();
    }

    return;
}

void checkStmtKind(TreeNode* node, bool functionDeclared) {
    if (!node) return;

    bool scopeEntered = false;
    bool isNewCompound = false;
    bool newScope = false;

    std::string curScopeName;
    TreeNode *posOne, *posTwo, *posThree, *testCondition, *funcNode, *retNode;

    switch(node->subkind.stmt) {

        /*  COMPOUND STATEMENT
         */
        case CompoundK:
            if (!functionDeclared) {
                symbolTable.enter("Compound Statmenet");

                scopeEntered = true;
                isNewCompound = true;
            }
            break;

        /*  IF STATEMENT
         */
        case IfK:
            symbolTable.enter("If Statmenet");
            scopeEntered = true;
            newScope = true;
            /*  check for boolean test condition. If not, throw necessary errors.
             */
            for (int i = 0; i < MAXCHILDREN; i++) {
                if (node->child[i] != NULL) {
                    testCondition = checkExpKind(node->child[i], false);
                    if (i==0) checkBooleanCondition(node, testCondition, "if");
                }
            }
            break;

        /*  WHILE STATEMENT
         */
        case WhileK:
            symbolTable.enter("While Loop");
            scopeEntered = true;
            newScope = true;
            /*  check for boolean test condition. If not, throw necessary errors.
             */
            for (int i = 0; i < MAXCHILDREN; i++) {
                if (node->child[i] != NULL) {
                    testCondition = checkExpKind(node->child[i], false);
                    if (i==0) checkBooleanCondition(node, testCondition, "while");
                }
            }
            break;

        /*  FOR STATEMENT
         */
        case ForK:
            symbolTable.enter("For Loop");

            /*  mark next variable after For Loop as used
             */
            node->child[0]->isUsed = true;

            scopeEntered = true;
            newScope = true;
            break;

        /*  RANGE STATEMENT
         */
        case RangeK:
            /*  check that all the expressions in the range are scalar integers. If not, throw out error.
             */
            posOne = checkExpKind(node->child[0], false);
            posTwo = checkExpKind(node->child[1], false);
            posThree = checkExpKind(node->child[2], false);

            checkRangeScalars(node, posOne, 1);
            checkRangeScalars(node, posTwo, 2);
            if (posThree) checkRangeScalars(node, posThree, 3);     // posThree is optional
            break;

        /*  RETURN STATEMENT
         */
        case ReturnK:
            retNode = node->child[0] ? checkExpKind(node->child[0], false) : NULL;
            funcNode = (TreeNode*)symbolTable.lookup(symbolTable.currentScopeName());
            
            if (funcNode != NULL and funcNode->subkind.decl == FuncK) {
                if (retNode) {
                    if (retNode->isArray and !node->child[0]->child[1]) {
                        printf("ERROR(%d): Cannot return an array.\n", node->lineno);
                        numErrors++;
                    }
                    else if ((std::string)ExpTypeStr[funcNode->expType] == "void" and (std::string)ExpTypeStr[retNode->expType] != "void") {
                        printf("ERROR(%d): Function '%s' at line %d is expecting no return value, but return has a value.\n", node->lineno, funcNode->token->tokenstr, funcNode->lineno);
                        numErrors++;
                    } 
                    else if ( (funcNode->expType != retNode->expType) and retNode->expType != UndefinedType) {
                        printf("ERROR(%d): Function '%s' at line %d is expecting to return type %s but returns type %s.\n", node->lineno, funcNode->token->tokenstr, funcNode->lineno, ExpTypeStr[funcNode->expType], ExpTypeStr[retNode->expType]);
                        numErrors++;
                    } 
                } 
                else {
                    if ((std::string)ExpTypeStr[funcNode->expType] != "void") {
                        printf("ERROR(%d): Function '%s' at line %d is expecting to return type %s but return has no value.\n", node->lineno, funcNode->token->tokenstr, funcNode->lineno, ExpTypeStr[funcNode->expType]);
                        numErrors++;
                    }
                }
                hasReturn = true;
            }
            break;

        /*  BREAK STATEMENT
         */
        case BreakK:
            /*  check if the break is inside the loop. If not, throw out error.
             */
            if ( (symbolTable.currentScopeName() != "For Loop") and (symbolTable.currentScopeName() != "While Loop") ) {
                printf("ERROR(%d): Cannot have a break statement outside of loop.\n", node->lineno);
                numErrors++;
            }
            break;

        case NullK:
            break;

        default:
            break;
    }

    for (int i = 0; i < MAXCHILDREN; i++){
        /*  Only search child if child is not null or current node is
         *  neither IfK, WhileK or ReturnK
         */
        if (node->child[i] != NULL and (node->subkind.stmt != IfK and node->subkind.stmt != WhileK and node->subkind.stmt != ReturnK) ){
            printSymbolTable(node->child[i], newScope, isNewCompound);
        }
    }

    if (scopeEntered) {
        numWarnings += symbolTable.checkUnusedVariable();
        symbolTable.leave();
    }

    return;
}


TreeNode* checkExpKind(TreeNode* node, bool isLHS) {
    if (!node) return NULL;
   
    if (node->subkind.stmt == IfK or node->subkind.stmt == WhileK) {
        checkStmtKind(node, false);
    }
    
    char* tokenString;
    TreeNode *lhs, *rhs, *symNode;
    TreeNode *funcParam, *callParam;

    int count = 1;

    switch(node->subkind.exp) {

        case OpK:
            tokenString = node->token->tokenstr;

            if (node->isArray) {
                return handleArray(node, isLHS);  
            } 

            lhs = node->child[0] ? checkExpKind(node->child[0], true) : node;
            rhs = node->child[1] ? checkExpKind(node->child[1]) : node;

            if (!lhs or !rhs) return NULL;

            if (isBinaryOperator((std::string)tokenString)) {
                symbolTable.markSymbolAsUsed(rhs);
            }

            if (isRelopOperator((std::string)tokenString)) {
                bool hasErr = false;
                node->expType = Boolean;

                if(lhs->expType != rhs->expType) {
                    printf("ERROR(%d): '%s' requires operands of the same type but lhs is type %s and rhs is type %s.\n", node->lineno, tokenString, ExpTypeStr[lhs->expType], ExpTypeStr[rhs->expType]);
                    numErrors++;
                    hasErr = true;
                }
                
                /* comparasion among arrays
                 */
                if (!rhs->isArray and lhs->isArray and !node->child[0]->child[1]) {
                    printf("ERROR(%d): '%s' requires both operands be arrays or not but lhs is an array and rhs is not an array.\n", node->lineno, tokenString);
                    numErrors++;
                    hasErr = true;
                }
                else if (!lhs->isArray and rhs->isArray) {
                    printf("ERROR(%d): '%s' requires both operands be arrays or not but lhs is not an array and rhs is an array.\n", node->lineno, tokenString);
                    numErrors++;
                    hasErr = true;
                }

                if (hasErr) return NULL;
                else if (lhs->expType == rhs->expType) {
                    // node->expType = Boolean;
                    // return node;
                    return newExpNode(ConstantK, Boolean, node->token);
                }
            }
            else if (isIntOperator((std::string)tokenString)) {
                node->expType = Integer;
                bool hasErr = false;
                if (ExpTypeStr[lhs->expType] != ExpTypeStr[1]) {
                    printf("ERROR(%d): '%s' requires operands of type %s but lhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[lhs->expType]);
                    numErrors++;
                    hasErr = true;
                }

                if (ExpTypeStr[rhs->expType] != ExpTypeStr[1]) {
                    printf("ERROR(%d): '%s' requires operands of type %s but rhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[rhs->expType]);
                    numErrors++;
                    hasErr = true;
                }

                if ( (lhs->isArray and !node->child[0]->child[1] and lhs->changedToInt != true) or (rhs->isArray and !node->child[1]->child[1] and rhs->changedToInt != true) ) {
                    printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                    numErrors++;
                    hasErr = true;
                }

                if (not hasErr) {
                    if (!rhs->isInitialized and rhs->subkind.exp != ConstantK) {
                        printf("WARNING(%d): Variable '%s' may be uninitialized when used here.\n", node->lineno, rhs->token->tokenstr);
                        numWarnings++;
                    }

                    return newExpNode(ConstantK, Integer, lhs->token);    // if successful int operation then return integer type newnode.
                }

                if (hasErr) {
                    return newExpNode(ConstantK, UndefinedType, lhs->token);
                }
            }
            else if (isUnaryOp((std::string)tokenString)) {
                if ((std::string)tokenString == "sizeof") {
                    node->expType = Integer;
                    symbolTable.markSymbolAsUsed(lhs);
                    if ( (lhs->isArray and node->child[0]->child[1] ) or !lhs->isArray) {
                        printf("ERROR(%d): The operation '%s' only works with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                        return NULL;
                    }
                    else if (lhs->isArray and !node->child[0]->child[1]) {
                        TreeNode* copyNode = newExpNode(OpK, Integer, lhs->token);    // If valid 'sizeof' operator than return integer type node
                        copyNode->changedToInt = true;
                        return copyNode;
                    }
                } 
                else if ((std::string)tokenString=="?" or (std::string)tokenString=="chsign") {
                    node->expType = Integer;
                    if (lhs->isArray and ExpTypeStr[lhs->expType] != ExpTypeStr[1]) {
                        printf("ERROR(%d): Unary '%s' requires an operand of type %s but was given type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[lhs->expType]);
                        numErrors++;
                    }
                    if (lhs->isArray and !node->child[0]->child[1] and !node->child[0]->child[0]) {
                        printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                        return NULL;
                    } else if (ExpTypeStr[lhs->expType] != ExpTypeStr[1]) {
                        printf("ERROR(%d): Unary '%s' requires an operand of type %s but was given type %s.\n", node->lineno, tokenString, ExpTypeStr[1], ExpTypeStr[lhs->expType]);
                        numErrors++;
                        return NULL;
                    } if ((std::string)tokenString=="chsign") {
                        TreeNode* copyNode = newExpNode(ConstantK, Integer, lhs->token);    // If valid 'sizeof' operator than return integer type node
                        copyNode->changedToInt = true;
                        return copyNode;
                    }
                } 
                else if ((std::string)tokenString=="not") {
                    node->expType = Boolean;

                    if (ExpTypeStr[lhs->expType] != ExpTypeStr[2]) {
                        printf("ERROR(%d): Unary '%s' requires an operand of type %s but was given type %s.\n", node->lineno, tokenString, ExpTypeStr[2], ExpTypeStr[lhs->expType]);
                        numErrors++;
                        return NULL;
                    }
                    else if (lhs->isArray and !isIndexed(node) ) {
                        printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                        return NULL;
                    }
                } 
                else if ((std::string)tokenString=="and" or (std::string)tokenString=="or") {
                    bool hasErr = false;
                    node->expType = Boolean;

                    if (lhs->expType == Boolean and rhs->expType == Boolean) {
                        return newExpNode(ConstantK, Boolean, lhs->token);
                    }

                    if (ExpTypeStr[lhs->expType] != ExpTypeStr[2]) {
                        printf("ERROR(%d): '%s' requires operands of type %s but lhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[2], ExpTypeStr[lhs->expType]);
                        numErrors++;
                        hasErr = true;
                    }

                    if (ExpTypeStr[rhs->expType] != ExpTypeStr[2]) {
                        printf("ERROR(%d): '%s' requires operands of type %s but rhs is of type %s.\n", node->lineno, tokenString, ExpTypeStr[2], ExpTypeStr[rhs->expType]);
                        numErrors++;
                        hasErr = true;
                    }
                    else if ( (lhs->isArray and !node->child[0]->child[1]) or (rhs->isArray and !isIndexed(node)) ) {
                        printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                        hasErr = true;
                    } 
                    else if (lhs->isArray or rhs->isArray) {
                        printf("ERROR(%d): The operation '%s' does not work with arrays.\n", node->lineno, tokenString);
                        numErrors++;
                        hasErr = true;
                    }

                    /*  if error, then return NULL which will then evaluated
                     *  in `checkBooleanCondition` at WhileK. 
                     */
                    if (hasErr) return NULL;
                }
            }

            return lhs;

        case ConstantK:
            return node;
            break;

        /*  IDENTIFIERS
         */
        case IdK:
            tokenString = node->token->tokenstr;
            // symNode = (TreeNode*) symbolTable.lookupGlobal(tokenString);
            // symNode = symNode ? symNode : (TreeNode*) symbolTable.lookup(tokenString);
            symNode = (TreeNode*) symbolTable.lookup(tokenString);

            if(!symNode) {
                if (strcmp(tokenString, "while") != 0 ) {
                    // printf("here\n");
                    printf("ERROR(%d): Symbol '%s' is not declared.\n", node->token->linenum, tokenString);
                    numErrors++;
                }
                    
                return NULL;
            }
            else if (symNode->subkind.decl == FuncK) {
                printf("ERROR(%d): Cannot use function '%s' as a variable.\n", node->lineno, tokenString);
                numErrors++;
            }  

            node->expType = symNode->expType;
            return symNode;
            break;

        /*  ASSIGNMENT OPERATORS
         */
        case AssignK:
            tokenString = node->token->tokenstr;
            lhs = node->child[0] ? checkExpKind(node->child[0], true) : node;
            rhs = node->child[1] ? checkExpKind(node->child[1], false) : node;

            if (!lhs or !rhs) return NULL;
            
            node->expType = lhs->expType;

            if (strcmp(tokenString, "=") == 0) {

                /* check if the assignment initializes values.
                 */
                if (!rhs->isInitialized and rhs->subkind.exp != ConstantK) {
                    printf("WARNING(%d): Variable '%s' may be uninitialized when used here.\n", node->lineno, rhs->token->tokenstr);
                    numWarnings++;
                }

                /* Mark symbols as used
                 */
                symbolTable.markSymbolAsUsed(rhs);
                symbolTable.markSymbolAsUsed(lhs);

                /* check if lhs is indexed arry of same type as non array rhs
                 */
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
                } else {
                    if (!lhs->isInitialized) { 
                        lhs->isInitialized = true;
                    }
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
            node->isInitialized = true;
            symList.push_back(node);
            break;

        case CallK:
            lhs = node->child[0] ? checkExpKind(node->child[0]) : node;
            tokenString = node->token->tokenstr;
            symNode = (TreeNode*) symbolTable.lookupGlobal(tokenString);
            symNode = symNode ? symNode : (TreeNode*) symbolTable.lookup(tokenString);

            if(!symNode and (node->subkind.stmt != IfK or node->subkind.stmt != WhileK) ) {
                if ( (std::string)tokenString != "return" ) {
                    printf("ERROR(%d): Symbol '%s' is not declared.\n", node->token->linenum, tokenString);
                    numErrors++;
                }
                break;  // stop when call to function errors out.
            } 
            else if (symNode and symNode->subkind.decl == VarK) {
                printf("ERROR(%d): '%s' is a simple variable and cannot be called.\n", node->lineno, tokenString);
                numErrors++;
                break;  // stop when call to function errors out.
            }

            /*  mark called function as used.
             */
            symbolTable.markFunctionAsUsed(node);

            node->expType = symNode->expType;

            /*  check for function params and call params.
             */
            checkFuncParams(symNode, node);

            return symNode;
            break;

        default:
            // printf("Found something unusual '%s'\n", node->token->tokenstr);
            break;
    }

    for (int i = 0; i < MAXCHILDREN; i++) {
        if (node->child[i] != NULL){
            printSymbolTable(node->child[i], false);
        }
    }

    return NULL;
}

void checkInitialization(TreeNode* syntaxTree) {
    if (syntaxTree->child[0] != NULL) {
        TreeNode* initNode = checkExpKind(syntaxTree->child[0]);
        if (syntaxTree->isArray and (!initNode->isArray or syntaxTree->child[0]->child[1])) {
            printf("ERROR(%d): Initializer for variable '%s' requires both operands be arrays or not but variable is an array and rhs is not an array.\n", syntaxTree->lineno, syntaxTree->token->tokenstr);
            numErrors++;
        }
        else if (initNode->subkind.exp != ConstantK) {
            printf("ERROR(%d): Initializer for variable '%s' is not a constant expression.\n", syntaxTree->lineno, syntaxTree->token->tokenstr);
            numErrors++;
        }
        else if (initNode->expType != syntaxTree->expType) {
            printf("ERROR(%d): Initializer for variable '%s' of type %s is of type %s.\n", syntaxTree->lineno, syntaxTree->token->tokenstr, ExpTypeStr[syntaxTree->expType], ExpTypeStr[initNode->expType]);
            numErrors++;
        } 
        else {
            syntaxTree->isInitialized = true;
        }
    }
}

/*  Check for function parameter types and caller parameter types
 *  throw out necessary error if they don't match
 */
void checkFuncParams(TreeNode* symNode, TreeNode* node) {
    TreeNode* funcParam = symNode->child[0];
    TreeNode* callParam = node->child[0];
    TreeNode* dummy = NULL;

    if (funcParam == NULL and callParam != NULL) {
        printf("ERROR(%d): Too many parameters passed for function '%s' declared on line %d.\n", node->lineno, node->token->tokenstr, symNode->lineno);
        numErrors++;
    }

    if (funcParam != NULL and callParam == NULL) {
        printf("ERROR(%d): Too few parameters passed for function '%s' declared on line %d.\n", node->lineno, node->token->tokenstr, symNode->lineno);
        numErrors++;
    }

    if (funcParam != NULL and callParam != NULL) {
        int paramPosition = 1;
        while (funcParam != NULL or callParam != NULL) {            
            dummy = checkExpKind(callParam);

            if (funcParam == NULL and dummy != NULL) {
                printf("ERROR(%d): Too many parameters passed for function '%s' declared on line %d.\n", node->lineno, node->token->tokenstr, symNode->lineno);
                numErrors++;
                break;
            }

            if (dummy == NULL and funcParam != NULL) {
                printf("ERROR(%d): Too few parameters passed for function '%s' declared on line %d.\n", node->lineno, node->token->tokenstr, symNode->lineno);
                numErrors++;
                break;
            }

            if ( funcParam->isArray and !dummy->isArray) {
                printf("ERROR(%d): Expecting array in parameter %i of call to '%s' declared on line %d.\n", node->lineno, paramPosition, symNode->token->tokenstr, symNode->lineno);
                numErrors++;
            }
            else if ( (!funcParam->isArray and dummy->isArray) and !callParam->child[1]) {
                printf("ERROR(%d): Not expecting array in parameter %i of call to '%s' declared on line %d.\n", node->lineno, paramPosition, symNode->token->tokenstr, symNode->lineno);
                numErrors++;
            }
            else if (funcParam->expType != dummy->expType) {
                printf("ERROR(%d): Expecting type %s in parameter %i of call to '%s' declared on line %d but got type %s.\n", node->lineno, ExpTypeStr[funcParam->expType], paramPosition, symNode->token->tokenstr, symNode->lineno, ExpTypeStr[dummy->expType]);
                numErrors++;
            }
            
            funcParam = funcParam->sibling;
            callParam = callParam->sibling;
            paramPosition++;
        }
    }
}

TreeNode* getType(TreeNode* node) {
    if (!node) return NULL;
    if (node->subkind.exp == ConstantK) return node;

    if (node->isArray) {
        TreeNode* tmp = checkExpKind(node);
        TreeNode* curNode = (TreeNode*)symbolTable.lookup(tmp->token->tokenstr);

        if (node->child[0]) curNode->isArray = false;

        return curNode;
    }

    TreeNode* curNode = (TreeNode*)symbolTable.lookup(node->token->tokenstr);

    return curNode;
}


TreeNode* handleArray(TreeNode* node, bool isLHS) {
    bool hasErr = false;
    TreeNode* lhs, *rhs;

    lhs = node->child[0] ? checkExpKind(node->child[0]) : node;
    rhs = node->child[1] ? checkExpKind(node->child[1]) : node;

    node->expType = lhs->expType;

    if (!lhs->isArray) {
        printf("ERROR(%d): Cannot index nonarray '%s'.\n", node->lineno, lhs->token->tokenstr);
        numErrors++;
        hasErr = true;
    }

    if (ExpTypeStr[rhs->expType] != ExpTypeStr[1]) {
        printf("ERROR(%d): Array '%s' should be indexed by type int but got type %s.\n", node->lineno, node->child[0]->token->tokenstr, ExpTypeStr[rhs->expType]);
        numErrors++;
        hasErr = true;
    }


    if (rhs->isArray and !node->child[1]->child[0]) {
        printf("ERROR(%d): Array index is the unindexed array '%s'.\n", node->lineno, rhs->token->tokenstr);
        numErrors++;
        hasErr = true;
    }

    if (not hasErr and node->child[1] and not isLHS) {
        if (!lhs->isInitialized) {
            printf("WARNING(%d): Variable '%s' may be uninitialized when used here.\n", node->lineno, lhs->token->tokenstr);
            numWarnings++;
            lhs->isInitialized = true;
        }
    }

    return lhs;
}

/*  helper function to check for boolean condition in statements.
 *  prints necessary errors related to condition in conditional statements.
 */
void checkBooleanCondition(TreeNode* parentNode, TreeNode* booleanNode, std::string stmtType) {
    static int boolCount = 1;
    if (booleanNode == NULL or booleanNode->subkind.exp == ConstantK) return;
    if ((std::string)ExpTypeStr[booleanNode->expType] != "bool") {
        printf("ERROR(%d): Expecting Boolean test condition in %s statement but got type %s.\n", parentNode->lineno, stmtType.c_str(), ExpTypeStr[booleanNode->expType]);
        numErrors++;
    }

    if (booleanNode->isArray and !parentNode->child[0]->child[1]) {
        printf("ERROR(%d): Cannot use array as test condition in %s statement.\n", parentNode->lineno, stmtType.c_str());
        numErrors++;
    }
}

/*  Helper function to check for RangeK.
 *  Prints necessary error related to range type.
 */
void checkRangeScalars(TreeNode* parentNode, TreeNode* posNode, int pos) {
    if (posNode != NULL) {
        if ((std::string)ExpTypeStr[posNode->expType] != "int") {
            printf("ERROR(%d): Expecting type %s in position %d in range of for statement but got type %s.\n", parentNode->lineno, "int", pos, ExpTypeStr[posNode->expType]);
            numErrors++;
        }

        if (posNode->isArray and !parentNode->child[0]->child[1]) {
            printf("ERROR(%d): Cannot use array in position %d in range of for statement.\n", parentNode->lineno, pos);
            numErrors++;
        }
    }
}

void checkMainFuncParams() {
    TreeNode* mainNode = (TreeNode*)symbolTable.lookupGlobal("main");
    if (mainNode == NULL) {
        printf("ERROR(LINKER): A function named 'main' with no parameters must be defined.\n");
        numErrors++;
    }

    if (mainNode) {
        if (mainNode->child[0] != NULL) {
            printf("ERROR(LINKER): A function named 'main' with no parameters must be defined.\n");
            numErrors++;
        }
    }
}

void checkUnusedFunc() {
    std::vector<std::string> globals = symbolTable.getGlobalVariables();

    for (std::vector<string>::iterator it = globals.begin(); it != globals.end(); it++) {
        TreeNode* func = (TreeNode*)symbolTable.lookupGlobal((*it));
        if (func != NULL) {
            if (not func->isUsed) {
                printf("%s not used.\n", func->token->tokenstr);
            }
        }
    }
}

/*  Helper Functions    
 */
bool isIndexed(TreeNode* node) { return node->child[0]->child[1] ? true : false; }
bool isUnaryOp(std:: string opstr) { return (opstr=="chsign" or opstr=="sizeof" or opstr=="?" or opstr=="and" or opstr=="not" or opstr=="or") ? true : false; }
bool isIntOperator(std::string opstr) { return (opstr=="+" or opstr=="-" or opstr=="*" or opstr=="/" or opstr=="%" or opstr==":>:" or opstr==":<:") ? true : false; }
bool isRelopOperator(std::string opstr) { return (opstr=="<" or opstr==">" or opstr=="!=" or opstr=="<=" or opstr==">=" or opstr=="==") ? true: false; }
bool isAssignOperator(std::string opstr) { return (opstr=="+=" or opstr=="-=" or opstr=="*=" or opstr=="/=" or opstr=="++" or opstr=="--") ? true : false; }
bool isBinaryOperator(std::string opstr) { return (isIntOperator(opstr) or isRelopOperator(opstr) or opstr=="+=" or opstr=="-=" or opstr=="*=" or opstr=="/=" or opstr=="and" or opstr=="or") ? true : false; }
