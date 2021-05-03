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
* FUNCTION show
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
 40:     ST  1,-4(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load base address of array z 
 42:     LD  3,-3(1)	Load variable n into accumulator 
 43:     LD  5,-2(1)	Load base address of array z into AC2 
 44:    SUB  5,5,3	Compute offset for array 
 45:     LD  3,0(5)	Load array element z from AC into loc from AC2 
 46:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-4(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 51:     LD  3,-2(1)	Load base address of array z 
 52:     LD  3,-3(1)	Load variable n into accumulator 
 53:     LD  5,-2(1)	Load base address of array z into AC2 
 54:    SUB  5,5,3	Compute offset for array 
 55:     LD  3,0(5)	Load array element z from AC into loc from AC2 
 56:    LDA  2,0(3)	Copy accumulator to return register 
 57:     LD  3,-1(1)	Load return address 
 58:     LD  1,0(1)	Adjust fp 
 59:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 60:    LDC  2,0(6)	Set return value to 0 
 61:     LD  3,-1(1)	Load return address 
 62:     LD  1,0(1)	Adjust fp 
 63:    JMP  7,0(3)	Return 
* END FUNCTION show
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 64:     ST  3,-1(1)	Store return address 
* COMPOUND
 65:    LDC  3,4(6)	Load size of a into AC 
 66:     ST  3,-2(1)	Store size of a in data memory 
 67:    LDA  3,-1(0)	Load base address of array g 
 68:    LDC  3,1(6)	Load of type int constant 
 69:     ST  3,-7(1)	Push array index onto temp stack 
 70:    LDC  3,666(6)	Load of type int constant 
 71:     LD  4,-7(1)	Pop array index into AC1 
 72:    LDA  5,-1(0)	Load base address of array g into AC2 
 73:    SUB  5,5,4	Compute offset for array 
 74:     ST  3,0(5)	Store variable g from AC into loc from AC2 
 75:    LDA  3,-3(1)	Load base address of array a 
 76:    LDC  3,1(6)	Load of type int constant 
 77:     ST  3,-7(1)	Push array index onto temp stack 
 78:    LDC  3,777(6)	Load of type int constant 
 79:     LD  4,-7(1)	Pop array index into AC1 
 80:    LDA  5,-3(1)	Load base address of array a into AC2 
 81:    SUB  5,5,4	Compute offset for array 
 82:     ST  3,0(5)	Store variable a from AC into loc from AC2 
* CALL output
 83:     ST  1,-7(1)	Store fp in ghost frame for output 
 84:    LDA  3,-3(1)	Load base address of array a 
 85:    LDC  3,1(6)	Load of type int constant 
 86:    LDA  5,-3(1)	Load base address of array a into AC2 
 87:    SUB  5,5,3	Compute offset for array 
 88:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 89:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-7(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-87(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 94:     ST  1,-7(1)	Store fp in ghost frame for output 
 95:    LDA  3,-1(0)	Load base address of array g 
 96:    LDC  3,1(6)	Load of type int constant 
 97:    LDA  5,-1(0)	Load base address of array g into AC2 
 98:    SUB  5,5,3	Compute offset for array 
 99:     LD  3,0(5)	Load array element g from AC into loc from AC2 
100:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
101:    LDA  1,-7(1)	Move the fp to the new frame 
102:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
103:    JMP  7,-98(7)	Call function 
104:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
105:     ST  1,-7(1)	Store fp in ghost frame for outnl 
* Begin call
106:    LDA  1,-7(1)	Move the fp to the new frame 
107:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
108:    JMP  7,-75(7)	Call function 
109:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL show
110:     ST  1,-7(1)	Store fp in ghost frame for show 
111:    LDA  3,-3(1)	Load base address of array a 
112:     ST  3,-9(1)	Push parameter onto new frame 
113:    LDC  3,1(6)	Load of type int constant 
114:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
115:    LDA  1,-7(1)	Move the fp to the new frame 
116:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
117:    JMP  7,-79(7)	Call function 
118:    LDA  3,0(2)	Save return result in accumulator 
* END CALL show
* CALL show
119:     ST  1,-7(1)	Store fp in ghost frame for show 
120:    LDA  3,-1(0)	Load base address of array g 
121:     ST  3,-9(1)	Push parameter onto new frame 
122:    LDC  3,1(6)	Load of type int constant 
123:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
124:    LDA  1,-7(1)	Move the fp to the new frame 
125:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
126:    JMP  7,-88(7)	Call function 
127:    LDA  3,0(2)	Save return result in accumulator 
* END CALL show
* CALL outnl
128:     ST  1,-7(1)	Store fp in ghost frame for outnl 
* Begin call
129:    LDA  1,-7(1)	Move the fp to the new frame 
130:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
131:    JMP  7,-98(7)	Call function 
132:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
133:     ST  1,-7(1)	Store fp in ghost frame for output 
* CALL show
134:     ST  1,-10(1)	Store fp in ghost frame for show 
135:    LDA  3,-3(1)	Load base address of array a 
136:     ST  3,-12(1)	Push parameter onto new frame 
137:    LDC  3,1(6)	Load of type int constant 
138:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
139:    LDA  1,-10(1)	Move the fp to the new frame 
140:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
141:    JMP  7,-103(7)	Call function 
142:    LDA  3,0(2)	Save return result in accumulator 
* END CALL show
143:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
144:    LDA  1,-7(1)	Move the fp to the new frame 
145:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
146:    JMP  7,-141(7)	Call function 
147:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
148:     ST  1,-7(1)	Store fp in ghost frame for output 
* CALL show
149:     ST  1,-10(1)	Store fp in ghost frame for show 
150:    LDA  3,-1(0)	Load base address of array g 
151:     ST  3,-12(1)	Push parameter onto new frame 
152:    LDC  3,1(6)	Load of type int constant 
153:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
154:    LDA  1,-10(1)	Move the fp to the new frame 
155:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
156:    JMP  7,-118(7)	Call function 
157:    LDA  3,0(2)	Save return result in accumulator 
* END CALL show
158:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
159:    LDA  1,-7(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-156(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
163:     ST  1,-7(1)	Store fp in ghost frame for outnl 
* Begin call
164:    LDA  1,-7(1)	Move the fp to the new frame 
165:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
166:    JMP  7,-133(7)	Call function 
167:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
168:    LDA  3,-1(0)	Load base address of array g 
169:    LDC  3,1(6)	Load of type int constant 
170:     ST  3,-7(1)	Push array index onto temp stack 
171:    LDC  3,4(6)	Load of type int constant 
172:     LD  4,-7(1)	Pop array index into AC1 
173:    LDA  5,-1(0)	Load base address of array g into AC2 
174:    SUB  5,5,4	Compute offset for array 
175:     LD  4,0(5)	Load lhs variable 
176:    ADD  3,4,3	+= operation 
177:     ST  3,0(5)	Store variable g from AC into loc from AC2 
178:    LDA  3,-3(1)	Load base address of array a 
179:    LDC  3,1(6)	Load of type int constant 
180:     ST  3,-7(1)	Push array index onto temp stack 
181:    LDC  3,3(6)	Load of type int constant 
182:     LD  4,-7(1)	Pop array index into AC1 
183:    LDA  5,-3(1)	Load base address of array a into AC2 
184:    SUB  5,5,4	Compute offset for array 
185:     LD  4,0(5)	Load lhs variable 
186:    ADD  3,4,3	+= operation 
187:     ST  3,0(5)	Store variable a from AC into loc from AC2 
* CALL output
188:     ST  1,-7(1)	Store fp in ghost frame for output 
189:    LDA  3,-3(1)	Load base address of array a 
190:    LDC  3,1(6)	Load of type int constant 
191:    LDA  5,-3(1)	Load base address of array a into AC2 
192:    SUB  5,5,3	Compute offset for array 
193:     LD  3,0(5)	Load array element a from AC into loc from AC2 
194:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
195:    LDA  1,-7(1)	Move the fp to the new frame 
196:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
197:    JMP  7,-192(7)	Call function 
198:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
199:     ST  1,-7(1)	Store fp in ghost frame for output 
200:    LDA  3,-1(0)	Load base address of array g 
201:    LDC  3,1(6)	Load of type int constant 
202:    LDA  5,-1(0)	Load base address of array g into AC2 
203:    SUB  5,5,3	Compute offset for array 
204:     LD  3,0(5)	Load array element g from AC into loc from AC2 
205:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
206:    LDA  1,-7(1)	Move the fp to the new frame 
207:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
208:    JMP  7,-203(7)	Call function 
209:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
210:     ST  1,-7(1)	Store fp in ghost frame for outnl 
* Begin call
211:    LDA  1,-7(1)	Move the fp to the new frame 
212:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
213:    JMP  7,-180(7)	Call function 
214:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
215:     ST  1,-7(1)	Store fp in ghost frame for output 
216:    LDA  3,-3(1)	Load base address of array a 
217:    LDC  3,1(6)	Load of type int constant 
218:     ST  3,-10(1)	Push array index onto temp stack 
219:    LDC  3,100(6)	Load of type int constant 
220:     LD  4,-10(1)	Pop array index into AC1 
221:    LDA  5,-3(1)	Load base address of array a into AC2 
222:    SUB  5,5,4	Compute offset for array 
223:     LD  4,0(5)	Load lhs variable 
224:    ADD  3,4,3	+= operation 
225:     ST  3,0(5)	Store variable a from AC into loc from AC2 
226:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
227:    LDA  1,-7(1)	Move the fp to the new frame 
228:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
229:    JMP  7,-224(7)	Call function 
230:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
231:     ST  1,-7(1)	Store fp in ghost frame for output 
232:    LDA  3,-1(0)	Load base address of array g 
233:    LDC  3,1(6)	Load of type int constant 
234:     ST  3,-10(1)	Push array index onto temp stack 
235:    LDC  3,100(6)	Load of type int constant 
236:     LD  4,-10(1)	Pop array index into AC1 
237:    LDA  5,-1(0)	Load base address of array g into AC2 
238:    SUB  5,5,4	Compute offset for array 
239:     LD  4,0(5)	Load lhs variable 
240:    ADD  3,4,3	+= operation 
241:     ST  3,0(5)	Store variable g from AC into loc from AC2 
242:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
243:    LDA  1,-7(1)	Move the fp to the new frame 
244:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
245:    JMP  7,-240(7)	Call function 
246:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
247:     ST  1,-7(1)	Store fp in ghost frame for outnl 
* Begin call
248:    LDA  1,-7(1)	Move the fp to the new frame 
249:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
250:    JMP  7,-217(7)	Call function 
251:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
252:    LDC  2,0(6)	Set return value to 0 
253:     LD  3,-1(1)	Load return address 
254:     LD  1,0(1)	Adjust fp 
255:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,255(7)	Jump to init [backpatch] 
* INIT
256:    LDA  1,-5(0)	set first frame at end of globals 
257:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
258:    LDC  3,4(6)	Load size of g into AC 
259:     ST  3,0(0)	Store size of g in data memory 
* END INIT GLOBALS AND STATICS
260:    LDA  3,1(7)	Return address in ac 
261:    JMP  7,-198(7)	Jump to main 
262:   HALT  0,0,0	DONE! 
* END INIT
