#include "util.h"

#include <iostream>

using namespace std;

TokenData* newTokenData(int tokenclass, int linenum,
						char* tokenstr,
						int idValue,
						int numValue,
						char* strValue);


int main() {
	TokenData* token = newTokenData(1, 2, "token string", 3, 4, "string value");
	TreeNode* declNode = newDeclNode(VarK, Void, token);

	switch(declNode->subkind.decl) {
		case VarK:
			cout << "It is VarK" << endl;
			break;
		
		case FuncK:
			cout << "It is FuncK" << endl;
			break;
		
		case ParamK:
			cout << "It is ParamK" << endl;
			break;
	}

	return 0;
}

TokenData* newTokenData(int tokenclass, int linenum,
						char* tokenstr,
						int idValue,
						int numValue,
						char* strValue) {
	TokenData* newToken = (TokenData*) malloc(sizeof(TokenData));
	newToken->tokenclass = tokenclass;
	linenum = linenum;
	tokenstr = tokenstr;
	idValue = idValue;
	numValue = numValue;
	strValue = strValue;

	return newToken;
}