#include "util.h"

#include "ourgetopt.h"

using namespace std;

bool checkSymbol(TreeNode* node);
bool checkDeclKind(TreeNode* node);
bool checkStmtKind(TreeNode* node);
void printSymbolTable(TreeNode* savedTree);

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
            printSymbolTable(savedTree);
        }
        else {
            yyin = stdin;
            yyparse();
            if (printFlag) printTree(savedTree, "", 0);
            if (symFlag) { 
                symTable.debug(symFlag);
                printSymbolTable(savedTree);
            }
        }
    }

    return 0;  
}

/* printing symbol table
 */
void printSymbolTable(TreeNode* node) {
    if (!node) return;
    bool newScope = false;
    switch(node->nodekind) {
        case DeclK:
            newScope = checkDeclKind(node);
            break;
        case StmtK:
            newScope = checkStmtKind(node);
            break;
        default:
            break;
    }

    for (int i = 0; i < MAXCHILDREN; i++){
        if (node->child[i] != NULL){
            printSymbolTable(node->child[i]);
        }
    }

    // leave current scope before going into sibling node
    if (newScope) symTable.leave(); 

    if (node->sibling != NULL) {
        printSymbolTable(node->sibling);
    }

}

bool checkDeclKind(TreeNode* node) {
    bool enterScope = false;
    bool isFuncK = false;
    bool symExists = checkSymbol(node);

    switch(node->subkind.decl) {
        // handle VarK and ParamK in single case
        case VarK:
        case ParamK:
            if (!symExists) {
                symTable.insert(node->token->tokenstr, node);
            }
            break;
        case FuncK:
            if (!symExists) {
                symTable.insert(node->token->tokenstr, node);
                symTable.enter(node->token->tokenstr);
                for (int i = 0; i < MAX_CHILDREN; i++) {
                    
                }
                enterScope = true;
            }
            break;
        default:
            cout << "INVALID DeclK" << endl;
            exit(-1);
            break;
    }

    return enterScope;
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

bool checkStmtKind(TreeNode* node) {
    bool enterScope = false;

    switch(node->subkind.stmt) {

        case CompoundK:
            
            enterScope = true;
            break;
        case IfK:
        case WhileK:
        case ForK:
        case RangeK:
        case ReturnK:
        case BreakK:
        case NullK:
            break;
    }

    return enterScope;
}
