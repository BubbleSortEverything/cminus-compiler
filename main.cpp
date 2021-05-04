/*  Author: Oshan Karki         Course: Compiler-Construction
 *  Year: Spring 2021
 *                  [*** dirver program for c- compiler ***]
 */

/*  standard libs
 */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/*  imported libs
 */
#include "TokenTree.h"
#include "ourgetopt.h"
#include "symbolTable.h"
#include "yyerror.h"
#include "semantic.h"
#include "codegen.h"
#include "util.h"

/*  prototype
 */
void useageMessage();   // prints useaga message
size_t bstrcpy(char *dest, size_t size, const char *src);

/*  global variables
 */
// errors and warnings
int numErrors = 0;
int numWarnings = 0;

// memory management
int localOffset = -2;
int globalOffset = 0;
bool printMem = false;

// symbnol table
bool symtabDebug = false;
TokenTree *syntaxTree;
SymbolTable *symbolTable;
FILE *code;

// externals
extern int yyparse();
extern int yydebug;
extern FILE *yyin;

// main driver
int main(int argc, char **argv) 
{
    extern int optind;
    bool printAST = false;
    char *fileName = NULL;
    char *outputFile = NULL;
    int c;

    initErrorProcessing();

    while ((c = ourGetopt(argc, argv, (char *) "dhPMD")) != EOF) {
        switch (c) {
            case 'd':
                yydebug = true;
                break;
            case 'h':
                useageMessage();
                return 0;
            case 'P':
                printAST = true;
                break;
            case 'M':
                printAST = true;
                printMem = true;
                break;
            case 'D':
                symtabDebug = true;
                break;
            default:
                break;
        }
    }
    
    if (optind < argc) {
        fileName = argv[optind];
        yyin = fopen(fileName, "r");
    }

    yyparse();


    if (numErrors == 0) {
        syntaxTree->setParentAndFunction();
        symbolTable = new SymbolTable();
        symbolTable->debug(symtabDebug);
        buildSymbolTable();

        if (printAST and numErrors==0) {
            syntaxTree->printTree();
            printf("Offset for end of global space: %d\n", globalOffset);
        }

        if (numErrors == 0) {
            if (fileName == NULL) {
                outputFile = (char *) "out.tm";
            } 
            else {
                int outLength = strlen(fileName) + 1;
                outputFile = (char *) malloc(sizeof(char) * outLength);
                bstrcpy(outputFile, outLength, fileName);
                outputFile[outLength - 3] = 't';
                outputFile[outLength - 2] = 'm';
            }
            code = fopen(outputFile, "w");
            generateCode();
        }
    }
    
    printf("Number of warnings: %d\n", numWarnings);
    printf("Number of errors: %d\n", numErrors);
}


void useageMessage() 
{
    printf("Usage: c-[options] [sourceFile]\n");
    printf("options\n");
    printf("-d      - turn on parser debugging\n");
    printf("-D      - turn on symbol table debugging\n");
    printf("-h      - this usage message\n");
    printf("-p      - print the abstract syntax tree\n");
    printf("-P      - print the abstract syntax tree plus type information\n");
    printf("-M      - print abstract syntax tree + extra types + memory offsets\n");
}

size_t bstrcpy(char *dest, size_t size, const char *src) 
{
    size_t i;
    for (i = 0; i + 1 < size && src[i] != '\0'; i++) {
        dest[i] = src[i];
    }

    if (i < size) { dest[i] = '\0'; }
    while (src[i] != '\0') {
        i++;
    }

    return i;
}
