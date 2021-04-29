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
 40:    LDC  3,0(6)	Load of type char constant 
 41:    LDC  3,5(6)	Load size of a into AC 
 42:     ST  3,-2(1)	Store size of a in data memory 
 43:     ST  3,-3(1)	Assigning variable a in Local 
 44:    LDC  3,5(6)	Load size of b into AC 
 45:     ST  3,-8(1)	Store size of b in data memory 
* CALL outputc
 46:     ST  1,-14(1)	Store fp in ghost frame for outputc 
 47:    LDA  3,-3(1)	Load base address of array a 
 48:    LDC  3,0(6)	Load of type int constant 
 49:    LDA  5,-3(1)	Load base address of array a into AC2 
 50:    SUB  5,5,3	Compute offset for array 
 51:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 52:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
 53:    LDA  1,-14(1)	Move the fp to the new frame 
 54:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 55:    JMP  7,-28(7)	Call function 
 56:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 57:     ST  1,-14(1)	Store fp in ghost frame for outputc 
 58:    LDA  3,-3(1)	Load base address of array a 
 59:    LDC  3,1(6)	Load of type int constant 
 60:    LDA  5,-3(1)	Load base address of array a into AC2 
 61:    SUB  5,5,3	Compute offset for array 
 62:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 63:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
 64:    LDA  1,-14(1)	Move the fp to the new frame 
 65:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 66:    JMP  7,-39(7)	Call function 
 67:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 68:     ST  1,-14(1)	Store fp in ghost frame for outputc 
 69:    LDA  3,-3(1)	Load base address of array a 
 70:    LDC  3,2(6)	Load of type int constant 
 71:    LDA  5,-3(1)	Load base address of array a into AC2 
 72:    SUB  5,5,3	Compute offset for array 
 73:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 74:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
 75:    LDA  1,-14(1)	Move the fp to the new frame 
 76:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 77:    JMP  7,-50(7)	Call function 
 78:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 79:     ST  1,-14(1)	Store fp in ghost frame for outputc 
 80:    LDA  3,-3(1)	Load base address of array a 
 81:    LDC  3,3(6)	Load of type int constant 
 82:    LDA  5,-3(1)	Load base address of array a into AC2 
 83:    SUB  5,5,3	Compute offset for array 
 84:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 85:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
 86:    LDA  1,-14(1)	Move the fp to the new frame 
 87:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 88:    JMP  7,-61(7)	Call function 
 89:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outnl
 90:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
 91:    LDA  1,-14(1)	Move the fp to the new frame 
 92:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 93:    JMP  7,-60(7)	Call function 
 94:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 95:    LDA  3,-9(1)	Load base address of array b 
 96:    LDA  3,-3(1)	Load base address of array a 
 97:     ST  3,-9(1)	Assigning variable b in Local 
* CALL outputc
 98:     ST  1,-14(1)	Store fp in ghost frame for outputc 
 99:    LDA  3,-9(1)	Load base address of array b 
100:    LDC  3,0(6)	Load of type int constant 
101:    LDA  5,-9(1)	Load base address of array b into AC2 
102:    SUB  5,5,3	Compute offset for array 
103:     LD  3,0(5)	Load array element b from AC into loc from AC2 
104:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
105:    LDA  1,-14(1)	Move the fp to the new frame 
106:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
107:    JMP  7,-80(7)	Call function 
108:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
109:     ST  1,-14(1)	Store fp in ghost frame for outputc 
110:    LDA  3,-9(1)	Load base address of array b 
111:    LDC  3,1(6)	Load of type int constant 
112:    LDA  5,-9(1)	Load base address of array b into AC2 
113:    SUB  5,5,3	Compute offset for array 
114:     LD  3,0(5)	Load array element b from AC into loc from AC2 
115:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
116:    LDA  1,-14(1)	Move the fp to the new frame 
117:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
118:    JMP  7,-91(7)	Call function 
119:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
120:     ST  1,-14(1)	Store fp in ghost frame for outputc 
121:    LDA  3,-9(1)	Load base address of array b 
122:    LDC  3,2(6)	Load of type int constant 
123:    LDA  5,-9(1)	Load base address of array b into AC2 
124:    SUB  5,5,3	Compute offset for array 
125:     LD  3,0(5)	Load array element b from AC into loc from AC2 
126:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
127:    LDA  1,-14(1)	Move the fp to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-102(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
131:     ST  1,-14(1)	Store fp in ghost frame for outputc 
132:    LDA  3,-9(1)	Load base address of array b 
133:    LDC  3,3(6)	Load of type int constant 
134:    LDA  5,-9(1)	Load base address of array b into AC2 
135:    SUB  5,5,3	Compute offset for array 
136:     LD  3,0(5)	Load array element b from AC into loc from AC2 
137:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
138:    LDA  1,-14(1)	Move the fp to the new frame 
139:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
140:    JMP  7,-113(7)	Call function 
141:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outnl
142:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
143:    LDA  1,-14(1)	Move the fp to the new frame 
144:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
145:    JMP  7,-112(7)	Call function 
146:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
147:    LDC  2,0(6)	Set return value to 0 
148:     LD  3,-1(1)	Load return address 
149:     LD  1,0(1)	Adjust fp 
150:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,150(7)	Jump to init [backpatch] 
* INIT
151:    LDA  1,-5(0)	set first frame at end of globals 
152:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
153:    LDA  3,1(7)	Return address in ac 
154:    JMP  7,-116(7)	Jump to main 
155:   HALT  0,0,0	DONE! 
* END INIT
