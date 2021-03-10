#include "util.h"

#include "ourgetopt.h"

using namespace std;

bool checkSymbol(TreeNode* node);

void checkStmtKind(TreeNode* node, bool);
void checkDeclKind(TreeNode* node);
int checkExpKind(TreeNode* node);

void printSymbolTable(TreeNode* savedTree, bool);

int main(int argc, char* argv[]) {
    int c;
    extern char *optarg;
    extern int optind;
    int pflg = 0;
    int dflg = 0;
    bool printFlag, symFlag = false;
    int optCount = 1;

    while ((c = ourGetopt(argc, argv, (char *)"pdD:")) != EOF){
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
                symTable.debug(symFlag);
            }
            printSymbolTable(savedTree, false);
        }
        else {
            yyin = stdin;
            yyparse();
            if (printFlag) printTree(savedTree, "", 0);
            if (symFlag) { 
                symTable.debug(symFlag);
                printSymbolTable(savedTree, false);
            }
        }
    }

    return 0;  
}

bool checkSymbol(TreeNode* node) {
    bool symExist = true;
    char* tokenString = node->token->tokenstr;

    TreeNode* globalSym = (TreeNode* )symTable.lookupGlobal(tokenString);
    TreeNode* localSym = (TreeNode* )symTable.lookup(tokenString);

    if (globalSym) {
        cout <<"ERROR("<<node->token->linenum<<"): Symbol '"<<tokenString<<"' is already declared at line "<<globalSym->token->linenum<<"."<<endl;
    } else if(localSym) {
        cout <<"ERROR("<<node->token->linenum<<"): Symbol '"<<tokenString<<"' is already declared at line "<<localSym->token->linenum<<"."<<endl;
    } else {
        symExist = false;
    }

    return symExist;
}

/* printing symbol table
 */
void printSymbolTable(TreeNode* node, bool functionDeclared) {
    if (!node) return;
    switch(node->nodekind) {
        case DeclK:
            checkDeclKind(node);
            break;
        case StmtK:
            checkStmtKind(node, functionDeclared);
            break;
        case ExpK:
            checkExpKind(node);
            break;
    }

    if (node->sibling != NULL) {
        printSymbolTable(node->sibling, false);
    }

}

void checkDeclKind(TreeNode* node) {
    if (!node) return;

    bool newScope = false;
    bool symExists = checkSymbol(node);

    switch(node->subkind.decl) {
        // handle VarK and ParamK in single case
        case VarK:
            if (!symExists) {
                symTable.insert(node->token->tokenstr, node);
            }
            break;
        case ParamK:
            if (!symExists) {
                symTable.insert(node->token->tokenstr, node);
            }
            break;
        case FuncK:
            if (!symExists) {
                symTable.insert(node->token->tokenstr, node);
                symTable.enter(node->token->tokenstr);
                newScope = true;
            }
            break;
        default:
            cout << "INVALID DeclK" << endl;
            exit(-1);
            break;
    }

    for (int i = 0; i < MAXCHILDREN; i++){
        if (node->child[i] != NULL){
            printSymbolTable(node->child[i], newScope);
        }
    }

    if (newScope) symTable.leave();

    return;
}

void checkStmtKind(TreeNode* node, bool functionDeclared) {
    if (!node) return;

    bool scopeEntered = false;
    bool newScope = false;
    switch(node->subkind.stmt) {
        case CompoundK:
            if (!functionDeclared) {
                symTable.enter("Compound Statmenet");
                scopeEntered = true;
            }
            break;
        case IfK:
            symTable.enter("If Statmenet");
            scopeEntered = true;
            newScope = true;
            break;
        case WhileK:
            symTable.enter("While Loop");
            scopeEntered = true;
            newScope = true;
            break;
        case ForK:
            symTable.enter("For Loop");
            scopeEntered = true;
            newScope = true;
            break;
        case RangeK:
            cout << "Range" << endl;
            break;
        case ReturnK:
            cout << "ReturnK" << endl;
            break;
        case BreakK:
            cout << "BreakK" << endl;
            break;
        case NullK:
            cout << "NullK" << endl;
            break;
        default:
            break;
    }

    for (int i = 0; i < MAXCHILDREN; i++){
        if (node->child[i] != NULL){
            printSymbolTable(node->child[i], newScope);
        }
    }

    if (scopeEntered) symTable.leave();

    return;
}

int checkExpKind(TreeNode* node) {
    if (!node) return -1;

    int lhs, rhs;
    char* tokenString;
    TreeNode* symNode;

    switch(node->subkind.exp) {
        case OpK:
            cout << "OpK" << endl;
            break;
        case ConstantK:
            return node->expType;
        case IdK:
            tokenString = node->token->tokenstr;
            symNode = (TreeNode*) symTable.lookupGlobal(tokenString);
            symNode = symNode ? symNode : (TreeNode*) symTable.lookup(tokenString);
            if(!symNode) {
                printf("ERROR(%d): undeclared variable '%s' used \n", node->token->linenum, tokenString);
            }
            return symNode->expType;
        case AssignK:
            lhs = checkExpKind(node->child[0]);
            rhs = checkExpKind(node->child[1]);
            if(lhs != rhs){
                printf("ERROR(%d): type is different lhs:%d rhs:%d \n", node->token->linenum, lhs, rhs);
            }
            return lhs;
        case InitK:
            cout << "InitK" << endl;
            break;
        case CallK:
            tokenString = node->token->tokenstr;
            symNode = (TreeNode*) symTable.lookupGlobal(tokenString);
            if(!symNode){
                printf("ERROR(%d): function %s is not defined\n", node->token->linenum, tokenString);
            }
            return symNode->expType;
    }

    for (int i = 0; i < MAXCHILDREN; i++){
        if (node->child[i] != NULL){
            printSymbolTable(node->child[i], false);
        }
    }

    return -1;
}
