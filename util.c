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
	TreeNode *node = (TreeNode*) malloc(sizeof(TreeNode));
	node->nodekind = StmtK;
	node->subkind.stmt = kind;
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

// pass the static and type attribute down the sibling list
void setType(TreeNode *t, ExpType type, bool isStatic) {
    while (t) {
        t->expType = type;
        t->isStatic = isStatic;

        t = t->sibling;
    }
}

void printTree(TreeNode *node, int indent, int nSibling){
	if(!node) return;

	switch(node->nodekind) {
		case DeclK:
			if(nSibling > 0) cout << "Sibling: " << nSibling << " ";
			cout << declString(node) << endl;
			nSibling++;
			break;
		case StmtK:
			nSibling++;
			cout << declString(node) << endl;
			break;
	}

	for (int i = 0; i < MAXCHILDREN; i++){
		if (node->child[i] != NULL){
			printf("%*s Child: %d\n", indent*2, ". ", i);
			printTree(node->child[i], indent++, nSibling);
		}
    }

	if (node->sibling != NULL) {
		// if (nSibling > 0) cout << "Sibling: " << nSibling << " ";
		printTree(node->sibling, indent, nSibling);
	}

}

string declString(TreeNode *node) {
	string str = "";
	string arr = node->isArray ? " is array" : "";
	switch(node->subkind.decl) {
		case VarK:
			str = "Var: " + string(node->token->tokenstr) + arr + typeString(node->expType) + " [line: " + to_string(node->lineno) + "]";
            break;
	}
	return str;
}

string typeString(ExpType type) {
	string str = "";
	switch(type) {
		case Integer:
			str = " of type Integer";
			break;
		case Void:
			str = "Void";
			break;
	}
	return str;
}