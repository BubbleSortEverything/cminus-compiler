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
* FUNCTION pow
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,1(6)	Load of type int constant 
 41:     ST  3,-5(1)	Assigning variable ans in Local 
 42:     LD  3,-2(1)	Load variable n into accumulator 
 43:     ST  3,-4(1)	Assigning variable sqr in Local 
* Beginning WHILE statement
 44:    LDC  3,1(6)	Load of type bool constant 
* COMPOUND
* BEGIN IF BLOCK
 46:     LD  3,-3(1)	Load variable p into accumulator 
 47:     ST  3,-6(1)	Push left side onto temp variable stack 
 48:    LDC  3,2(6)	Load of type int constant 
 49:     LD  4,-6(1)	Pop left hand side into AC1 
 50:    MOD  3,4,3	% mod operation 
 51:     ST  3,-6(1)	Push left side onto temp variable stack 
 52:    LDC  3,1(6)	Load of type int constant 
 53:     LD  4,-6(1)	Pop left hand side into AC1 
 54:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 56:     LD  3,-5(1)	Load variable ans into accumulator 
 57:     ST  3,-6(1)	Push left side onto temp variable stack 
 58:     LD  3,-4(1)	Load variable sqr into accumulator 
 59:     LD  4,-6(1)	Pop left hand side into AC1 
 60:    MUL  3,4,3	* Multiplication Operation 
 61:     ST  3,-5(1)	Assigning variable ans in Local 
* IF JUMP TO END
 55:    JZR  3,7(7)	IF JMP TO ELSE 
 62:    LDA  7,0(7)	JUMP TO END 
* END IF
 63:     LD  3,-3(1)	Load variable p into accumulator 
 64:     ST  3,-6(1)	Push left side onto temp variable stack 
 65:    LDC  3,2(6)	Load of type int constant 
 66:     LD  4,-6(1)	Pop left hand side into AC1 
 67:    DIV  3,4,3	/ Division operation 
 68:     ST  3,-3(1)	Assigning variable p in Parameter 
* BEGIN IF BLOCK
 69:     LD  3,-3(1)	Load variable p into accumulator 
 70:     ST  3,-6(1)	Push left side onto temp variable stack 
 71:    LDC  3,0(6)	Load of type int constant 
 72:     LD  4,-6(1)	Pop left hand side into AC1 
 73:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 75:     LD  3,-5(1)	Load variable ans into accumulator 
 76:    LDA  2,0(3)	Copy accumulator to return register 
 77:     LD  3,-1(1)	Load return address 
 78:     LD  1,0(1)	Adjust fp 
 79:    JMP  7,0(3)	Return 
* IF JUMP TO END
 74:    JZR  3,6(7)	IF JMP TO ELSE 
 80:    LDA  7,0(7)	JUMP TO END 
* END IF
 81:     LD  3,-4(1)	Load variable sqr into accumulator 
 82:     ST  3,-6(1)	Push left side onto temp variable stack 
 83:     LD  3,-4(1)	Load variable sqr into accumulator 
 84:     LD  4,-6(1)	Pop left hand side into AC1 
 85:    MUL  3,4,3	* Multiplication Operation 
 86:     ST  3,-4(1)	Assigning variable sqr in Local 
* END COMPOUND
 87:    JMP  7,-44(7)	Go to L1 
 45:    JZR  3,42(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
 88:    LDC  2,0(6)	Set return value to 0 
 89:     LD  3,-1(1)	Load return address 
 90:     LD  1,0(1)	Adjust fp 
 91:    JMP  7,0(3)	Return 
* END FUNCTION pow
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION getFunc
 92:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
* CALL input
 93:     ST  1,-6(1)	Store fp in ghost frame for input 
* Begin call
 94:    LDA  1,-6(1)	Move the fp to the new frame 
 95:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 96:    JMP  7,-96(7)	Call function 
 97:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
 98:     ST  3,-3(1)	Assigning variable numbits in Local 
 99:     ST  3,-6(1)	Push left side onto temp variable stack 
100:    LDC  3,0(6)	Load of type int constant 
101:     LD  4,-6(1)	Pop left hand side into AC1 
102:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
104:    LDC  3,0(6)	Load of type int constant 
105:    LDA  2,0(3)	Copy accumulator to return register 
106:     LD  3,-1(1)	Load return address 
107:     LD  1,0(1)	Adjust fp 
108:    JMP  7,0(3)	Return 
* IF JUMP TO END
103:    JZR  3,6(7)	IF JMP TO ELSE 
109:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL pow
110:     ST  1,-6(1)	Store fp in ghost frame for pow 
111:    LDC  3,2(6)	Load of type int constant 
112:     ST  3,-8(1)	Push parameter onto new frame 
113:     LD  3,-3(1)	Load variable numbits into accumulator 
114:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
115:    LDA  1,-6(1)	Move the fp to the new frame 
116:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
117:    JMP  7,-79(7)	Call function 
118:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pow
119:     ST  3,-5(1)	Assigning variable size in Local 
120:    LDC  3,0(6)	Load of type int constant 
121:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
122:     LD  3,-4(1)	Load variable i into accumulator 
123:     ST  3,-6(1)	Push left side onto temp variable stack 
124:     LD  3,-5(1)	Load variable size into accumulator 
125:     LD  4,-6(1)	Pop left hand side into AC1 
126:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
128:     LD  3,-2(1)	Load base address of array f 
129:     LD  3,-4(1)	Load variable i into accumulator 
130:     ST  3,-6(1)	Push array index onto temp stack 
* CALL input
131:     ST  1,-7(1)	Store fp in ghost frame for input 
* Begin call
132:    LDA  1,-7(1)	Move the fp to the new frame 
133:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
134:    JMP  7,-134(7)	Call function 
135:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
136:     LD  4,-6(1)	Pop array index into AC1 
137:     LD  5,-2(1)	Load base address of array f into AC2 
138:    SUB  5,5,4	Compute offset for array 
139:     ST  3,0(5)	Store variable f from AC into loc from AC2 
140:     LD  3,-4(1)	Load variable i into accumulator 
141:     ST  3,-6(1)	Push left side onto temp variable stack 
142:    LDC  3,1(6)	Load of type int constant 
143:     LD  4,-6(1)	Pop left hand side into AC1 
144:    ADD  3,4,3	+ Operation 
145:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
146:    JMP  7,-25(7)	Go to L1 
127:    JZR  3,19(7)	JMP if condition is false 
* End WHILE statement
147:     LD  3,-3(1)	Load variable numbits into accumulator 
148:    LDA  2,0(3)	Copy accumulator to return register 
149:     LD  3,-1(1)	Load return address 
150:     LD  1,0(1)	Adjust fp 
151:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
152:    LDC  2,0(6)	Set return value to 0 
153:     LD  3,-1(1)	Load return address 
154:     LD  1,0(1)	Adjust fp 
155:    JMP  7,0(3)	Return 
* END FUNCTION getFunc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION printFunc
156:     ST  3,-1(1)	Store return address 
* COMPOUND
157:    LDC  3,0(6)	Load of type int constant 
158:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
159:     LD  3,-4(1)	Load variable i into accumulator 
160:     ST  3,-5(1)	Push left side onto temp variable stack 
161:     LD  3,-3(1)	Load variable size into accumulator 
162:     LD  4,-5(1)	Pop left hand side into AC1 
163:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
165:     ST  1,-5(1)	Store fp in ghost frame for output 
166:     LD  3,-2(1)	Load base address of array f 
167:     LD  3,-4(1)	Load variable i into accumulator 
168:     LD  5,-2(1)	Load base address of array f into AC2 
169:    SUB  5,5,3	Compute offset for array 
170:     LD  3,0(5)	Load array element f from AC into loc from AC2 
171:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
172:    LDA  1,-5(1)	Move the fp to the new frame 
173:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
174:    JMP  7,-169(7)	Call function 
175:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
176:     LD  3,-4(1)	Load variable i into accumulator 
177:     ST  3,-5(1)	Push left side onto temp variable stack 
178:    LDC  3,1(6)	Load of type int constant 
179:     LD  4,-5(1)	Pop left hand side into AC1 
180:    ADD  3,4,3	+ Operation 
181:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
182:    JMP  7,-24(7)	Go to L1 
164:    JZR  3,18(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
183:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
184:    LDA  1,-5(1)	Move the fp to the new frame 
185:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
186:    JMP  7,-153(7)	Call function 
187:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
188:    LDC  2,0(6)	Set return value to 0 
189:     LD  3,-1(1)	Load return address 
190:     LD  1,0(1)	Adjust fp 
191:    JMP  7,0(3)	Return 
* END FUNCTION printFunc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION fwt
192:     ST  3,-1(1)	Store return address 
* COMPOUND
193:     LD  3,-4(1)	Load variable size into accumulator 
194:     ST  3,-8(1)	Push left side onto temp variable stack 
195:    LDC  3,2(6)	Load of type int constant 
196:     LD  4,-8(1)	Pop left hand side into AC1 
197:    DIV  3,4,3	/ Division operation 
198:     ST  3,-4(1)	Assigning variable size in Parameter 
* BEGIN IF BLOCK
199:     LD  3,-4(1)	Load variable size into accumulator 
200:     ST  3,-8(1)	Push left side onto temp variable stack 
201:    LDC  3,1(6)	Load of type int constant 
202:     LD  4,-8(1)	Pop left hand side into AC1 
203:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* CALL fwt
205:     ST  1,-8(1)	Store fp in ghost frame for fwt 
206:     LD  3,-2(1)	Load base address of array w 
207:     ST  3,-10(1)	Push parameter onto new frame 
208:     LD  3,-3(1)	Load variable start into accumulator 
209:     ST  3,-11(1)	Push parameter onto new frame 
210:     LD  3,-4(1)	Load variable size into accumulator 
211:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
212:    LDA  1,-8(1)	Move the fp to the new frame 
213:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
214:    JMP  7,-23(7)	Call function 
215:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fwt
* CALL fwt
216:     ST  1,-8(1)	Store fp in ghost frame for fwt 
217:     LD  3,-2(1)	Load base address of array w 
218:     ST  3,-10(1)	Push parameter onto new frame 
219:     LD  3,-3(1)	Load variable start into accumulator 
220:     ST  3,-16(1)	Push left side onto temp variable stack 
221:     LD  3,-4(1)	Load variable size into accumulator 
222:     LD  4,-16(1)	Pop left hand side into AC1 
223:    ADD  3,4,3	+ Operation 
224:     ST  3,-11(1)	Push parameter onto new frame 
225:     LD  3,-4(1)	Load variable size into accumulator 
226:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
227:    LDA  1,-8(1)	Move the fp to the new frame 
228:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
229:    JMP  7,-38(7)	Call function 
230:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fwt
* END COMPOUND
* IF JUMP TO END
204:    JZR  3,27(7)	IF JMP TO ELSE 
231:    LDA  7,0(7)	JUMP TO END 
* END IF
232:     LD  3,-3(1)	Load variable start into accumulator 
233:     ST  3,-5(1)	Assigning variable a in Local 
234:     LD  3,-3(1)	Load variable start into accumulator 
235:     ST  3,-8(1)	Push left side onto temp variable stack 
236:     LD  3,-4(1)	Load variable size into accumulator 
237:     LD  4,-8(1)	Pop left hand side into AC1 
238:    ADD  3,4,3	+ Operation 
239:     ST  3,-6(1)	Assigning variable b in Local 
* Beginning WHILE statement
240:     LD  3,-5(1)	Load variable a into accumulator 
241:     ST  3,-8(1)	Push left side onto temp variable stack 
242:     LD  3,-3(1)	Load variable start into accumulator 
243:     ST  3,-9(1)	Push left side onto temp variable stack 
244:     LD  3,-4(1)	Load variable size into accumulator 
245:     LD  4,-9(1)	Pop left hand side into AC1 
246:    ADD  3,4,3	+ Operation 
247:     LD  4,-8(1)	Pop left hand side into AC1 
248:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
250:     LD  3,-2(1)	Load base address of array w 
251:     LD  3,-5(1)	Load variable a into accumulator 
252:     LD  5,-2(1)	Load base address of array w into AC2 
253:    SUB  5,5,3	Compute offset for array 
254:     LD  3,0(5)	Load array element w from AC into loc from AC2 
255:     ST  3,-7(1)	Assigning variable tmp in Local 
256:     LD  3,-2(1)	Load base address of array w 
257:     LD  3,-5(1)	Load variable a into accumulator 
258:     ST  3,-8(1)	Push array index onto temp stack 
259:     LD  3,-2(1)	Load base address of array w 
260:     LD  3,-5(1)	Load variable a into accumulator 
261:     LD  5,-2(1)	Load base address of array w into AC2 
262:    SUB  5,5,3	Compute offset for array 
263:     LD  3,0(5)	Load array element w from AC into loc from AC2 
264:     ST  3,-9(1)	Push left side onto temp variable stack 
265:     LD  3,-2(1)	Load base address of array w 
266:     LD  3,-6(1)	Load variable b into accumulator 
267:     LD  5,-2(1)	Load base address of array w into AC2 
268:    SUB  5,5,3	Compute offset for array 
269:     LD  3,0(5)	Load array element w from AC into loc from AC2 
270:     LD  4,-9(1)	Pop left hand side into AC1 
271:    ADD  3,4,3	+ Operation 
272:     LD  4,-8(1)	Pop array index into AC1 
273:     LD  5,-2(1)	Load base address of array w into AC2 
274:    SUB  5,5,4	Compute offset for array 
275:     ST  3,0(5)	Store variable w from AC into loc from AC2 
276:     LD  3,-2(1)	Load base address of array w 
277:     LD  3,-6(1)	Load variable b into accumulator 
278:     ST  3,-8(1)	Push array index onto temp stack 
279:     LD  3,-7(1)	Load variable tmp into accumulator 
280:     ST  3,-9(1)	Push left side onto temp variable stack 
281:     LD  3,-2(1)	Load base address of array w 
282:     LD  3,-6(1)	Load variable b into accumulator 
283:     LD  5,-2(1)	Load base address of array w into AC2 
284:    SUB  5,5,3	Compute offset for array 
285:     LD  3,0(5)	Load array element w from AC into loc from AC2 
286:     LD  4,-9(1)	Pop left hand side into AC1 
287:    SUB  3,4,3	- Subtraction Operation 
288:     LD  4,-8(1)	Pop array index into AC1 
289:     LD  5,-2(1)	Load base address of array w into AC2 
290:    SUB  5,5,4	Compute offset for array 
291:     ST  3,0(5)	Store variable w from AC into loc from AC2 
292:     LD  3,-5(1)	Load variable a into accumulator 
293:     ST  3,-8(1)	Push left side onto temp variable stack 
294:    LDC  3,1(6)	Load of type int constant 
295:     LD  4,-8(1)	Pop left hand side into AC1 
296:    ADD  3,4,3	+ Operation 
297:     ST  3,-5(1)	Assigning variable a in Local 
298:     LD  3,-6(1)	Load variable b into accumulator 
299:     ST  3,-8(1)	Push left side onto temp variable stack 
300:    LDC  3,1(6)	Load of type int constant 
301:     LD  4,-8(1)	Pop left hand side into AC1 
302:    ADD  3,4,3	+ Operation 
303:     ST  3,-6(1)	Assigning variable b in Local 
* END COMPOUND
304:    JMP  7,-65(7)	Go to L1 
249:    JZR  3,55(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
305:    LDC  2,0(6)	Set return value to 0 
306:     LD  3,-1(1)	Load return address 
307:     LD  1,0(1)	Adjust fp 
308:    JMP  7,0(3)	Return 
* END FUNCTION fwt
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION div
309:     ST  3,-1(1)	Store return address 
* COMPOUND
310:    LDC  3,0(6)	Load of type int constant 
311:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
312:     LD  3,-4(1)	Load variable i into accumulator 
313:     ST  3,-5(1)	Push left side onto temp variable stack 
314:     LD  3,-3(1)	Load variable size into accumulator 
315:     LD  4,-5(1)	Pop left hand side into AC1 
316:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
318:     LD  3,-2(1)	Load base address of array f 
319:     LD  3,-4(1)	Load variable i into accumulator 
320:     ST  3,-5(1)	Push array index onto temp stack 
321:     LD  3,-2(1)	Load base address of array f 
322:     LD  3,-4(1)	Load variable i into accumulator 
323:     LD  5,-2(1)	Load base address of array f into AC2 
324:    SUB  5,5,3	Compute offset for array 
325:     LD  3,0(5)	Load array element f from AC into loc from AC2 
326:     ST  3,-6(1)	Push left side onto temp variable stack 
327:     LD  3,-3(1)	Load variable size into accumulator 
328:     LD  4,-6(1)	Pop left hand side into AC1 
329:    DIV  3,4,3	/ Division operation 
330:     LD  4,-5(1)	Pop array index into AC1 
331:     LD  5,-2(1)	Load base address of array f into AC2 
332:    SUB  5,5,4	Compute offset for array 
333:     ST  3,0(5)	Store variable f from AC into loc from AC2 
334:     LD  4,-4(1)	Load lhs variable 
335:    LDA  3,1(4)	++ Increment accumulator operation 
336:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
337:    JMP  7,-26(7)	Go to L1 
317:    JZR  3,20(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
338:    LDC  2,0(6)	Set return value to 0 
339:     LD  3,-1(1)	Load return address 
340:     LD  1,0(1)	Adjust fp 
341:    JMP  7,0(3)	Return 
* END FUNCTION div
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
342:     ST  3,-1(1)	Store return address 
* COMPOUND
343:    LDC  3,256(6)	Load size of f into AC 
344:     ST  3,-2(1)	Store size of f in data memory 
* Beginning WHILE statement
345:    LDC  3,1(6)	Load of type bool constant 
* COMPOUND
* BEGIN IF BLOCK
* CALL getFunc
347:     ST  1,-262(1)	Store fp in ghost frame for getFunc 
348:    LDA  3,-3(1)	Load base address of array f 
349:     ST  3,-264(1)	Push parameter onto new frame 
* Begin call
350:    LDA  1,-262(1)	Move the fp to the new frame 
351:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
352:    JMP  7,-261(7)	Call function 
353:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getFunc
354:     ST  3,-260(1)	Assigning variable numbits in Local 
355:     ST  3,-262(1)	Push left side onto temp variable stack 
356:    LDC  3,0(6)	Load of type int constant 
357:     LD  4,-262(1)	Pop left hand side into AC1 
358:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
360:    LDC  3,0(6)	Load of type int constant 
361:    LDA  2,0(3)	Copy accumulator to return register 
362:     LD  3,-1(1)	Load return address 
363:     LD  1,0(1)	Adjust fp 
364:    JMP  7,0(3)	Return 
* IF JUMP TO END
359:    JZR  3,6(7)	IF JMP TO ELSE 
365:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL pow
366:     ST  1,-262(1)	Store fp in ghost frame for pow 
367:    LDC  3,2(6)	Load of type int constant 
368:     ST  3,-264(1)	Push parameter onto new frame 
369:     LD  3,-260(1)	Load variable numbits into accumulator 
370:     ST  3,-265(1)	Push parameter onto new frame 
* Begin call
371:    LDA  1,-262(1)	Move the fp to the new frame 
372:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
373:    JMP  7,-335(7)	Call function 
374:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pow
375:     ST  3,-259(1)	Assigning variable size in Local 
376:     LD  3,-259(1)	Load variable size into accumulator 
377:     ST  3,-262(1)	Push left side onto temp variable stack 
378:    LDC  3,2(6)	Load of type int constant 
379:     LD  4,-262(1)	Pop left hand side into AC1 
380:    DIV  3,4,3	/ Division operation 
381:     ST  3,-261(1)	Assigning variable half in Local 
* CALL fwt
382:     ST  1,-262(1)	Store fp in ghost frame for fwt 
383:    LDA  3,-3(1)	Load base address of array f 
384:     ST  3,-264(1)	Push parameter onto new frame 
385:    LDC  3,0(6)	Load of type int constant 
386:     ST  3,-265(1)	Push parameter onto new frame 
387:     LD  3,-259(1)	Load variable size into accumulator 
388:     ST  3,-266(1)	Push parameter onto new frame 
* Begin call
389:    LDA  1,-262(1)	Move the fp to the new frame 
390:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
391:    JMP  7,-200(7)	Call function 
392:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fwt
* CALL printFunc
393:     ST  1,-262(1)	Store fp in ghost frame for printFunc 
394:    LDA  3,-3(1)	Load base address of array f 
395:     ST  3,-264(1)	Push parameter onto new frame 
396:     LD  3,-259(1)	Load variable size into accumulator 
397:     ST  3,-265(1)	Push parameter onto new frame 
* Begin call
398:    LDA  1,-262(1)	Move the fp to the new frame 
399:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
400:    JMP  7,-245(7)	Call function 
401:    LDA  3,0(2)	Save return result in accumulator 
* END CALL printFunc
* CALL fwt
402:     ST  1,-262(1)	Store fp in ghost frame for fwt 
403:    LDA  3,-3(1)	Load base address of array f 
404:     ST  3,-264(1)	Push parameter onto new frame 
405:    LDC  3,0(6)	Load of type int constant 
406:     ST  3,-265(1)	Push parameter onto new frame 
407:     LD  3,-259(1)	Load variable size into accumulator 
408:     ST  3,-266(1)	Push parameter onto new frame 
* Begin call
409:    LDA  1,-262(1)	Move the fp to the new frame 
410:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
411:    JMP  7,-220(7)	Call function 
412:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fwt
* CALL div
413:     ST  1,-262(1)	Store fp in ghost frame for div 
414:    LDA  3,-3(1)	Load base address of array f 
415:     ST  3,-264(1)	Push parameter onto new frame 
416:     LD  3,-259(1)	Load variable size into accumulator 
417:     ST  3,-265(1)	Push parameter onto new frame 
* Begin call
418:    LDA  1,-262(1)	Move the fp to the new frame 
419:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
420:    JMP  7,-112(7)	Call function 
421:    LDA  3,0(2)	Save return result in accumulator 
* END CALL div
* CALL printFunc
422:     ST  1,-262(1)	Store fp in ghost frame for printFunc 
423:    LDA  3,-3(1)	Load base address of array f 
424:     ST  3,-264(1)	Push parameter onto new frame 
425:     LD  3,-259(1)	Load variable size into accumulator 
426:     ST  3,-265(1)	Push parameter onto new frame 
* Begin call
427:    LDA  1,-262(1)	Move the fp to the new frame 
428:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
429:    JMP  7,-274(7)	Call function 
430:    LDA  3,0(2)	Save return result in accumulator 
* END CALL printFunc
* END COMPOUND
431:    JMP  7,-87(7)	Go to L1 
346:    JZR  3,85(7)	JMP if condition is false 
* End WHILE statement
432:    LDC  3,0(6)	Load of type int constant 
433:    LDA  2,0(3)	Copy accumulator to return register 
434:     LD  3,-1(1)	Load return address 
435:     LD  1,0(1)	Adjust fp 
436:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
437:    LDC  2,0(6)	Set return value to 0 
438:     LD  3,-1(1)	Load return address 
439:     LD  1,0(1)	Adjust fp 
440:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,440(7)	Jump to init [backpatch] 
* INIT
441:    LDA  1,0(0)	set first frame at end of globals 
442:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
443:    LDA  3,1(7)	Return address in ac 
444:    JMP  7,-103(7)	Jump to main 
445:   HALT  0,0,0	DONE! 
* END INIT
