* C- Generated Code
* Author: Oshan Karki
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION input
  1:     ST  3,-1(1)	Store return address 
  2:     IN  2,2,2	Grab int input 
  3:     LD  3,-1(1)	Load return address 
  4:     LD  1,0(1)	Adjust fp 
  5:    JMP  7,0(3)	Return 
* END FUNCTION input
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION output
  6:     ST  3,-1(1)	Store return address 
  7:     LD  3,-2(1)	Load parameter 
  8:    OUT  3,3,3	Output integer 
  9:     LD  3,-1(1)	Load return address 
 10:     LD  1,0(1)	Adjust fp 
 11:    JMP  7,0(3)	Return 
* END FUNCTION output
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputb
 12:     ST  3,-1(1)	Store return address 
 13:    INB  2,2,2	Grab bool input 
 14:     LD  3,-1(1)	Load return address 
 15:     LD  1,0(1)	Adjust fp 
 16:    JMP  7,0(3)	Return 
* END FUNCTION inputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputb
 17:     ST  3,-1(1)	Store return address 
 18:     LD  3,-2(1)	Load parameter 
 19:   OUTB  3,3,3	Output bool 
 20:     LD  3,-1(1)	Load return address 
 21:     LD  1,0(1)	Adjust fp 
 22:    JMP  7,0(3)	Return 
* END FUNCTION outputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputc
 23:     ST  3,-1(1)	Store return address 
 24:    INC  2,2,2	Grab char input 
 25:     LD  3,-1(1)	Load return address 
 26:     LD  1,0(1)	Adjust fp 
 27:    JMP  7,0(3)	Return 
* END FUNCTION inputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputc
 28:     ST  3,-1(1)	Store return address 
 29:     LD  3,-2(1)	Load parameter 
 30:   OUTC  3,3,3	Output char 
 31:     LD  3,-1(1)	Load return address 
 32:     LD  1,0(1)	Adjust fp 
 33:    JMP  7,0(3)	Return 
* END FUNCTION outputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outnl
 34:     ST  3,-1(1)	Store return address 
 35:  OUTNL  3,3,3	Output a newline 
 36:     LD  3,-1(1)	Load return address 
 37:     LD  1,0(1)	Adjust fp 
 38:    JMP  7,0(3)	Return 
* END FUNCTION outnl
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,11(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable a in Local 
 42:    LDC  3,22(6)	Load of type int constant 
 43:     ST  3,-3(1)	Assigning variable b in Local 
 44:    LDC  3,13(6)	Load of type int constant 
 45:     ST  3,-4(1)	Assigning variable c in Local 
* CALL output
 46:     ST  1,-5(1)	Store fp in ghost frame for output 
 47:     LD  3,-2(1)	Load variable a into accumulator 
 48:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 49:    LDA  1,-5(1)	Move the fp to the new frame 
 50:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 51:    JMP  7,-46(7)	Call function 
 52:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 53:     ST  1,-5(1)	Store fp in ghost frame for output 
 54:     LD  3,-2(1)	Load variable a into accumulator 
 55:     ST  3,-8(1)	Push left side onto temp variable stack 
 56:     LD  3,-3(1)	Load variable b into accumulator 
 57:     LD  4,-8(1)	Pop left hand side into AC1 
 58:    MUL  3,4,3	* Multiplication Operation 
 59:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 60:    LDA  1,-5(1)	Move the fp to the new frame 
 61:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 62:    JMP  7,-57(7)	Call function 
 63:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 64:     ST  1,-5(1)	Store fp in ghost frame for output 
 65:     LD  3,-2(1)	Load variable a into accumulator 
 66:     ST  3,-8(1)	Push left side onto temp variable stack 
 67:     LD  3,-3(1)	Load variable b into accumulator 
 68:     ST  3,-9(1)	Push left side onto temp variable stack 
 69:     LD  3,-4(1)	Load variable c into accumulator 
 70:     LD  4,-9(1)	Pop left hand side into AC1 
 71:    DIV  3,4,3	/ Division operation 
 72:     LD  4,-8(1)	Pop left hand side into AC1 
 73:    SUB  3,4,3	- Subtraction Operation 
 74:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 75:    LDA  1,-5(1)	Move the fp to the new frame 
 76:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 77:    JMP  7,-72(7)	Call function 
 78:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 79:     ST  1,-5(1)	Store fp in ghost frame for output 
 80:     LD  3,-2(1)	Load variable a into accumulator 
 81:     ST  3,-8(1)	Push left side onto temp variable stack 
 82:     LD  3,-3(1)	Load variable b into accumulator 
 83:     ST  3,-9(1)	Push left side onto temp variable stack 
 84:     LD  3,-4(1)	Load variable c into accumulator 
 85:     LD  4,-9(1)	Pop left hand side into AC1 
 86:    DIV  3,4,3	/ Division operation 
 87:     LD  4,-8(1)	Pop left hand side into AC1 
 88:    SUB  3,4,3	- Subtraction Operation 
 89:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-5(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-87(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 94:    LDC  2,0(6)	Set return value to 0 
 95:     LD  3,-1(1)	Load return address 
 96:     LD  1,0(1)	Adjust fp 
 97:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,97(7)	Jump to init [backpatch] 
* INIT
 98:    LDA  1,0(0)	set first frame at end of globals 
 99:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
100:    LDA  3,1(7)	Return address in ac 
101:    JMP  7,-63(7)	Jump to main 
102:   HALT  0,0,0	DONE! 
* END INIT
