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
* FUNCTION cat
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,1(6)	Load size of z into AC 
 41:     ST  3,-3(1)	Store size of z in data memory 
* CALL output
 42:     ST  1,-6(1)	Store fp in ghost frame for output 
 43:     LD  3,-2(1)	Load base address of array y 
 44:    LDC  3,0(6)	Load of type int constant 
 45:     ST  3,-9(1)	Push array index onto temp stack 
 46:     LD  4,-9(1)	Pop array index into AC1 
 47:     LD  5,-2(1)	Load base address of array y into AC2 
 48:    SUB  5,5,4	Compute offset for array 
 49:     LD  4,0(5)	Load lhs variable 
 50:    LDA  3,1(4)	++ Increment accumulator operation 
 51:     ST  3,0(5)	Store variable y from AC into loc from AC2 
 52:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 53:    LDA  1,-6(1)	Move the fp to the new frame 
 54:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 55:    JMP  7,-50(7)	Call function 
 56:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 57:     ST  1,-6(1)	Store fp in ghost frame for output 
 58:     LD  3,-2(1)	Load base address of array y 
 59:    LDC  3,0(6)	Load of type int constant 
 60:     LD  5,-2(1)	Load base address of array y into AC2 
 61:    SUB  5,5,3	Compute offset for array 
 62:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 63:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 64:    LDA  1,-6(1)	Move the fp to the new frame 
 65:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 66:    JMP  7,-61(7)	Call function 
 67:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 68:    LDC  3,777(6)	Load of type int constant 
 69:     ST  3,-5(1)	Assigning variable w in Local 
 70:    LDA  3,-4(1)	Load base address of array z 
 71:    LDC  3,0(6)	Load of type int constant 
 72:     ST  3,-6(1)	Push array index onto temp stack 
 73:    LDC  3,888(6)	Load of type int constant 
 74:     LD  4,-6(1)	Pop array index into AC1 
 75:    LDA  5,-4(1)	Load base address of array z into AC2 
 76:    SUB  5,5,4	Compute offset for array 
 77:     ST  3,0(5)	Store variable z from AC into loc from AC2 
* CALL output
 78:     ST  1,-6(1)	Store fp in ghost frame for output 
 79:     LD  4,-5(1)	Load lhs variable 
 80:    LDA  3,1(4)	++ Increment accumulator operation 
 81:     ST  3,-5(1)	Assigning variable w in Local 
 82:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 83:    LDA  1,-6(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-80(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 87:     ST  1,-6(1)	Store fp in ghost frame for output 
 88:     LD  3,-5(1)	Load variable w into accumulator 
 89:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-6(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-87(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 94:     ST  1,-6(1)	Store fp in ghost frame for output 
 95:    LDA  3,-4(1)	Load base address of array z 
 96:    LDC  3,0(6)	Load of type int constant 
 97:     ST  3,-9(1)	Push array index onto temp stack 
 98:     LD  4,-9(1)	Pop array index into AC1 
 99:    LDA  5,-4(1)	Load base address of array z into AC2 
100:    SUB  5,5,4	Compute offset for array 
101:     LD  4,0(5)	Load lhs variable 
102:    LDA  3,1(4)	++ Increment accumulator operation 
103:     ST  3,0(5)	Store variable z from AC into loc from AC2 
104:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
105:    LDA  1,-6(1)	Move the fp to the new frame 
106:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
107:    JMP  7,-102(7)	Call function 
108:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
109:     ST  1,-6(1)	Store fp in ghost frame for output 
110:    LDA  3,-4(1)	Load base address of array z 
111:    LDC  3,0(6)	Load of type int constant 
112:    LDA  5,-4(1)	Load base address of array z into AC2 
113:    SUB  5,5,3	Compute offset for array 
114:     LD  3,0(5)	Load array element z from AC into loc from AC2 
115:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
116:    LDA  1,-6(1)	Move the fp to the new frame 
117:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
118:    JMP  7,-113(7)	Call function 
119:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
120:    LDC  3,1023(6)	Load of type int constant 
121:     ST  3,0(0)	Assigning variable g in Global 
122:     LD  4,0(0)	Load lhs variable 
123:    LDA  3,1(4)	++ Increment accumulator operation 
124:     ST  3,0(0)	Assigning variable g in Global 
* CALL output
125:     ST  1,-6(1)	Store fp in ghost frame for output 
126:     LD  3,0(0)	Load variable g into accumulator 
127:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
128:    LDA  1,-6(1)	Move the fp to the new frame 
129:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
130:    JMP  7,-125(7)	Call function 
131:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
132:     ST  1,-6(1)	Store fp in ghost frame for output 
133:     LD  4,0(0)	Load lhs variable 
134:    LDA  3,1(4)	++ Increment accumulator operation 
135:     ST  3,0(0)	Assigning variable g in Global 
136:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
137:    LDA  1,-6(1)	Move the fp to the new frame 
138:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
139:    JMP  7,-134(7)	Call function 
140:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
141:    LDC  2,0(6)	Set return value to 0 
142:     LD  3,-1(1)	Load return address 
143:     LD  1,0(1)	Adjust fp 
144:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
145:     ST  3,-1(1)	Store return address 
* COMPOUND
146:    LDC  3,1(6)	Load size of x into AC 
147:     ST  3,-2(1)	Store size of x in data memory 
148:    LDA  3,-3(1)	Load base address of array x 
149:    LDC  3,0(6)	Load of type int constant 
150:     ST  3,-4(1)	Push array index onto temp stack 
151:    LDC  3,666(6)	Load of type int constant 
152:     LD  4,-4(1)	Pop array index into AC1 
153:    LDA  5,-3(1)	Load base address of array x into AC2 
154:    SUB  5,5,4	Compute offset for array 
155:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL cat
156:     ST  1,-4(1)	Store fp in ghost frame for cat 
157:    LDA  3,-3(1)	Load base address of array x 
158:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
159:    LDA  1,-4(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-123(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* CALL output
163:     ST  1,-4(1)	Store fp in ghost frame for output 
164:    LDA  3,-3(1)	Load base address of array x 
165:    LDC  3,0(6)	Load of type int constant 
166:    LDA  5,-3(1)	Load base address of array x into AC2 
167:    SUB  5,5,3	Compute offset for array 
168:     LD  3,0(5)	Load array element x from AC into loc from AC2 
169:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
170:    LDA  1,-4(1)	Move the fp to the new frame 
171:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
172:    JMP  7,-167(7)	Call function 
173:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
174:    LDC  3,1023(6)	Load of type int constant 
175:     ST  3,-1(0)	Assigning variable s in LocalStatic 
176:     LD  4,-1(0)	Load lhs variable 
177:    LDA  3,1(4)	++ Increment accumulator operation 
178:     ST  3,-1(0)	Assigning variable s in LocalStatic 
* CALL output
179:     ST  1,-4(1)	Store fp in ghost frame for output 
180:     LD  3,-1(0)	Load variable s into accumulator 
181:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
182:    LDA  1,-4(1)	Move the fp to the new frame 
183:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
184:    JMP  7,-179(7)	Call function 
185:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
186:     ST  1,-4(1)	Store fp in ghost frame for output 
187:     LD  4,-1(0)	Load lhs variable 
188:    LDA  3,1(4)	++ Increment accumulator operation 
189:     ST  3,-1(0)	Assigning variable s in LocalStatic 
190:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
191:    LDA  1,-4(1)	Move the fp to the new frame 
192:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
193:    JMP  7,-188(7)	Call function 
194:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
195:    LDC  3,0(6)	Load of type int constant 
196:    LDA  2,0(3)	Copy accumulator to return register 
197:     LD  3,-1(1)	Load return address 
198:     LD  1,0(1)	Adjust fp 
199:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
200:    LDC  2,0(6)	Set return value to 0 
201:     LD  3,-1(1)	Load return address 
202:     LD  1,0(1)	Adjust fp 
203:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,203(7)	Jump to init [backpatch] 
* INIT
204:    LDA  1,-2(0)	set first frame at end of globals 
205:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
206:    LDA  3,1(7)	Return address in ac 
207:    JMP  7,-63(7)	Jump to main 
208:   HALT  0,0,0	DONE! 
* END INIT
