/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT = 258,
     ID = 259,
     BOOL = 260,
     BY = 261,
     BOOLCONST = 262,
     NUMCONST = 263,
     MIN = 264,
     MAX = 265,
     ADDASS = 266,
     SUBASS = 267,
     DIVASS = 268,
     MULASS = 269,
     EQ = 270,
     LEQ = 271,
     GEQ = 272,
     NEQ = 273,
     AND = 274,
     OR = 275,
     NOT = 276,
     IF = 277,
     THEN = 278,
     TO = 279,
     ELSIF = 280,
     ELSE = 281,
     WHILE = 282,
     FOR = 283,
     DO = 284,
     BREAK = 285,
     LOOP = 286,
     RANGE = 287,
     FOREVER = 288,
     STATIC = 289,
     RETURN = 290,
     CHAR = 291,
     DEC = 292,
     INC = 293,
     CHARCONST = 294,
     STRINGCONST = 295,
     UNDEFINED = 296
   };
#endif
/* Tokens.  */
#define INT 258
#define ID 259
#define BOOL 260
#define BY 261
#define BOOLCONST 262
#define NUMCONST 263
#define MIN 264
#define MAX 265
#define ADDASS 266
#define SUBASS 267
#define DIVASS 268
#define MULASS 269
#define EQ 270
#define LEQ 271
#define GEQ 272
#define NEQ 273
#define AND 274
#define OR 275
#define NOT 276
#define IF 277
#define THEN 278
#define TO 279
#define ELSIF 280
#define ELSE 281
#define WHILE 282
#define FOR 283
#define DO 284
#define BREAK 285
#define LOOP 286
#define RANGE 287
#define FOREVER 288
#define STATIC 289
#define RETURN 290
#define CHAR 291
#define DEC 292
#define INC 293
#define CHARCONST 294
#define STRINGCONST 295
#define UNDEFINED 296




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 18 "parser.y"
{
    TokenData *tokenData;
    int value;
}
/* Line 1529 of yacc.c.  */
#line 136 "parser.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

