#Compiler CS445

## LECTURE 1: Jan 13, 2021

Intro to CS445

- 7 Assignments

Importance of compilers:
    * How communication and control computers 
    * languages translate our thoughts and actions
    * example of large programs
    * intricate
    * highly reliable
    
Goals of the course:
    * Understand compiling
    * Understand some theory
    * Hands on construction of compiler

We will compile C-
- Why not a real language? Not possible in a semester.
- Why not target a real assembly language?

Dr. Heckendorn have done this a whole bunch of times and he wants to help us succeed.
It is hard. It is a lot of code.

Book:
    Expensive (if its new)

Assignments
- 7 Assignments
- non-trival assignments
- time management!
- individual work
- C and C++

Development process
- use whatever machine you want to code on
- create files of code for compiler 
- create makefile
- tar up all the files and submit them
- test machine will build using your makefile and run tests
- compare output to expected and mail it back to you at your uidaho address
- unix sdiff command (side my side difference)
- timestamp is given to each submission class has a machine that is duplicate of the test machine
- no late assignments are accepted

Grading
- percentage of points
- upper 10% you get an A
- grades are on bblearn

Passing Course
- take good notes
- show up 
- submit all your homeworks
- ask questions
    - Office hours: - 1 ) Friday class 2) email me

——————————————————————————————

## LECTURE 2: Jan 14, 2021

domain specific language —-> Machine Understands
easy to translate vs hard

FORTRAN, COBOL, LISP
no real compiler technology

executable mathematics
- precise in form and meaning
- data + process

Language Translation task:
- C++ —> intel processor (assembler)
- ratfor - Ratfor -> FORTAN
- C++ - C++ -> C

Context sensitive editing
- Context sensitive editing
- Translate formats (ex. hospital formats)
- formal framework for languages —> formal methods for translation
- condensing data —> machine learning (format)

CS Standpoint:
- Important to understand how our translaters/compilers work
- Why did the compiler do that? Why were the error like that?
- translation is key area of algorithms
- useful for understanding and practicing breaking down very hard problems.
- gives us useful tools for dealing with translation
- if you know how to build a compiler then building a compiler is a possible answer

Compiler Structure (terminology)
Source code -T —>   object code
Source Language     Target language

T = translator or compiler
It is running on a host machine (written in the host language)


    front                   back
source code         -T  —>  object code
source language         target language

Retargeting the compiler
analysis            -R —>   synthesisA  TM
analysis            -R—>    synthesisB  postscript

Intermediate Representation (IR)
Contains all the meaning 

- analysis —> IR —>  optimizations —> synthesis
- analysis —> IR —> IR optimizations —> synthesis —> Machine optimization —> synthesis

The compiler in more detail:

Analysis:
        [Source Code]
    (lexical analyser

source language

int main()
{
    int y;
    y = 34;
    if (y==9) return;
}

Token list:
int, main, (, ), {, int, y, =, 34, if, (, y, 9, ), return, }


——————————————————————————————————————————————————
##Lecture 3: January 19, 2021

FRONT END: analysis and C-
(scanner = lexical analysis) Flex.  [A1]
    [tokens]
(parser) syntax checking? is it legal? bison        [A2]
    [abstract syntax tree (AST)]
(semantic analysis) what does it mean? Is it non sense? types right         [A3 & A4]
    [AST + symbol table]

    A5 - error messaging
    
    A6 - memory management
    A7 - procedure management and var code generation

BACK END: synthesis (TM)
(intermediate code generation)
    [Intermediate representation (IR)]

BACK END2: synthesis (TM)
(target machine generation)
    [target machine code in editable  form]
(target machine optimization)
    [optimized target machine code]




use flex to break input into tokens

int main()
{
    char c: ‘x’ while for int @;
    while = 666;
    break;
    ‘x’ + true;
    outputc(c);
}


————————————————————————————————————————————————————————
## Lecture 4: January 20, 2021

(a|c)*bb*(a|c)*

(while|for)’(‘

alphabet is a, b, c

a string of the alphabet with at most one b

(a|c)*|(a|c)*b(a|c)*

“”

(a|c)*(epsilon|b)(a|c)*

Extensions to regular expression 
. matches any character
+ matches one or more
? 0 or 1 (it is optimal) case
[] character set we can mention sets of chars (aeiou) matches one char only 
    [a-z]  [0-9]        [a-z0-9]

[^] [^a-z]

[1-9][0-9]*|0)


Bison - takes a grammar - write the parser -> create yyparser()

Flex - takes regex for tokens - write the scanner -> create a program that has yylex()


———————————————————————————————————————————————————————————————
## Lecture 7: Jan 27, 2021

[“][^”][“]

“”
“d”
“dogs”
“dogs and cats”
“dogs say \”hi”\”
“dogs like the character’\””

———————————————————————————————————————————————————————————————
## Lecture 8: Feb 1, 2021

BNF:
<call> ::= ID ( <arglist> )
<arglist> ::= <args> | *epsilon*
<args> ::= <exp> | <exp>, <exp>

EXPRESSIONS
precedence: what operations are done first (most tightly bound) associativity: right to left for left to right
3-4-5

———————————————————————————————————————————————————————————————
Lecture 9: Feb 22, 2021

Things necessary for assignment 3:

Types: 



## HW5:

Goal:  Reporting real errors. (Error Recovery)
- We will be supplied with codes to make our assignment easier


* What do we want?
->  Principles of ERROR RECOVERY
    1. Determine the point of error as soon as possible.
    2. parse as much of the code as possible
    3. only true are reported. distracted by colateral errors.
    4. avoid infinite loops
    5. be informative. most under apprecited part of *ANY* software error reporting.
    6. enough errors to point out multiple problems if they exist without cascading
——————————————————————

Too hard.

### Genral Strategy
    * parse stack (state from a state machine is here)
    * input token stream


** Objective is to keep parsing ** 

### things that might help:
    * Custom error responses for empty square (state+input) in the parser table
    * modifying the grammar to be more robust in error recovery:
        * synchronizing tokens like ; in C++

    in C-:
     int fred(int x, y; char c) blah...

    * what about LR parser? What can we do as an error recovery process?
        * error recovery algorithm:
            0. report an error.
            1. pop states from stack until a reduce is found.
            2. top of stack gives me a reduce? If yes then reduce a pretend nothing happened.
            3. If I can reduce or shift on a given input choose shift.
            4. If not then remove the next token from input

        * In Bison:
        stmt : stmt exp ';'
             | stmt error ';'
             | exp ';'
             | error ';'    { yyerrok }
             ;

            stmt x + y  input: z ;
            stmt error  input: z ;
            stmt error  input: ;
            stmt error ; input:
            stmt !!

        1. discard off hte parse stack until it finds a place where an error    token is allowed.
        2. shift the error on the stack
        3. discard input until it makes sense
        4. now U turn off error reporting for tokens.  3 good tokens accepted.


### HW6 continuum
    * Keep working on string len.






















































