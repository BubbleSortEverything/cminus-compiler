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
* FUNCTION sum
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 40:     LD  3,-2(1)	Load variable init into accumulator 
* IF JUMP TO ELSE
 42:    LDC  3,0(6)	Load type int constant 
 43:     ST  3,-1(0)	Assigning variable runningSum in Static 
* IF JUMP TO END
 41:    JZR  3,3(7)	IF JMP TO ELSE 
 45:     LD  3,-3(1)	Load variable x into accumulator 
 46:     LD  4,-1(0)	Load lhs variable 
 47:    ADD  3,4,3	+= operation 
 48:     ST  3,-1(0)	Assigning variable runningSum in Static 
 44:    LDA  7,4(7)	JUMP TO END 
* END IF
 49:     LD  3,-1(0)	Load variable runningSum into accumulator 
 50:    LDA  2,0(3)	Copy accumulator to return register 
 51:     LD  3,-1(1)	Load return address 
 52:     LD  1,0(1)	Adjust fp 
 53:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 54:    LDC  2,0(6)	Set return value to 0 
 55:     LD  3,-1(1)	Load return address 
 56:     LD  1,0(1)	Adjust fp 
 57:    JMP  7,0(3)	Return 
* END FUNCTION sum
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 58:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL sum
 59:     ST  1,-2(1)	Store fp in ghost frame for sum 
 60:    LDC  3,1(6)	Load type bool constant 
 61:     ST  3,-4(1)	Push parameter onto new frame 
 62:    LDC  3,666(6)	Load type int constant 
 63:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 64:    LDA  1,-2(1)	Move the fp to the new frame 
 65:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 66:    JMP  7,-28(7)	Call function 
 67:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sum
* CALL sum
 68:     ST  1,-2(1)	Store fp in ghost frame for sum 
 69:    LDC  3,0(6)	Load type bool constant 
 70:     ST  3,-4(1)	Push parameter onto new frame 
 71:    LDC  3,777(6)	Load type int constant 
 72:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 73:    LDA  1,-2(1)	Move the fp to the new frame 
 74:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 75:    JMP  7,-37(7)	Call function 
 76:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sum
* CALL output
 77:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL sum
 78:     ST  1,-5(1)	Store fp in ghost frame for sum 
 79:    LDC  3,0(6)	Load type bool constant 
 80:     ST  3,-7(1)	Push parameter onto new frame 
 81:    LDC  3,0(6)	Load type int constant 
 82:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 83:    LDA  1,-5(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-47(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sum
 87:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 88:    LDA  1,-2(1)	Move the fp to the new frame 
 89:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 90:    JMP  7,-85(7)	Call function 
 91:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL sum
 92:     ST  1,-2(1)	Store fp in ghost frame for sum 
 93:    LDC  3,0(6)	Load type bool constant 
 94:     ST  3,-4(1)	Push parameter onto new frame 
 95:    LDC  3,888(6)	Load type int constant 
 96:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-2(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-61(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sum
* CALL output
101:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL sum
102:     ST  1,-5(1)	Store fp in ghost frame for sum 
103:    LDC  3,0(6)	Load type bool constant 
104:     ST  3,-7(1)	Push parameter onto new frame 
105:    LDC  3,0(6)	Load type int constant 
106:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
107:    LDA  1,-5(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-71(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sum
111:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
112:    LDA  1,-2(1)	Move the fp to the new frame 
113:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
114:    JMP  7,-109(7)	Call function 
115:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
116:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
117:    LDA  1,-2(1)	Move the fp to the new frame 
118:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
119:    JMP  7,-86(7)	Call function 
120:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
121:    LDC  2,0(6)	Set return value to 0 
122:     LD  3,-1(1)	Load return address 
123:     LD  1,0(1)	Adjust fp 
124:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,124(7)	Jump to init [backpatch] 
* INIT
125:    LDA  1,-2(0)	set first frame at end of globals 
126:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
127:    LDA  3,1(7)	Return address in ac 
128:    JMP  7,-71(7)	Jump to main 
129:   HALT  0,0,0	DONE! 
* END INIT
