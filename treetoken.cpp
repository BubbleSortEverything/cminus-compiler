#include <stdexcept>
#include <stdio.h>
#include <string.h>
#include "globals.h"

extern int globalOffset;
extern int localOffset;
extern bool printMem;

// mini functions to help with token properties
TokenTree       ::  TokenTree()                 {}   // initializer
int TokenTree   ::  getTokenClass()             { return this->tokenClass; }
int TokenTree   ::  getLineNum()                { return this->lineNum; }
int TokenTree   ::  getNumValue()               { return this->nvalue; }
char TokenTree  ::  getCharValue()              { return this->cvalue; }
char *TokenTree ::  getTokenString()            { return this->tokenStr; }
char *TokenTree ::  getStringValue()            { return this->svalue; }
void TokenTree  ::  setNumValue(int n)          { this->nvalue = n; }
void TokenTree  ::  setLineNum(int line)        { this->lineNum = line; }
void TokenTree  ::  setCharValue(char c)        { this->cvalue = c; }
void TokenTree  ::  setTokenClass(int tc)       { this->tokenClass = tc; }
void TokenTree  ::  setStrValue(char *str)      { this->svalue = strdup(str); }
void TokenTree  ::  setTokenString(char *str)   { this->tokenStr = strdup(str); }
void TokenTree  ::  setStringValue(char *str)   { setStringValue(str, true); }
void TokenTree  ::  setStringValue(char *str, bool duplicate) { this->svalue = duplicate ? strdup(str) : str; }

void TokenTree::makeParent() 
{
    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = children[i];
        if (child != NULL) {
            child->parent = this;
            child->makeParent();
        }
    }

    if (this->sibling != NULL) {
        sibling->parent = parent;
        sibling->makeParent();
    }
}

void TokenTree::_setFunction() 
{
    TokenTree *topParent = getTopParent();
    if (topParent->getDeclKind() == DeclKind::FuncK) { // All top parents must be declarations!
        function = topParent;
    }

    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = children[i];
        if (child != NULL) child->_setFunction();
    }

    if (sibling != NULL) sibling->_setFunction();
}

void TokenTree::setParentAndFunction() 
{
    makeParent();
    _setFunction();
}

TokenTree *TokenTree::getTopParent() 
{
    TokenTree *visitor = this;
    while (visitor->parent != NULL) visitor = visitor->parent;

    return visitor;
}

int TokenTree::getNumSiblings(bool includeSelf) 
{
    int count = includeSelf ? 1 : 0;
    TokenTree *visitor = this;
    while (visitor->sibling != NULL) {
        visitor = visitor->sibling;
        count++;
    }
    
    return count;
}

int TokenTree::getNumChildren() 
{
    int counter = 0;
    for (int i = 0; i < MAX_CHILDREN; i++) {
        if (children[i] != NULL) counter++;
    }
    
    return counter;
}

bool TokenTree::hasParent(TokenTree *possibleParent, bool checkAllParents) 
{
    if (possibleParent == NULL) return false;
    TokenTree *visitor = this->parent;
    while (visitor != NULL) {
        if (visitor == possibleParent) return true;
        visitor = visitor->parent;
    }
    
    return false;
}

void TokenTree::setNodeKind(NodeKind nk) {
    this->nodeKind = nk;
}

NodeKind TokenTree::getNodeKind() {
    return this->nodeKind;
}

void TokenTree::setDeclKind(DeclKind dk) {
    this->nodeKind = NodeKind::DeclK;
    this->subKind.declKind = dk;
}

DeclKind TokenTree::getDeclKind() {
    if (this->nodeKind != NodeKind::DeclK) {
        throw std::runtime_error("subKind is not declaration!");
    }
    return subKind.declKind;
}

void TokenTree::setExprKind(ExprKind ek) {
    this->nodeKind = NodeKind::ExpK;
    this->subKind.exprKind = ek;
}

ExprKind TokenTree::getExprKind() {
    if (this->nodeKind != NodeKind::ExpK) {
        throw std::runtime_error("subKind is not expression!");
    }
    return subKind.exprKind;
}

void TokenTree::setStmtKind(StmtKind sk) {
    this->nodeKind = NodeKind::StmtK;
    this->subKind.stmtKind = sk;
}

StmtKind TokenTree::getStmtKind() {
    if (this->nodeKind != NodeKind::StmtK) {
        throw std::runtime_error("subKind is not statement!");
    }
    return subKind.stmtKind;
}

void TokenTree::setExprType(ExprType et) { this->exprType = et; }
ExprType TokenTree::getExprType() { return this->exprType; }

const char *TokenTree::getTypeString() 
{
    switch (static_cast<int>(getExprType())) {
        case 0: return (isStatic() and !isArray()) ? "type int" : "of type int";
        case 1: return (isStatic() and !isArray()) ? "type bool" : "of type bool";
        case 2: return (isStatic() and !isArray()) ? "type char" : "of type char";
        case 3: return (isStatic() and !isArray()) ? "type void" : "of type void";
        case 4: return (isStatic() and !isArray()) ? "type undefined" : "of undefined type";
    }

    return "error";
}

const char *TokenTree::getType() 
{
    switch (static_cast<int>(getExprType())) {
        case 0: return "type int";
        case 1: return "type bool";
        case 2: return "type char";
        case 3: return "type void";
        case 4: return "type undefined";
    }

    return "error";
}

bool TokenTree::isExprTypeUndefined() { return exprType == ExprType::UNDEFINED; }

bool TokenTree::cascadingError() 
{
    bool b = true;
    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = children[i];
        if (child != NULL and child->isExprTypeUndefined()) {
            b = false;
        }
    }

    return b;
}

char *TokenTree::getExprName() { return this->exprName; }
bool TokenTree::isArray() { return this->_isArray; }
bool TokenTree::isStatic() { return this->_isStatic; }
void TokenTree::setExprName(char *name) { this->exprName = strdup(name); }
void TokenTree::setIsArray(bool b) { this->_isArray = b; }
void TokenTree::setIsStatic(bool b) { this->_isStatic = b; }

void TokenTree::cancelCheckInit(bool applyToChildren) {
    this->checkInitialized = false;
    if (applyToChildren) {
        for (int i = 0; i < MAX_CHILDREN; i++) {
            TokenTree *child = children[i];
            if (child != NULL) child->cancelCheckInit(applyToChildren);
        }
    }
}

bool TokenTree::shouldCheckInit() { return !_isStatic and this->checkInitialized; }

void TokenTree::setIsUsed(bool b) {
    if (this->getNodeKind() != NodeKind::DeclK) {
        throw std::runtime_error("Cannot set isUsed on node that is not a declaration.");
    }
    _isUsed = b;
}

bool TokenTree::isUsed() {  return _isUsed; }

void TokenTree::setIsInitialized(bool b) 
{
    if (this->getNodeKind() != NodeKind::DeclK) {
        throw std::runtime_error("Cannot set isInitialized on node that is not declaration.");
    }

    if (this->getDeclKind() == DeclKind::FuncK) {
        throw std::runtime_error("Cannot set isInitialized on node that is a function.");
    }

    _isInitialized = b;
}

bool TokenTree::isInitialized() { return _isInitialized; }

void TokenTree::setHasReturn(bool b) 
{
    if (this->getNodeKind() != NodeKind::DeclK or this->getDeclKind() != DeclKind::FuncK) {
        throw std::runtime_error("Can only set 'hasReturn' on function declaration.");
    }
    _hasReturn = b;
}

bool TokenTree::hasReturn() 
{
    
    if (this->getNodeKind() != NodeKind::DeclK or this->getDeclKind() != DeclKind::FuncK) {
        throw std::runtime_error("Value of 'hasReturn' is only valid on function declaration.");
    }
    return _hasReturn;
}

bool TokenTree::isConstantExpression() 
{
    if (this->getNodeKind() != NodeKind::ExpK) {
        throw std::runtime_error("Cannot only call 'isConstantExpression' on an expression.");
    }
    if (this->getExprKind() == ExprKind::ConstantK) {
        return true;
    } 
    else if (this->getExprKind() == ExprKind::IdK or this->getExprKind() == ExprKind::CallK or this->getExprKind() == ExprKind::AssignK) {
        return false;
    } 
    else { // ExprKind::OpK
        bool allChildrenAreConst = true;
        for (int i = 0; i < MAX_CHILDREN; i++) {
            TokenTree *child = this->children[i];
            if (child != NULL and !child->isConstantExpression()) {
                allChildrenAreConst = false;
                break;
            }
        }
    
        return allChildrenAreConst;
    }
    
}

void TokenTree::addSibling(TokenTree *sibl) 
{
    if (sibl == NULL) return;
    TokenTree *visitor = this;
    while (visitor->sibling != NULL) {
        visitor = visitor->sibling;
    }

    visitor->sibling = sibl;
}

void TokenTree::typeSiblings(ExprType type) 
{
    TokenTree *node = this;
    while (node != NULL) {
        node->setExprType(type);
        node = node->sibling;
    }
}

void TokenTree::staticSiblings() 
{
    TokenTree *node = this;
    while (node != NULL) {
        node->setIsStatic(true);
        node = node->sibling;
    }
}

void TokenTree::_printTree(int level, bool isChild, bool isSibling, int num) 
{
    for (int i = 0; i < level; i++) {
        printf(".   ");
    }
    if (isChild or isSibling) {
        if (isChild) {
            printf("Child: ");
        } else {
            printf("Sibling: ");
        }
        printf("%d  ", num);
    }
    printNode();

    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = children[i];
        if (child != NULL) {
            child->_printTree(level + 1, true, false, i);
        }
    }

    if (sibling != NULL) {
        if (isChild) {
            sibling->_printTree(level, false, true, 1);
        } else {
            sibling->_printTree(level, false, true, num + 1);
        }
    }
}

void TokenTree::printTree() {
    this->_printTree(0, false, false, 0);
}

void TokenTree::printNode() 
{
    switch (static_cast<int>(nodeKind)) {
        case 0:
            switch (static_cast<int>(getDeclKind())) {
                case 0:
                    printf("Var: %s ", getStringValue());
                    if (isStatic()) printf("of static ");
                    if (isArray() and not isStatic()) printf("of array ");
                    if (isArray() and isStatic()) printf("array ");
                    printf("%s ", getTypeString());
                    break;
                case 1:
                    printf("Func: %s returns %s ", getStringValue(), getTypeString());
                    break;
                case 2:
                    printf("Parm: %s ", getStringValue());
                    if (isArray()) printf("of array ");
                    printf("%s ", getTypeString());
                default:
                    break;
            }
            break;

            // if (getDeclKind() == DeclKind::VarK) {
            //     printf("Var: %s ", getStringValue());
            //     if (isStatic()) printf("of static ");
            //     if (isArray() and not isStatic()) printf("of array ");
            //     if (isArray() and isStatic()) printf("array ");
            //     printf("%s ", getTypeString());
            // }
            // else if (getDeclKind() == DeclKind::FuncK) {
            //     printf("Func: %s returns %s ", getStringValue(), getTypeString());
            // }
            // else if (getDeclKind() == DeclKind::ParamK) {
            //     printf("Parm: %s ", getStringValue());
            //     if (isArray()) printf("array of ");
            //     printf("%s ", getTypeString());
            // }

        case 1:
            switch (static_cast<int>(getExprKind())) {
                case 0: {
                    char *arrayStr = (char *) "";
                    if (isArray()) arrayStr = (char *) "array of ";
                    printf("Assign: %s %s%s ", getTokenString(), arrayStr, getTypeString());
                    break;
                }
                case 1:
                    printf("Call: %s %s ", getExprName(), getTypeString());
                    break;
                case 2: {
                    printf("Const");
                    if (getExprType() == ExprType::CHAR) {
                        if (isArray()) {
                            printf(" \"");
                            fwrite(getStringValue(), sizeof(char), getNumValue(), stdout);
                            printf("\"");
                        } 
                        else {
                            printf(" \'%c\' ", getCharValue());
                        }
                        // printf(" : ");
                    } 
                    else {
                        printf(" %s ", getStringValue());
                    }
                    char *arrayStr = (char *) "";
                    if (isArray()) arrayStr = (char *) " of array ";
                    printf("%s%s ", arrayStr, getTypeString());
                    break;
                }
                case 3: {
                    char *staticStr = (char *) "";
                    char *arrayStr = (char *) "";
                    if (isStatic()) staticStr = (char *) "of static ";
                    if (isArray() and not isStatic()) arrayStr = (char *) "of array ";
                    if (isArray() and isStatic()) arrayStr = (char *) "array ";
                    printf("Id: %s %s%s%s ", getStringValue(), staticStr, arrayStr, getTypeString());
                    break;
                }
                case 4: {
                    // char *strVal = (char *) "";
                    // strVal = getStringValue()=="*" ? (char *)"sizeof" : getStringValue(); 
                    printf("Op: %s %s ", getStringValue(), getTypeString());
                    break;
                }
                default:
                    break;
            }
            break;
        case 2:
            switch (static_cast<int>( getStmtKind()) ) {
                case 0:
                    printf("Break ");
                    break;
                case 1:
                    printf("Compound ");
                    break;
                case 2:
                    printf("For ");
                    break;
                case 3:
                    printf("While ");
                    break;
                case 4:
                    printf("Return ");
                    break;
                case 5:
                    printf("If ");
                    break;
                case 6:
                    printf("Range ");
                    break;
            }
            break;
        default:
            break;
    }
    if (printMem)
        printMemory();
    printLine();
    printf("\n");
}

void TokenTree::printLine() { printf("[line: %d]", getLineNum()); }

void TokenTree::printMemory() {
    if (this->getMemoryType() == MemoryType::UNDEFINED) return;
    
    printf("[mem: %s ", getMemoryTypeString());
    printf("loc: %d ", getMemoryOffset());
    
    if (!(this->getNodeKind() == NodeKind::DeclK and this->getDeclKind() == DeclKind::FuncK)) {
        printf("size: %d] ", getMemorySize());
    }
}

void TokenTree::setMemorySize(unsigned int i) { this->memorySize = i; }
unsigned int TokenTree::getMemorySize() { return this->memorySize; }
void TokenTree::setMemoryType(MemoryType mt) { this->memoryType = mt; }
MemoryType TokenTree::getMemoryType() { return this->memoryType; }

char *TokenTree::getMemoryTypeString() 
{
    switch (static_cast<int>(this->getMemoryType())) {
        case 0:
            return (char *) "Global";
        case 1:
            return (char *) "Local";
        case 2:
            return (char *) "LocalStatic";
        case 3:
            return (char *) "Parameter";
        case 4:
            return (char *) "Undefined";
        default:
            return (char *) "Invalid/Err";
    }
}

bool TokenTree::isInGlobalMemory() 
{
    if (this->getMemoryType() == MemoryType::UNDEFINED) {
        throw std::runtime_error("isInGlobalMemory called on node with undefined memory type!");
    }
    
    if (this->getMemoryType() == MemoryType::GLOBAL or this->getMemoryType() == MemoryType::LOCAL_STATIC) {
        return true;
    }

    return false;
}

void TokenTree::setMemoryOffset(int i) { this->memoryOffset = i; }
int TokenTree::getMemoryOffset() { return this->memoryOffset; }

void TokenTree::calculateMemoryOffset() 
{
    int *offset = this->isInGlobalMemory() ? &globalOffset : &localOffset; // Pick between local and global offset
    int location = *offset; // Copy offset
    if (this->isArray() and this->getMemoryType() != MemoryType::PARAM) location --; // Decrement offset if using an array
    this->setMemoryOffset(location); // Set memory offset to location
    (*offset) -= this->getMemorySize(); // Reduce offset by size of array
}

void TokenTree::copyMemoryInfo(TokenTree *tree) 
{
    if (this == tree) {
        throw std::runtime_error("Invalid pointer. Copy memory info called on self.");
    }
    
    this->setMemoryType(tree->getMemoryType());
    this->setMemorySize(tree->getMemorySize());
    this->setMemoryOffset(tree->getMemoryOffset());
}

int TokenTree::_calculateMemoryOfChildren() {
    int sum = 0;
    if (this->getNodeKind() == NodeKind::DeclK and this->getDeclKind() != DeclKind::FuncK and !this->isInGlobalMemory()) {
        sum += getMemorySize();
    }

    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = this->children[i];
        if (child != NULL) {
            sum += child->_calculateMemoryOfChildren();
        }
    }

    if (this->sibling != NULL) {
        sum += sibling->_calculateMemoryOfChildren();
    }

    return sum;
}

void TokenTree::calculateMemoryOfChildren() 
{
    int sum = 0;
    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = this->children[i];
        if (child != NULL) {
            sum += child->_calculateMemoryOfChildren();
        }
    }

    this->setMemorySize(2 + sum);
}

bool TokenTree::wasGenerated() { return _wasGenerated; }
void TokenTree::setGenerated() { this->setGenerated(true, false); }
void TokenTree::setGenerated(bool b) { setGenerated(true, false);}

void TokenTree::setGenerated(bool b, bool applyToChildren) 
{
    this->_wasGenerated = b;

    if (!applyToChildren) {
        return;
    }

    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = this->children[i];
        if (child != NULL) {
            child->setGenerated(b, applyToChildren);
        }
    }
}

bool TokenTree::hasLastLine() { return _hasLastLine; }
void TokenTree::setHasLastLine(bool b) { this->_hasLastLine = b; }
int TokenTree::getLastLine() { return this->lastLine;}
void TokenTree::setLastLine(int line) { this->lastLine = line; }
