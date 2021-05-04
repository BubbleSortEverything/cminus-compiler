%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "c-.tab.h"

#include "TokenTree.h"

int lineNum = 1;
char *lastToken;
extern int numErrors;
extern int numWarnings;

char *stringProcess(char *string, int *newLen) 
{
	char *returnStr = (char *) calloc(strlen(string), sizeof(char));
	int j = 0;
	for (int i = 1; i < strlen(string) - 1; i++) {
		if (string[i] == '\\') {
			char escapeChar = string[i + 1];
			switch (escapeChar) {
				case '0':
					returnStr[j++] = '\0';
					break;
				case 'n':
					returnStr[j++] = '\n';
					break;
				default:
					returnStr[j++] = escapeChar;
					break;
			}	
			i++;
		} 
        else {
			returnStr[j++] = string[i];
		}
	}
	
	if (newLen != NULL) *newLen = j;

	return returnStr;
}

int setValue(int line, int tokenClass, char *svalue) 
{
    char *escapeChar;
	lastToken = svalue;
	yylval.tree = new TokenTree();
	yylval.tree->setExprType(ExprType::UNDEFINED);
	yylval.tree->setTokenClass(tokenClass);
	yylval.tree->setLineNum(line);
    yylval.tree->setTokenString(svalue);
	yylval.tree->setStringValue(svalue);

	switch (tokenClass) {
		case ID:
            yylval.tree->setStringValue(svalue);
			break;
		case NUMCONST:
			yylval.tree->setNumValue(atoi(svalue));
			break;
		case CHARCONST:
			escapeChar = stringProcess(svalue, NULL);
			if (strlen(escapeChar) > 1) {
				printf("WARNING(%d): character is %ld characters long and not a single character: '%s'.  The first char will be used.\n", lineNum, strlen(escapeChar), svalue);
				numWarnings++;
			}
			yylval.tree->setCharValue(escapeChar[0]);
			yylval.tree->setNumValue(1);
            free(escapeChar);
			break;
		case STRINGCONST:
            int newLen;
			escapeChar = stringProcess(svalue, &newLen);
            yylval.tree->setStringValue(escapeChar, false);
            yylval.tree->setNumValue(newLen); // Storing length of string in nvalue to avoid null values messing stuff up.
			break;
		case BOOLCONST:
            (strcmp("true", svalue) == 0) ? yylval.tree->setNumValue(1) : yylval.tree->setNumValue(0);
			break;
			
	}
	
	return tokenClass;
}

%}

%option noyywrap

%%
\n							{ lineNum++;  } /* Increment line on new line */
\/\/[^\n]* { } 				/* Ignore comments */
static 						{ return setValue(lineNum, STATIC, yytext); }
int  						{ return setValue(lineNum, INT, yytext); }
bool 						{ return setValue(lineNum, BOOL, yytext); }
char 						{ return setValue(lineNum, CHAR, yytext); }
if 							{ return setValue(lineNum, IF, yytext); }
else 						{ return setValue(lineNum, ELSE, yytext); }
then                      	{ return setValue(lineNum, THEN, yytext); }
while 						{ return setValue(lineNum, WHILE, yytext); }
do 							{ return setValue(lineNum, DO, yytext); }
for 						{ return setValue(lineNum, FOR, yytext); }
to                        	{ return setValue(lineNum, TO, yytext); }
by                          { return setValue(lineNum, BY, yytext); }
return 						{ return setValue(lineNum, RETURN, yytext); }
break 						{ return setValue(lineNum, BREAK, yytext); }
and 						{ return setValue(lineNum, AND, yytext); }
or 							{ return setValue(lineNum, OR, yytext); }
not 						{ return setValue(lineNum, NOT, yytext); }
true	 					{ return setValue(lineNum, BOOLCONST, yytext); }
false	 					{ return setValue(lineNum, BOOLCONST, yytext); }
":<:"                       { return setValue(lineNum, MIN, yytext); }
":>:"                       { return setValue(lineNum, MAX, yytext); }
== 							{ return setValue(lineNum, EQ, yytext); }
\<= 						{ return setValue(lineNum, LEQ, yytext); }
!= 							{ return setValue(lineNum, NEQ, yytext); }
-= 							{ return setValue(lineNum, SUBASS, yytext); }
>= 							{ return setValue(lineNum, GEQ, yytext); }
\+= 						{ return setValue(lineNum, ADDASS, yytext); }
\*= 						{ return setValue(lineNum, MULASS, yytext); }
\/= 						{ return setValue(lineNum, DIVASS, yytext); }
\-\- 						{ return setValue(lineNum, DEC, yytext); }
\+\+ 						{ return setValue(lineNum, INC, yytext); }
[<>=\*\-\?\+\/%\[\]!&|] 	{ return setValue(lineNum, yytext[0], yytext); } /* Single char operator */
[A-Za-z\_][A-Za-z\_0-9]*  	{ return setValue(lineNum, ID, yytext); } /* Identifiers */
[0-9]+          			{ return setValue(lineNum, NUMCONST, yytext); } /* Numeric constants */
\'(\\.|[^\\'\n])*\'  		{ return setValue(lineNum, CHARCONST, yytext); } /* Character constants */
\"(\\.|[^\\"\n])*\" 		{ return setValue(lineNum, STRINGCONST, yytext); } /* String constants */
[{}\(\),;:] 				{ return setValue(lineNum, yytext[0], yytext); } /* Syntax */
\'\' 						{ printf("ERROR(%d): Empty character ''. Characters ignored.\n", lineNum); numErrors++; }
[^ \t] 						{ printf("ERROR(%d): Invalid or misplaced input character: '%c'. Character Ignored.\n", lineNum, yytext[0]); numErrors++; }
[ \t] {}
%%
