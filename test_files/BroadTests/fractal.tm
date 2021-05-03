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
* FUNCTION Mandelbrot
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* Beginning WHILE statement
 40:     LD  3,0(0)	Load variable TOP into accumulator 
 41:     ST  3,-8(1)	Push left side onto temp variable stack 
 42:     LD  3,-7(0)	Load variable YMax into accumulator 
 43:     LD  4,-8(1)	Pop left hand side into AC1 
 44:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 46:    LDC  3,512(6)	Load of type int constant 
 47:    NEG  3,3,0	- Change Sign Operation 
 48:     ST  3,-1(0)	Assigning variable LEFT in Global 
* Beginning WHILE statement
 49:     LD  3,-1(0)	Load variable LEFT into accumulator 
 50:     ST  3,-8(1)	Push left side onto temp variable stack 
 51:     LD  3,-6(0)	Load variable XMax into accumulator 
 52:     LD  4,-8(1)	Pop left hand side into AC1 
 53:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 55:     LD  3,-1(0)	Load variable LEFT into accumulator 
 56:     ST  3,-5(1)	Assigning variable A in Local 
 57:     LD  3,0(0)	Load variable TOP into accumulator 
 58:     ST  3,-4(1)	Assigning variable Bi in Local 
 59:     LD  3,-5(1)	Load variable A into accumulator 
 60:     ST  3,-8(1)	Push left side onto temp variable stack 
 61:     LD  3,-5(1)	Load variable A into accumulator 
 62:     LD  4,-8(1)	Pop left hand side into AC1 
 63:    MUL  3,4,3	* Multiplication Operation 
 64:     ST  3,-8(1)	Push left side onto temp variable stack 
 65:    LDC  3,256(6)	Load of type int constant 
 66:     LD  4,-8(1)	Pop left hand side into AC1 
 67:    DIV  3,4,3	/ Division operation 
 68:     ST  3,-6(1)	Assigning variable NextA in Local 
 69:     LD  3,-4(1)	Load variable Bi into accumulator 
 70:     ST  3,-8(1)	Push left side onto temp variable stack 
 71:     LD  3,-4(1)	Load variable Bi into accumulator 
 72:     LD  4,-8(1)	Pop left hand side into AC1 
 73:    MUL  3,4,3	* Multiplication Operation 
 74:     ST  3,-8(1)	Push left side onto temp variable stack 
 75:    LDC  3,256(6)	Load of type int constant 
 76:     LD  4,-8(1)	Pop left hand side into AC1 
 77:    DIV  3,4,3	/ Division operation 
 78:     ST  3,-7(1)	Assigning variable NextBi in Local 
 79:     LD  3,-6(1)	Load variable NextA into accumulator 
 80:     ST  3,-8(1)	Push left side onto temp variable stack 
 81:     LD  3,-7(1)	Load variable NextBi into accumulator 
 82:     LD  4,-8(1)	Pop left hand side into AC1 
 83:    ADD  3,4,3	+ Operation 
 84:     ST  3,-3(1)	Assigning variable Len in Local 
 85:    LDC  3,0(6)	Load of type int constant 
 86:     ST  3,-8(0)	Assigning variable iter in Global 
* Beginning WHILE statement
 87:     LD  3,-3(1)	Load variable Len into accumulator 
 88:     ST  3,-8(1)	Push left side onto temp variable stack 
 89:    LDC  3,1024(6)	Load of type int constant 
 90:     LD  4,-8(1)	Pop left hand side into AC1 
 91:    TLE  3,4,3	LEQ <= operation store in AC 
 92:     ST  3,-8(1)	Push left side onto temp variable stack 
 93:     LD  3,-8(0)	Load variable iter into accumulator 
 94:     ST  3,-9(1)	Push left side onto temp variable stack 
 95:    LDC  3,11(6)	Load of type int constant 
 96:     LD  4,-9(1)	Pop left hand side into AC1 
 97:    TLT  3,4,3	Less than < operation store in AC 
 98:     LD  4,-8(1)	Pop left hand side into AC1 
 99:    AND  3,4,3	AND operation store in AC 
* COMPOUND
101:    LDC  3,2(6)	Load of type int constant 
102:     ST  3,-8(1)	Push left side onto temp variable stack 
103:     LD  3,-5(1)	Load variable A into accumulator 
104:     ST  3,-9(1)	Push left side onto temp variable stack 
105:     LD  3,-4(1)	Load variable Bi into accumulator 
106:     LD  4,-9(1)	Pop left hand side into AC1 
107:    MUL  3,4,3	* Multiplication Operation 
108:     LD  4,-8(1)	Pop left hand side into AC1 
109:    MUL  3,4,3	* Multiplication Operation 
110:     ST  3,-8(1)	Push left side onto temp variable stack 
111:    LDC  3,256(6)	Load of type int constant 
112:     LD  4,-8(1)	Pop left hand side into AC1 
113:    DIV  3,4,3	/ Division operation 
114:     ST  3,-8(1)	Push left side onto temp variable stack 
115:     LD  3,0(0)	Load variable TOP into accumulator 
116:     LD  4,-8(1)	Pop left hand side into AC1 
117:    ADD  3,4,3	+ Operation 
118:     ST  3,-4(1)	Assigning variable Bi in Local 
119:     LD  3,-6(1)	Load variable NextA into accumulator 
120:     ST  3,-8(1)	Push left side onto temp variable stack 
121:     LD  3,-7(1)	Load variable NextBi into accumulator 
122:     LD  4,-8(1)	Pop left hand side into AC1 
123:    SUB  3,4,3	- Subtraction Operation 
124:     ST  3,-8(1)	Push left side onto temp variable stack 
125:     LD  3,-1(0)	Load variable LEFT into accumulator 
126:     LD  4,-8(1)	Pop left hand side into AC1 
127:    ADD  3,4,3	+ Operation 
128:     ST  3,-5(1)	Assigning variable A in Local 
129:     LD  3,-5(1)	Load variable A into accumulator 
130:     ST  3,-8(1)	Push left side onto temp variable stack 
131:     LD  3,-5(1)	Load variable A into accumulator 
132:     LD  4,-8(1)	Pop left hand side into AC1 
133:    MUL  3,4,3	* Multiplication Operation 
134:     ST  3,-8(1)	Push left side onto temp variable stack 
135:    LDC  3,256(6)	Load of type int constant 
136:     LD  4,-8(1)	Pop left hand side into AC1 
137:    DIV  3,4,3	/ Division operation 
138:     ST  3,-6(1)	Assigning variable NextA in Local 
139:     LD  3,-4(1)	Load variable Bi into accumulator 
140:     ST  3,-8(1)	Push left side onto temp variable stack 
141:     LD  3,-4(1)	Load variable Bi into accumulator 
142:     LD  4,-8(1)	Pop left hand side into AC1 
143:    MUL  3,4,3	* Multiplication Operation 
144:     ST  3,-8(1)	Push left side onto temp variable stack 
145:    LDC  3,256(6)	Load of type int constant 
146:     LD  4,-8(1)	Pop left hand side into AC1 
147:    DIV  3,4,3	/ Division operation 
148:     ST  3,-7(1)	Assigning variable NextBi in Local 
149:     LD  3,-6(1)	Load variable NextA into accumulator 
150:     ST  3,-8(1)	Push left side onto temp variable stack 
151:     LD  3,-7(1)	Load variable NextBi into accumulator 
152:     LD  4,-8(1)	Pop left hand side into AC1 
153:    ADD  3,4,3	+ Operation 
154:     ST  3,-3(1)	Assigning variable Len in Local 
155:     LD  4,-8(0)	Load lhs variable 
156:    LDA  3,1(4)	++ Increment accumulator operation 
157:     ST  3,-8(0)	Assigning variable iter in Global 
* END COMPOUND
158:    JMP  7,-72(7)	Go to L1 
100:    JZR  3,58(7)	JMP if condition is false 
* End WHILE statement
* BEGIN IF BLOCK
159:     LD  3,-8(0)	Load variable iter into accumulator 
160:     ST  3,-8(1)	Push left side onto temp variable stack 
161:    LDC  3,12(6)	Load of type int constant 
162:     LD  4,-8(1)	Pop left hand side into AC1 
163:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* CALL outputc
165:     ST  1,-8(1)	Store fp in ghost frame for outputc 
166:    LDA  3,-10(0)	Load base address of array grayScale 
167:     LD  3,-8(0)	Load variable iter into accumulator 
168:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
169:    SUB  5,5,3	Compute offset for array 
170:     LD  3,0(5)	Load array element grayScale from AC into loc from AC2 
171:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
172:    LDA  1,-8(1)	Move the fp to the new frame 
173:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
174:    JMP  7,-147(7)	Call function 
175:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
176:     ST  1,-8(1)	Store fp in ghost frame for outputc 
177:    LDC  3,32(6)	Load of type char constant 
178:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
179:    LDA  1,-8(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-154(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* END COMPOUND
* IF JUMP TO END
164:    JZR  3,19(7)	IF JMP TO ELSE 
183:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
184:     LD  3,-8(0)	Load variable iter into accumulator 
185:     ST  3,-8(1)	Push left side onto temp variable stack 
186:    LDC  3,11(6)	Load of type int constant 
187:     LD  4,-8(1)	Pop left hand side into AC1 
188:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
190:     LD  3,-2(1)	Load base address of array JuliaVals 
191:    LDC  3,0(6)	Load of type int constant 
192:     ST  3,-8(1)	Push array index onto temp stack 
193:     LD  3,-1(0)	Load variable LEFT into accumulator 
194:     LD  4,-8(1)	Pop array index into AC1 
195:     LD  5,-2(1)	Load base address of array JuliaVals into AC2 
196:    SUB  5,5,4	Compute offset for array 
197:     ST  3,0(5)	Store variable JuliaVals from AC into loc from AC2 
198:     LD  3,-2(1)	Load base address of array JuliaVals 
199:    LDC  3,1(6)	Load of type int constant 
200:     ST  3,-8(1)	Push array index onto temp stack 
201:     LD  3,0(0)	Load variable TOP into accumulator 
202:     LD  4,-8(1)	Pop array index into AC1 
203:     LD  5,-2(1)	Load base address of array JuliaVals into AC2 
204:    SUB  5,5,4	Compute offset for array 
205:     ST  3,0(5)	Store variable JuliaVals from AC into loc from AC2 
* END COMPOUND
* IF JUMP TO END
189:    JZR  3,17(7)	IF JMP TO ELSE 
206:    LDA  7,0(7)	JUMP TO END 
* END IF
207:     LD  3,-4(0)	Load variable XStep into accumulator 
208:     LD  4,-1(0)	Load lhs variable 
209:    ADD  3,4,3	+= operation 
210:     ST  3,-1(0)	Assigning variable LEFT in Global 
* END COMPOUND
211:    JMP  7,-163(7)	Go to L1 
 54:    JZR  3,157(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
212:     ST  1,-8(1)	Store fp in ghost frame for outnl 
* Begin call
213:    LDA  1,-8(1)	Move the fp to the new frame 
214:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
215:    JMP  7,-182(7)	Call function 
216:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
217:     LD  3,-5(0)	Load variable YStep into accumulator 
218:     LD  4,0(0)	Load lhs variable 
219:    ADD  3,4,3	+= operation 
220:     ST  3,0(0)	Assigning variable TOP in Global 
* END COMPOUND
221:    JMP  7,-182(7)	Go to L1 
 45:    JZR  3,176(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
222:    LDC  2,0(6)	Set return value to 0 
223:     LD  3,-1(1)	Load return address 
224:     LD  1,0(1)	Adjust fp 
225:    JMP  7,0(3)	Return 
* END FUNCTION Mandelbrot
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION Julia
226:     ST  3,-1(1)	Store return address 
* COMPOUND
* Beginning WHILE statement
227:     LD  3,0(0)	Load variable TOP into accumulator 
228:     ST  3,-9(1)	Push left side onto temp variable stack 
229:     LD  3,-7(0)	Load variable YMax into accumulator 
230:     LD  4,-9(1)	Pop left hand side into AC1 
231:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
233:    LDC  3,512(6)	Load of type int constant 
234:    NEG  3,3,0	- Change Sign Operation 
235:     ST  3,-1(0)	Assigning variable LEFT in Global 
* Beginning WHILE statement
236:     LD  3,-1(0)	Load variable LEFT into accumulator 
237:     ST  3,-9(1)	Push left side onto temp variable stack 
238:     LD  3,-6(0)	Load variable XMax into accumulator 
239:     LD  4,-9(1)	Pop left hand side into AC1 
240:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
242:     LD  3,-1(0)	Load variable LEFT into accumulator 
243:     ST  3,-6(1)	Assigning variable A in Local 
244:     LD  3,0(0)	Load variable TOP into accumulator 
245:     ST  3,-5(1)	Assigning variable Bi in Local 
246:     LD  3,-6(1)	Load variable A into accumulator 
247:     ST  3,-9(1)	Push left side onto temp variable stack 
248:     LD  3,-6(1)	Load variable A into accumulator 
249:     LD  4,-9(1)	Pop left hand side into AC1 
250:    MUL  3,4,3	* Multiplication Operation 
251:     ST  3,-9(1)	Push left side onto temp variable stack 
252:    LDC  3,256(6)	Load of type int constant 
253:     LD  4,-9(1)	Pop left hand side into AC1 
254:    DIV  3,4,3	/ Division operation 
255:     ST  3,-7(1)	Assigning variable NextA in Local 
256:     LD  3,-5(1)	Load variable Bi into accumulator 
257:     ST  3,-9(1)	Push left side onto temp variable stack 
258:     LD  3,-5(1)	Load variable Bi into accumulator 
259:     LD  4,-9(1)	Pop left hand side into AC1 
260:    MUL  3,4,3	* Multiplication Operation 
261:     ST  3,-9(1)	Push left side onto temp variable stack 
262:    LDC  3,256(6)	Load of type int constant 
263:     LD  4,-9(1)	Pop left hand side into AC1 
264:    DIV  3,4,3	/ Division operation 
265:     ST  3,-8(1)	Assigning variable NextBi in Local 
266:     LD  3,-7(1)	Load variable NextA into accumulator 
267:     ST  3,-9(1)	Push left side onto temp variable stack 
268:     LD  3,-8(1)	Load variable NextBi into accumulator 
269:     LD  4,-9(1)	Pop left hand side into AC1 
270:    ADD  3,4,3	+ Operation 
271:     ST  3,-4(1)	Assigning variable Len in Local 
272:    LDC  3,0(6)	Load of type int constant 
273:     ST  3,-8(0)	Assigning variable iter in Global 
* Beginning WHILE statement
274:     LD  3,-4(1)	Load variable Len into accumulator 
275:     ST  3,-9(1)	Push left side onto temp variable stack 
276:    LDC  3,1024(6)	Load of type int constant 
277:     LD  4,-9(1)	Pop left hand side into AC1 
278:    TLE  3,4,3	LEQ <= operation store in AC 
279:     ST  3,-9(1)	Push left side onto temp variable stack 
280:     LD  3,-8(0)	Load variable iter into accumulator 
281:     ST  3,-10(1)	Push left side onto temp variable stack 
282:    LDC  3,11(6)	Load of type int constant 
283:     LD  4,-10(1)	Pop left hand side into AC1 
284:    TLT  3,4,3	Less than < operation store in AC 
285:     LD  4,-9(1)	Pop left hand side into AC1 
286:    AND  3,4,3	AND operation store in AC 
* COMPOUND
288:    LDC  3,2(6)	Load of type int constant 
289:     ST  3,-9(1)	Push left side onto temp variable stack 
290:     LD  3,-6(1)	Load variable A into accumulator 
291:     ST  3,-10(1)	Push left side onto temp variable stack 
292:     LD  3,-5(1)	Load variable Bi into accumulator 
293:     LD  4,-10(1)	Pop left hand side into AC1 
294:    MUL  3,4,3	* Multiplication Operation 
295:     LD  4,-9(1)	Pop left hand side into AC1 
296:    MUL  3,4,3	* Multiplication Operation 
297:     ST  3,-9(1)	Push left side onto temp variable stack 
298:    LDC  3,256(6)	Load of type int constant 
299:     LD  4,-9(1)	Pop left hand side into AC1 
300:    DIV  3,4,3	/ Division operation 
301:     ST  3,-9(1)	Push left side onto temp variable stack 
302:     LD  3,-3(1)	Load variable CBi into accumulator 
303:     LD  4,-9(1)	Pop left hand side into AC1 
304:    ADD  3,4,3	+ Operation 
305:     ST  3,-5(1)	Assigning variable Bi in Local 
306:     LD  3,-7(1)	Load variable NextA into accumulator 
307:     ST  3,-9(1)	Push left side onto temp variable stack 
308:     LD  3,-8(1)	Load variable NextBi into accumulator 
309:     LD  4,-9(1)	Pop left hand side into AC1 
310:    SUB  3,4,3	- Subtraction Operation 
311:     ST  3,-9(1)	Push left side onto temp variable stack 
312:     LD  3,-2(1)	Load variable CA into accumulator 
313:     LD  4,-9(1)	Pop left hand side into AC1 
314:    ADD  3,4,3	+ Operation 
315:     ST  3,-6(1)	Assigning variable A in Local 
316:     LD  3,-6(1)	Load variable A into accumulator 
317:     ST  3,-9(1)	Push left side onto temp variable stack 
318:     LD  3,-6(1)	Load variable A into accumulator 
319:     LD  4,-9(1)	Pop left hand side into AC1 
320:    MUL  3,4,3	* Multiplication Operation 
321:     ST  3,-9(1)	Push left side onto temp variable stack 
322:    LDC  3,256(6)	Load of type int constant 
323:     LD  4,-9(1)	Pop left hand side into AC1 
324:    DIV  3,4,3	/ Division operation 
325:     ST  3,-7(1)	Assigning variable NextA in Local 
326:     LD  3,-5(1)	Load variable Bi into accumulator 
327:     ST  3,-9(1)	Push left side onto temp variable stack 
328:     LD  3,-5(1)	Load variable Bi into accumulator 
329:     LD  4,-9(1)	Pop left hand side into AC1 
330:    MUL  3,4,3	* Multiplication Operation 
331:     ST  3,-9(1)	Push left side onto temp variable stack 
332:    LDC  3,256(6)	Load of type int constant 
333:     LD  4,-9(1)	Pop left hand side into AC1 
334:    DIV  3,4,3	/ Division operation 
335:     ST  3,-8(1)	Assigning variable NextBi in Local 
336:     LD  3,-7(1)	Load variable NextA into accumulator 
337:     ST  3,-9(1)	Push left side onto temp variable stack 
338:     LD  3,-8(1)	Load variable NextBi into accumulator 
339:     LD  4,-9(1)	Pop left hand side into AC1 
340:    ADD  3,4,3	+ Operation 
341:     ST  3,-4(1)	Assigning variable Len in Local 
342:     LD  4,-8(0)	Load lhs variable 
343:    LDA  3,1(4)	++ Increment accumulator operation 
344:     ST  3,-8(0)	Assigning variable iter in Global 
* END COMPOUND
345:    JMP  7,-72(7)	Go to L1 
287:    JZR  3,58(7)	JMP if condition is false 
* End WHILE statement
* BEGIN IF BLOCK
346:     LD  3,-8(0)	Load variable iter into accumulator 
347:     ST  3,-9(1)	Push left side onto temp variable stack 
348:    LDC  3,10(6)	Load of type int constant 
349:     LD  4,-9(1)	Pop left hand side into AC1 
350:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* CALL outputc
352:     ST  1,-9(1)	Store fp in ghost frame for outputc 
353:    LDA  3,-10(0)	Load base address of array grayScale 
354:     LD  3,-8(0)	Load variable iter into accumulator 
355:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
356:    SUB  5,5,3	Compute offset for array 
357:     LD  3,0(5)	Load array element grayScale from AC into loc from AC2 
358:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
359:    LDA  1,-9(1)	Move the fp to the new frame 
360:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
361:    JMP  7,-334(7)	Call function 
362:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
363:     ST  1,-9(1)	Store fp in ghost frame for outputc 
364:    LDC  3,32(6)	Load of type char constant 
365:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
366:    LDA  1,-9(1)	Move the fp to the new frame 
367:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
368:    JMP  7,-341(7)	Call function 
369:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* END COMPOUND
* IF JUMP TO END
351:    JZR  3,19(7)	IF JMP TO ELSE 
* CALL outputb
371:     ST  1,-9(1)	Store fp in ghost frame for outputb 
372:     LD  3,-8(0)	Load variable iter into accumulator 
373:     ST  3,-12(1)	Push left side onto temp variable stack 
374:    LDC  3,11(6)	Load of type int constant 
375:     LD  4,-12(1)	Pop left hand side into AC1 
376:    TEQ  3,4,3	== Equality Operation 
377:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
378:    LDA  1,-9(1)	Move the fp to the new frame 
379:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
380:    JMP  7,-364(7)	Call function 
381:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
370:    LDA  7,11(7)	JUMP TO END 
* END IF
382:     LD  3,-4(0)	Load variable XStep into accumulator 
383:     LD  4,-1(0)	Load lhs variable 
384:    ADD  3,4,3	+= operation 
385:     ST  3,-1(0)	Assigning variable LEFT in Global 
* END COMPOUND
386:    JMP  7,-151(7)	Go to L1 
241:    JZR  3,145(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
387:     ST  1,-9(1)	Store fp in ghost frame for outnl 
* Begin call
388:    LDA  1,-9(1)	Move the fp to the new frame 
389:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
390:    JMP  7,-357(7)	Call function 
391:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
392:     LD  3,-5(0)	Load variable YStep into accumulator 
393:     LD  4,0(0)	Load lhs variable 
394:    ADD  3,4,3	+= operation 
395:     ST  3,0(0)	Assigning variable TOP in Global 
* END COMPOUND
396:    JMP  7,-170(7)	Go to L1 
232:    JZR  3,164(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
397:    LDC  2,0(6)	Set return value to 0 
398:     LD  3,-1(1)	Load return address 
399:     LD  1,0(1)	Adjust fp 
400:    JMP  7,0(3)	Return 
* END FUNCTION Julia
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
401:     ST  3,-1(1)	Store return address 
* COMPOUND
402:    LDC  3,2(6)	Load size of JuliaVals into AC 
403:     ST  3,-2(1)	Store size of JuliaVals in data memory 
404:    LDA  3,-10(0)	Load base address of array grayScale 
405:    LDC  3,0(6)	Load of type int constant 
406:     ST  3,-5(1)	Push array index onto temp stack 
407:    LDC  3,32(6)	Load of type char constant 
408:     LD  4,-5(1)	Pop array index into AC1 
409:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
410:    SUB  5,5,4	Compute offset for array 
411:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
412:    LDA  3,-10(0)	Load base address of array grayScale 
413:    LDC  3,1(6)	Load of type int constant 
414:     ST  3,-5(1)	Push array index onto temp stack 
415:    LDC  3,46(6)	Load of type char constant 
416:     LD  4,-5(1)	Pop array index into AC1 
417:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
418:    SUB  5,5,4	Compute offset for array 
419:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
420:    LDA  3,-10(0)	Load base address of array grayScale 
421:    LDC  3,2(6)	Load of type int constant 
422:     ST  3,-5(1)	Push array index onto temp stack 
423:    LDC  3,32(6)	Load of type char constant 
424:     LD  4,-5(1)	Pop array index into AC1 
425:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
426:    SUB  5,5,4	Compute offset for array 
427:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
428:    LDA  3,-10(0)	Load base address of array grayScale 
429:    LDC  3,3(6)	Load of type int constant 
430:     ST  3,-5(1)	Push array index onto temp stack 
431:    LDC  3,59(6)	Load of type char constant 
432:     LD  4,-5(1)	Pop array index into AC1 
433:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
434:    SUB  5,5,4	Compute offset for array 
435:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
436:    LDA  3,-10(0)	Load base address of array grayScale 
437:    LDC  3,4(6)	Load of type int constant 
438:     ST  3,-5(1)	Push array index onto temp stack 
439:    LDC  3,45(6)	Load of type char constant 
440:     LD  4,-5(1)	Pop array index into AC1 
441:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
442:    SUB  5,5,4	Compute offset for array 
443:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
444:    LDA  3,-10(0)	Load base address of array grayScale 
445:    LDC  3,5(6)	Load of type int constant 
446:     ST  3,-5(1)	Push array index onto temp stack 
447:    LDC  3,43(6)	Load of type char constant 
448:     LD  4,-5(1)	Pop array index into AC1 
449:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
450:    SUB  5,5,4	Compute offset for array 
451:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
452:    LDA  3,-10(0)	Load base address of array grayScale 
453:    LDC  3,6(6)	Load of type int constant 
454:     ST  3,-5(1)	Push array index onto temp stack 
455:    LDC  3,73(6)	Load of type char constant 
456:     LD  4,-5(1)	Pop array index into AC1 
457:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
458:    SUB  5,5,4	Compute offset for array 
459:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
460:    LDA  3,-10(0)	Load base address of array grayScale 
461:    LDC  3,7(6)	Load of type int constant 
462:     ST  3,-5(1)	Push array index onto temp stack 
463:    LDC  3,79(6)	Load of type char constant 
464:     LD  4,-5(1)	Pop array index into AC1 
465:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
466:    SUB  5,5,4	Compute offset for array 
467:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
468:    LDA  3,-10(0)	Load base address of array grayScale 
469:    LDC  3,8(6)	Load of type int constant 
470:     ST  3,-5(1)	Push array index onto temp stack 
471:    LDC  3,86(6)	Load of type char constant 
472:     LD  4,-5(1)	Pop array index into AC1 
473:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
474:    SUB  5,5,4	Compute offset for array 
475:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
476:    LDA  3,-10(0)	Load base address of array grayScale 
477:    LDC  3,9(6)	Load of type int constant 
478:     ST  3,-5(1)	Push array index onto temp stack 
479:    LDC  3,87(6)	Load of type char constant 
480:     LD  4,-5(1)	Pop array index into AC1 
481:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
482:    SUB  5,5,4	Compute offset for array 
483:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
484:    LDA  3,-10(0)	Load base address of array grayScale 
485:    LDC  3,10(6)	Load of type int constant 
486:     ST  3,-5(1)	Push array index onto temp stack 
487:    LDC  3,35(6)	Load of type char constant 
488:     LD  4,-5(1)	Pop array index into AC1 
489:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
490:    SUB  5,5,4	Compute offset for array 
491:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
492:    LDA  3,-10(0)	Load base address of array grayScale 
493:    LDC  3,11(6)	Load of type int constant 
494:     ST  3,-5(1)	Push array index onto temp stack 
495:    LDC  3,64(6)	Load of type char constant 
496:     LD  4,-5(1)	Pop array index into AC1 
497:    LDA  5,-10(0)	Load base address of array grayScale into AC2 
498:    SUB  5,5,4	Compute offset for array 
499:     ST  3,0(5)	Store variable grayScale from AC into loc from AC2 
500:    LDC  3,320(6)	Load of type int constant 
501:    NEG  3,3,0	- Change Sign Operation 
502:     ST  3,0(0)	Assigning variable TOP in Global 
503:    LDC  3,512(6)	Load of type int constant 
504:    NEG  3,3,0	- Change Sign Operation 
505:     ST  3,-1(0)	Assigning variable LEFT in Global 
506:    LDC  3,640(6)	Load of type int constant 
507:     ST  3,-2(0)	Assigning variable HEIGHT in Global 
508:    LDC  3,716(6)	Load of type int constant 
509:     ST  3,-3(0)	Assigning variable WIDTH in Global 
510:     LD  3,-3(0)	Load variable WIDTH into accumulator 
511:     ST  3,-5(1)	Push left side onto temp variable stack 
512:    LDC  3,40(6)	Load of type int constant 
513:     LD  4,-5(1)	Pop left hand side into AC1 
514:    DIV  3,4,3	/ Division operation 
515:     ST  3,-4(0)	Assigning variable XStep in Global 
516:     LD  3,-2(0)	Load variable HEIGHT into accumulator 
517:     ST  3,-5(1)	Push left side onto temp variable stack 
518:    LDC  3,36(6)	Load of type int constant 
519:     LD  4,-5(1)	Pop left hand side into AC1 
520:    DIV  3,4,3	/ Division operation 
521:     ST  3,-5(0)	Assigning variable YStep in Global 
522:     LD  3,-1(0)	Load variable LEFT into accumulator 
523:     ST  3,-5(1)	Push left side onto temp variable stack 
524:     LD  3,-3(0)	Load variable WIDTH into accumulator 
525:     LD  4,-5(1)	Pop left hand side into AC1 
526:    ADD  3,4,3	+ Operation 
527:     ST  3,-6(0)	Assigning variable XMax in Global 
528:     LD  3,0(0)	Load variable TOP into accumulator 
529:     ST  3,-5(1)	Push left side onto temp variable stack 
530:     LD  3,-2(0)	Load variable HEIGHT into accumulator 
531:     LD  4,-5(1)	Pop left hand side into AC1 
532:    ADD  3,4,3	+ Operation 
533:     ST  3,-7(0)	Assigning variable YMax in Global 
* CALL Mandelbrot
534:     ST  1,-5(1)	Store fp in ghost frame for Mandelbrot 
535:    LDA  3,-3(1)	Load base address of array JuliaVals 
536:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
537:    LDA  1,-5(1)	Move the fp to the new frame 
538:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
539:    JMP  7,-501(7)	Call function 
540:    LDA  3,0(2)	Save return result in accumulator 
* END CALL Mandelbrot
* CALL outnl
541:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
542:    LDA  1,-5(1)	Move the fp to the new frame 
543:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
544:    JMP  7,-511(7)	Call function 
545:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
546:    LDC  3,320(6)	Load of type int constant 
547:    NEG  3,3,0	- Change Sign Operation 
548:     ST  3,0(0)	Assigning variable TOP in Global 
549:    LDC  3,512(6)	Load of type int constant 
550:    NEG  3,3,0	- Change Sign Operation 
551:     ST  3,-1(0)	Assigning variable LEFT in Global 
552:    LDC  3,640(6)	Load of type int constant 
553:     ST  3,-2(0)	Assigning variable HEIGHT in Global 
554:    LDC  3,716(6)	Load of type int constant 
555:     ST  3,-3(0)	Assigning variable WIDTH in Global 
556:     LD  3,-3(0)	Load variable WIDTH into accumulator 
557:     ST  3,-5(1)	Push left side onto temp variable stack 
558:    LDC  3,40(6)	Load of type int constant 
559:     LD  4,-5(1)	Pop left hand side into AC1 
560:    DIV  3,4,3	/ Division operation 
561:     ST  3,-4(0)	Assigning variable XStep in Global 
562:     LD  3,-2(0)	Load variable HEIGHT into accumulator 
563:     ST  3,-5(1)	Push left side onto temp variable stack 
564:    LDC  3,36(6)	Load of type int constant 
565:     LD  4,-5(1)	Pop left hand side into AC1 
566:    DIV  3,4,3	/ Division operation 
567:     ST  3,-5(0)	Assigning variable YStep in Global 
568:     LD  3,-1(0)	Load variable LEFT into accumulator 
569:     ST  3,-5(1)	Push left side onto temp variable stack 
570:     LD  3,-3(0)	Load variable WIDTH into accumulator 
571:     LD  4,-5(1)	Pop left hand side into AC1 
572:    ADD  3,4,3	+ Operation 
573:     ST  3,-6(0)	Assigning variable XMax in Global 
574:     LD  3,0(0)	Load variable TOP into accumulator 
575:     ST  3,-5(1)	Push left side onto temp variable stack 
576:     LD  3,-2(0)	Load variable HEIGHT into accumulator 
577:     LD  4,-5(1)	Pop left hand side into AC1 
578:    ADD  3,4,3	+ Operation 
579:     ST  3,-7(0)	Assigning variable YMax in Global 
* CALL Julia
580:     ST  1,-5(1)	Store fp in ghost frame for Julia 
581:    LDA  3,-3(1)	Load base address of array JuliaVals 
582:    LDC  3,0(6)	Load of type int constant 
583:    LDA  5,-3(1)	Load base address of array JuliaVals into AC2 
584:    SUB  5,5,3	Compute offset for array 
585:     LD  3,0(5)	Load array element JuliaVals from AC into loc from AC2 
586:     ST  3,-7(1)	Push parameter onto new frame 
587:    LDA  3,-3(1)	Load base address of array JuliaVals 
588:    LDC  3,1(6)	Load of type int constant 
589:    LDA  5,-3(1)	Load base address of array JuliaVals into AC2 
590:    SUB  5,5,3	Compute offset for array 
591:     LD  3,0(5)	Load array element JuliaVals from AC into loc from AC2 
592:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
593:    LDA  1,-5(1)	Move the fp to the new frame 
594:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
595:    JMP  7,-370(7)	Call function 
596:    LDA  3,0(2)	Save return result in accumulator 
* END CALL Julia
* END COMPOUND
* Add standard closing in case there is no return statement
597:    LDC  2,0(6)	Set return value to 0 
598:     LD  3,-1(1)	Load return address 
599:     LD  1,0(1)	Adjust fp 
600:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,600(7)	Jump to init [backpatch] 
* INIT
601:    LDA  1,-22(0)	set first frame at end of globals 
602:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
603:    LDC  3,12(6)	Load size of grayScale into AC 
604:     ST  3,-9(0)	Store size of grayScale in data memory 
* END INIT GLOBALS AND STATICS
605:    LDA  3,1(7)	Return address in ac 
606:    JMP  7,-206(7)	Jump to main 
607:   HALT  0,0,0	DONE! 
* END INIT
