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
* FUNCTION factorial
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,1(6)	Load of type int constant 
 41:     ST  3,-3(1)	Assigning variable i in Local 
 42:     ST  3,-4(1)	Assigning variable f in Local 
* Beginning WHILE statement
 43:     LD  3,-3(1)	Load variable i into accumulator 
 44:     ST  3,-5(1)	Push left side onto temp variable stack 
 45:     LD  3,-2(1)	Load variable n into accumulator 
 46:     LD  4,-5(1)	Pop left hand side into AC1 
 47:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* CALL output
 49:     ST  1,-5(1)	Store fp in ghost frame for output 
 50:     LD  3,-3(1)	Load variable i into accumulator 
 51:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 52:    LDA  1,-5(1)	Move the fp to the new frame 
 53:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 54:    JMP  7,-49(7)	Call function 
 55:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 56:     LD  3,-4(1)	Load variable f into accumulator 
 57:     ST  3,-5(1)	Push left side onto temp variable stack 
 58:     LD  3,-3(1)	Load variable i into accumulator 
 59:     LD  4,-5(1)	Pop left hand side into AC1 
 60:    MUL  3,4,3	* Multiplication Operation 
 61:     ST  3,-4(1)	Assigning variable f in Local 
 62:    LDC  3,1(6)	Load of type int constant 
 63:     LD  4,-3(1)	Load lhs variable 
 64:    ADD  3,4,3	+= operation 
 65:     ST  3,-3(1)	Assigning variable i in Local 
* END COMPOUND
 66:    JMP  7,-24(7)	Go to L1 
 48:    JZR  3,18(7)	JMP if condition is false 
* End WHILE statement
 67:     LD  3,-4(1)	Load variable f into accumulator 
 68:    LDA  2,0(3)	Copy accumulator to return register 
 69:     LD  3,-1(1)	Load return address 
 70:     LD  1,0(1)	Adjust fp 
 71:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 72:    LDC  2,0(6)	Set return value to 0 
 73:     LD  3,-1(1)	Load return address 
 74:     LD  1,0(1)	Adjust fp 
 75:    JMP  7,0(3)	Return 
* END FUNCTION factorial
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 76:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL input
 77:     ST  1,-3(1)	Store fp in ghost frame for input 
* Begin call
 78:    LDA  1,-3(1)	Move the fp to the new frame 
 79:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 80:    JMP  7,-80(7)	Call function 
 81:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
 82:     ST  3,-2(1)	Assigning variable n in Local 
* CALL factorial
 83:     ST  1,-3(1)	Store fp in ghost frame for factorial 
 84:     LD  3,-2(1)	Load variable n into accumulator 
 85:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 86:    LDA  1,-3(1)	Move the fp to the new frame 
 87:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 88:    JMP  7,-50(7)	Call function 
 89:    LDA  3,0(2)	Save return result in accumulator 
* END CALL factorial
 90:     ST  3,-2(1)	Assigning variable n in Local 
* CALL output
 91:     ST  1,-3(1)	Store fp in ghost frame for output 
 92:     LD  3,-2(1)	Load variable n into accumulator 
 93:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 94:    LDA  1,-3(1)	Move the fp to the new frame 
 95:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 96:    JMP  7,-91(7)	Call function 
 97:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 98:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 99:    LDA  1,-3(1)	Move the fp to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-68(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
103:    LDC  2,0(6)	Set return value to 0 
104:     LD  3,-1(1)	Load return address 
105:     LD  1,0(1)	Adjust fp 
106:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,106(7)	Jump to init [backpatch] 
* INIT
107:    LDA  1,0(0)	set first frame at end of globals 
108:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
109:    LDA  3,1(7)	Return address in ac 
110:    JMP  7,-35(7)	Jump to main 
111:   HALT  0,0,0	DONE! 
* END INIT
