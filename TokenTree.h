#ifndef TOKEN_TREE_H
#define TOKEN_TREE_H

#define MAX_CHILDREN 3
#include <stddef.h>

/*  token classification
 *  node kinds, exp kinds, exp types, and variable kinds
 */

// Kinds of Statements
//typedef enum {DeclK, StmtK, ExpK} NodeKind;
enum class NodeKind { DeclK=0, ExpK=1, StmtK=2 };

// Subkinds of Declarations
enum class DeclKind { VarK=0, FuncK=1, ParamK=2 };

// Subkinds of Statements
enum class StmtKind { BreakK=0, CompoundK=1, ForK=2, WhileK=3, ReturnK=4, IfK=5, RangeK=6 };

// Subkinds of Expressions
enum class ExprKind { AssignK=0, CallK=1, ConstantK=2, IdK=3, OpK=4 };

// ExpType is used for type checking (Void means no type or value, UndefinedType means undefined)
enum class ExprType { INT=0, BOOL=1, CHAR=2, VOID=3, UNDEFINED=4 };

// MemoryType is used for checking type of memeory during memory management
enum class MemoryType { GLOBAL=0, LOCAL=1, LOCAL_STATIC=2, PARAM=3, UNDEFINED=4 };

/*  tree node structure
 */
class TokenTree {

    private:
        // Token Information
        int tokenClass;
        int lineNum;
        char *tokenStr;         // what string was actually read
        char cvalue;            // any character value
        int  nvalue;            // any numeric value or Boolean value
        char *svalue;           // any string value e.g. an id

        // Expression Information
        NodeKind nodeKind;
        union {
            DeclKind declKind;
            ExprKind exprKind;
            StmtKind stmtKind;
        } subKind;
        ExprType exprType = ExprType::UNDEFINED;
        char *exprName;
        bool _isArray = false;
        bool _isStatic = false;

        // Semantic information
        bool checkInitialized = true;
        bool _isUsed = false;       // For varibles (maybe functions/params in future)
        bool _isInitialized = false; // For checking variable declarations
        bool _hasReturn = false; // For determining whether a function has a return value

        // Memory/Code Gen Information
        unsigned int memorySize = 1;
        MemoryType memoryType = MemoryType::UNDEFINED;
        int memoryOffset;
        bool _wasGenerated = false;
        bool _hasLastLine = false;
        int lastLine;

        void _printTree(int level, bool isChild, bool isSibling, int num);
        void makeParent();
        void _setFunction();
        int _calculateMemoryOfChildren();


    public:
        TokenTree();
        void setTokenClass(int tc);
        int getTokenClass();
        void setLineNum(int line);
        int getLineNum();
        void setTokenString(char *str);
        void setStrValue(char *str);
        char *getTokenString();
        void setCharValue(char c);
        char getCharValue();
        void setNumValue(int n);
        int getNumValue();

        
        void setStringValue(char *str);
        void setStringValue(char *str, bool duplicate);
        char *getStringValue();
        
        TokenTree *children[3] = {NULL};
        TokenTree *parent = NULL;
        TokenTree *sibling = NULL;
        TokenTree *function = NULL;
        void setParentAndFunction();
        TokenTree *getTopParent();

        int getNumSiblings(bool includeSelf);
        int getNumChildren();

        bool hasParent(TokenTree *possibleParent, bool checkAllParents);

        // ExpKind Information
        void setNodeKind(NodeKind nk);
        NodeKind getNodeKind();
        void setDeclKind(DeclKind dk);
        DeclKind getDeclKind();
        void setExprKind(ExprKind ek);
        ExprKind getExprKind();
        void setStmtKind(StmtKind sk);
        StmtKind getStmtKind();
        void setExprType(ExprType et);
        ExprType getExprType();
        const char *getTypeString();
        const char *getType();
        bool isExprTypeUndefined();

        bool cascadingError();
        void setExprName(char *name);
        char *getExprName();
        void setIsArray(bool b);
        bool isArray();
        void setIsStatic(bool b);
        bool isStatic();

        // Semantic information
        void cancelCheckInit(bool applyToChildren);

        bool shouldCheckInit();
        void setIsUsed(bool b);
        bool isUsed();
        void setIsInitialized(bool b);
        bool isInitialized();
        void setHasReturn(bool b);
        bool hasReturn();
        bool isConstantExpression();

        void addSibling(TokenTree *sibl);
        void typeSiblings(ExprType type);
        void staticSiblings();
        void printTree();
        void printNode();
        void printLine();
        void printMemory();

        void setMemorySize(unsigned int i);
        unsigned int getMemorySize();
        void setMemoryType(MemoryType mt);
        MemoryType getMemoryType();
        char *getMemoryTypeString();
        bool isInGlobalMemory();
        void setMemoryOffset(int i);
        int getMemoryOffset();
        void calculateMemoryOffset();
        void copyMemoryInfo(TokenTree *tree);
        void calculateMemoryOfChildren();

        bool wasGenerated();
        void setGenerated();
        void setGenerated(bool b);
        void setGenerated(bool b, bool applyToChildren);
        bool hasLastLine();
        void setHasLastLine(bool b);
        int getLastLine();
        void setLastLine(int line);
};

#endif
