#include "util.h"

/*	Declarations
 */
TreeNode *newDeclNode(NodeKind nodekind, DeclKind kind, ExpType type,
                      TokenData *token,
                      TreeNode *c0,
                      TreeNode *c1,
                      TreeNode *c2) {
	TreeNode *node = new TreeNode;
    node->nodekind = nodekind;
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
TreeNode *newStmtNode(NodeKind nodekind, StmtKind kind,
                      TokenData *token,
                      TreeNode *c0,
                      TreeNode *c1,
                      TreeNode *c2) {
	TreeNode *node = (TreeNode*) malloc(sizeof(TreeNode));
    node->nodekind = nodekind;
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
TreeNode *newExpNode(NodeKind nodekind, ExpKind kind,
                      TokenData *token,
                      TreeNode *c0,
                      TreeNode *c1,
                      TreeNode *c2) {
	TreeNode *node = (TreeNode*) malloc(sizeof(TreeNode));
    node->nodekind = nodekind;
	node->subkind.exp = kind;
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

// void printTree(TreeNode *node, int childNum, int siblingNum) {
//     if (!node) return;

//     if (siblingNum > 0) cout << "Sibling: " << siblingNum;

//     switch(node->subkind.decl) {
//         case VarK:
//             // cout << "before print" << endl;
//             // printVal += ("Var: [line: " + to_string(tree->lineno) + " ]");
//             // cout << printVal << endl;
//             cout << "Var: " << node->token->tokenstr << endl;
//             break;
//     }

//     for(int i = 0; i < MAXCHILDREN; i++){
//         printTree(node->child[i], childNum++, siblingNum);
//     }
//     printTree(node->sibling, 0, siblingNum++);
// }

void printTree(TreeNode *node, int nChild, int nSibling, bool isChild, bool isSibling, string formatStr) {
	if (!node) return;
	string printVal = "";
	if(isChild) {
        formatStr += ".   "; 
        printVal += (formatStr + "Child: " + to_string(nChild) + " ");
    }
	if(isSibling) {
        formatStr += ".   "; 
        printVal += (formatStr + "Sibling: " + to_string(nChild) + " ");
    }
	switch(node->subkind.decl) {
		case VarK:
			printVal += ("Var: " + string(node->token->tokenstr)  + " [line: " + to_string(node->lineno) + " ]");
			cout << printVal << endl;
            break;
	}
	
    for (int i = 0; i < MAXCHILDREN; i++){
     printTree(node->child[i], 0, -1, true, false, formatStr);
    }

     nSibling++;
     printTree(node->sibling, 0, nSibling, false, true, formatStr);
}

/*
TreeNode * newNode( NodeKind general_kind, Kind specific_kind, Type t, int line, TokenData * token ) {
	TreeNode * treeItem = (TreeNode *) malloc(sizeof(TreeNode));;
	treeItem->nodetype = t;
	treeItem->lineno = line;
	treeItem->nodekind = general_kind;
	treeItem->kind = specific_kind;

	if(token != NULL) treeItem->token = token;

	return treeItem;
}
*/
