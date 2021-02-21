#include "util.h"

/*	Declarations
 */
TreeNode *newDeclNode(DeclKind kind, ExpType type,
                      TokenData *token,
                      TreeNode *c0,
                      TreeNode *c1,
                      TreeNode *c2) {
	TreeNode *node = new TreeNode;
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
TreeNode *newExpNode(ExpKind kind,
                      TokenData *token,
                      TreeNode *c0,
                      TreeNode *c1,
                      TreeNode *c2) {
	TreeNode *node = (TreeNode*) malloc(sizeof(TreeNode));
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


void printTree(TreeNode *tree, int nChild, int nSibling, bool isChild, bool isSibling, string formatStr) {
	if (!tree) return;
    // cout << "Here" << endl;
	string printVal = "";
	if(isChild) formatStr += ".   "; printVal += (formatStr + "Child: " + to_string(nChild) + " ");
	if(isSibling) formatStr += ".   "; printVal += (formatStr + "Sibling: " + to_string(nChild) + " ");

	switch(tree->subkind.decl) {
		case VarK:
            // cout << "before print" << endl;
			printVal += ("VarK: [line: " + to_string(tree->lineno) + " ]");
			cout << printVal << endl;
            break;
	}
	// switch (tree->subkind) {
	// 	case DeclK:
	// 		switch(DeclK)
	// }
     //           printVal += ("Break [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case ReturnK:

     //           printVal += ("Return [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case ElsifK:
     //           printVal += ("Elsif [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case LoopK:
     //           printVal += ("Loop [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case LoopForeverK:
     //           printVal += ("LoopForever [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case WhileK:
     //           printVal += ("While [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case RangeK:
     //           printVal += ("Range [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case IfK:
     //           printVal += ("If [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;
          
     //      case CompoundK:
     //           printVal += ("Compound [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case AssignK:
     //           printVal += ("Assign: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;


     //      case OpK:
     //           printVal += ("Op: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;


     //      case CallK:
     //           printVal += ("Call: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;

     //      case IdK:
     //           printVal += ("Id: " + string(tree->token->tokenstr) + " [line: " + to_string(tree->token->linenum) + "]");
     //           cout << printVal << endl;
     //           break;
     // }
     printTree(tree->child[1], 0, -1, true, false, formatStr);
     // printTree(tree->child[1], 1, -1, true, false, formatStr);
     // cout << "after 2 child" << endl;
     // printTree(tree->child[2], 2, -1, true, false, formatStr);
     // cout << "after 3 child" << endl;

     nSibling++;
     printTree(tree->sibling, 0, nSibling, false, true, formatStr);
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
