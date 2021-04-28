#define NUM_OPS 18
#include "codegen.h"
#include "emitcode_latest.h"
#include "symbolTable.h"
#include "TokenTree.h"
#include <stack>
#include "string.h"

// Prototypes
void _generateCode(TokenTree *tree);

extern TokenTree *syntaxTree;
extern SymbolTable *symbolTable;
extern int globalOffset;
int initLine = -1;

int tOffset = globalOffset;
int fOffset;

std::stack<int> lastLineOfWhile;

void lineSep() {
    emitComment((char *) "** ** ** ** ** ** ** ** ** ** ** **");
}

void funcHeader(char *funcName) {
    lineSep();
    char *line;
    asprintf(&line, "FUNCTION %s", funcName);
    emitComment(line);
    free(line);
    // Save function address!
    TokenTree *func = (TokenTree *) symbolTable->lookupGlobal(funcName);
    if (func == NULL) {
        throw std::runtime_error("ERROR: Symbol table lookup error.");
    }
    func->setMemoryOffset(emitSkip(0));
    emitRM((char *) "ST", 3, -1, 1, (char *) "Store return address");
}

void popLeftIntoAC1() {
    tOffset++;
    emitRM((char *) "LD", AC1, tOffset, 1, (char *) "Pop left hand side into AC1");
}

void standardClosing() {
    emitComment((char *) "Add standard closing in case there is no return statement");
    emitRM((char *) "LDC", 2, 0, 6, (char *) "Set return value to 0");
    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
    emitGoto(0, 3, (char *) "Return");
}

void funcFooter(char *funcName, bool includeStdClosing) {
    char *line;
    if (includeStdClosing) {
        standardClosing();
    }
    asprintf(&line, "END FUNCTION %s", funcName);
    emitComment(line);
    free(line);
    emitComment((char *) "");
}

void funcFooter(char *funcName) {
    funcFooter(funcName, false);
}

void generateHeader() {
    emitComment((char *) "C- Generated Code");
    emitComment((char *) "Author: Oshan Karki");
}

void jumpToFunction(char *funcName) {
    char *comment;
    asprintf(&comment, "Jump to %s", funcName);
    TokenTree *func = (TokenTree *) symbolTable->lookupGlobal(funcName);
    emitGotoAbs(func->getMemoryOffset(), comment);
    free(comment);
}

void handlePlus(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "ADD", AC, AC1, AC, (char *) "+ Operation");
}

void handleChSignOrMinus(TokenTree *tree) {
    if (tree->children[1] == NULL) {
        emitRO((char *) "NEG", 3, 3, 0, (char *) "- Change Sign Operation");
    } else {
        popLeftIntoAC1();
        emitRO((char *) "SUB", AC, AC1, AC, (char *) "- Subtraction Operation");
    }
}

void handleSizeOfOrTimes(TokenTree *tree) {
    if (tree->children[1] == NULL) {
        char *line;
        asprintf(&line, "Load address of base array %s", tree->children[0]->getStringValue());
        if (tree->children[0]->isInGlobalMemory()) {
            emitRM((char *) "LDA", AC, tree->children[0]->getMemoryOffset(), GP, line);
        } else {
            if (tree->children[0]->getMemoryType() == MemoryType::PARAM) {
                emitRM((char *) "LD", AC, tree->children[0]->getMemoryOffset(), FP, line);
            } else {
                emitRM((char *) "LDA", AC, tree->children[0]->getMemoryOffset(), FP, line);
            }
        }
        free(line);
        emitRM((char *) "LD", AC, 1, AC, (char *) "Load array size");
    } else {
        popLeftIntoAC1();
        emitRO((char *) "MUL", AC, AC1, AC, (char *) "* Multiplication Operation");
    }
}

void handleEquality(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "TEQ", AC, AC1, AC, (char *) "== Equality Operation");
}

void handleNotEquality(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "TNE", AC, AC1, AC, (char *) "!= Equality Operation");
}

void handleAnd(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "AND", AC, AC1, AC, (char *) "AND operation store in AC");
}

void handleOr(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "OR", AC, AC1, AC, (char *) "OR operation store in AC");
}

void handleRand(TokenTree *tree) {
    emitRO((char *) "RND", AC, AC, 0, (char *) "Gen rand between 0 and value of AC1 in AC");
}

void handleLEQ(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "TLE", AC, AC1, AC, (char *) "LEQ <= operation store in AC");
}

void handleLessThan(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "TLT", AC, AC1, AC, (char *) "Less than < operation store in AC");
}

void handleGEQ(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "TGE", AC, AC1, AC, (char *) "GEQ >- operation store in AC");
}

void handleGreaterThan(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "TGT", AC, AC1, AC, (char *) "Greather than > operation store in AC");
}

void handleNotCG(TokenTree *tree) {
    emitRM((char *) "LDC", AC1, 1, 6, (char *) "Load 1 into AC1 for not operation");
    emitRO((char * ) "TNE", AC, AC1, AC, (char * ) "Not ! operation store in AC");
}

void handleDivision(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "DIV", AC, AC1, AC, (char *) "/ Division operation");
}

void handleMod(TokenTree *tree) {
    popLeftIntoAC1();
    emitRO((char *) "MOD", AC, AC1, AC, (char *) "% mod operation");
}

void handleUnimplemented(TokenTree *tree) {
    char *line;
    asprintf(&line, "Operation %s not implemented!", tree->getStringValue());
    throw std::runtime_error(line);
}

void handleArrayAccessCG(TokenTree *tree) {
    
    if (tree->parent->getNodeKind() == NodeKind::EXPRESSION and tree->parent->getExprKind() == ExprKind::ASSIGN and tree->parent->children[0] == tree) {
        emitRM((char *) "ST", 3, tOffset, FP, (char *) "Push array index onto temp stack");
        tOffset--;
    } else {
        TokenTree *arr = tree->children[0];
        char *line;
        asprintf(&line, "Load base address of array %s into AC2", arr->getStringValue());
        if (arr->isInGlobalMemory()) {
            emitRM((char *) "LDA", AC2, arr->getMemoryOffset(), GP, line);
        } else {
            if (arr->getMemoryType() == MemoryType::PARAM) {
                emitRM((char *) "LD", AC2, arr->getMemoryOffset(), FP, line);
            } else {
                emitRM((char *) "LDA", AC2, arr->getMemoryOffset(), FP, line);
            }
        }
        free(line);
        emitRO((char *) "SUB", AC2, AC2, AC, (char *) "Compute offset for array");
        asprintf(&line, "Load array element %s from AC into loc from AC2", arr->getStringValue());
        emitRM((char *) "LD", AC, 0, AC2, line);
        free(line);
    }
}

const char *operationsCodeGen[NUM_OPS] = {
    "<=",
    "<",
    ">=",
    ">",
    "&",
    "|",
    "!",
    "+",
    "-",
    "*",
    "/",
    "%",
    "++",
    "--",
    "?",
    "==",
    "!=",
    "["
};

void (*functionPointersCodeGen[NUM_OPS])(TokenTree *) = {
    handleLEQ, // LEQ
    handleLessThan, // LESS THAN
    handleGEQ, // GEQ
    handleGreaterThan, // GREATHER THAN
    handleAnd, // AND
    handleOr, // OR
    handleNotCG, // NOT
    handlePlus, // PLUS
    handleChSignOrMinus, // CHANGE SIGN OR MINUS
    handleSizeOfOrTimes, // SIZEOF OR TIMES
    handleDivision, // DIVISION
    handleMod, // MOD
    handleUnimplemented, // INC
    handleUnimplemented, // DEC
    handleRand, // RANDOM ?
    handleEquality, // EQUALS
    handleNotEquality, // NOT EQUALS
    handleArrayAccessCG, // ARRAY ACCESSOR []
};

int indexOfOperationCodeGen(TokenTree *tree) {
    for (int i = 0; i < NUM_OPS; i++) {
        if (strcmp(tree->getTokenString(), operationsCodeGen[i]) == 0) {
            return i;
        }
    }
    return -1;
}


void initGlobal(TokenTree *tree) {
    for (int i = 0; i < MAX_CHILDREN; i++) {
        if (tree->children[i] != NULL) {
            initGlobal(tree->children[i]);
        }
    }
    if (tree->getNodeKind() == NodeKind::DECLARATION and tree->getDeclKind() == DeclKind::VARIABLE and tree->isInGlobalMemory()) {
        if (tree->isArray()) {
            char *line;
            asprintf(&line, "Load size of %s into AC", tree->getStringValue());
            emitRM((char *) "LDC", 3, tree->getMemorySize() - 1, 6, line);
            free(line);
            asprintf(&line, "Store size of %s in data memory", tree->getStringValue());
            emitRM((char *) "ST", 3, tree->getMemoryOffset() + 1, 0, line);
            free(line);
        } else {
            tree->setGenerated(false, true);
            for (int i = 0; i < MAX_CHILDREN; i++) {
                if (tree->children[i] != NULL) {
                    _generateCode(tree->children[i]);
                }
            }
            if (tree->children[0] != NULL) {
                char *line;
                asprintf(&line, "Assigning variable %s in %s", tree->getStringValue(), tree->getMemoryTypeString());
                emitRM((char *) "ST", AC, tree->getMemoryOffset(), 0, line);
                free(line);
            }
        }
    }

    if (tree->sibling != NULL) {
        initGlobal(tree->sibling);
    }
}

void processBreaks(TokenTree *whileParent, int lastLine, TokenTree *tree) {
    if (tree == NULL) {
        return;
    }
    if (tree->getNodeKind() == NodeKind::STATEMENT and tree->getStmtKind() == StmtKind::BREAK) {
        if (tree->hasLastLine()) {
            emitNewLoc(tree->getLastLine());
            tree->setHasLastLine(false);
            emitRMAbs((char *) "JMP", 0, lastLine, (char *) "Break statement backpatch jump");
        }
    }

    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = tree->children[i];
        if (child != NULL) {
            processBreaks(whileParent, lastLine, child);
        }
    }

    if (tree->sibling != NULL) {
        processBreaks(whileParent, lastLine, tree->sibling);
    }
}

void processMathAssign(TokenTree *tree) {
    char *str = tree->getTokenString();
    if (strcmp(str, "+=") == 0) {
        emitRO((char *) "ADD", AC, AC1, AC, (char *) "+= operation");
    } else if (strcmp(str, "-=") == 0) {
        emitRO((char *) "SUB", AC, AC1, AC, (char *) "-= operation");
    } else if (strcmp(str, "*=") == 0) {
        emitRO((char *) "MUL", AC, AC1, AC, (char *) "*= operation");
    } else if (strcmp(str, "/=") == 0) {
        emitRO((char *) "DIV", AC, AC1, AC, (char *) "+= operation");
    } else if (strcmp(str, "++") == 0) {
        emitRM((char *) "LDA", AC, 1, AC1, (char *) "++ Increment accumulator operation");
    } else if (strcmp(str, "--") == 0) {
        emitRM((char *) "LDA", AC, -1, AC1, (char *) "-- Decrement accumulator operation");
    }
}

void generateInit() {
    backPatchAJumpToHere(0, (char *) "Jump to init [backpatch]");
    emitComment((char *) "INIT");
    // emitRM((char *) "LD", 0, 0, 0, (char *) "Set the global pointer");
    emitRM((char *) "LDA", 1, globalOffset, 0, (char *) "set first frame at end of globals");
    emitRM((char *) "ST", 1, 0, 1, (char *) "store old fp (point to self)");
    emitComment((char *) "INIT GLOBALS AND STATICS");
    initGlobal(syntaxTree);
    emitComment((char *) "END INIT GLOBALS AND STATICS");
    emitRM((char *) "LDA", 3, 1, 7, (char *) "Return address in ac");
    jumpToFunction((char *) "main");
    emitRO((char *) "HALT", 0, 0, 0, (char *) "DONE!");
    emitComment((char *) "END INIT");
}

void generateIOLibrary() {
    funcHeader((char *) "input");
    emitRO((char *) "IN", 2, 2, 2, (char *) "Grab int input");
    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
    emitGoto(0, 3, (char *) "Return");
    funcFooter((char *) "input");

    funcHeader((char *) "output");
    emitRM((char *) "LD", 3, -2, 1, (char *) "Load parameter");
    emitRO((char *) "OUT", 3, 3, 3, (char *) "Output integer");
    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
    emitGoto(0, 3, (char *) "Return");
    funcFooter((char *) "output");

    funcHeader((char *) "inputb");
    emitRO((char *) "INB", 2, 2, 2, (char *) "Grab bool input");
    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
    emitGoto(0, 3, (char *) "Return");
    funcFooter((char *) "inputb");

    funcHeader((char *) "outputb");
    emitRM((char *) "LD", 3, -2, 1, (char *) "Load parameter");
    emitRO((char *) "OUTB", 3, 3, 3, (char *) "Output bool");
    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
    emitGoto(0, 3, (char *) "Return");
    funcFooter((char *) "outputb");

    funcHeader((char *) "inputc");
    emitRO((char *) "INC", 2, 2, 2, (char *) "Grab char input");
    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
    emitGoto(0, 3, (char *) "Return");
    funcFooter((char *) "inputc");

    funcHeader((char *) "outputc");
    emitRM((char *) "LD", 3, -2, 1, (char *) "Load parameter");
    emitRO((char *) "OUTC", 3, 3, 3, (char *) "Output char");
    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
    emitGoto(0, 3, (char *) "Return");
    funcFooter((char *) "outputc");

    funcHeader((char *) "outnl");
    emitRO((char *) "OUTNL", 3, 3, 3, (char *) "Output a newline");
    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
    emitGoto(0, 3, (char *) "Return");
    funcFooter((char *) "outnl");
}

void beforeChildrenCodeGen(TokenTree *tree) {
    switch (tree->getNodeKind()) {
        case 0: {   // declaration
            switch (tree->getDeclKind()) {
                case 1: {   // function
                    funcHeader(tree->getStringValue());
                    tOffset = -tree->getMemorySize();
                    fOffset = -2;
                    break;
                }
            }
            break;
        }
        case 1: {   // expression
            switch (tree->getExprKind()) {
                case 1: {   // call
                    TokenTree *func = (TokenTree *) symbolTable->lookup(tree->getStringValue());
                    char *line;
                    asprintf(&line, "CALL %s", tree->getStringValue());
                    emitComment(line);
                    asprintf(&line, "Store fp in ghost frame for %s", tree->getStringValue());
                    emitRM((char *) "ST", FP, tOffset, FP, (char *) line);
                    int previousFoffset = fOffset;
                    int previousTOffset = tOffset;
                    fOffset = tOffset - 2;
                    tOffset -= func->getMemorySize();
                    free(line);

                    for (int i = 0; i < MAX_CHILDREN; i++) {
                        TokenTree *child = tree->children[i];
                        if (child != NULL) {
                            _generateCode(child);
                        }
                    }

                    emitComment((char *) "Begin call");
                    emitRM((char *) "LDA", 1, previousTOffset, 1, (char *) "Move the fp to the new frame");
                    emitRM((char *) "LDA", AC, 1, 7, (char *) "Store the return address in ac (skip 1 ahead)");
                    emitGotoAbs(func->getMemoryOffset(), (char *) "Call function");
                    tOffset += func->getMemorySize();
                    fOffset = previousFoffset;
                    emitRM((char *) "LDA", AC, 0, RT, (char *) "Save return result in accumulator");
                    asprintf(&line, "END CALL %s", tree->getStringValue());
                    emitComment(line);
                    free(line);
                    break;
                }
                case 2: {
                    int constValue = tree->getExprType() == ExprType::CHAR ? (int) tree->getCharValue() : tree->getNumValue();
                    char *line;
                    asprintf(&line, "Load %s constant", tree->getTypeString());
                    emitRM((char *) "LDC", AC, constValue, 6, line);
                    free(line);
                    break;
                }
            }
            break;
        }
        case 2: {
            switch (tree->getStmtKind()) {
                case 1: {
                    emitComment((char *) "COMPOUND");
                    break;
                }
                case 5: {
                    emitComment((char *) "BEGIN IF BLOCK");
                    int currentLoc, saveLoc1, saveLoc2;
                    _generateCode(tree->children[0]);
                    saveLoc1 = emitSkip(1);
                    emitComment((char *) "IF JUMP TO ELSE");
                    _generateCode(tree->children[1]);
                    saveLoc2 = emitSkip(1);
                    emitComment((char *) "IF JUMP TO END");
                    currentLoc = emitSkip(0);
                    emitNewLoc(saveLoc1);
                    emitRMAbs((char *) "JZR", AC, currentLoc, (char *) "IF JMP TO ELSE");
                    emitNewLoc(currentLoc);
                    _generateCode(tree->children[2]);
                    currentLoc = emitSkip(0);
                    emitNewLoc(saveLoc2);
                    emitRMAbs((char *) "LDA", PC, currentLoc, (char *) "JUMP TO END");
                    emitNewLoc(currentLoc);
                    emitComment((char *) "END IF");
                    break;
                }
                case 3: {
                    emitComment((char *) "Beginning WHILE statement");
                    int L1 = emitSkip(0);
                    _generateCode(tree->children[0]);
                    int bp = emitSkip(1);
                    _generateCode(tree->children[1]);
                    emitGotoAbs(L1, (char *) "Go to L1");
                    int end = emitSkip(0);
                    emitNewLoc(bp);
                    emitRMAbs((char *) "JZR", AC, end, (char *) "JMP if condition is false");
                    emitNewLoc(end);

                    processBreaks(tree, end, tree->children[1]);
                    emitNewLoc(end);
                    emitComment((char *) "End WHILE statement");
                    break;
                }
            }
            break;
        }
    }
}

void afterChildrenCodeGen(TokenTree *tree) {
    switch (tree->getNodeKind()) {
        case 0: {
            switch (tree->getDeclKind()) {
                case 1: {
                    funcFooter(tree->getStringValue(), true);
                    tOffset = -tree->getMemorySize();
                    break;
                }
                case 2: {
                    break;
                }
                case 0: {
                    if (tree->isInGlobalMemory()) {
                        tree->setGenerated(false);
                        return; // Handle in init
                    }
                    if (tree->isArray()) {
                        char *line;
                            asprintf(&line, "Load size of %s into AC", tree->getStringValue());
                            emitRM((char *) "LDC", 3, tree->getMemorySize() - 1, 6, line);
                            free(line);
                            asprintf(&line, "Store size of %s in data memory", tree->getStringValue());
                            emitRM((char *) "ST", 3, tree->getMemoryOffset() + 1, FP, line);
                            free(line);
                    }
                    if (tree->children[0] != NULL) {
                        int tRegister = FP;
                        if (tree->isInGlobalMemory()) tRegister = GP;
                        char *line;
                        asprintf(&line, "Assigning variable %s in %s", tree->getStringValue(), tree->getMemoryTypeString());
                        emitRM((char *) "ST", AC, tree->getMemoryOffset(), tRegister, line);
                        free(line);
                    }
                    break;
                }
            }
            break;
        }
        case 1: {
            switch (tree->getExprKind()) {
                case 1: {
                    // Handled in before children
                    break;
                }
                case 3: {
                    char *line;
                    int tRegister = FP;
                    if (tree->isInGlobalMemory()) tRegister = GP;
                    if (tree->isArray()) {
                        asprintf(&line, "Load base address of array %s", tree->getStringValue());
                        if (tree->isInGlobalMemory()) {
                            emitRM((char *) "LDA", AC, tree->getMemoryOffset(), GP, line);
                        } else {
                            if (tree->getMemoryType() == MemoryType::PARAM) {
                                emitRM((char *) "LD", AC, tree->getMemoryOffset(), FP, line);
                            } else {
                                emitRM((char *) "LDA", AC, tree->getMemoryOffset(), FP, line);
                            }
                        }
                        free(line);
                    } else {
                        if (!(tree->parent->getNodeKind() == NodeKind::EXPRESSION and tree->parent->getExprKind() == ExprKind::ASSIGN and tree->parent->children[0] == tree)) { // Dont load if on left hand side
                            asprintf(&line, "Load variable %s into accumulator", tree->getStringValue());
                            emitRM((char *) "LD", AC, tree->getMemoryOffset(), tRegister, line);
                            free(line);
                        }
                    }
                    break;
                }
                case 4: {
                    void (*fp)(TokenTree *) = functionPointersCodeGen[indexOfOperationCodeGen(tree)];
                    fp(tree);
                    break;
                }
                case 0: {
                    int tRegister = FP;
                    bool mathAndAssign = strlen(tree->getTokenString()) > 1;
                    if (tree->children[0]->getNodeKind() == NodeKind::EXPRESSION and tree->children[0]->getExprKind() == ExprKind::OP) { // Array handling monstrosity
                        TokenTree *arr = tree->children[0]->children[0];
                        if (arr->isInGlobalMemory()) tRegister = GP;
                        tOffset++;
                        emitRM((char *) "LD", AC1, tOffset, 1, (char *) "Pop array index into AC1");
                        char *line;
                        asprintf(&line, "Load base address of array %s into AC2", arr->getStringValue());
                        if (arr->isInGlobalMemory()) {
                            emitRM((char *) "LDA", AC2, arr->getMemoryOffset(), GP, line);
                        } else {
                            if (arr->getMemoryType() == MemoryType::PARAM) {
                                emitRM((char *) "LD", AC2, arr->getMemoryOffset(), FP, line);
                            } else {
                                emitRM((char *) "LDA", AC2, arr->getMemoryOffset(), FP, line);
                            }
                        }
                        free(line);
                        emitRO((char *) "SUB", AC2, AC2, AC1, (char *) "Compute offset for array");
                        if (mathAndAssign) {
                            asprintf(&line, "Load lhs variable %s into AC1", arr->getStringValue());
                            emitRM((char *) "LD", AC1, 0, AC2, (char *) "Load lhs variable");
                            free(line);
                            processMathAssign(tree);
                        }
                        asprintf(&line, "Store variable %s from AC into loc from AC2", arr->getStringValue());
                        emitRM((char *) "ST", 3, 0, AC2, line);
                        free(line);
                    } else {
                        if (tree->children[0]->isInGlobalMemory()) tRegister = GP;
                        char *line;
                        if (mathAndAssign) {
                            asprintf(&line, "Load lhs variable %s into AC1", tree->children[0]->getStringValue());
                            emitRM((char *) "LD", AC1, tree->children[0]->getMemoryOffset(), tRegister, (char *) "Load lhs variable");
                            free(line);
                            processMathAssign(tree);
                        }
                        asprintf(&line, "Assigning variable %s in %s", tree->children[0]->getStringValue(), tree->children[0]->getMemoryTypeString());
                        emitRM((char *) "ST", AC, tree->children[0]->getMemoryOffset(), tRegister, line);
                        free(line);
                    }
                }
            }
            if (tree->parent->getNodeKind() == NodeKind::EXPRESSION and tree->parent->getExprKind() == ExprKind::CALL) {
                emitRM((char *) "ST", AC, fOffset, 1, (char *) "Push parameter onto new frame");
                fOffset--;
            }
            break;
        }
        case 2: {
            switch (tree->getStmtKind()) {
                case 1: {
                    emitComment((char *) "END COMPOUND");
                    break;
                }
                case 4: {
                    emitRM((char *) "LDA", RT, 0, AC, (char *) "Copy accumulator to return register");
                    emitRM((char *) "LD", 3, -1, 1, (char *) "Load return address");
                    emitRM((char *) "LD", 1, 0, 1, (char *) "Adjust fp");
                    emitGoto(0, 3, (char *) "Return");
                    break;
                }
                case 0: {
                    tree->setLastLine(emitSkip(1));
                    tree->setHasLastLine(true);
                    break;
                }
            }
        }
    }
}

void afterChildCodeGen(TokenTree *tree, int i) {
    switch (tree->getNodeKind()) {
        case 1: {
            switch (tree->getExprKind()) {
                case 4: {
                    if (tree->getNumChildren() > 1 and i == 0) {
                        if (tree->getTokenString()[0] == '[') return;
                        emitRM((char *) "ST", AC, tOffset, 1, (char *) "Push left side onto temp variable stack");
                        tOffset--;
                    }
                    break;
                }
            }
            break;
        }
        case 2: {
            break;
        }
    }
}

void _generateCode(TokenTree *tree) {
    if (tree == NULL or tree->wasGenerated()) { // Skip already generated code
        return;
    }
    tree->setGenerated();
    beforeChildrenCodeGen(tree);
    
    for (int i = 0; i < MAX_CHILDREN; i++) {
        TokenTree *child = tree->children[i];
        if (child != NULL) {
            _generateCode(child);
            afterChildCodeGen(tree, i);
        }
    }

    afterChildrenCodeGen(tree);

    if (tree->sibling != NULL) {
        _generateCode(tree->sibling);
    }
    
}

void generateCode() {
    generateHeader();
    emitSkip(1); // Leave space for backpatch
    generateIOLibrary();
    _generateCode(syntaxTree);
    generateInit();
}