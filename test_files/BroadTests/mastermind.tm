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
* FUNCTION rand
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 40:     LD  3,-1(0)	Load variable n into accumulator 
 41:     ST  3,-2(1)	Push left side onto temp variable stack 
 42:    LDC  3,0(6)	Load of type int constant 
 43:     LD  4,-2(1)	Pop left hand side into AC1 
 44:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
 46:     LD  3,-1(0)	Load variable n into accumulator 
 47:    NEG  3,3,0	- Change Sign Operation 
 48:     ST  3,-1(0)	Assigning variable n in Global 
* IF JUMP TO END
 45:    JZR  3,4(7)	IF JMP TO ELSE 
 49:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 50:     LD  3,-1(0)	Load variable n into accumulator 
 51:     ST  3,-2(1)	Push left side onto temp variable stack 
 52:    LDC  3,128(6)	Load of type int constant 
 53:     LD  4,-2(1)	Pop left hand side into AC1 
 54:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
 56:     LD  3,-1(0)	Load variable n into accumulator 
 57:     ST  3,-2(1)	Push left side onto temp variable stack 
 58:    LDC  3,128(6)	Load of type int constant 
 59:     LD  4,-2(1)	Pop left hand side into AC1 
 60:    MOD  3,4,3	% mod operation 
 61:     ST  3,-1(0)	Assigning variable n in Global 
* IF JUMP TO END
 55:    JZR  3,7(7)	IF JMP TO ELSE 
 62:    LDA  7,0(7)	JUMP TO END 
* END IF
 63:     LD  4,-1(0)	Load lhs variable 
 64:    LDA  3,1(4)	++ Increment accumulator operation 
 65:     ST  3,-1(0)	Assigning variable n in Global 
 66:    LDA  3,-3(0)	Load base address of array r 
 67:     LD  3,-1(0)	Load variable n into accumulator 
 68:     ST  3,-2(1)	Push array index onto temp stack 
 69:    LDC  3,1366(6)	Load of type int constant 
 70:     ST  3,-3(1)	Push left side onto temp variable stack 
 71:    LDA  3,-3(0)	Load base address of array r 
 72:     LD  3,-1(0)	Load variable n into accumulator 
 73:     ST  3,-4(1)	Push left side onto temp variable stack 
 74:    LDC  3,1(6)	Load of type int constant 
 75:     LD  4,-4(1)	Pop left hand side into AC1 
 76:    SUB  3,4,3	- Subtraction Operation 
 77:    LDA  5,-3(0)	Load base address of array r into AC2 
 78:    SUB  5,5,3	Compute offset for array 
 79:     LD  3,0(5)	Load array element r from AC into loc from AC2 
 80:     LD  4,-3(1)	Pop left hand side into AC1 
 81:    MUL  3,4,3	* Multiplication Operation 
 82:     ST  3,-3(1)	Push left side onto temp variable stack 
 83:    LDC  3,150889(6)	Load of type int constant 
 84:     LD  4,-3(1)	Pop left hand side into AC1 
 85:    ADD  3,4,3	+ Operation 
 86:     ST  3,-3(1)	Push left side onto temp variable stack 
 87:    LDC  3,714025(6)	Load of type int constant 
 88:     LD  4,-3(1)	Pop left hand side into AC1 
 89:    MOD  3,4,3	% mod operation 
 90:     LD  4,-2(1)	Pop array index into AC1 
 91:    LDA  5,-3(0)	Load base address of array r into AC2 
 92:    SUB  5,5,4	Compute offset for array 
 93:     ST  3,0(5)	Store variable r from AC into loc from AC2 
 94:    LDA  3,-3(0)	Load base address of array r 
 95:     LD  3,-1(0)	Load variable n into accumulator 
 96:    LDA  5,-3(0)	Load base address of array r into AC2 
 97:    SUB  5,5,3	Compute offset for array 
 98:     LD  3,0(5)	Load array element r from AC into loc from AC2 
 99:    LDA  2,0(3)	Copy accumulator to return register 
100:     LD  3,-1(1)	Load return address 
101:     LD  1,0(1)	Adjust fp 
102:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
103:    LDC  2,0(6)	Set return value to 0 
104:     LD  3,-1(1)	Load return address 
105:     LD  1,0(1)	Adjust fp 
106:    JMP  7,0(3)	Return 
* END FUNCTION rand
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION search
107:     ST  3,-1(1)	Store return address 
* COMPOUND
108:    LDC  3,0(6)	Load of type int constant 
109:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
110:     LD  3,-4(1)	Load variable i into accumulator 
111:     ST  3,-5(1)	Push left side onto temp variable stack 
112:    LDC  3,4(6)	Load of type int constant 
113:     LD  4,-5(1)	Pop left hand side into AC1 
114:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
116:     LD  3,-2(1)	Load base address of array a 
117:     LD  3,-4(1)	Load variable i into accumulator 
118:     LD  5,-2(1)	Load base address of array a into AC2 
119:    SUB  5,5,3	Compute offset for array 
120:     LD  3,0(5)	Load array element a from AC into loc from AC2 
121:     ST  3,-5(1)	Push left side onto temp variable stack 
122:     LD  3,-3(1)	Load variable k into accumulator 
123:     LD  4,-5(1)	Pop left hand side into AC1 
124:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
126:    LDC  3,1(6)	Load of type bool constant 
127:    LDA  2,0(3)	Copy accumulator to return register 
128:     LD  3,-1(1)	Load return address 
129:     LD  1,0(1)	Adjust fp 
130:    JMP  7,0(3)	Return 
* IF JUMP TO END
125:    JZR  3,6(7)	IF JMP TO ELSE 
131:    LDA  7,0(7)	JUMP TO END 
* END IF
132:     LD  4,-4(1)	Load lhs variable 
133:    LDA  3,1(4)	++ Increment accumulator operation 
134:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
135:    JMP  7,-26(7)	Go to L1 
115:    JZR  3,20(7)	JMP if condition is false 
* End WHILE statement
136:    LDC  3,0(6)	Load of type bool constant 
137:    LDA  2,0(3)	Copy accumulator to return register 
138:     LD  3,-1(1)	Load return address 
139:     LD  1,0(1)	Adjust fp 
140:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
141:    LDC  2,0(6)	Set return value to 0 
142:     LD  3,-1(1)	Load return address 
143:     LD  1,0(1)	Adjust fp 
144:    JMP  7,0(3)	Return 
* END FUNCTION search
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION check
145:     ST  3,-1(1)	Store return address 
* COMPOUND
146:    LDC  3,0(6)	Load of type int constant 
147:     ST  3,-4(1)	Assigning variable c2 in Local 
148:     ST  3,-3(1)	Assigning variable c1 in Local 
149:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
150:     LD  3,-2(1)	Load variable i into accumulator 
151:     ST  3,-5(1)	Push left side onto temp variable stack 
152:    LDC  3,4(6)	Load of type int constant 
153:     LD  4,-5(1)	Pop left hand side into AC1 
154:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
156:    LDA  3,-132(0)	Load base address of array known 
157:     LD  3,-2(1)	Load variable i into accumulator 
158:    LDA  5,-132(0)	Load base address of array known into AC2 
159:    SUB  5,5,3	Compute offset for array 
160:     LD  3,0(5)	Load array element known from AC into loc from AC2 
161:     ST  3,-5(1)	Push left side onto temp variable stack 
162:    LDA  3,-137(0)	Load base address of array guess 
163:     LD  3,-2(1)	Load variable i into accumulator 
164:    LDA  5,-137(0)	Load base address of array guess into AC2 
165:    SUB  5,5,3	Compute offset for array 
166:     LD  3,0(5)	Load array element guess from AC into loc from AC2 
167:     LD  4,-5(1)	Pop left hand side into AC1 
168:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
170:     LD  4,-4(1)	Load lhs variable 
171:    LDA  3,1(4)	++ Increment accumulator operation 
172:     ST  3,-4(1)	Assigning variable c2 in Local 
* IF JUMP TO END
169:    JZR  3,4(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
* CALL search
174:     ST  1,-5(1)	Store fp in ghost frame for search 
175:    LDA  3,-132(0)	Load base address of array known 
176:     ST  3,-7(1)	Push parameter onto new frame 
177:    LDA  3,-137(0)	Load base address of array guess 
178:     LD  3,-2(1)	Load variable i into accumulator 
179:    LDA  5,-137(0)	Load base address of array guess into AC2 
180:    SUB  5,5,3	Compute offset for array 
181:     LD  3,0(5)	Load array element guess from AC into loc from AC2 
182:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
183:    LDA  1,-5(1)	Move the fp to the new frame 
184:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
185:    JMP  7,-79(7)	Call function 
186:    LDA  3,0(2)	Save return result in accumulator 
* END CALL search
* IF JUMP TO ELSE
188:     LD  4,-3(1)	Load lhs variable 
189:    LDA  3,1(4)	++ Increment accumulator operation 
190:     ST  3,-3(1)	Assigning variable c1 in Local 
* IF JUMP TO END
187:    JZR  3,4(7)	IF JMP TO ELSE 
191:    LDA  7,0(7)	JUMP TO END 
* END IF
173:    LDA  7,18(7)	JUMP TO END 
* END IF
192:     LD  4,-2(1)	Load lhs variable 
193:    LDA  3,1(4)	++ Increment accumulator operation 
194:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
195:    JMP  7,-46(7)	Go to L1 
155:    JZR  3,40(7)	JMP if condition is false 
* End WHILE statement
* CALL output
196:     ST  1,-5(1)	Store fp in ghost frame for output 
197:     LD  3,-3(1)	Load variable c1 into accumulator 
198:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
199:    LDA  1,-5(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-196(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
203:     ST  1,-5(1)	Store fp in ghost frame for output 
204:     LD  3,-4(1)	Load variable c2 into accumulator 
205:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
206:    LDA  1,-5(1)	Move the fp to the new frame 
207:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
208:    JMP  7,-203(7)	Call function 
209:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
210:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
211:    LDA  1,-5(1)	Move the fp to the new frame 
212:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
213:    JMP  7,-180(7)	Call function 
214:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
215:     LD  3,-4(1)	Load variable c2 into accumulator 
216:     ST  3,-5(1)	Push left side onto temp variable stack 
217:    LDC  3,4(6)	Load of type int constant 
218:     LD  4,-5(1)	Pop left hand side into AC1 
219:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
221:    LDC  3,1(6)	Load of type bool constant 
222:    LDA  2,0(3)	Copy accumulator to return register 
223:     LD  3,-1(1)	Load return address 
224:     LD  1,0(1)	Adjust fp 
225:    JMP  7,0(3)	Return 
* IF JUMP TO END
220:    JZR  3,6(7)	IF JMP TO ELSE 
227:    LDC  3,0(6)	Load of type bool constant 
228:    LDA  2,0(3)	Copy accumulator to return register 
229:     LD  3,-1(1)	Load return address 
230:     LD  1,0(1)	Adjust fp 
231:    JMP  7,0(3)	Return 
226:    LDA  7,5(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
232:    LDC  2,0(6)	Set return value to 0 
233:     LD  3,-1(1)	Load return address 
234:     LD  1,0(1)	Adjust fp 
235:    JMP  7,0(3)	Return 
* END FUNCTION check
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION turn
236:     ST  3,-1(1)	Store return address 
* COMPOUND
237:     LD  4,0(0)	Load lhs variable 
238:    LDA  3,1(4)	++ Increment accumulator operation 
239:     ST  3,0(0)	Assigning variable turns in Global 
* CALL output
240:     ST  1,-3(1)	Store fp in ghost frame for output 
241:     LD  3,0(0)	Load variable turns into accumulator 
242:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
243:    LDA  1,-3(1)	Move the fp to the new frame 
244:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
245:    JMP  7,-240(7)	Call function 
246:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
247:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
248:    LDA  1,-3(1)	Move the fp to the new frame 
249:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
250:    JMP  7,-217(7)	Call function 
251:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
252:     LD  3,0(0)	Load variable turns into accumulator 
253:     ST  3,-3(1)	Push left side onto temp variable stack 
254:    LDC  3,20(6)	Load of type int constant 
255:     LD  4,-3(1)	Pop left hand side into AC1 
256:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
258:    LDC  3,0(6)	Load of type int constant 
259:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
260:     LD  3,-2(1)	Load variable i into accumulator 
261:     ST  3,-3(1)	Push left side onto temp variable stack 
262:    LDC  3,4(6)	Load of type int constant 
263:     LD  4,-3(1)	Pop left hand side into AC1 
264:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
266:    LDA  3,-137(0)	Load base address of array guess 
267:     LD  3,-2(1)	Load variable i into accumulator 
268:     ST  3,-3(1)	Push array index onto temp stack 
* CALL input
269:     ST  1,-4(1)	Store fp in ghost frame for input 
* Begin call
270:    LDA  1,-4(1)	Move the fp to the new frame 
271:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
272:    JMP  7,-272(7)	Call function 
273:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
274:     LD  4,-3(1)	Pop array index into AC1 
275:    LDA  5,-137(0)	Load base address of array guess into AC2 
276:    SUB  5,5,4	Compute offset for array 
277:     ST  3,0(5)	Store variable guess from AC into loc from AC2 
* BEGIN IF BLOCK
278:    LDA  3,-137(0)	Load base address of array guess 
279:     LD  3,-2(1)	Load variable i into accumulator 
280:    LDA  5,-137(0)	Load base address of array guess into AC2 
281:    SUB  5,5,3	Compute offset for array 
282:     LD  3,0(5)	Load array element guess from AC into loc from AC2 
283:     ST  3,-3(1)	Push left side onto temp variable stack 
284:    LDC  3,0(6)	Load of type int constant 
285:     LD  4,-3(1)	Pop left hand side into AC1 
286:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
288:    LDC  3,0(6)	Load of type bool constant 
289:    LDA  2,0(3)	Copy accumulator to return register 
290:     LD  3,-1(1)	Load return address 
291:     LD  1,0(1)	Adjust fp 
292:    JMP  7,0(3)	Return 
* IF JUMP TO END
287:    JZR  3,6(7)	IF JMP TO ELSE 
293:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
294:    LDA  3,-137(0)	Load base address of array guess 
295:     LD  3,-2(1)	Load variable i into accumulator 
296:    LDA  5,-137(0)	Load base address of array guess into AC2 
297:    SUB  5,5,3	Compute offset for array 
298:     LD  3,0(5)	Load array element guess from AC into loc from AC2 
299:     ST  3,-3(1)	Push left side onto temp variable stack 
300:    LDC  3,10(6)	Load of type int constant 
301:     LD  4,-3(1)	Pop left hand side into AC1 
302:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
304:    LDA  3,-137(0)	Load base address of array guess 
305:     LD  3,-2(1)	Load variable i into accumulator 
306:     ST  3,-3(1)	Push array index onto temp stack 
307:    LDA  3,-137(0)	Load base address of array guess 
308:     LD  3,-2(1)	Load variable i into accumulator 
309:    LDA  5,-137(0)	Load base address of array guess into AC2 
310:    SUB  5,5,3	Compute offset for array 
311:     LD  3,0(5)	Load array element guess from AC into loc from AC2 
312:     ST  3,-4(1)	Push left side onto temp variable stack 
313:    LDC  3,10(6)	Load of type int constant 
314:     LD  4,-4(1)	Pop left hand side into AC1 
315:    MOD  3,4,3	% mod operation 
316:     LD  4,-3(1)	Pop array index into AC1 
317:    LDA  5,-137(0)	Load base address of array guess into AC2 
318:    SUB  5,5,4	Compute offset for array 
319:     ST  3,0(5)	Store variable guess from AC into loc from AC2 
* IF JUMP TO END
303:    JZR  3,17(7)	IF JMP TO ELSE 
320:    LDA  7,0(7)	JUMP TO END 
* END IF
321:     LD  4,-2(1)	Load lhs variable 
322:    LDA  3,1(4)	++ Increment accumulator operation 
323:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
324:    JMP  7,-65(7)	Go to L1 
265:    JZR  3,59(7)	JMP if condition is false 
* End WHILE statement
* BEGIN IF BLOCK
* CALL check
325:     ST  1,-3(1)	Store fp in ghost frame for check 
* Begin call
326:    LDA  1,-3(1)	Move the fp to the new frame 
327:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
328:    JMP  7,-184(7)	Call function 
329:    LDA  3,0(2)	Save return result in accumulator 
* END CALL check
* IF JUMP TO ELSE
* COMPOUND
331:    LDC  3,0(6)	Load of type int constant 
332:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
333:     LD  3,-2(1)	Load variable i into accumulator 
334:     ST  3,-3(1)	Push left side onto temp variable stack 
335:    LDC  3,10(6)	Load of type int constant 
336:     LD  4,-3(1)	Pop left hand side into AC1 
337:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL outputb
339:     ST  1,-3(1)	Store fp in ghost frame for outputb 
340:    LDC  3,1(6)	Load of type bool constant 
341:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
342:    LDA  1,-3(1)	Move the fp to the new frame 
343:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
344:    JMP  7,-328(7)	Call function 
345:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
346:     LD  4,-2(1)	Load lhs variable 
347:    LDA  3,1(4)	++ Increment accumulator operation 
348:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
349:    JMP  7,-17(7)	Go to L1 
338:    JZR  3,11(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
350:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
351:    LDA  1,-3(1)	Move the fp to the new frame 
352:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
353:    JMP  7,-320(7)	Call function 
354:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
355:    LDC  3,0(6)	Load of type bool constant 
356:    LDA  2,0(3)	Copy accumulator to return register 
357:     LD  3,-1(1)	Load return address 
358:     LD  1,0(1)	Adjust fp 
359:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
330:    JZR  3,30(7)	IF JMP TO ELSE 
* COMPOUND
361:    LDC  3,1(6)	Load of type bool constant 
362:    LDA  2,0(3)	Copy accumulator to return register 
363:     LD  3,-1(1)	Load return address 
364:     LD  1,0(1)	Adjust fp 
365:    JMP  7,0(3)	Return 
* END COMPOUND
360:    LDA  7,5(7)	JUMP TO END 
* END IF
* END COMPOUND
* IF JUMP TO END
257:    JZR  3,109(7)	IF JMP TO ELSE 
366:    LDA  7,0(7)	JUMP TO END 
* END IF
367:    LDC  3,0(6)	Load of type int constant 
368:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
369:     LD  3,-2(1)	Load variable i into accumulator 
370:     ST  3,-3(1)	Push left side onto temp variable stack 
371:    LDC  3,10(6)	Load of type int constant 
372:     LD  4,-3(1)	Pop left hand side into AC1 
373:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL outputb
375:     ST  1,-3(1)	Store fp in ghost frame for outputb 
376:    LDC  3,0(6)	Load of type bool constant 
377:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
378:    LDA  1,-3(1)	Move the fp to the new frame 
379:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
380:    JMP  7,-364(7)	Call function 
381:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
382:     LD  4,-2(1)	Load lhs variable 
383:    LDA  3,1(4)	++ Increment accumulator operation 
384:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
385:    JMP  7,-17(7)	Go to L1 
374:    JZR  3,11(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
386:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
387:    LDA  1,-3(1)	Move the fp to the new frame 
388:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
389:    JMP  7,-356(7)	Call function 
390:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
391:    LDC  3,0(6)	Load of type bool constant 
392:    LDA  2,0(3)	Copy accumulator to return register 
393:     LD  3,-1(1)	Load return address 
394:     LD  1,0(1)	Adjust fp 
395:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
396:    LDC  2,0(6)	Set return value to 0 
397:     LD  3,-1(1)	Load return address 
398:     LD  1,0(1)	Adjust fp 
399:    JMP  7,0(3)	Return 
* END FUNCTION turn
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
400:     ST  3,-1(1)	Store return address 
* COMPOUND
401:    LDC  3,0(6)	Load of type int constant 
402:     ST  3,-1(0)	Assigning variable n in Global 
403:    LDA  3,-3(0)	Load base address of array r 
404:    LDC  3,0(6)	Load of type int constant 
405:     ST  3,-3(1)	Push array index onto temp stack 
* CALL input
406:     ST  1,-4(1)	Store fp in ghost frame for input 
* Begin call
407:    LDA  1,-4(1)	Move the fp to the new frame 
408:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
409:    JMP  7,-409(7)	Call function 
410:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
411:     LD  4,-3(1)	Pop array index into AC1 
412:    LDA  5,-3(0)	Load base address of array r into AC2 
413:    SUB  5,5,4	Compute offset for array 
414:     ST  3,0(5)	Store variable r from AC into loc from AC2 
* CALL outnl
415:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
416:    LDA  1,-3(1)	Move the fp to the new frame 
417:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
418:    JMP  7,-385(7)	Call function 
419:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
420:    LDC  3,0(6)	Load of type int constant 
421:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
422:     LD  3,-2(1)	Load variable i into accumulator 
423:     ST  3,-3(1)	Push left side onto temp variable stack 
424:    LDC  3,4(6)	Load of type int constant 
425:     LD  4,-3(1)	Pop left hand side into AC1 
426:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
428:    LDA  3,-132(0)	Load base address of array known 
429:     LD  3,-2(1)	Load variable i into accumulator 
430:     ST  3,-3(1)	Push array index onto temp stack 
* CALL rand
431:     ST  1,-4(1)	Store fp in ghost frame for rand 
* Begin call
432:    LDA  1,-4(1)	Move the fp to the new frame 
433:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
434:    JMP  7,-396(7)	Call function 
435:    LDA  3,0(2)	Save return result in accumulator 
* END CALL rand
436:     ST  3,-4(1)	Push left side onto temp variable stack 
437:    LDC  3,10(6)	Load of type int constant 
438:     LD  4,-4(1)	Pop left hand side into AC1 
439:    MOD  3,4,3	% mod operation 
440:     LD  4,-3(1)	Pop array index into AC1 
441:    LDA  5,-132(0)	Load base address of array known into AC2 
442:    SUB  5,5,4	Compute offset for array 
443:     ST  3,0(5)	Store variable known from AC into loc from AC2 
444:     LD  4,-2(1)	Load lhs variable 
445:    LDA  3,1(4)	++ Increment accumulator operation 
446:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
447:    JMP  7,-26(7)	Go to L1 
427:    JZR  3,20(7)	JMP if condition is false 
* End WHILE statement
448:    LDC  3,0(6)	Load of type int constant 
449:     ST  3,0(0)	Assigning variable turns in Global 
* Beginning WHILE statement
* CALL turn
450:     ST  1,-3(1)	Store fp in ghost frame for turn 
* Begin call
451:    LDA  1,-3(1)	Move the fp to the new frame 
452:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
453:    JMP  7,-218(7)	Call function 
454:    LDA  3,0(2)	Save return result in accumulator 
* END CALL turn
456:    JMP  7,-7(7)	Go to L1 
455:    JZR  3,1(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
457:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
458:    LDA  1,-3(1)	Move the fp to the new frame 
459:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
460:    JMP  7,-427(7)	Call function 
461:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
462:    LDC  3,0(6)	Load of type int constant 
463:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
464:     LD  3,-2(1)	Load variable i into accumulator 
465:     ST  3,-3(1)	Push left side onto temp variable stack 
466:    LDC  3,4(6)	Load of type int constant 
467:     LD  4,-3(1)	Pop left hand side into AC1 
468:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
470:     ST  1,-3(1)	Store fp in ghost frame for output 
471:    LDA  3,-132(0)	Load base address of array known 
472:     LD  3,-2(1)	Load variable i into accumulator 
473:    LDA  5,-132(0)	Load base address of array known into AC2 
474:    SUB  5,5,3	Compute offset for array 
475:     LD  3,0(5)	Load array element known from AC into loc from AC2 
476:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
477:    LDA  1,-3(1)	Move the fp to the new frame 
478:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
479:    JMP  7,-474(7)	Call function 
480:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
481:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
482:    LDA  1,-3(1)	Move the fp to the new frame 
483:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
484:    JMP  7,-451(7)	Call function 
485:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
486:     LD  4,-2(1)	Load lhs variable 
487:    LDA  3,1(4)	++ Increment accumulator operation 
488:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
489:    JMP  7,-26(7)	Go to L1 
469:    JZR  3,20(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
490:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
491:    LDA  1,-3(1)	Move the fp to the new frame 
492:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
493:    JMP  7,-460(7)	Call function 
494:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
495:    LDC  2,0(6)	Set return value to 0 
496:     LD  3,-1(1)	Load return address 
497:     LD  1,0(1)	Adjust fp 
498:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,498(7)	Jump to init [backpatch] 
* INIT
499:    LDA  1,-141(0)	set first frame at end of globals 
500:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
501:    LDC  3,128(6)	Load size of r into AC 
502:     ST  3,-2(0)	Store size of r in data memory 
503:    LDC  3,4(6)	Load size of known into AC 
504:     ST  3,-131(0)	Store size of known in data memory 
505:    LDC  3,4(6)	Load size of guess into AC 
506:     ST  3,-136(0)	Store size of guess in data memory 
* END INIT GLOBALS AND STATICS
507:    LDA  3,1(7)	Return address in ac 
508:    JMP  7,-109(7)	Jump to main 
509:   HALT  0,0,0	DONE! 
* END INIT
