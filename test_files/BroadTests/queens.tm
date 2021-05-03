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
* FUNCTION printboard
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,0(6)	Load of type int constant 
 41:     ST  3,-3(1)	Assigning variable i in Local 
* Beginning WHILE statement
 42:     LD  3,-3(1)	Load variable i into accumulator 
 43:     ST  3,-4(1)	Push left side onto temp variable stack 
 44:     LD  3,-78(0)	Load variable n into accumulator 
 45:     LD  4,-4(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 48:     ST  1,-4(1)	Store fp in ghost frame for output 
 49:     LD  3,-2(1)	Load base address of array col 
 50:     LD  3,-3(1)	Load variable i into accumulator 
 51:     LD  5,-2(1)	Load base address of array col into AC2 
 52:    SUB  5,5,3	Compute offset for array 
 53:     LD  3,0(5)	Load array element col from AC into loc from AC2 
 54:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 55:    LDA  1,-4(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-52(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 59:     LD  4,-3(1)	Load lhs variable 
 60:    LDA  3,1(4)	++ Increment accumulator operation 
 61:     ST  3,-3(1)	Assigning variable i in Local 
* END COMPOUND
 62:    JMP  7,-21(7)	Go to L1 
 47:    JZR  3,15(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
 63:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 64:    LDA  1,-4(1)	Move the fp to the new frame 
 65:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 66:    JMP  7,-33(7)	Call function 
 67:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 68:     LD  4,-79(0)	Load lhs variable 
 69:    LDA  3,1(4)	++ Increment accumulator operation 
 70:     ST  3,-79(0)	Assigning variable count in Global 
* END COMPOUND
* Add standard closing in case there is no return statement
 71:    LDC  2,0(6)	Set return value to 0 
 72:     LD  3,-1(1)	Load return address 
 73:     LD  1,0(1)	Adjust fp 
 74:    JMP  7,0(3)	Return 
* END FUNCTION printboard
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION try
 75:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 76:     LD  3,-2(1)	Load variable c into accumulator 
 77:     ST  3,-4(1)	Push left side onto temp variable stack 
 78:     LD  3,-78(0)	Load variable n into accumulator 
 79:     LD  4,-4(1)	Pop left hand side into AC1 
 80:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* CALL printboard
 82:     ST  1,-4(1)	Store fp in ghost frame for printboard 
 83:    LDA  3,-14(0)	Load base address of array col 
 84:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 85:    LDA  1,-4(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-49(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL printboard
* IF JUMP TO END
 81:    JZR  3,8(7)	IF JMP TO ELSE 
* COMPOUND
 90:    LDC  3,0(6)	Load of type int constant 
 91:     ST  3,-3(1)	Assigning variable r in Local 
* Beginning WHILE statement
 92:     LD  3,-3(1)	Load variable r into accumulator 
 93:     ST  3,-4(1)	Push left side onto temp variable stack 
 94:     LD  3,-78(0)	Load variable n into accumulator 
 95:     LD  4,-4(1)	Pop left hand side into AC1 
 96:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
 98:    LDA  3,-1(0)	Load base address of array row 
 99:     LD  3,-3(1)	Load variable r into accumulator 
100:    LDA  5,-1(0)	Load base address of array row into AC2 
101:    SUB  5,5,3	Compute offset for array 
102:     LD  3,0(5)	Load array element row from AC into loc from AC2 
103:     ST  3,-4(1)	Push left side onto temp variable stack 
104:    LDC  3,0(6)	Load of type int constant 
105:     LD  4,-4(1)	Pop left hand side into AC1 
106:    TEQ  3,4,3	== Equality Operation 
107:     ST  3,-4(1)	Push left side onto temp variable stack 
108:    LDA  3,-27(0)	Load base address of array diagone 
109:     LD  3,-3(1)	Load variable r into accumulator 
110:     ST  3,-5(1)	Push left side onto temp variable stack 
111:     LD  3,-2(1)	Load variable c into accumulator 
112:     LD  4,-5(1)	Pop left hand side into AC1 
113:    ADD  3,4,3	+ Operation 
114:    LDA  5,-27(0)	Load base address of array diagone into AC2 
115:    SUB  5,5,3	Compute offset for array 
116:     LD  3,0(5)	Load array element diagone from AC into loc from AC2 
117:     ST  3,-5(1)	Push left side onto temp variable stack 
118:    LDC  3,0(6)	Load of type int constant 
119:     LD  4,-5(1)	Pop left hand side into AC1 
120:    TEQ  3,4,3	== Equality Operation 
121:     LD  4,-4(1)	Pop left hand side into AC1 
122:    AND  3,4,3	AND operation store in AC 
123:     ST  3,-4(1)	Push left side onto temp variable stack 
124:    LDA  3,-53(0)	Load base address of array diagtwo 
125:     LD  3,-3(1)	Load variable r into accumulator 
126:     ST  3,-5(1)	Push left side onto temp variable stack 
127:     LD  3,-78(0)	Load variable n into accumulator 
128:     ST  3,-6(1)	Push left side onto temp variable stack 
129:    LDC  3,1(6)	Load of type int constant 
130:     LD  4,-6(1)	Pop left hand side into AC1 
131:    SUB  3,4,3	- Subtraction Operation 
132:     LD  4,-5(1)	Pop left hand side into AC1 
133:    ADD  3,4,3	+ Operation 
134:     ST  3,-5(1)	Push left side onto temp variable stack 
135:     LD  3,-2(1)	Load variable c into accumulator 
136:     LD  4,-5(1)	Pop left hand side into AC1 
137:    SUB  3,4,3	- Subtraction Operation 
138:    LDA  5,-53(0)	Load base address of array diagtwo into AC2 
139:    SUB  5,5,3	Compute offset for array 
140:     LD  3,0(5)	Load array element diagtwo from AC into loc from AC2 
141:     ST  3,-5(1)	Push left side onto temp variable stack 
142:    LDC  3,0(6)	Load of type int constant 
143:     LD  4,-5(1)	Pop left hand side into AC1 
144:    TEQ  3,4,3	== Equality Operation 
145:     LD  4,-4(1)	Pop left hand side into AC1 
146:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
148:    LDA  3,-1(0)	Load base address of array row 
149:     LD  3,-3(1)	Load variable r into accumulator 
150:     ST  3,-4(1)	Push array index onto temp stack 
151:    LDC  3,1(6)	Load of type int constant 
152:     LD  4,-4(1)	Pop array index into AC1 
153:    LDA  5,-1(0)	Load base address of array row into AC2 
154:    SUB  5,5,4	Compute offset for array 
155:     ST  3,0(5)	Store variable row from AC into loc from AC2 
156:    LDA  3,-14(0)	Load base address of array col 
157:     LD  3,-2(1)	Load variable c into accumulator 
158:     ST  3,-4(1)	Push array index onto temp stack 
159:     LD  3,-3(1)	Load variable r into accumulator 
160:     LD  4,-4(1)	Pop array index into AC1 
161:    LDA  5,-14(0)	Load base address of array col into AC2 
162:    SUB  5,5,4	Compute offset for array 
163:     ST  3,0(5)	Store variable col from AC into loc from AC2 
164:    LDA  3,-27(0)	Load base address of array diagone 
165:     LD  3,-3(1)	Load variable r into accumulator 
166:     ST  3,-4(1)	Push left side onto temp variable stack 
167:     LD  3,-2(1)	Load variable c into accumulator 
168:     LD  4,-4(1)	Pop left hand side into AC1 
169:    ADD  3,4,3	+ Operation 
170:     ST  3,-4(1)	Push array index onto temp stack 
171:    LDC  3,1(6)	Load of type int constant 
172:     LD  4,-4(1)	Pop array index into AC1 
173:    LDA  5,-27(0)	Load base address of array diagone into AC2 
174:    SUB  5,5,4	Compute offset for array 
175:     ST  3,0(5)	Store variable diagone from AC into loc from AC2 
176:    LDA  3,-53(0)	Load base address of array diagtwo 
177:     LD  3,-3(1)	Load variable r into accumulator 
178:     ST  3,-4(1)	Push left side onto temp variable stack 
179:     LD  3,-78(0)	Load variable n into accumulator 
180:     ST  3,-5(1)	Push left side onto temp variable stack 
181:    LDC  3,1(6)	Load of type int constant 
182:     LD  4,-5(1)	Pop left hand side into AC1 
183:    SUB  3,4,3	- Subtraction Operation 
184:     LD  4,-4(1)	Pop left hand side into AC1 
185:    ADD  3,4,3	+ Operation 
186:     ST  3,-4(1)	Push left side onto temp variable stack 
187:     LD  3,-2(1)	Load variable c into accumulator 
188:     LD  4,-4(1)	Pop left hand side into AC1 
189:    SUB  3,4,3	- Subtraction Operation 
190:     ST  3,-4(1)	Push array index onto temp stack 
191:    LDC  3,1(6)	Load of type int constant 
192:     LD  4,-4(1)	Pop array index into AC1 
193:    LDA  5,-53(0)	Load base address of array diagtwo into AC2 
194:    SUB  5,5,4	Compute offset for array 
195:     ST  3,0(5)	Store variable diagtwo from AC into loc from AC2 
* CALL try
196:     ST  1,-4(1)	Store fp in ghost frame for try 
197:     LD  3,-2(1)	Load variable c into accumulator 
198:     ST  3,-8(1)	Push left side onto temp variable stack 
199:    LDC  3,1(6)	Load of type int constant 
200:     LD  4,-8(1)	Pop left hand side into AC1 
201:    ADD  3,4,3	+ Operation 
202:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
203:    LDA  1,-4(1)	Move the fp to the new frame 
204:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
205:    JMP  7,-131(7)	Call function 
206:    LDA  3,0(2)	Save return result in accumulator 
* END CALL try
207:    LDA  3,-1(0)	Load base address of array row 
208:     LD  3,-3(1)	Load variable r into accumulator 
209:     ST  3,-4(1)	Push array index onto temp stack 
210:    LDC  3,0(6)	Load of type int constant 
211:     LD  4,-4(1)	Pop array index into AC1 
212:    LDA  5,-1(0)	Load base address of array row into AC2 
213:    SUB  5,5,4	Compute offset for array 
214:     ST  3,0(5)	Store variable row from AC into loc from AC2 
215:    LDA  3,-27(0)	Load base address of array diagone 
216:     LD  3,-3(1)	Load variable r into accumulator 
217:     ST  3,-4(1)	Push left side onto temp variable stack 
218:     LD  3,-2(1)	Load variable c into accumulator 
219:     LD  4,-4(1)	Pop left hand side into AC1 
220:    ADD  3,4,3	+ Operation 
221:     ST  3,-4(1)	Push array index onto temp stack 
222:    LDC  3,0(6)	Load of type int constant 
223:     LD  4,-4(1)	Pop array index into AC1 
224:    LDA  5,-27(0)	Load base address of array diagone into AC2 
225:    SUB  5,5,4	Compute offset for array 
226:     ST  3,0(5)	Store variable diagone from AC into loc from AC2 
227:    LDA  3,-53(0)	Load base address of array diagtwo 
228:     LD  3,-3(1)	Load variable r into accumulator 
229:     ST  3,-4(1)	Push left side onto temp variable stack 
230:     LD  3,-78(0)	Load variable n into accumulator 
231:     ST  3,-5(1)	Push left side onto temp variable stack 
232:    LDC  3,1(6)	Load of type int constant 
233:     LD  4,-5(1)	Pop left hand side into AC1 
234:    SUB  3,4,3	- Subtraction Operation 
235:     LD  4,-4(1)	Pop left hand side into AC1 
236:    ADD  3,4,3	+ Operation 
237:     ST  3,-4(1)	Push left side onto temp variable stack 
238:     LD  3,-2(1)	Load variable c into accumulator 
239:     LD  4,-4(1)	Pop left hand side into AC1 
240:    SUB  3,4,3	- Subtraction Operation 
241:     ST  3,-4(1)	Push array index onto temp stack 
242:    LDC  3,0(6)	Load of type int constant 
243:     LD  4,-4(1)	Pop array index into AC1 
244:    LDA  5,-53(0)	Load base address of array diagtwo into AC2 
245:    SUB  5,5,4	Compute offset for array 
246:     ST  3,0(5)	Store variable diagtwo from AC into loc from AC2 
* END COMPOUND
* IF JUMP TO END
147:    JZR  3,100(7)	IF JMP TO ELSE 
247:    LDA  7,0(7)	JUMP TO END 
* END IF
248:     LD  4,-3(1)	Load lhs variable 
249:    LDA  3,1(4)	++ Increment accumulator operation 
250:     ST  3,-3(1)	Assigning variable r in Local 
* END COMPOUND
251:    JMP  7,-160(7)	Go to L1 
 97:    JZR  3,154(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
 89:    LDA  7,162(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
252:    LDC  2,0(6)	Set return value to 0 
253:     LD  3,-1(1)	Load return address 
254:     LD  1,0(1)	Adjust fp 
255:    JMP  7,0(3)	Return 
* END FUNCTION try
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION solve
256:     ST  3,-1(1)	Store return address 
* COMPOUND
257:     LD  3,-2(1)	Load variable num into accumulator 
258:     ST  3,-78(0)	Assigning variable n in Global 
259:    LDC  3,0(6)	Load of type int constant 
260:     ST  3,-79(0)	Assigning variable count in Global 
* CALL try
261:     ST  1,-3(1)	Store fp in ghost frame for try 
262:    LDC  3,0(6)	Load of type int constant 
263:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
264:    LDA  1,-3(1)	Move the fp to the new frame 
265:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
266:    JMP  7,-192(7)	Call function 
267:    LDA  3,0(2)	Save return result in accumulator 
* END CALL try
268:     LD  3,-79(0)	Load variable count into accumulator 
269:    LDA  2,0(3)	Copy accumulator to return register 
270:     LD  3,-1(1)	Load return address 
271:     LD  1,0(1)	Adjust fp 
272:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
273:    LDC  2,0(6)	Set return value to 0 
274:     LD  3,-1(1)	Load return address 
275:     LD  1,0(1)	Adjust fp 
276:    JMP  7,0(3)	Return 
* END FUNCTION solve
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
277:     ST  3,-1(1)	Store return address 
* COMPOUND
* Beginning WHILE statement
* CALL input
278:     ST  1,-3(1)	Store fp in ghost frame for input 
* Begin call
279:    LDA  1,-3(1)	Move the fp to the new frame 
280:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
281:    JMP  7,-281(7)	Call function 
282:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
283:     ST  3,-2(1)	Assigning variable num in Local 
284:     ST  3,-3(1)	Push left side onto temp variable stack 
285:    LDC  3,0(6)	Load of type int constant 
286:     LD  4,-3(1)	Pop left hand side into AC1 
287:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
* CALL output
289:     ST  1,-3(1)	Store fp in ghost frame for output 
* CALL solve
290:     ST  1,-6(1)	Store fp in ghost frame for solve 
291:     LD  3,-2(1)	Load variable num into accumulator 
292:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
293:    LDA  1,-6(1)	Move the fp to the new frame 
294:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
295:    JMP  7,-40(7)	Call function 
296:    LDA  3,0(2)	Save return result in accumulator 
* END CALL solve
297:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
298:    LDA  1,-3(1)	Move the fp to the new frame 
299:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
300:    JMP  7,-295(7)	Call function 
301:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
302:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
303:    LDA  1,-3(1)	Move the fp to the new frame 
304:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
305:    JMP  7,-272(7)	Call function 
306:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
307:    JMP  7,-30(7)	Go to L1 
288:    JZR  3,19(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
308:    LDC  2,0(6)	Set return value to 0 
309:     LD  3,-1(1)	Load return address 
310:     LD  1,0(1)	Adjust fp 
311:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,311(7)	Jump to init [backpatch] 
* INIT
312:    LDA  1,-80(0)	set first frame at end of globals 
313:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
314:    LDC  3,12(6)	Load size of row into AC 
315:     ST  3,0(0)	Store size of row in data memory 
316:    LDC  3,12(6)	Load size of col into AC 
317:     ST  3,-13(0)	Store size of col in data memory 
318:    LDC  3,25(6)	Load size of diagone into AC 
319:     ST  3,-26(0)	Store size of diagone in data memory 
320:    LDC  3,25(6)	Load size of diagtwo into AC 
321:     ST  3,-52(0)	Store size of diagtwo in data memory 
* END INIT GLOBALS AND STATICS
322:    LDA  3,1(7)	Return address in ac 
323:    JMP  7,-47(7)	Jump to main 
324:   HALT  0,0,0	DONE! 
* END INIT
