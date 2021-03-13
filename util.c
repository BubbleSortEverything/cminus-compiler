#include "util.h"

/*	Declarations
 */
TreeNode *newDeclNode(DeclKind kind, ExpType type,
                      TokenData *token,
                      TreeNode *c0,
                      TreeNode *c1,
                      TreeNode *c2) {
	TreeNode *node = new TreeNode;
	node->nodekind = DeclK;
	node->subkind.decl = kind;
	node->expType = type;
	node->lineno = token->linenum;
	node->child[0] = c0;
	node->child[1] = c1;
	node->child[2] = c2;

	if(token!=NULL) node->token = token;

	return node;
}

/*	Statements
 */
TreeNode *newStmtNode(StmtKind kind,
                      TokenData *token,
                      TreeNode *c0,
                      TreeNode *c1,
                      TreeNode *c2) {
	TreeNode *node = new TreeNode;
	node->nodekind = StmtK;
	node->subkind.stmt = kind;
	node->expType = UndefinedType;
	node->lineno = token->linenum;
	node->child[0] = c0;
	node->child[1] = c1;
	node->child[2] = c2;
	
	if(token!=NULL) node->token = token;

	return node;
}

/*	Expressions
 */
TreeNode *newExpNode(ExpKind kind, ExpType type,
                      TokenData *token,
                      TreeNode *c0,
                      TreeNode *c1,
                      TreeNode *c2) {
	TreeNode *node = (TreeNode*) malloc(sizeof(TreeNode));
	node->nodekind = ExpK;
	node->subkind.exp = kind;
	node->expType = type;
	node->lineno = token->linenum;
	node->child[0] = c0;
	node->child[1] = c1;
	node->child[2] = c2;
	
	if(token!=NULL) node->token = token;

	return node;
}

// add a TreeNode to a list of siblings.
// Adding a NULL to the list is probably a programming error!
TreeNode *addSibling(TreeNode *t, TreeNode *s) {
    if (s==NULL) {
        printf("ERROR(SYSTEM): never add a NULL to a sibling list.\n");
        exit(1);
    }
    if (t!=NULL) { 
        TreeNode *tmp;
        tmp = t;
        while (tmp->sibling!=NULL) tmp = tmp->sibling;
        tmp->sibling = s;
        return t;
    }
    return s;
}

TreeNode *addChild(TreeNode *p, TreeNode *c){
	for(int i = 0; i < MAXCHILDREN; i++){
		if(p->child[i] == NULL) {
			p->child[i] = c;
			return p;
		}
	}
	printf("ERROR(SYSTEM): exceeded maximum number of children.\n");
    exit(1);
}

// pass the static and type attribute down the sibling list
void setType(TreeNode *t, ExpType type, bool isStatic) {
    while (t) {
        t->expType = type;
        t->isStatic = isStatic;

        t = t->sibling;
    }
}

void printTree(TreeNode *node, string childIndent, int nSibling, bool typeFlag){
	if(!node) return;

	switch(node->nodekind) {
		case DeclK:
			cout << declString(node) << endl;
			break;
		case StmtK:
			cout << stmtString(node) << endl;
			break;
		case ExpK:
			cout << expString(node) << endl;
			break;
	}

	for (int i = 0; i < MAXCHILDREN; i++){
		string indent = ".   ";
		indent += childIndent;
		if (node->child[i] != NULL){
			printf("%sChild: %d of type ", indent.c_str(), i);
			printTree(node->child[i], indent, 0, typeFlag);
		}
    }

	if (node->sibling != NULL) {
		printf("%sSibling: %d ", childIndent.c_str(), ++nSibling);
		printTree(node->sibling, childIndent, nSibling, typeFlag);
	}

	return;
}

string declString(TreeNode *node) {
	string str = "";
	string arr = node->isArray ? " is array" : "";
	switch(node->subkind.decl) {
		case VarK:
			str = "Var: " + string(node->token->tokenstr) + arr + " of type " + typeString(node->expType) + " [line: " + to_string(node->lineno) + "]";
            break;
        case FuncK:
			str = "Func: " + string(node->token->tokenstr) + " returns type " + typeString(node->expType) + " [line: " + to_string(node->lineno) + "]";
			break;
		case ParamK:
			str = "Parm: " + string(node->token->tokenstr) + arr + " of type " + typeString(node->expType) + " [line: " + to_string(node->lineno) + "]";
			break;
	}
	return str;
}

string expString(TreeNode *node) {
	string str = "", type = "", tStr = "";
	string arr = node->isArray ? " is array" : "";
	switch(node->subkind.exp) {
		case ConstantK:
			type = typeString(node->expType);
			tStr = constValue(node->expType, node);
			str = "Const" + arr + " of type " + type + ": " + tStr + " [line: " + to_string(node->lineno) + "]";
            break;
        case OpK:
        	str = "Op: " + string(node->token->tokenstr) + " [line: " + to_string(node->lineno) + "]";
        	break;
        case IdK:
        	str = "Id: " + string(node->token->tokenstr) + " [line: " + to_string(node->lineno) + "]";
        	break;
        case CallK:
        	str = "Call: " + string(node->token->tokenstr) + " [line: " + to_string(node->lineno) + "]";
        	break;
        case AssignK:
        	str = "Assign: " + string(node->token->tokenstr) + " [line: " + to_string(node->lineno) + "]";
        	break;
	}
	return str;
}

string constValue(ExpType type, TreeNode* node) {
	string str = "";
	switch(type) {
		case Integer:
			str = to_string(node->token->numValue);
			break;
		case Char:
			if (node->isArray) str = string(node->token->tokenstr);
			else str = "'" + string(node->token->strValue) + "'";
			break;
		default:
			str = string(node->token->tokenstr);
	}
	return str;
}

string stmtString(TreeNode *node) {
	string str = "";
	switch(node->subkind.stmt) {
		case CompoundK:
			str = "Compound [line: " + to_string(node->lineno) + "]";
			break;
		case IfK:
			str = "If [line: " + to_string(node->lineno) + "]";
			break;
		case WhileK:
			str = "While [line: " + to_string(node->lineno) + "]";
			break;
		case ForK:
			str = "For [line: " + to_string(node->lineno) + "]";
			break;
		case RangeK:
			str = "Range [line: " + to_string(node->lineno) + "]";
			break;
		case ReturnK:
			str = "Return [line: " + to_string(node->lineno) + "]";
			break;
		case BreakK:
			str = "Break [line: " + to_string(node->lineno) + "]";
			break;
	}
	return str;
}

string typeString(ExpType type) {
	string str = "";
	switch(type) {
		case Integer:
			str = "int";
			break;
		case Boolean:
			str = "bool";
			break;
		case Void:
			str = "void";
			break;
		case Char:
			str = "char";
			break;
	}
	return str;
}
