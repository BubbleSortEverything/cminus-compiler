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
* FUNCTION initBoard
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,0(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
 42:     LD  3,-2(1)	Load variable i into accumulator 
 43:     ST  3,-3(1)	Push left side onto temp variable stack 
 44:    LDC  3,81(6)	Load of type int constant 
 45:     LD  4,-3(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 48:    LDA  3,-1(0)	Load base address of array board 
 49:     LD  3,-2(1)	Load variable i into accumulator 
 50:     ST  3,-3(1)	Push array index onto temp stack 
 51:    LDC  3,0(6)	Load of type int constant 
 52:     LD  4,-3(1)	Pop array index into AC1 
 53:    LDA  5,-1(0)	Load base address of array board into AC2 
 54:    SUB  5,5,4	Compute offset for array 
 55:     ST  3,0(5)	Store variable board from AC into loc from AC2 
 56:    LDA  3,-83(0)	Load base address of array locked 
 57:     LD  3,-2(1)	Load variable i into accumulator 
 58:     ST  3,-3(1)	Push array index onto temp stack 
 59:    LDC  3,0(6)	Load of type bool constant 
 60:     LD  4,-3(1)	Pop array index into AC1 
 61:    LDA  5,-83(0)	Load base address of array locked into AC2 
 62:    SUB  5,5,4	Compute offset for array 
 63:     ST  3,0(5)	Store variable locked from AC into loc from AC2 
 64:     LD  4,-2(1)	Load lhs variable 
 65:    LDA  3,1(4)	++ Increment accumulator operation 
 66:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
 67:    JMP  7,-26(7)	Go to L1 
 47:    JZR  3,20(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
 68:    LDC  2,0(6)	Set return value to 0 
 69:     LD  3,-1(1)	Load return address 
 70:     LD  1,0(1)	Adjust fp 
 71:    JMP  7,0(3)	Return 
* END FUNCTION initBoard
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION setValue
 72:     ST  3,-1(1)	Store return address 
* COMPOUND
 73:    LDA  3,-1(0)	Load base address of array board 
 74:     LD  3,-2(1)	Load variable row into accumulator 
 75:     ST  3,-5(1)	Push left side onto temp variable stack 
 76:    LDC  3,9(6)	Load of type int constant 
 77:     LD  4,-5(1)	Pop left hand side into AC1 
 78:    MUL  3,4,3	* Multiplication Operation 
 79:     ST  3,-5(1)	Push left side onto temp variable stack 
 80:     LD  3,-3(1)	Load variable col into accumulator 
 81:     LD  4,-5(1)	Pop left hand side into AC1 
 82:    ADD  3,4,3	+ Operation 
 83:     ST  3,-5(1)	Push array index onto temp stack 
 84:     LD  3,-4(1)	Load variable value into accumulator 
 85:     LD  4,-5(1)	Pop array index into AC1 
 86:    LDA  5,-1(0)	Load base address of array board into AC2 
 87:    SUB  5,5,4	Compute offset for array 
 88:     ST  3,0(5)	Store variable board from AC into loc from AC2 
* END COMPOUND
* Add standard closing in case there is no return statement
 89:    LDC  2,0(6)	Set return value to 0 
 90:     LD  3,-1(1)	Load return address 
 91:     LD  1,0(1)	Adjust fp 
 92:    JMP  7,0(3)	Return 
* END FUNCTION setValue
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION getValue
 93:     ST  3,-1(1)	Store return address 
* COMPOUND
 94:    LDA  3,-1(0)	Load base address of array board 
 95:     LD  3,-2(1)	Load variable row into accumulator 
 96:     ST  3,-4(1)	Push left side onto temp variable stack 
 97:    LDC  3,9(6)	Load of type int constant 
 98:     LD  4,-4(1)	Pop left hand side into AC1 
 99:    MUL  3,4,3	* Multiplication Operation 
100:     ST  3,-4(1)	Push left side onto temp variable stack 
101:     LD  3,-3(1)	Load variable col into accumulator 
102:     LD  4,-4(1)	Pop left hand side into AC1 
103:    ADD  3,4,3	+ Operation 
104:    LDA  5,-1(0)	Load base address of array board into AC2 
105:    SUB  5,5,3	Compute offset for array 
106:     LD  3,0(5)	Load array element board from AC into loc from AC2 
107:    LDA  2,0(3)	Copy accumulator to return register 
108:     LD  3,-1(1)	Load return address 
109:     LD  1,0(1)	Adjust fp 
110:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
111:    LDC  2,0(6)	Set return value to 0 
112:     LD  3,-1(1)	Load return address 
113:     LD  1,0(1)	Adjust fp 
114:    JMP  7,0(3)	Return 
* END FUNCTION getValue
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION setLocked
115:     ST  3,-1(1)	Store return address 
* COMPOUND
116:    LDA  3,-83(0)	Load base address of array locked 
117:     LD  3,-2(1)	Load variable row into accumulator 
118:     ST  3,-5(1)	Push left side onto temp variable stack 
119:    LDC  3,9(6)	Load of type int constant 
120:     LD  4,-5(1)	Pop left hand side into AC1 
121:    MUL  3,4,3	* Multiplication Operation 
122:     ST  3,-5(1)	Push left side onto temp variable stack 
123:     LD  3,-3(1)	Load variable col into accumulator 
124:     LD  4,-5(1)	Pop left hand side into AC1 
125:    ADD  3,4,3	+ Operation 
126:     ST  3,-5(1)	Push array index onto temp stack 
127:     LD  3,-4(1)	Load variable value into accumulator 
128:     LD  4,-5(1)	Pop array index into AC1 
129:    LDA  5,-83(0)	Load base address of array locked into AC2 
130:    SUB  5,5,4	Compute offset for array 
131:     ST  3,0(5)	Store variable locked from AC into loc from AC2 
* END COMPOUND
* Add standard closing in case there is no return statement
132:    LDC  2,0(6)	Set return value to 0 
133:     LD  3,-1(1)	Load return address 
134:     LD  1,0(1)	Adjust fp 
135:    JMP  7,0(3)	Return 
* END FUNCTION setLocked
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION getLocked
136:     ST  3,-1(1)	Store return address 
* COMPOUND
137:    LDA  3,-83(0)	Load base address of array locked 
138:     LD  3,-2(1)	Load variable row into accumulator 
139:     ST  3,-4(1)	Push left side onto temp variable stack 
140:    LDC  3,9(6)	Load of type int constant 
141:     LD  4,-4(1)	Pop left hand side into AC1 
142:    MUL  3,4,3	* Multiplication Operation 
143:     ST  3,-4(1)	Push left side onto temp variable stack 
144:     LD  3,-3(1)	Load variable col into accumulator 
145:     LD  4,-4(1)	Pop left hand side into AC1 
146:    ADD  3,4,3	+ Operation 
147:    LDA  5,-83(0)	Load base address of array locked into AC2 
148:    SUB  5,5,3	Compute offset for array 
149:     LD  3,0(5)	Load array element locked from AC into loc from AC2 
150:    LDA  2,0(3)	Copy accumulator to return register 
151:     LD  3,-1(1)	Load return address 
152:     LD  1,0(1)	Adjust fp 
153:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
154:    LDC  2,0(6)	Set return value to 0 
155:     LD  3,-1(1)	Load return address 
156:     LD  1,0(1)	Adjust fp 
157:    JMP  7,0(3)	Return 
* END FUNCTION getLocked
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION isOkAt
158:     ST  3,-1(1)	Store return address 
* COMPOUND
159:    LDC  3,0(6)	Load of type int constant 
160:     ST  3,-5(1)	Assigning variable i in Local 
* Beginning WHILE statement
161:     LD  3,-5(1)	Load variable i into accumulator 
162:     ST  3,-9(1)	Push left side onto temp variable stack 
163:    LDC  3,9(6)	Load of type int constant 
164:     LD  4,-9(1)	Pop left hand side into AC1 
165:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
* CALL getValue
167:     ST  1,-9(1)	Store fp in ghost frame for getValue 
168:     LD  3,-5(1)	Load variable i into accumulator 
169:     ST  3,-11(1)	Push parameter onto new frame 
170:     LD  3,-3(1)	Load variable col into accumulator 
171:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
172:    LDA  1,-9(1)	Move the fp to the new frame 
173:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
174:    JMP  7,-82(7)	Call function 
175:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getValue
176:     ST  3,-9(1)	Push left side onto temp variable stack 
177:     LD  3,-4(1)	Load variable value into accumulator 
178:     LD  4,-9(1)	Pop left hand side into AC1 
179:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
181:    LDC  3,0(6)	Load of type bool constant 
182:    LDA  2,0(3)	Copy accumulator to return register 
183:     LD  3,-1(1)	Load return address 
184:     LD  1,0(1)	Adjust fp 
185:    JMP  7,0(3)	Return 
* IF JUMP TO END
180:    JZR  3,6(7)	IF JMP TO ELSE 
186:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
* CALL getValue
187:     ST  1,-9(1)	Store fp in ghost frame for getValue 
188:     LD  3,-2(1)	Load variable row into accumulator 
189:     ST  3,-11(1)	Push parameter onto new frame 
190:     LD  3,-5(1)	Load variable i into accumulator 
191:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
192:    LDA  1,-9(1)	Move the fp to the new frame 
193:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
194:    JMP  7,-102(7)	Call function 
195:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getValue
196:     ST  3,-9(1)	Push left side onto temp variable stack 
197:     LD  3,-4(1)	Load variable value into accumulator 
198:     LD  4,-9(1)	Pop left hand side into AC1 
199:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
201:    LDC  3,0(6)	Load of type bool constant 
202:    LDA  2,0(3)	Copy accumulator to return register 
203:     LD  3,-1(1)	Load return address 
204:     LD  1,0(1)	Adjust fp 
205:    JMP  7,0(3)	Return 
* IF JUMP TO END
200:    JZR  3,6(7)	IF JMP TO ELSE 
206:    LDA  7,0(7)	JUMP TO END 
* END IF
207:     LD  4,-5(1)	Load lhs variable 
208:    LDA  3,1(4)	++ Increment accumulator operation 
209:     ST  3,-5(1)	Assigning variable i in Local 
* END COMPOUND
210:    JMP  7,-50(7)	Go to L1 
166:    JZR  3,44(7)	JMP if condition is false 
* End WHILE statement
211:     LD  3,-2(1)	Load variable row into accumulator 
212:     ST  3,-9(1)	Push left side onto temp variable stack 
213:    LDC  3,3(6)	Load of type int constant 
214:     LD  4,-9(1)	Pop left hand side into AC1 
215:    DIV  3,4,3	/ Division operation 
216:     ST  3,-9(1)	Push left side onto temp variable stack 
217:    LDC  3,3(6)	Load of type int constant 
218:     LD  4,-9(1)	Pop left hand side into AC1 
219:    MUL  3,4,3	* Multiplication Operation 
220:     ST  3,-7(1)	Assigning variable boxRowStart in Local 
221:     LD  3,-3(1)	Load variable col into accumulator 
222:     ST  3,-9(1)	Push left side onto temp variable stack 
223:    LDC  3,3(6)	Load of type int constant 
224:     LD  4,-9(1)	Pop left hand side into AC1 
225:    DIV  3,4,3	/ Division operation 
226:     ST  3,-9(1)	Push left side onto temp variable stack 
227:    LDC  3,3(6)	Load of type int constant 
228:     LD  4,-9(1)	Pop left hand side into AC1 
229:    MUL  3,4,3	* Multiplication Operation 
230:     ST  3,-8(1)	Assigning variable boxColStart in Local 
231:    LDC  3,0(6)	Load of type int constant 
232:     ST  3,-5(1)	Assigning variable i in Local 
* Beginning WHILE statement
233:     LD  3,-5(1)	Load variable i into accumulator 
234:     ST  3,-9(1)	Push left side onto temp variable stack 
235:    LDC  3,3(6)	Load of type int constant 
236:     LD  4,-9(1)	Pop left hand side into AC1 
237:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
239:    LDC  3,0(6)	Load of type int constant 
240:     ST  3,-6(1)	Assigning variable j in Local 
* Beginning WHILE statement
241:     LD  3,-6(1)	Load variable j into accumulator 
242:     ST  3,-9(1)	Push left side onto temp variable stack 
243:    LDC  3,3(6)	Load of type int constant 
244:     LD  4,-9(1)	Pop left hand side into AC1 
245:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
* CALL getValue
247:     ST  1,-9(1)	Store fp in ghost frame for getValue 
248:     LD  3,-7(1)	Load variable boxRowStart into accumulator 
249:     ST  3,-13(1)	Push left side onto temp variable stack 
250:     LD  3,-5(1)	Load variable i into accumulator 
251:     LD  4,-13(1)	Pop left hand side into AC1 
252:    ADD  3,4,3	+ Operation 
253:     ST  3,-11(1)	Push parameter onto new frame 
254:     LD  3,-8(1)	Load variable boxColStart into accumulator 
255:     ST  3,-13(1)	Push left side onto temp variable stack 
256:     LD  3,-6(1)	Load variable j into accumulator 
257:     LD  4,-13(1)	Pop left hand side into AC1 
258:    ADD  3,4,3	+ Operation 
259:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
260:    LDA  1,-9(1)	Move the fp to the new frame 
261:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
262:    JMP  7,-170(7)	Call function 
263:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getValue
264:     ST  3,-9(1)	Push left side onto temp variable stack 
265:     LD  3,-4(1)	Load variable value into accumulator 
266:     LD  4,-9(1)	Pop left hand side into AC1 
267:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
269:    LDC  3,0(6)	Load of type bool constant 
270:    LDA  2,0(3)	Copy accumulator to return register 
271:     LD  3,-1(1)	Load return address 
272:     LD  1,0(1)	Adjust fp 
273:    JMP  7,0(3)	Return 
* IF JUMP TO END
268:    JZR  3,6(7)	IF JMP TO ELSE 
274:    LDA  7,0(7)	JUMP TO END 
* END IF
275:     LD  4,-6(1)	Load lhs variable 
276:    LDA  3,1(4)	++ Increment accumulator operation 
277:     ST  3,-6(1)	Assigning variable j in Local 
* END COMPOUND
278:    JMP  7,-38(7)	Go to L1 
246:    JZR  3,32(7)	JMP if condition is false 
* End WHILE statement
279:     LD  4,-5(1)	Load lhs variable 
280:    LDA  3,1(4)	++ Increment accumulator operation 
281:     ST  3,-5(1)	Assigning variable i in Local 
* END COMPOUND
282:    JMP  7,-50(7)	Go to L1 
238:    JZR  3,44(7)	JMP if condition is false 
* End WHILE statement
283:    LDC  3,1(6)	Load of type bool constant 
284:    LDA  2,0(3)	Copy accumulator to return register 
285:     LD  3,-1(1)	Load return address 
286:     LD  1,0(1)	Adjust fp 
287:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
288:    LDC  2,0(6)	Set return value to 0 
289:     LD  3,-1(1)	Load return address 
290:     LD  1,0(1)	Adjust fp 
291:    JMP  7,0(3)	Return 
* END FUNCTION isOkAt
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION search
292:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
* CALL getLocked
293:     ST  1,-6(1)	Store fp in ghost frame for getLocked 
294:     LD  3,-2(1)	Load variable i into accumulator 
295:     ST  3,-8(1)	Push parameter onto new frame 
296:     LD  3,-3(1)	Load variable j into accumulator 
297:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
298:    LDA  1,-6(1)	Move the fp to the new frame 
299:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
300:    JMP  7,-165(7)	Call function 
301:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getLocked
* IF JUMP TO ELSE
* COMPOUND
* BEGIN IF BLOCK
303:     LD  3,-2(1)	Load variable i into accumulator 
304:     ST  3,-6(1)	Push left side onto temp variable stack 
305:    LDC  3,8(6)	Load of type int constant 
306:     LD  4,-6(1)	Pop left hand side into AC1 
307:    TEQ  3,4,3	== Equality Operation 
308:     ST  3,-6(1)	Push left side onto temp variable stack 
309:     LD  3,-3(1)	Load variable j into accumulator 
310:     ST  3,-7(1)	Push left side onto temp variable stack 
311:    LDC  3,8(6)	Load of type int constant 
312:     LD  4,-7(1)	Pop left hand side into AC1 
313:    TEQ  3,4,3	== Equality Operation 
314:     LD  4,-6(1)	Pop left hand side into AC1 
315:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
317:    LDC  3,1(6)	Load of type bool constant 
318:    LDA  2,0(3)	Copy accumulator to return register 
319:     LD  3,-1(1)	Load return address 
320:     LD  1,0(1)	Adjust fp 
321:    JMP  7,0(3)	Return 
* IF JUMP TO END
316:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
323:     LD  3,-3(1)	Load variable j into accumulator 
324:     ST  3,-6(1)	Push left side onto temp variable stack 
325:    LDC  3,8(6)	Load of type int constant 
326:     LD  4,-6(1)	Pop left hand side into AC1 
327:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* CALL search
329:     ST  1,-6(1)	Store fp in ghost frame for search 
330:     LD  3,-2(1)	Load variable i into accumulator 
331:     ST  3,-12(1)	Push left side onto temp variable stack 
332:    LDC  3,1(6)	Load of type int constant 
333:     LD  4,-12(1)	Pop left hand side into AC1 
334:    ADD  3,4,3	+ Operation 
335:     ST  3,-8(1)	Push parameter onto new frame 
336:    LDC  3,0(6)	Load of type int constant 
337:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
338:    LDA  1,-6(1)	Move the fp to the new frame 
339:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
340:    JMP  7,-49(7)	Call function 
341:    LDA  3,0(2)	Save return result in accumulator 
* END CALL search
342:    LDA  2,0(3)	Copy accumulator to return register 
343:     LD  3,-1(1)	Load return address 
344:     LD  1,0(1)	Adjust fp 
345:    JMP  7,0(3)	Return 
* IF JUMP TO END
328:    JZR  3,18(7)	IF JMP TO ELSE 
* CALL search
347:     ST  1,-6(1)	Store fp in ghost frame for search 
348:     LD  3,-2(1)	Load variable i into accumulator 
349:     ST  3,-8(1)	Push parameter onto new frame 
350:     LD  3,-3(1)	Load variable j into accumulator 
351:     ST  3,-12(1)	Push left side onto temp variable stack 
352:    LDC  3,1(6)	Load of type int constant 
353:     LD  4,-12(1)	Pop left hand side into AC1 
354:    ADD  3,4,3	+ Operation 
355:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
356:    LDA  1,-6(1)	Move the fp to the new frame 
357:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
358:    JMP  7,-67(7)	Call function 
359:    LDA  3,0(2)	Save return result in accumulator 
* END CALL search
360:    LDA  2,0(3)	Copy accumulator to return register 
361:     LD  3,-1(1)	Load return address 
362:     LD  1,0(1)	Adjust fp 
363:    JMP  7,0(3)	Return 
346:    LDA  7,17(7)	JUMP TO END 
* END IF
322:    LDA  7,41(7)	JUMP TO END 
* END IF
* END COMPOUND
* IF JUMP TO END
302:    JZR  3,62(7)	IF JMP TO ELSE 
* COMPOUND
365:    LDC  3,1(6)	Load of type int constant 
366:     ST  3,-4(1)	Assigning variable n in Local 
* Beginning WHILE statement
367:     LD  3,-4(1)	Load variable n into accumulator 
368:     ST  3,-6(1)	Push left side onto temp variable stack 
369:    LDC  3,9(6)	Load of type int constant 
370:     LD  4,-6(1)	Pop left hand side into AC1 
371:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
* CALL isOkAt
373:     ST  1,-6(1)	Store fp in ghost frame for isOkAt 
374:     LD  3,-2(1)	Load variable i into accumulator 
375:     ST  3,-8(1)	Push parameter onto new frame 
376:     LD  3,-3(1)	Load variable j into accumulator 
377:     ST  3,-9(1)	Push parameter onto new frame 
378:     LD  3,-4(1)	Load variable n into accumulator 
379:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
380:    LDA  1,-6(1)	Move the fp to the new frame 
381:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
382:    JMP  7,-225(7)	Call function 
383:    LDA  3,0(2)	Save return result in accumulator 
* END CALL isOkAt
* IF JUMP TO ELSE
* COMPOUND
* CALL setValue
385:     ST  1,-6(1)	Store fp in ghost frame for setValue 
386:     LD  3,-2(1)	Load variable i into accumulator 
387:     ST  3,-8(1)	Push parameter onto new frame 
388:     LD  3,-3(1)	Load variable j into accumulator 
389:     ST  3,-9(1)	Push parameter onto new frame 
390:     LD  3,-4(1)	Load variable n into accumulator 
391:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
392:    LDA  1,-6(1)	Move the fp to the new frame 
393:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
394:    JMP  7,-323(7)	Call function 
395:    LDA  3,0(2)	Save return result in accumulator 
* END CALL setValue
* BEGIN IF BLOCK
396:     LD  3,-2(1)	Load variable i into accumulator 
397:     ST  3,-6(1)	Push left side onto temp variable stack 
398:    LDC  3,8(6)	Load of type int constant 
399:     LD  4,-6(1)	Pop left hand side into AC1 
400:    TEQ  3,4,3	== Equality Operation 
401:     ST  3,-6(1)	Push left side onto temp variable stack 
402:     LD  3,-3(1)	Load variable j into accumulator 
403:     ST  3,-7(1)	Push left side onto temp variable stack 
404:    LDC  3,8(6)	Load of type int constant 
405:     LD  4,-7(1)	Pop left hand side into AC1 
406:    TEQ  3,4,3	== Equality Operation 
407:     LD  4,-6(1)	Pop left hand side into AC1 
408:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
410:    LDC  3,1(6)	Load of type bool constant 
411:    LDA  2,0(3)	Copy accumulator to return register 
412:     LD  3,-1(1)	Load return address 
413:     LD  1,0(1)	Adjust fp 
414:    JMP  7,0(3)	Return 
* IF JUMP TO END
409:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
416:     LD  3,-3(1)	Load variable j into accumulator 
417:     ST  3,-6(1)	Push left side onto temp variable stack 
418:    LDC  3,8(6)	Load of type int constant 
419:     LD  4,-6(1)	Pop left hand side into AC1 
420:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* CALL search
422:     ST  1,-6(1)	Store fp in ghost frame for search 
423:     LD  3,-2(1)	Load variable i into accumulator 
424:     ST  3,-12(1)	Push left side onto temp variable stack 
425:    LDC  3,1(6)	Load of type int constant 
426:     LD  4,-12(1)	Pop left hand side into AC1 
427:    ADD  3,4,3	+ Operation 
428:     ST  3,-8(1)	Push parameter onto new frame 
429:    LDC  3,0(6)	Load of type int constant 
430:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
431:    LDA  1,-6(1)	Move the fp to the new frame 
432:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
433:    JMP  7,-142(7)	Call function 
434:    LDA  3,0(2)	Save return result in accumulator 
* END CALL search
435:     ST  3,-5(1)	Assigning variable foundOne in Local 
* IF JUMP TO END
421:    JZR  3,15(7)	IF JMP TO ELSE 
* CALL search
437:     ST  1,-6(1)	Store fp in ghost frame for search 
438:     LD  3,-2(1)	Load variable i into accumulator 
439:     ST  3,-8(1)	Push parameter onto new frame 
440:     LD  3,-3(1)	Load variable j into accumulator 
441:     ST  3,-12(1)	Push left side onto temp variable stack 
442:    LDC  3,1(6)	Load of type int constant 
443:     LD  4,-12(1)	Pop left hand side into AC1 
444:    ADD  3,4,3	+ Operation 
445:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
446:    LDA  1,-6(1)	Move the fp to the new frame 
447:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
448:    JMP  7,-157(7)	Call function 
449:    LDA  3,0(2)	Save return result in accumulator 
* END CALL search
450:     ST  3,-5(1)	Assigning variable foundOne in Local 
436:    LDA  7,14(7)	JUMP TO END 
* END IF
415:    LDA  7,35(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
451:     LD  3,-5(1)	Load variable foundOne into accumulator 
* IF JUMP TO ELSE
453:    LDC  3,1(6)	Load of type bool constant 
454:    LDA  2,0(3)	Copy accumulator to return register 
455:     LD  3,-1(1)	Load return address 
456:     LD  1,0(1)	Adjust fp 
457:    JMP  7,0(3)	Return 
* IF JUMP TO END
452:    JZR  3,6(7)	IF JMP TO ELSE 
* CALL setValue
459:     ST  1,-6(1)	Store fp in ghost frame for setValue 
460:     LD  3,-2(1)	Load variable i into accumulator 
461:     ST  3,-8(1)	Push parameter onto new frame 
462:     LD  3,-3(1)	Load variable j into accumulator 
463:     ST  3,-9(1)	Push parameter onto new frame 
464:    LDC  3,0(6)	Load of type int constant 
465:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
466:    LDA  1,-6(1)	Move the fp to the new frame 
467:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
468:    JMP  7,-397(7)	Call function 
469:    LDA  3,0(2)	Save return result in accumulator 
* END CALL setValue
458:    LDA  7,11(7)	JUMP TO END 
* END IF
* END COMPOUND
* IF JUMP TO END
384:    JZR  3,86(7)	IF JMP TO ELSE 
470:    LDA  7,0(7)	JUMP TO END 
* END IF
471:     LD  4,-4(1)	Load lhs variable 
472:    LDA  3,1(4)	++ Increment accumulator operation 
473:     ST  3,-4(1)	Assigning variable n in Local 
* END COMPOUND
474:    JMP  7,-108(7)	Go to L1 
372:    JZR  3,102(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
364:    LDA  7,110(7)	JUMP TO END 
* END IF
475:    LDC  3,0(6)	Load of type bool constant 
476:    LDA  2,0(3)	Copy accumulator to return register 
477:     LD  3,-1(1)	Load return address 
478:     LD  1,0(1)	Adjust fp 
479:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
480:    LDC  2,0(6)	Set return value to 0 
481:     LD  3,-1(1)	Load return address 
482:     LD  1,0(1)	Adjust fp 
483:    JMP  7,0(3)	Return 
* END FUNCTION search
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION searchTrivial
484:     ST  3,-1(1)	Store return address 
* COMPOUND
485:    LDC  3,1(6)	Load of type bool constant 
486:     ST  3,-6(1)	Assigning variable changed in Local 
* Beginning WHILE statement
487:     LD  3,-6(1)	Load variable changed into accumulator 
* COMPOUND
489:    LDC  3,0(6)	Load of type bool constant 
490:     ST  3,-6(1)	Assigning variable changed in Local 
491:    LDC  3,0(6)	Load of type int constant 
492:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
493:     LD  3,-2(1)	Load variable i into accumulator 
494:     ST  3,-8(1)	Push left side onto temp variable stack 
495:    LDC  3,9(6)	Load of type int constant 
496:     LD  4,-8(1)	Pop left hand side into AC1 
497:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
499:    LDC  3,0(6)	Load of type int constant 
500:     ST  3,-3(1)	Assigning variable j in Local 
* Beginning WHILE statement
501:     LD  3,-3(1)	Load variable j into accumulator 
502:     ST  3,-8(1)	Push left side onto temp variable stack 
503:    LDC  3,9(6)	Load of type int constant 
504:     LD  4,-8(1)	Pop left hand side into AC1 
505:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
* CALL getLocked
507:     ST  1,-8(1)	Store fp in ghost frame for getLocked 
508:     LD  3,-2(1)	Load variable i into accumulator 
509:     ST  3,-10(1)	Push parameter onto new frame 
510:     LD  3,-3(1)	Load variable j into accumulator 
511:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
512:    LDA  1,-8(1)	Move the fp to the new frame 
513:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
514:    JMP  7,-379(7)	Call function 
515:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getLocked
516:     ST  3,-8(1)	Push left side onto temp variable stack 
517:    LDC  3,0(6)	Load of type bool constant 
518:     LD  4,-8(1)	Pop left hand side into AC1 
519:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
521:    LDC  3,1(6)	Load of type int constant 
522:     ST  3,-4(1)	Assigning variable test in Local 
523:    LDC  3,0(6)	Load of type bool constant 
524:     ST  3,-7(1)	Assigning variable foundOne in Local 
* Beginning WHILE statement
525:     LD  3,-4(1)	Load variable test into accumulator 
526:     ST  3,-8(1)	Push left side onto temp variable stack 
527:    LDC  3,9(6)	Load of type int constant 
528:     LD  4,-8(1)	Pop left hand side into AC1 
529:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
* CALL isOkAt
531:     ST  1,-8(1)	Store fp in ghost frame for isOkAt 
532:     LD  3,-2(1)	Load variable i into accumulator 
533:     ST  3,-10(1)	Push parameter onto new frame 
534:     LD  3,-3(1)	Load variable j into accumulator 
535:     ST  3,-11(1)	Push parameter onto new frame 
536:     LD  3,-4(1)	Load variable test into accumulator 
537:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
538:    LDA  1,-8(1)	Move the fp to the new frame 
539:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
540:    JMP  7,-383(7)	Call function 
541:    LDA  3,0(2)	Save return result in accumulator 
* END CALL isOkAt
* IF JUMP TO ELSE
* COMPOUND
* BEGIN IF BLOCK
543:     LD  3,-7(1)	Load variable foundOne into accumulator 
* IF JUMP TO ELSE
* COMPOUND
545:    LDC  3,0(6)	Load of type bool constant 
546:     ST  3,-7(1)	Assigning variable foundOne in Local 
* END COMPOUND
* IF JUMP TO END
544:    JZR  3,4(7)	IF JMP TO ELSE 
* COMPOUND
549:    LDC  3,1(6)	Load of type bool constant 
550:     ST  3,-7(1)	Assigning variable foundOne in Local 
551:     LD  3,-4(1)	Load variable test into accumulator 
552:     ST  3,-5(1)	Assigning variable value in Local 
* END COMPOUND
548:    LDA  7,4(7)	JUMP TO END 
* END IF
* END COMPOUND
* IF JUMP TO END
542:    JZR  3,11(7)	IF JMP TO ELSE 
553:    LDA  7,0(7)	JUMP TO END 
* END IF
554:     LD  4,-4(1)	Load lhs variable 
555:    LDA  3,1(4)	++ Increment accumulator operation 
556:     ST  3,-4(1)	Assigning variable test in Local 
* END COMPOUND
557:    JMP  7,-33(7)	Go to L1 
530:    JZR  3,27(7)	JMP if condition is false 
547:    JMP  0,10(7)	Break statement backpatch jump 
* End WHILE statement
* BEGIN IF BLOCK
558:     LD  3,-7(1)	Load variable foundOne into accumulator 
* IF JUMP TO ELSE
* COMPOUND
* CALL setValue
560:     ST  1,-8(1)	Store fp in ghost frame for setValue 
561:     LD  3,-2(1)	Load variable i into accumulator 
562:     ST  3,-10(1)	Push parameter onto new frame 
563:     LD  3,-3(1)	Load variable j into accumulator 
564:     ST  3,-11(1)	Push parameter onto new frame 
565:     LD  3,-5(1)	Load variable value into accumulator 
566:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
567:    LDA  1,-8(1)	Move the fp to the new frame 
568:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
569:    JMP  7,-498(7)	Call function 
570:    LDA  3,0(2)	Save return result in accumulator 
* END CALL setValue
* CALL setLocked
571:     ST  1,-8(1)	Store fp in ghost frame for setLocked 
572:     LD  3,-2(1)	Load variable i into accumulator 
573:     ST  3,-10(1)	Push parameter onto new frame 
574:     LD  3,-3(1)	Load variable j into accumulator 
575:     ST  3,-11(1)	Push parameter onto new frame 
576:    LDC  3,1(6)	Load of type bool constant 
577:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
578:    LDA  1,-8(1)	Move the fp to the new frame 
579:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
580:    JMP  7,-466(7)	Call function 
581:    LDA  3,0(2)	Save return result in accumulator 
* END CALL setLocked
582:    LDC  3,1(6)	Load of type bool constant 
583:     ST  3,-6(1)	Assigning variable changed in Local 
* END COMPOUND
* IF JUMP TO END
559:    JZR  3,25(7)	IF JMP TO ELSE 
584:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
* IF JUMP TO END
520:    JZR  3,65(7)	IF JMP TO ELSE 
585:    LDA  7,0(7)	JUMP TO END 
* END IF
586:     LD  4,-3(1)	Load lhs variable 
587:    LDA  3,1(4)	++ Increment accumulator operation 
588:     ST  3,-3(1)	Assigning variable j in Local 
* END COMPOUND
589:    JMP  7,-89(7)	Go to L1 
506:    JZR  3,83(7)	JMP if condition is false 
* End WHILE statement
590:     LD  4,-2(1)	Load lhs variable 
591:    LDA  3,1(4)	++ Increment accumulator operation 
592:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
593:    JMP  7,-101(7)	Go to L1 
498:    JZR  3,95(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
594:    JMP  7,-108(7)	Go to L1 
488:    JZR  3,106(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
595:    LDC  2,0(6)	Set return value to 0 
596:     LD  3,-1(1)	Load return address 
597:     LD  1,0(1)	Adjust fp 
598:    JMP  7,0(3)	Return 
* END FUNCTION searchTrivial
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION solve
599:     ST  3,-1(1)	Store return address 
* COMPOUND
600:    LDC  3,0(6)	Load of type int constant 
601:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
602:     LD  3,-2(1)	Load variable i into accumulator 
603:     ST  3,-5(1)	Push left side onto temp variable stack 
604:    LDC  3,9(6)	Load of type int constant 
605:     LD  4,-5(1)	Pop left hand side into AC1 
606:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
608:    LDC  3,0(6)	Load of type int constant 
609:     ST  3,-3(1)	Assigning variable j in Local 
* Beginning WHILE statement
610:     LD  3,-3(1)	Load variable j into accumulator 
611:     ST  3,-5(1)	Push left side onto temp variable stack 
612:    LDC  3,9(6)	Load of type int constant 
613:     LD  4,-5(1)	Pop left hand side into AC1 
614:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL getValue
616:     ST  1,-5(1)	Store fp in ghost frame for getValue 
617:     LD  3,-2(1)	Load variable i into accumulator 
618:     ST  3,-7(1)	Push parameter onto new frame 
619:     LD  3,-3(1)	Load variable j into accumulator 
620:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
621:    LDA  1,-5(1)	Move the fp to the new frame 
622:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
623:    JMP  7,-531(7)	Call function 
624:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getValue
625:     ST  3,-4(1)	Assigning variable n in Local 
* CALL setValue
626:     ST  1,-5(1)	Store fp in ghost frame for setValue 
627:     LD  3,-2(1)	Load variable i into accumulator 
628:     ST  3,-7(1)	Push parameter onto new frame 
629:     LD  3,-3(1)	Load variable j into accumulator 
630:     ST  3,-8(1)	Push parameter onto new frame 
631:    LDC  3,0(6)	Load of type int constant 
632:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
633:    LDA  1,-5(1)	Move the fp to the new frame 
634:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
635:    JMP  7,-564(7)	Call function 
636:    LDA  3,0(2)	Save return result in accumulator 
* END CALL setValue
* BEGIN IF BLOCK
* CALL getLocked
637:     ST  1,-5(1)	Store fp in ghost frame for getLocked 
638:     LD  3,-2(1)	Load variable i into accumulator 
639:     ST  3,-7(1)	Push parameter onto new frame 
640:     LD  3,-3(1)	Load variable j into accumulator 
641:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
642:    LDA  1,-5(1)	Move the fp to the new frame 
643:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
644:    JMP  7,-509(7)	Call function 
645:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getLocked
646:     ST  3,-5(1)	Push left side onto temp variable stack 
647:    LDC  3,1(6)	Load of type bool constant 
648:     LD  4,-5(1)	Pop left hand side into AC1 
649:    TEQ  3,4,3	== Equality Operation 
650:     ST  3,-5(1)	Push left side onto temp variable stack 
* CALL isOkAt
651:     ST  1,-6(1)	Store fp in ghost frame for isOkAt 
652:     LD  3,-2(1)	Load variable i into accumulator 
653:     ST  3,-8(1)	Push parameter onto new frame 
654:     LD  3,-3(1)	Load variable j into accumulator 
655:     ST  3,-9(1)	Push parameter onto new frame 
656:     LD  3,-4(1)	Load variable n into accumulator 
657:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
658:    LDA  1,-6(1)	Move the fp to the new frame 
659:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
660:    JMP  7,-503(7)	Call function 
661:    LDA  3,0(2)	Save return result in accumulator 
* END CALL isOkAt
662:     ST  3,-6(1)	Push left side onto temp variable stack 
663:    LDC  3,0(6)	Load of type bool constant 
664:     LD  4,-6(1)	Pop left hand side into AC1 
665:    TEQ  3,4,3	== Equality Operation 
666:     LD  4,-5(1)	Pop left hand side into AC1 
667:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
669:    LDC  3,0(6)	Load of type bool constant 
670:    LDA  2,0(3)	Copy accumulator to return register 
671:     LD  3,-1(1)	Load return address 
672:     LD  1,0(1)	Adjust fp 
673:    JMP  7,0(3)	Return 
* IF JUMP TO END
668:    JZR  3,6(7)	IF JMP TO ELSE 
674:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL setValue
675:     ST  1,-5(1)	Store fp in ghost frame for setValue 
676:     LD  3,-2(1)	Load variable i into accumulator 
677:     ST  3,-7(1)	Push parameter onto new frame 
678:     LD  3,-3(1)	Load variable j into accumulator 
679:     ST  3,-8(1)	Push parameter onto new frame 
680:     LD  3,-4(1)	Load variable n into accumulator 
681:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
682:    LDA  1,-5(1)	Move the fp to the new frame 
683:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
684:    JMP  7,-613(7)	Call function 
685:    LDA  3,0(2)	Save return result in accumulator 
* END CALL setValue
686:     LD  4,-3(1)	Load lhs variable 
687:    LDA  3,1(4)	++ Increment accumulator operation 
688:     ST  3,-3(1)	Assigning variable j in Local 
* END COMPOUND
689:    JMP  7,-80(7)	Go to L1 
615:    JZR  3,74(7)	JMP if condition is false 
* End WHILE statement
690:     LD  4,-2(1)	Load lhs variable 
691:    LDA  3,1(4)	++ Increment accumulator operation 
692:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
693:    JMP  7,-92(7)	Go to L1 
607:    JZR  3,86(7)	JMP if condition is false 
* End WHILE statement
* CALL searchTrivial
694:     ST  1,-5(1)	Store fp in ghost frame for searchTrivial 
* Begin call
695:    LDA  1,-5(1)	Move the fp to the new frame 
696:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
697:    JMP  7,-214(7)	Call function 
698:    LDA  3,0(2)	Save return result in accumulator 
* END CALL searchTrivial
* CALL search
699:     ST  1,-5(1)	Store fp in ghost frame for search 
700:    LDC  3,0(6)	Load of type int constant 
701:     ST  3,-7(1)	Push parameter onto new frame 
702:    LDC  3,0(6)	Load of type int constant 
703:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
704:    LDA  1,-5(1)	Move the fp to the new frame 
705:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
706:    JMP  7,-415(7)	Call function 
707:    LDA  3,0(2)	Save return result in accumulator 
* END CALL search
708:    LDA  2,0(3)	Copy accumulator to return register 
709:     LD  3,-1(1)	Load return address 
710:     LD  1,0(1)	Adjust fp 
711:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
712:    LDC  2,0(6)	Set return value to 0 
713:     LD  3,-1(1)	Load return address 
714:     LD  1,0(1)	Adjust fp 
715:    JMP  7,0(3)	Return 
* END FUNCTION solve
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION showBoard
716:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL outnl
717:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
718:    LDA  1,-4(1)	Move the fp to the new frame 
719:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
720:    JMP  7,-687(7)	Call function 
721:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
722:    LDC  3,0(6)	Load of type int constant 
723:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
724:     LD  3,-2(1)	Load variable i into accumulator 
725:     ST  3,-4(1)	Push left side onto temp variable stack 
726:    LDC  3,9(6)	Load of type int constant 
727:     LD  4,-4(1)	Pop left hand side into AC1 
728:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
730:    LDC  3,0(6)	Load of type int constant 
731:     ST  3,-3(1)	Assigning variable j in Local 
* Beginning WHILE statement
732:     LD  3,-3(1)	Load variable j into accumulator 
733:     ST  3,-4(1)	Push left side onto temp variable stack 
734:    LDC  3,9(6)	Load of type int constant 
735:     LD  4,-4(1)	Pop left hand side into AC1 
736:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
738:     ST  1,-4(1)	Store fp in ghost frame for output 
* CALL getValue
739:     ST  1,-7(1)	Store fp in ghost frame for getValue 
740:     LD  3,-2(1)	Load variable i into accumulator 
741:     ST  3,-9(1)	Push parameter onto new frame 
742:     LD  3,-3(1)	Load variable j into accumulator 
743:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
744:    LDA  1,-7(1)	Move the fp to the new frame 
745:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
746:    JMP  7,-654(7)	Call function 
747:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getValue
748:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
749:    LDA  1,-4(1)	Move the fp to the new frame 
750:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
751:    JMP  7,-746(7)	Call function 
752:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
753:     LD  4,-3(1)	Load lhs variable 
754:    LDA  3,1(4)	++ Increment accumulator operation 
755:     ST  3,-3(1)	Assigning variable j in Local 
* END COMPOUND
756:    JMP  7,-25(7)	Go to L1 
737:    JZR  3,19(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
757:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
758:    LDA  1,-4(1)	Move the fp to the new frame 
759:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
760:    JMP  7,-727(7)	Call function 
761:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
762:     LD  4,-2(1)	Load lhs variable 
763:    LDA  3,1(4)	++ Increment accumulator operation 
764:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
765:    JMP  7,-42(7)	Go to L1 
729:    JZR  3,36(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
766:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
767:    LDA  1,-4(1)	Move the fp to the new frame 
768:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
769:    JMP  7,-736(7)	Call function 
770:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
771:    LDC  2,0(6)	Set return value to 0 
772:     LD  3,-1(1)	Load return address 
773:     LD  1,0(1)	Adjust fp 
774:    JMP  7,0(3)	Return 
* END FUNCTION showBoard
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION getInput
775:     ST  3,-1(1)	Store return address 
* COMPOUND
776:    LDC  3,0(6)	Load of type int constant 
777:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
778:     LD  3,-2(1)	Load variable i into accumulator 
779:     ST  3,-5(1)	Push left side onto temp variable stack 
780:    LDC  3,9(6)	Load of type int constant 
781:     LD  4,-5(1)	Pop left hand side into AC1 
782:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
784:    LDC  3,0(6)	Load of type int constant 
785:     ST  3,-3(1)	Assigning variable j in Local 
* Beginning WHILE statement
786:     LD  3,-3(1)	Load variable j into accumulator 
787:     ST  3,-5(1)	Push left side onto temp variable stack 
788:    LDC  3,9(6)	Load of type int constant 
789:     LD  4,-5(1)	Pop left hand side into AC1 
790:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL input
792:     ST  1,-5(1)	Store fp in ghost frame for input 
* Begin call
793:    LDA  1,-5(1)	Move the fp to the new frame 
794:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
795:    JMP  7,-795(7)	Call function 
796:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
797:     ST  3,-4(1)	Assigning variable inputVal in Local 
* BEGIN IF BLOCK
798:     LD  3,-4(1)	Load variable inputVal into accumulator 
799:     ST  3,-5(1)	Push left side onto temp variable stack 
800:    LDC  3,0(6)	Load of type int constant 
801:     LD  4,-5(1)	Pop left hand side into AC1 
802:    TGT  3,4,3	Greather than > operation store in AC 
803:     ST  3,-5(1)	Push left side onto temp variable stack 
804:     LD  3,-4(1)	Load variable inputVal into accumulator 
805:     ST  3,-6(1)	Push left side onto temp variable stack 
806:    LDC  3,10(6)	Load of type int constant 
807:     LD  4,-6(1)	Pop left hand side into AC1 
808:    TLT  3,4,3	Less than < operation store in AC 
809:     LD  4,-5(1)	Pop left hand side into AC1 
810:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* CALL setValue
812:     ST  1,-5(1)	Store fp in ghost frame for setValue 
813:     LD  3,-2(1)	Load variable i into accumulator 
814:     ST  3,-7(1)	Push parameter onto new frame 
815:     LD  3,-3(1)	Load variable j into accumulator 
816:     ST  3,-8(1)	Push parameter onto new frame 
817:     LD  3,-4(1)	Load variable inputVal into accumulator 
818:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
819:    LDA  1,-5(1)	Move the fp to the new frame 
820:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
821:    JMP  7,-750(7)	Call function 
822:    LDA  3,0(2)	Save return result in accumulator 
* END CALL setValue
* CALL setLocked
823:     ST  1,-5(1)	Store fp in ghost frame for setLocked 
824:     LD  3,-2(1)	Load variable i into accumulator 
825:     ST  3,-7(1)	Push parameter onto new frame 
826:     LD  3,-3(1)	Load variable j into accumulator 
827:     ST  3,-8(1)	Push parameter onto new frame 
828:    LDC  3,1(6)	Load of type bool constant 
829:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
830:    LDA  1,-5(1)	Move the fp to the new frame 
831:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
832:    JMP  7,-718(7)	Call function 
833:    LDA  3,0(2)	Save return result in accumulator 
* END CALL setLocked
* END COMPOUND
* IF JUMP TO END
811:    JZR  3,23(7)	IF JMP TO ELSE 
834:    LDA  7,0(7)	JUMP TO END 
* END IF
835:     LD  4,-3(1)	Load lhs variable 
836:    LDA  3,1(4)	++ Increment accumulator operation 
837:     ST  3,-3(1)	Assigning variable j in Local 
* END COMPOUND
838:    JMP  7,-53(7)	Go to L1 
791:    JZR  3,47(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
839:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
840:    LDA  1,-5(1)	Move the fp to the new frame 
841:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
842:    JMP  7,-809(7)	Call function 
843:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
844:     LD  4,-2(1)	Load lhs variable 
845:    LDA  3,1(4)	++ Increment accumulator operation 
846:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
847:    JMP  7,-70(7)	Go to L1 
783:    JZR  3,64(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
848:    LDC  2,0(6)	Set return value to 0 
849:     LD  3,-1(1)	Load return address 
850:     LD  1,0(1)	Adjust fp 
851:    JMP  7,0(3)	Return 
* END FUNCTION getInput
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
852:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL initBoard
853:     ST  1,-2(1)	Store fp in ghost frame for initBoard 
* Begin call
854:    LDA  1,-2(1)	Move the fp to the new frame 
855:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
856:    JMP  7,-818(7)	Call function 
857:    LDA  3,0(2)	Save return result in accumulator 
* END CALL initBoard
* CALL getInput
858:     ST  1,-2(1)	Store fp in ghost frame for getInput 
* Begin call
859:    LDA  1,-2(1)	Move the fp to the new frame 
860:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
861:    JMP  7,-87(7)	Call function 
862:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getInput
* BEGIN IF BLOCK
* CALL solve
863:     ST  1,-2(1)	Store fp in ghost frame for solve 
* Begin call
864:    LDA  1,-2(1)	Move the fp to the new frame 
865:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
866:    JMP  7,-268(7)	Call function 
867:    LDA  3,0(2)	Save return result in accumulator 
* END CALL solve
* IF JUMP TO ELSE
* COMPOUND
* CALL showBoard
869:     ST  1,-2(1)	Store fp in ghost frame for showBoard 
* Begin call
870:    LDA  1,-2(1)	Move the fp to the new frame 
871:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
872:    JMP  7,-157(7)	Call function 
873:    LDA  3,0(2)	Save return result in accumulator 
* END CALL showBoard
* END COMPOUND
* IF JUMP TO END
868:    JZR  3,6(7)	IF JMP TO ELSE 
* COMPOUND
* CALL outputb
875:     ST  1,-2(1)	Store fp in ghost frame for outputb 
876:    LDC  3,0(6)	Load of type bool constant 
877:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
878:    LDA  1,-2(1)	Move the fp to the new frame 
879:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
880:    JMP  7,-864(7)	Call function 
881:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
882:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
883:    LDA  1,-2(1)	Move the fp to the new frame 
884:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
885:    JMP  7,-852(7)	Call function 
886:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
874:    LDA  7,12(7)	JUMP TO END 
* END IF
887:    LDC  3,0(6)	Load of type int constant 
888:    LDA  2,0(3)	Copy accumulator to return register 
889:     LD  3,-1(1)	Load return address 
890:     LD  1,0(1)	Adjust fp 
891:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
892:    LDC  2,0(6)	Set return value to 0 
893:     LD  3,-1(1)	Load return address 
894:     LD  1,0(1)	Adjust fp 
895:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,895(7)	Jump to init [backpatch] 
* INIT
896:    LDA  1,-164(0)	set first frame at end of globals 
897:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
898:    LDC  3,81(6)	Load size of board into AC 
899:     ST  3,0(0)	Store size of board in data memory 
900:    LDC  3,81(6)	Load size of locked into AC 
901:     ST  3,-82(0)	Store size of locked in data memory 
* END INIT GLOBALS AND STATICS
902:    LDA  3,1(7)	Return address in ac 
903:    JMP  7,-52(7)	Jump to main 
904:   HALT  0,0,0	DONE! 
* END INIT
