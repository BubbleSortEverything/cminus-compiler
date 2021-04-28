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
 40:    LDC  3,7(6)	Load size of x into AC 
 41:     ST  3,-2(1)	Store size of x in data memory 
 42:    LDA  3,-3(1)	Load base address of array x 
 43:    LDC  3,3(6)	Load type int constant 
 44:     ST  3,-10(1)	Push array index onto temp stack 
 45:    LDC  3,1023(6)	Load type int constant 
 46:     LD  4,-10(1)	Pop array index into AC1 
 47:    LDA  5,-3(1)	Load base address of array x into AC2 
 48:    SUB  5,5,4	Compute offset for array 
 49:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
 50:     ST  1,-10(1)	Store fp in ghost frame for output 
 51:    LDA  3,-3(1)	Load base address of array x 
 52:    LDC  3,3(6)	Load type int constant 
 53:     ST  3,-13(1)	Push array index onto temp stack 
 54:     LD  4,-13(1)	Pop array index into AC1 
 55:    LDA  5,-3(1)	Load base address of array x into AC2 
 56:    SUB  5,5,4	Compute offset for array 
 57:     LD  4,0(5)	Load lhs variable 
 58:    LDA  3,1(4)	++ Increment accumulator operation 
 59:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 60:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
 61:    LDA  1,-10(1)	Move the fp to the new frame 
 62:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 63:    JMP  7,-58(7)	Call function 
 64:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 65:     ST  1,-10(1)	Store fp in ghost frame for outnl 
* Begin call
 66:    LDA  1,-10(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-35(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 70:     ST  1,-10(1)	Store fp in ghost frame for output 
 71:    LDA  3,-3(1)	Load base address of array x 
 72:    LDC  3,3(6)	Load type int constant 
 73:    LDA  5,-3(1)	Load base address of array x into AC2 
 74:    SUB  5,5,3	Compute offset for array 
 75:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 76:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
 77:    LDA  1,-10(1)	Move the fp to the new frame 
 78:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 79:    JMP  7,-74(7)	Call function 
 80:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 81:     ST  1,-10(1)	Store fp in ghost frame for outnl 
* Begin call
 82:    LDA  1,-10(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-51(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 86:     ST  1,-10(1)	Store fp in ghost frame for output 
 87:    LDA  3,-3(1)	Load base address of array x 
 88:    LDC  3,3(6)	Load type int constant 
 89:     ST  3,-13(1)	Push array index onto temp stack 
 90:     LD  4,-13(1)	Pop array index into AC1 
 91:    LDA  5,-3(1)	Load base address of array x into AC2 
 92:    SUB  5,5,4	Compute offset for array 
 93:     LD  4,0(5)	Load lhs variable 
 94:    LDA  3,-1(4)	-- Decrement accumulator operation 
 95:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 96:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-10(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-94(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
101:     ST  1,-10(1)	Store fp in ghost frame for outnl 
* Begin call
102:    LDA  1,-10(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-71(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
106:     ST  1,-10(1)	Store fp in ghost frame for output 
107:    LDA  3,-3(1)	Load base address of array x 
108:    LDC  3,3(6)	Load type int constant 
109:    LDA  5,-3(1)	Load base address of array x into AC2 
110:    SUB  5,5,3	Compute offset for array 
111:     LD  3,0(5)	Load array element x from AC into loc from AC2 
112:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
113:    LDA  1,-10(1)	Move the fp to the new frame 
114:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
115:    JMP  7,-110(7)	Call function 
116:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
117:     ST  1,-10(1)	Store fp in ghost frame for outnl 
* Begin call
118:    LDA  1,-10(1)	Move the fp to the new frame 
119:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
120:    JMP  7,-87(7)	Call function 
121:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
122:    LDC  2,0(6)	Set return value to 0 
123:     LD  3,-1(1)	Load return address 
124:     LD  1,0(1)	Adjust fp 
125:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,125(7)	Jump to init [backpatch] 
* INIT
126:    LDA  1,0(0)	set first frame at end of globals 
127:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
128:    LDA  3,1(7)	Return address in ac 
129:    JMP  7,-91(7)	Jump to main 
130:   HALT  0,0,0	DONE! 
* END INIT
