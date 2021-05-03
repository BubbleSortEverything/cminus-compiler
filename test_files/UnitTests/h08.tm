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
 40:     ST  1,-4(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load variable x into accumulator 
 42:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 43:    LDA  1,-4(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-40(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 47:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 48:    LDA  1,-4(1)	Move the fp to the new frame 
 49:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 50:    JMP  7,-17(7)	Call function 
 51:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
 52:     LD  3,-2(1)	Load variable x into accumulator 
 53:     ST  3,-4(1)	Push left side onto temp variable stack 
 54:    LDC  3,2(6)	Load of type int constant 
 55:     LD  4,-4(1)	Pop left hand side into AC1 
 56:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
 58:     LD  3,-3(1)	Load base address of array f 
 59:    LDC  3,0(6)	Load of type int constant 
 60:     ST  3,-4(1)	Push array index onto temp stack 
 61:     LD  3,-3(1)	Load base address of array f 
 62:    LDC  3,1(6)	Load of type int constant 
 63:     ST  3,-5(1)	Push array index onto temp stack 
 64:    LDC  3,1(6)	Load of type int constant 
 65:     LD  4,-5(1)	Pop array index into AC1 
 66:     LD  5,-3(1)	Load base address of array f into AC2 
 67:    SUB  5,5,4	Compute offset for array 
 68:     ST  3,0(5)	Store variable f from AC into loc from AC2 
 69:     LD  4,-4(1)	Pop array index into AC1 
 70:     LD  5,-3(1)	Load base address of array f into AC2 
 71:    SUB  5,5,4	Compute offset for array 
 72:     ST  3,0(5)	Store variable f from AC into loc from AC2 
 73:     LD  3,-3(1)	Load base address of array f 
 74:     LD  3,-2(1)	Load variable x into accumulator 
 75:     LD  5,-3(1)	Load base address of array f into AC2 
 76:    SUB  5,5,3	Compute offset for array 
 77:     LD  3,0(5)	Load array element f from AC into loc from AC2 
 78:    LDA  2,0(3)	Copy accumulator to return register 
 79:     LD  3,-1(1)	Load return address 
 80:     LD  1,0(1)	Adjust fp 
 81:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
 57:    JZR  3,25(7)	IF JMP TO ELSE 
 82:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL fib
 83:     ST  1,-4(1)	Store fp in ghost frame for fib 
 84:     LD  3,-2(1)	Load variable x into accumulator 
 85:     ST  3,-8(1)	Push left side onto temp variable stack 
 86:    LDC  3,1(6)	Load of type int constant 
 87:     LD  4,-8(1)	Pop left hand side into AC1 
 88:    SUB  3,4,3	- Subtraction Operation 
 89:     ST  3,-6(1)	Push parameter onto new frame 
 90:     LD  3,-3(1)	Load base address of array f 
 91:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 92:    LDA  1,-4(1)	Move the fp to the new frame 
 93:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 94:    JMP  7,-56(7)	Call function 
 95:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fib
 96:     LD  3,-3(1)	Load base address of array f 
 97:     LD  3,-2(1)	Load variable x into accumulator 
 98:     ST  3,-4(1)	Push array index onto temp stack 
 99:     LD  3,-3(1)	Load base address of array f 
100:     LD  3,-2(1)	Load variable x into accumulator 
101:     ST  3,-5(1)	Push left side onto temp variable stack 
102:    LDC  3,1(6)	Load of type int constant 
103:     LD  4,-5(1)	Pop left hand side into AC1 
104:    SUB  3,4,3	- Subtraction Operation 
105:     LD  5,-3(1)	Load base address of array f into AC2 
106:    SUB  5,5,3	Compute offset for array 
107:     LD  3,0(5)	Load array element f from AC into loc from AC2 
108:     ST  3,-5(1)	Push left side onto temp variable stack 
109:     LD  3,-3(1)	Load base address of array f 
110:     LD  3,-2(1)	Load variable x into accumulator 
111:     ST  3,-6(1)	Push left side onto temp variable stack 
112:    LDC  3,2(6)	Load of type int constant 
113:     LD  4,-6(1)	Pop left hand side into AC1 
114:    SUB  3,4,3	- Subtraction Operation 
115:     LD  5,-3(1)	Load base address of array f into AC2 
116:    SUB  5,5,3	Compute offset for array 
117:     LD  3,0(5)	Load array element f from AC into loc from AC2 
118:     LD  4,-5(1)	Pop left hand side into AC1 
119:    ADD  3,4,3	+ Operation 
120:     LD  4,-4(1)	Pop array index into AC1 
121:     LD  5,-3(1)	Load base address of array f into AC2 
122:    SUB  5,5,4	Compute offset for array 
123:     ST  3,0(5)	Store variable f from AC into loc from AC2 
124:     LD  3,-3(1)	Load base address of array f 
125:     LD  3,-2(1)	Load variable x into accumulator 
126:     LD  5,-3(1)	Load base address of array f into AC2 
127:    SUB  5,5,3	Compute offset for array 
128:     LD  3,0(5)	Load array element f from AC into loc from AC2 
129:    LDA  2,0(3)	Copy accumulator to return register 
130:     LD  3,-1(1)	Load return address 
131:     LD  1,0(1)	Adjust fp 
132:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
133:    LDC  2,0(6)	Set return value to 0 
134:     LD  3,-1(1)	Load return address 
135:     LD  1,0(1)	Adjust fp 
136:    JMP  7,0(3)	Return 
* END FUNCTION fib
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
137:     ST  3,-1(1)	Store return address 
* COMPOUND
138:    LDC  3,7(6)	Load size of f into AC 
139:     ST  3,-2(1)	Store size of f in data memory 
140:    LDA  3,-3(1)	Load base address of array f 
141:    LDC  3,0(6)	Load of type int constant 
142:     ST  3,-10(1)	Push array index onto temp stack 
143:    LDC  3,0(6)	Load of type int constant 
144:     LD  4,-10(1)	Pop array index into AC1 
145:    LDA  5,-3(1)	Load base address of array f into AC2 
146:    SUB  5,5,4	Compute offset for array 
147:     ST  3,0(5)	Store variable f from AC into loc from AC2 
148:    LDA  3,-3(1)	Load base address of array f 
149:    LDC  3,1(6)	Load of type int constant 
150:     ST  3,-10(1)	Push array index onto temp stack 
151:    LDC  3,0(6)	Load of type int constant 
152:     LD  4,-10(1)	Pop array index into AC1 
153:    LDA  5,-3(1)	Load base address of array f into AC2 
154:    SUB  5,5,4	Compute offset for array 
155:     ST  3,0(5)	Store variable f from AC into loc from AC2 
156:    LDA  3,-3(1)	Load base address of array f 
157:    LDC  3,2(6)	Load of type int constant 
158:     ST  3,-10(1)	Push array index onto temp stack 
159:    LDC  3,0(6)	Load of type int constant 
160:     LD  4,-10(1)	Pop array index into AC1 
161:    LDA  5,-3(1)	Load base address of array f into AC2 
162:    SUB  5,5,4	Compute offset for array 
163:     ST  3,0(5)	Store variable f from AC into loc from AC2 
164:    LDA  3,-3(1)	Load base address of array f 
165:    LDC  3,3(6)	Load of type int constant 
166:     ST  3,-10(1)	Push array index onto temp stack 
167:    LDC  3,0(6)	Load of type int constant 
168:     LD  4,-10(1)	Pop array index into AC1 
169:    LDA  5,-3(1)	Load base address of array f into AC2 
170:    SUB  5,5,4	Compute offset for array 
171:     ST  3,0(5)	Store variable f from AC into loc from AC2 
172:    LDA  3,-3(1)	Load base address of array f 
173:    LDC  3,4(6)	Load of type int constant 
174:     ST  3,-10(1)	Push array index onto temp stack 
175:    LDC  3,0(6)	Load of type int constant 
176:     LD  4,-10(1)	Pop array index into AC1 
177:    LDA  5,-3(1)	Load base address of array f into AC2 
178:    SUB  5,5,4	Compute offset for array 
179:     ST  3,0(5)	Store variable f from AC into loc from AC2 
180:    LDA  3,-3(1)	Load base address of array f 
181:    LDC  3,5(6)	Load of type int constant 
182:     ST  3,-10(1)	Push array index onto temp stack 
183:    LDC  3,0(6)	Load of type int constant 
184:     LD  4,-10(1)	Pop array index into AC1 
185:    LDA  5,-3(1)	Load base address of array f into AC2 
186:    SUB  5,5,4	Compute offset for array 
187:     ST  3,0(5)	Store variable f from AC into loc from AC2 
188:    LDA  3,-3(1)	Load base address of array f 
189:    LDC  3,6(6)	Load of type int constant 
190:     ST  3,-10(1)	Push array index onto temp stack 
191:    LDC  3,0(6)	Load of type int constant 
192:     LD  4,-10(1)	Pop array index into AC1 
193:    LDA  5,-3(1)	Load base address of array f into AC2 
194:    SUB  5,5,4	Compute offset for array 
195:     ST  3,0(5)	Store variable f from AC into loc from AC2 
* CALL fib
196:     ST  1,-10(1)	Store fp in ghost frame for fib 
197:    LDC  3,5(6)	Load of type int constant 
198:     ST  3,-12(1)	Push parameter onto new frame 
199:    LDA  3,-3(1)	Load base address of array f 
200:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
201:    LDA  1,-10(1)	Move the fp to the new frame 
202:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
203:    JMP  7,-165(7)	Call function 
204:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fib
* CALL output
205:     ST  1,-10(1)	Store fp in ghost frame for output 
206:    LDA  3,-3(1)	Load base address of array f 
207:    LDC  3,0(6)	Load of type int constant 
208:    LDA  5,-3(1)	Load base address of array f into AC2 
209:    SUB  5,5,3	Compute offset for array 
210:     LD  3,0(5)	Load array element f from AC into loc from AC2 
211:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
212:    LDA  1,-10(1)	Move the fp to the new frame 
213:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
214:    JMP  7,-209(7)	Call function 
215:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
216:     ST  1,-10(1)	Store fp in ghost frame for output 
217:    LDA  3,-3(1)	Load base address of array f 
218:    LDC  3,1(6)	Load of type int constant 
219:    LDA  5,-3(1)	Load base address of array f into AC2 
220:    SUB  5,5,3	Compute offset for array 
221:     LD  3,0(5)	Load array element f from AC into loc from AC2 
222:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
223:    LDA  1,-10(1)	Move the fp to the new frame 
224:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
225:    JMP  7,-220(7)	Call function 
226:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
227:     ST  1,-10(1)	Store fp in ghost frame for output 
228:    LDA  3,-3(1)	Load base address of array f 
229:    LDC  3,2(6)	Load of type int constant 
230:    LDA  5,-3(1)	Load base address of array f into AC2 
231:    SUB  5,5,3	Compute offset for array 
232:     LD  3,0(5)	Load array element f from AC into loc from AC2 
233:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
234:    LDA  1,-10(1)	Move the fp to the new frame 
235:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
236:    JMP  7,-231(7)	Call function 
237:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
238:     ST  1,-10(1)	Store fp in ghost frame for output 
239:    LDA  3,-3(1)	Load base address of array f 
240:    LDC  3,3(6)	Load of type int constant 
241:    LDA  5,-3(1)	Load base address of array f into AC2 
242:    SUB  5,5,3	Compute offset for array 
243:     LD  3,0(5)	Load array element f from AC into loc from AC2 
244:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
245:    LDA  1,-10(1)	Move the fp to the new frame 
246:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
247:    JMP  7,-242(7)	Call function 
248:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
249:     ST  1,-10(1)	Store fp in ghost frame for output 
250:    LDA  3,-3(1)	Load base address of array f 
251:    LDC  3,4(6)	Load of type int constant 
252:    LDA  5,-3(1)	Load base address of array f into AC2 
253:    SUB  5,5,3	Compute offset for array 
254:     LD  3,0(5)	Load array element f from AC into loc from AC2 
255:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
256:    LDA  1,-10(1)	Move the fp to the new frame 
257:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
258:    JMP  7,-253(7)	Call function 
259:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
260:     ST  1,-10(1)	Store fp in ghost frame for output 
261:    LDA  3,-3(1)	Load base address of array f 
262:    LDC  3,5(6)	Load of type int constant 
263:    LDA  5,-3(1)	Load base address of array f into AC2 
264:    SUB  5,5,3	Compute offset for array 
265:     LD  3,0(5)	Load array element f from AC into loc from AC2 
266:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
267:    LDA  1,-10(1)	Move the fp to the new frame 
268:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
269:    JMP  7,-264(7)	Call function 
270:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
271:     ST  1,-10(1)	Store fp in ghost frame for output 
272:    LDA  3,-3(1)	Load base address of array f 
273:    LDC  3,6(6)	Load of type int constant 
274:    LDA  5,-3(1)	Load base address of array f into AC2 
275:    SUB  5,5,3	Compute offset for array 
276:     LD  3,0(5)	Load array element f from AC into loc from AC2 
277:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
278:    LDA  1,-10(1)	Move the fp to the new frame 
279:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
280:    JMP  7,-275(7)	Call function 
281:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
282:     ST  1,-10(1)	Store fp in ghost frame for outnl 
* Begin call
283:    LDA  1,-10(1)	Move the fp to the new frame 
284:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
285:    JMP  7,-252(7)	Call function 
286:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
287:    LDC  2,0(6)	Set return value to 0 
288:     LD  3,-1(1)	Load return address 
289:     LD  1,0(1)	Adjust fp 
290:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,290(7)	Jump to init [backpatch] 
* INIT
291:    LDA  1,0(0)	set first frame at end of globals 
292:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
293:    LDA  3,1(7)	Return address in ac 
294:    JMP  7,-158(7)	Jump to main 
295:   HALT  0,0,0	DONE! 
* END INIT
