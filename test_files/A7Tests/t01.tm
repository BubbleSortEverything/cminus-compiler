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
* BEGIN IF BLOCK
 40:     LD  3,-2(1)	Load variable n into accumulator 
 41:     ST  3,-4(1)	Push left side onto temp variable stack 
 42:    LDC  3,2(6)	Load of type int constant 
 43:     LD  4,-4(1)	Pop left hand side into AC1 
 44:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
 46:     LD  3,-3(1)	Load base address of array k 
 47:     LD  3,-2(1)	Load variable n into accumulator 
 48:     ST  3,-4(1)	Push array index onto temp stack 
 49:    LDC  3,1(6)	Load of type int constant 
 50:     LD  4,-4(1)	Pop array index into AC1 
 51:     LD  5,-3(1)	Load base address of array k into AC2 
 52:    SUB  5,5,4	Compute offset for array 
 53:     ST  3,0(5)	Store variable k from AC into loc from AC2 
* END COMPOUND
* IF JUMP TO END
 45:    JZR  3,9(7)	IF JMP TO ELSE 
* COMPOUND
 55:     LD  3,-3(1)	Load base address of array k 
 56:     LD  3,-2(1)	Load variable n into accumulator 
 57:     ST  3,-4(1)	Push array index onto temp stack 
 58:     LD  3,-2(1)	Load variable n into accumulator 
 59:     ST  3,-5(1)	Push left side onto temp variable stack 
* CALL factorial
 60:     ST  1,-6(1)	Store fp in ghost frame for factorial 
 61:     LD  3,-2(1)	Load variable n into accumulator 
 62:     ST  3,-10(1)	Push left side onto temp variable stack 
 63:    LDC  3,1(6)	Load of type int constant 
 64:     LD  4,-10(1)	Pop left hand side into AC1 
 65:    SUB  3,4,3	- Subtraction Operation 
 66:     ST  3,-8(1)	Push parameter onto new frame 
 67:     LD  3,-3(1)	Load base address of array k 
 68:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-6(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-33(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL factorial
 73:     LD  4,-5(1)	Pop left hand side into AC1 
 74:    MUL  3,4,3	* Multiplication Operation 
 75:     LD  4,-4(1)	Pop array index into AC1 
 76:     LD  5,-3(1)	Load base address of array k into AC2 
 77:    SUB  5,5,4	Compute offset for array 
 78:     ST  3,0(5)	Store variable k from AC into loc from AC2 
* END COMPOUND
 54:    LDA  7,24(7)	JUMP TO END 
* END IF
 79:     LD  3,-3(1)	Load base address of array k 
 80:     LD  3,-2(1)	Load variable n into accumulator 
 81:     LD  5,-3(1)	Load base address of array k into AC2 
 82:    SUB  5,5,3	Compute offset for array 
 83:     LD  3,0(5)	Load array element k from AC into loc from AC2 
 84:    LDA  2,0(3)	Copy accumulator to return register 
 85:     LD  3,-1(1)	Load return address 
 86:     LD  1,0(1)	Adjust fp 
 87:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 88:    LDC  2,0(6)	Set return value to 0 
 89:     LD  3,-1(1)	Load return address 
 90:     LD  1,0(1)	Adjust fp 
 91:    JMP  7,0(3)	Return 
* END FUNCTION factorial
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 92:     ST  3,-1(1)	Store return address 
* COMPOUND
 93:    LDC  3,20(6)	Load size of k into AC 
 94:     ST  3,-3(1)	Store size of k in data memory 
 95:    LDC  3,10(6)	Load of type int constant 
 96:     ST  3,-2(1)	Assigning variable n in Local 
* CALL factorial
 97:     ST  1,-24(1)	Store fp in ghost frame for factorial 
 98:     LD  3,-2(1)	Load variable n into accumulator 
 99:     ST  3,-26(1)	Push parameter onto new frame 
100:    LDA  3,-4(1)	Load base address of array k 
101:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
102:    LDA  1,-24(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-66(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL factorial
106:     ST  3,-2(1)	Assigning variable n in Local 
* CALL output
107:     ST  1,-24(1)	Store fp in ghost frame for output 
108:     LD  3,-2(1)	Load variable n into accumulator 
109:     ST  3,-26(1)	Push parameter onto new frame 
* Begin call
110:    LDA  1,-24(1)	Move the fp to the new frame 
111:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
112:    JMP  7,-107(7)	Call function 
113:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
114:     ST  1,-24(1)	Store fp in ghost frame for outnl 
* Begin call
115:    LDA  1,-24(1)	Move the fp to the new frame 
116:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
117:    JMP  7,-84(7)	Call function 
118:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
119:    LDC  2,0(6)	Set return value to 0 
120:     LD  3,-1(1)	Load return address 
121:     LD  1,0(1)	Adjust fp 
122:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,122(7)	Jump to init [backpatch] 
* INIT
123:    LDA  1,0(0)	set first frame at end of globals 
124:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
125:    LDA  3,1(7)	Return address in ac 
126:    JMP  7,-35(7)	Jump to main 
127:   HALT  0,0,0	DONE! 
* END INIT
