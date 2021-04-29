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
* FUNCTION fib
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
 40:     ST  1,-3(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load variable x into accumulator 
 42:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 43:    LDA  1,-3(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-40(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 47:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 48:    LDA  1,-3(1)	Move the fp to the new frame 
 49:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 50:    JMP  7,-17(7)	Call function 
 51:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
 52:     LD  3,-2(1)	Load variable x into accumulator 
 53:     ST  3,-3(1)	Push left side onto temp variable stack 
 54:    LDC  3,2(6)	Load of type int constant 
 55:     LD  4,-3(1)	Pop left hand side into AC1 
 56:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
 58:    LDC  3,1(6)	Load of type int constant 
 59:    LDA  2,0(3)	Copy accumulator to return register 
 60:     LD  3,-1(1)	Load return address 
 61:     LD  1,0(1)	Adjust fp 
 62:    JMP  7,0(3)	Return 
* IF JUMP TO END
 57:    JZR  3,6(7)	IF JMP TO ELSE 
 63:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL fib
 64:     ST  1,-3(1)	Store fp in ghost frame for fib 
 65:     LD  3,-2(1)	Load variable x into accumulator 
 66:     ST  3,-6(1)	Push left side onto temp variable stack 
 67:    LDC  3,1(6)	Load of type int constant 
 68:     LD  4,-6(1)	Pop left hand side into AC1 
 69:    SUB  3,4,3	- Subtraction Operation 
 70:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-3(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-35(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fib
 75:     ST  3,-3(1)	Push left side onto temp variable stack 
* CALL fib
 76:     ST  1,-4(1)	Store fp in ghost frame for fib 
 77:     LD  3,-2(1)	Load variable x into accumulator 
 78:     ST  3,-7(1)	Push left side onto temp variable stack 
 79:    LDC  3,2(6)	Load of type int constant 
 80:     LD  4,-7(1)	Pop left hand side into AC1 
 81:    SUB  3,4,3	- Subtraction Operation 
 82:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 83:    LDA  1,-4(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-47(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fib
 87:     LD  4,-3(1)	Pop left hand side into AC1 
 88:    ADD  3,4,3	+ Operation 
 89:    LDA  2,0(3)	Copy accumulator to return register 
 90:     LD  3,-1(1)	Load return address 
 91:     LD  1,0(1)	Adjust fp 
 92:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 93:    LDC  2,0(6)	Set return value to 0 
 94:     LD  3,-1(1)	Load return address 
 95:     LD  1,0(1)	Adjust fp 
 96:    JMP  7,0(3)	Return 
* END FUNCTION fib
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 97:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
 98:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL fib
 99:     ST  1,-5(1)	Store fp in ghost frame for fib 
100:    LDC  3,6(6)	Load of type int constant 
101:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
102:    LDA  1,-5(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-66(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fib
106:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
107:    LDA  1,-2(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-104(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
111:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
112:    LDA  1,-2(1)	Move the fp to the new frame 
113:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
114:    JMP  7,-81(7)	Call function 
115:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
116:    LDC  2,0(6)	Set return value to 0 
117:     LD  3,-1(1)	Load return address 
118:     LD  1,0(1)	Adjust fp 
119:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,119(7)	Jump to init [backpatch] 
* INIT
120:    LDA  1,0(0)	set first frame at end of globals 
121:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
122:    LDA  3,1(7)	Return address in ac 
123:    JMP  7,-27(7)	Jump to main 
124:   HALT  0,0,0	DONE! 
* END INIT
