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
 40:    LDC  3,111(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
 42:     ST  1,-6(1)	Store fp in ghost frame for output 
 43:     LD  3,-2(1)	Load variable x into accumulator 
 44:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 45:    LDA  1,-6(1)	Move the fp to the new frame 
 46:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 47:    JMP  7,-42(7)	Call function 
 48:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 49:    LDC  3,222(6)	Load of type int constant 
 50:     ST  3,-3(1)	Assigning variable y in Local 
* CALL output
 51:     ST  1,-6(1)	Store fp in ghost frame for output 
 52:     LD  3,-3(1)	Load variable y into accumulator 
 53:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 54:    LDA  1,-6(1)	Move the fp to the new frame 
 55:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 56:    JMP  7,-51(7)	Call function 
 57:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 58:    LDC  3,1(6)	Load of type bool constant 
 59:     ST  3,-4(1)	Assigning variable a in Local 
* CALL outputb
 60:     ST  1,-6(1)	Store fp in ghost frame for outputb 
 61:     LD  3,-4(1)	Load variable a into accumulator 
 62:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-6(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-49(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
 67:    LDC  3,0(6)	Load of type bool constant 
 68:     ST  3,-5(1)	Assigning variable b in Local 
* CALL outputb
 69:     ST  1,-6(1)	Store fp in ghost frame for outputb 
 70:     LD  3,-5(1)	Load variable b into accumulator 
 71:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 72:    LDA  1,-6(1)	Move the fp to the new frame 
 73:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 74:    JMP  7,-58(7)	Call function 
 75:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 76:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
 77:    LDA  1,-6(1)	Move the fp to the new frame 
 78:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 79:    JMP  7,-46(7)	Call function 
 80:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 81:    LDC  3,333(6)	Load of type int constant 
 82:     ST  3,0(0)	Assigning variable gx in Global 
* CALL output
 83:     ST  1,-6(1)	Store fp in ghost frame for output 
 84:     LD  3,0(0)	Load variable gx into accumulator 
 85:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 86:    LDA  1,-6(1)	Move the fp to the new frame 
 87:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 88:    JMP  7,-83(7)	Call function 
 89:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 90:    LDC  3,444(6)	Load of type int constant 
 91:     ST  3,-1(0)	Assigning variable gy in Global 
* CALL output
 92:     ST  1,-6(1)	Store fp in ghost frame for output 
 93:     LD  3,-1(0)	Load variable gy into accumulator 
 94:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 95:    LDA  1,-6(1)	Move the fp to the new frame 
 96:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 97:    JMP  7,-92(7)	Call function 
 98:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 99:    LDC  3,0(6)	Load of type bool constant 
100:     ST  3,-2(0)	Assigning variable ga in Global 
* CALL outputb
101:     ST  1,-6(1)	Store fp in ghost frame for outputb 
102:     LD  3,-2(0)	Load variable ga into accumulator 
103:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
104:    LDA  1,-6(1)	Move the fp to the new frame 
105:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
106:    JMP  7,-90(7)	Call function 
107:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
108:    LDC  3,1(6)	Load of type bool constant 
109:     ST  3,-3(0)	Assigning variable gb in Global 
* CALL outputb
110:     ST  1,-6(1)	Store fp in ghost frame for outputb 
111:     LD  3,-3(0)	Load variable gb into accumulator 
112:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
113:    LDA  1,-6(1)	Move the fp to the new frame 
114:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
115:    JMP  7,-99(7)	Call function 
116:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
117:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
118:    LDA  1,-6(1)	Move the fp to the new frame 
119:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
120:    JMP  7,-87(7)	Call function 
121:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
122:     LD  3,-3(1)	Load variable y into accumulator 
123:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
124:     ST  1,-6(1)	Store fp in ghost frame for output 
125:     LD  3,-2(1)	Load variable x into accumulator 
126:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
127:    LDA  1,-6(1)	Move the fp to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-124(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
131:     LD  3,-5(1)	Load variable b into accumulator 
132:     ST  3,-4(1)	Assigning variable a in Local 
* CALL outputb
133:     ST  1,-6(1)	Store fp in ghost frame for outputb 
134:     LD  3,-4(1)	Load variable a into accumulator 
135:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
136:    LDA  1,-6(1)	Move the fp to the new frame 
137:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
138:    JMP  7,-122(7)	Call function 
139:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
140:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
141:    LDA  1,-6(1)	Move the fp to the new frame 
142:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
143:    JMP  7,-110(7)	Call function 
144:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
145:     LD  3,-1(0)	Load variable gy into accumulator 
146:     ST  3,0(0)	Assigning variable gx in Global 
* CALL output
147:     ST  1,-6(1)	Store fp in ghost frame for output 
148:     LD  3,0(0)	Load variable gx into accumulator 
149:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
150:    LDA  1,-6(1)	Move the fp to the new frame 
151:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
152:    JMP  7,-147(7)	Call function 
153:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
154:     LD  3,-3(0)	Load variable gb into accumulator 
155:     ST  3,-2(0)	Assigning variable ga in Global 
* CALL outputb
156:     ST  1,-6(1)	Store fp in ghost frame for outputb 
157:     LD  3,-2(0)	Load variable ga into accumulator 
158:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
159:    LDA  1,-6(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-145(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
163:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
164:    LDA  1,-6(1)	Move the fp to the new frame 
165:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
166:    JMP  7,-133(7)	Call function 
167:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
168:    LDA  2,0(3)	Copy accumulator to return register 
169:     LD  3,-1(1)	Load return address 
170:     LD  1,0(1)	Adjust fp 
171:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
172:    LDC  2,0(6)	Set return value to 0 
173:     LD  3,-1(1)	Load return address 
174:     LD  1,0(1)	Adjust fp 
175:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,175(7)	Jump to init [backpatch] 
* INIT
176:    LDA  1,-4(0)	set first frame at end of globals 
177:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
178:    LDA  3,1(7)	Return address in ac 
179:    JMP  7,-141(7)	Jump to main 
180:   HALT  0,0,0	DONE! 
* END INIT
