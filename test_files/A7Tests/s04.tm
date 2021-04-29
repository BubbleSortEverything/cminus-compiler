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
* FUNCTION dog
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 40:     LD  3,-2(1)	Load variable d into accumulator 
 41:     ST  3,-3(1)	Push left side onto temp variable stack 
 42:    LDC  3,0(6)	Load of type int constant 
 43:     LD  4,-3(1)	Pop left hand side into AC1 
 44:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* CALL output
 46:     ST  1,-3(1)	Store fp in ghost frame for output 
 47:     LD  3,-1(0)	Load variable s into accumulator 
 48:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 49:    LDA  1,-3(1)	Move the fp to the new frame 
 50:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 51:    JMP  7,-46(7)	Call function 
 52:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 45:    JZR  3,8(7)	IF JMP TO ELSE 
 54:     LD  3,-2(1)	Load variable d into accumulator 
 55:     ST  3,-1(0)	Assigning variable s in LocalStatic 
 53:    LDA  7,2(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
 56:    LDC  2,0(6)	Set return value to 0 
 57:     LD  3,-1(1)	Load return address 
 58:     LD  1,0(1)	Adjust fp 
 59:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION cat
 60:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 61:     LD  3,-2(1)	Load variable c into accumulator 
 62:     ST  3,-3(1)	Push left side onto temp variable stack 
 63:    LDC  3,0(6)	Load of type int constant 
 64:     LD  4,-3(1)	Pop left hand side into AC1 
 65:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* CALL output
 67:     ST  1,-3(1)	Store fp in ghost frame for output 
 68:     LD  3,-2(0)	Load variable s into accumulator 
 69:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 70:    LDA  1,-3(1)	Move the fp to the new frame 
 71:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 72:    JMP  7,-67(7)	Call function 
 73:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 66:    JZR  3,8(7)	IF JMP TO ELSE 
 75:     LD  3,-2(1)	Load variable c into accumulator 
 76:     ST  3,-2(0)	Assigning variable s in LocalStatic 
 74:    LDA  7,2(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
 77:    LDC  2,0(6)	Set return value to 0 
 78:     LD  3,-1(1)	Load return address 
 79:     LD  1,0(1)	Adjust fp 
 80:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 81:     ST  3,-1(1)	Store return address 
* COMPOUND
 82:    LDC  3,333(6)	Load of type int constant 
 83:     ST  3,0(0)	Assigning variable s in Global 
* CALL dog
 84:     ST  1,-2(1)	Store fp in ghost frame for dog 
 85:    LDC  3,111(6)	Load of type int constant 
 86:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 87:    LDA  1,-2(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-51(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL cat
 91:     ST  1,-2(1)	Store fp in ghost frame for cat 
 92:    LDC  3,222(6)	Load of type int constant 
 93:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 94:    LDA  1,-2(1)	Move the fp to the new frame 
 95:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 96:    JMP  7,-37(7)	Call function 
 97:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* CALL dog
 98:     ST  1,-2(1)	Store fp in ghost frame for dog 
 99:    LDC  3,0(6)	Load of type int constant 
100:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
101:    LDA  1,-2(1)	Move the fp to the new frame 
102:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
103:    JMP  7,-65(7)	Call function 
104:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL cat
105:     ST  1,-2(1)	Store fp in ghost frame for cat 
106:    LDC  3,0(6)	Load of type int constant 
107:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
108:    LDA  1,-2(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-51(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* CALL output
112:     ST  1,-2(1)	Store fp in ghost frame for output 
113:     LD  3,0(0)	Load variable s into accumulator 
114:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
115:    LDA  1,-2(1)	Move the fp to the new frame 
116:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
117:    JMP  7,-112(7)	Call function 
118:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
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
123:    LDA  1,-3(0)	set first frame at end of globals 
124:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
125:    LDA  3,1(7)	Return address in ac 
126:    JMP  7,-46(7)	Jump to main 
127:   HALT  0,0,0	DONE! 
* END INIT
