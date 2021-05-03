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
* CALL output
 40:     ST  1,-3(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load base address of array x 
 42:    LDC  3,3(6)	Load of type int constant 
 43:     ST  3,-6(1)	Push array index onto temp stack 
 44:     LD  4,-6(1)	Pop array index into AC1 
 45:     LD  5,-2(1)	Load base address of array x into AC2 
 46:    SUB  5,5,4	Compute offset for array 
 47:     LD  4,0(5)	Load lhs variable 
 48:    LDA  3,1(4)	++ Increment accumulator operation 
 49:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 50:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 51:    LDA  1,-3(1)	Move the fp to the new frame 
 52:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 53:    JMP  7,-48(7)	Call function 
 54:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 55:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 56:    LDA  1,-3(1)	Move the fp to the new frame 
 57:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 58:    JMP  7,-25(7)	Call function 
 59:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 60:     ST  1,-3(1)	Store fp in ghost frame for output 
 61:     LD  3,-2(1)	Load base address of array x 
 62:    LDC  3,3(6)	Load of type int constant 
 63:     LD  5,-2(1)	Load base address of array x into AC2 
 64:    SUB  5,5,3	Compute offset for array 
 65:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 66:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 67:    LDA  1,-3(1)	Move the fp to the new frame 
 68:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 69:    JMP  7,-64(7)	Call function 
 70:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 71:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 72:    LDA  1,-3(1)	Move the fp to the new frame 
 73:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 74:    JMP  7,-41(7)	Call function 
 75:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 76:     ST  1,-3(1)	Store fp in ghost frame for output 
 77:     LD  3,-2(1)	Load base address of array x 
 78:    LDC  3,3(6)	Load of type int constant 
 79:     ST  3,-6(1)	Push array index onto temp stack 
 80:     LD  4,-6(1)	Pop array index into AC1 
 81:     LD  5,-2(1)	Load base address of array x into AC2 
 82:    SUB  5,5,4	Compute offset for array 
 83:     LD  4,0(5)	Load lhs variable 
 84:    LDA  3,-1(4)	-- Decrement accumulator operation 
 85:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 86:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 87:    LDA  1,-3(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-84(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 91:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 92:    LDA  1,-3(1)	Move the fp to the new frame 
 93:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 94:    JMP  7,-61(7)	Call function 
 95:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 96:     ST  1,-3(1)	Store fp in ghost frame for output 
 97:     LD  3,-2(1)	Load base address of array x 
 98:    LDC  3,3(6)	Load of type int constant 
 99:     LD  5,-2(1)	Load base address of array x into AC2 
100:    SUB  5,5,3	Compute offset for array 
101:     LD  3,0(5)	Load array element x from AC into loc from AC2 
102:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
103:    LDA  1,-3(1)	Move the fp to the new frame 
104:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
105:    JMP  7,-100(7)	Call function 
106:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
107:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
108:    LDA  1,-3(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-77(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
112:    LDC  2,0(6)	Set return value to 0 
113:     LD  3,-1(1)	Load return address 
114:     LD  1,0(1)	Adjust fp 
115:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
116:     ST  3,-1(1)	Store return address 
* COMPOUND
117:    LDC  3,7(6)	Load size of x into AC 
118:     ST  3,-2(1)	Store size of x in data memory 
119:    LDA  3,-3(1)	Load base address of array x 
120:    LDC  3,3(6)	Load of type int constant 
121:     ST  3,-10(1)	Push array index onto temp stack 
122:    LDC  3,1023(6)	Load of type int constant 
123:     LD  4,-10(1)	Pop array index into AC1 
124:    LDA  5,-3(1)	Load base address of array x into AC2 
125:    SUB  5,5,4	Compute offset for array 
126:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL dog
127:     ST  1,-10(1)	Store fp in ghost frame for dog 
128:    LDA  3,-3(1)	Load base address of array x 
129:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
130:    LDA  1,-10(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-94(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL output
134:     ST  1,-10(1)	Store fp in ghost frame for output 
135:    LDA  3,-3(1)	Load base address of array x 
136:    LDC  3,3(6)	Load of type int constant 
137:    LDA  5,-3(1)	Load base address of array x into AC2 
138:    SUB  5,5,3	Compute offset for array 
139:     LD  3,0(5)	Load array element x from AC into loc from AC2 
140:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
141:    LDA  1,-10(1)	Move the fp to the new frame 
142:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
143:    JMP  7,-138(7)	Call function 
144:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
145:    LDC  2,0(6)	Set return value to 0 
146:     LD  3,-1(1)	Load return address 
147:     LD  1,0(1)	Adjust fp 
148:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,148(7)	Jump to init [backpatch] 
* INIT
149:    LDA  1,0(0)	set first frame at end of globals 
150:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
151:    LDA  3,1(7)	Return address in ac 
152:    JMP  7,-37(7)	Jump to main 
153:   HALT  0,0,0	DONE! 
* END INIT
