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
* FUNCTION getstring
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,1(6)	Load of type int constant 
 41:    NEG  3,3,0	- Change Sign Operation 
 42:     ST  3,-3(1)	Assigning variable i in Local 
* Beginning WHILE statement
 43:    LDC  3,1(6)	Load of type bool constant 
* COMPOUND
* CALL inputc
 45:     ST  1,-5(1)	Store fp in ghost frame for inputc 
* Begin call
 46:    LDA  1,-5(1)	Move the fp to the new frame 
 47:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 48:    JMP  7,-26(7)	Call function 
 49:    LDA  3,0(2)	Save return result in accumulator 
* END CALL inputc
 50:     ST  3,-4(1)	Assigning variable c in Local 
* BEGIN IF BLOCK
 51:     LD  3,-3(1)	Load variable i into accumulator 
 52:     ST  3,-5(1)	Push left side onto temp variable stack 
 53:     LD  3,-2(1)	Load base address of array s 
 54:     LD  3,-2(1)	Load address of base array s 
 55:     LD  3,1(3)	Load array size 
 56:     LD  4,-5(1)	Pop left hand side into AC1 
 57:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
 59:     LD  4,-3(1)	Load lhs variable 
 60:    LDA  3,1(4)	++ Increment accumulator operation 
 61:     ST  3,-3(1)	Assigning variable i in Local 
 62:     LD  3,-2(1)	Load base address of array s 
 63:     LD  3,-3(1)	Load variable i into accumulator 
 64:     ST  3,-5(1)	Push array index onto temp stack 
 65:     LD  3,-4(1)	Load variable c into accumulator 
 66:     LD  4,-5(1)	Pop array index into AC1 
 67:     LD  5,-2(1)	Load base address of array s into AC2 
 68:    SUB  5,5,4	Compute offset for array 
 69:     ST  3,0(5)	Store variable s from AC into loc from AC2 
* END COMPOUND
* IF JUMP TO END
 58:    JZR  3,12(7)	IF JMP TO ELSE 
 70:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 71:     LD  3,-4(1)	Load variable c into accumulator 
 72:     ST  3,-5(1)	Push left side onto temp variable stack 
 73:    LDC  3,10(6)	Load of type char constant 
 74:     LD  4,-5(1)	Pop left hand side into AC1 
 75:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* IF JUMP TO END
 76:    JZR  3,2(7)	IF JMP TO ELSE 
 78:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
 79:    JMP  7,-37(7)	Go to L1 
 44:    JZR  3,35(7)	JMP if condition is false 
 77:    JMP  0,2(7)	Break statement backpatch jump 
* End WHILE statement
 80:     LD  3,-3(1)	Load variable i into accumulator 
 81:    LDA  2,0(3)	Copy accumulator to return register 
 82:     LD  3,-1(1)	Load return address 
 83:     LD  1,0(1)	Adjust fp 
 84:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 85:    LDC  2,0(6)	Set return value to 0 
 86:     LD  3,-1(1)	Load return address 
 87:     LD  1,0(1)	Adjust fp 
 88:    JMP  7,0(3)	Return 
* END FUNCTION getstring
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION putstring
 89:     ST  3,-1(1)	Store return address 
* COMPOUND
 90:    LDC  3,0(6)	Load of type int constant 
 91:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
 92:     LD  3,-4(1)	Load variable i into accumulator 
 93:     ST  3,-5(1)	Push left side onto temp variable stack 
 94:     LD  3,-2(1)	Load variable len into accumulator 
 95:     LD  4,-5(1)	Pop left hand side into AC1 
 96:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL outputc
 98:     ST  1,-5(1)	Store fp in ghost frame for outputc 
 99:     LD  3,-3(1)	Load base address of array s 
100:     LD  3,-4(1)	Load variable i into accumulator 
101:     LD  5,-3(1)	Load base address of array s into AC2 
102:    SUB  5,5,3	Compute offset for array 
103:     LD  3,0(5)	Load array element s from AC into loc from AC2 
104:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
105:    LDA  1,-5(1)	Move the fp to the new frame 
106:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
107:    JMP  7,-80(7)	Call function 
108:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
109:     LD  4,-4(1)	Load lhs variable 
110:    LDA  3,1(4)	++ Increment accumulator operation 
111:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
112:    JMP  7,-21(7)	Go to L1 
 97:    JZR  3,15(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
113:    LDC  2,0(6)	Set return value to 0 
114:     LD  3,-1(1)	Load return address 
115:     LD  1,0(1)	Adjust fp 
116:    JMP  7,0(3)	Return 
* END FUNCTION putstring
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION charvalue
117:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
118:     LD  3,-2(1)	Load variable c into accumulator 
119:     ST  3,-3(1)	Push left side onto temp variable stack 
120:    LDC  3,73(6)	Load of type char constant 
121:     LD  4,-3(1)	Pop left hand side into AC1 
122:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
124:    LDC  3,1(6)	Load of type int constant 
125:    LDA  2,0(3)	Copy accumulator to return register 
126:     LD  3,-1(1)	Load return address 
127:     LD  1,0(1)	Adjust fp 
128:    JMP  7,0(3)	Return 
* IF JUMP TO END
123:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
130:     LD  3,-2(1)	Load variable c into accumulator 
131:     ST  3,-3(1)	Push left side onto temp variable stack 
132:    LDC  3,86(6)	Load of type char constant 
133:     LD  4,-3(1)	Pop left hand side into AC1 
134:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
136:    LDC  3,5(6)	Load of type int constant 
137:    LDA  2,0(3)	Copy accumulator to return register 
138:     LD  3,-1(1)	Load return address 
139:     LD  1,0(1)	Adjust fp 
140:    JMP  7,0(3)	Return 
* IF JUMP TO END
135:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
142:     LD  3,-2(1)	Load variable c into accumulator 
143:     ST  3,-3(1)	Push left side onto temp variable stack 
144:    LDC  3,88(6)	Load of type char constant 
145:     LD  4,-3(1)	Pop left hand side into AC1 
146:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
148:    LDC  3,10(6)	Load of type int constant 
149:    LDA  2,0(3)	Copy accumulator to return register 
150:     LD  3,-1(1)	Load return address 
151:     LD  1,0(1)	Adjust fp 
152:    JMP  7,0(3)	Return 
* IF JUMP TO END
147:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
154:     LD  3,-2(1)	Load variable c into accumulator 
155:     ST  3,-3(1)	Push left side onto temp variable stack 
156:    LDC  3,76(6)	Load of type char constant 
157:     LD  4,-3(1)	Pop left hand side into AC1 
158:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
160:    LDC  3,50(6)	Load of type int constant 
161:    LDA  2,0(3)	Copy accumulator to return register 
162:     LD  3,-1(1)	Load return address 
163:     LD  1,0(1)	Adjust fp 
164:    JMP  7,0(3)	Return 
* IF JUMP TO END
159:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
166:     LD  3,-2(1)	Load variable c into accumulator 
167:     ST  3,-3(1)	Push left side onto temp variable stack 
168:    LDC  3,67(6)	Load of type char constant 
169:     LD  4,-3(1)	Pop left hand side into AC1 
170:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
172:    LDC  3,100(6)	Load of type int constant 
173:    LDA  2,0(3)	Copy accumulator to return register 
174:     LD  3,-1(1)	Load return address 
175:     LD  1,0(1)	Adjust fp 
176:    JMP  7,0(3)	Return 
* IF JUMP TO END
171:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
178:     LD  3,-2(1)	Load variable c into accumulator 
179:     ST  3,-3(1)	Push left side onto temp variable stack 
180:    LDC  3,68(6)	Load of type char constant 
181:     LD  4,-3(1)	Pop left hand side into AC1 
182:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
184:    LDC  3,500(6)	Load of type int constant 
185:    LDA  2,0(3)	Copy accumulator to return register 
186:     LD  3,-1(1)	Load return address 
187:     LD  1,0(1)	Adjust fp 
188:    JMP  7,0(3)	Return 
* IF JUMP TO END
183:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
190:     LD  3,-2(1)	Load variable c into accumulator 
191:     ST  3,-3(1)	Push left side onto temp variable stack 
192:    LDC  3,77(6)	Load of type char constant 
193:     LD  4,-3(1)	Pop left hand side into AC1 
194:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
196:    LDC  3,1000(6)	Load of type int constant 
197:    LDA  2,0(3)	Copy accumulator to return register 
198:     LD  3,-1(1)	Load return address 
199:     LD  1,0(1)	Adjust fp 
200:    JMP  7,0(3)	Return 
* IF JUMP TO END
195:    JZR  3,6(7)	IF JMP TO ELSE 
202:    LDC  3,0(6)	Load of type int constant 
203:    LDA  2,0(3)	Copy accumulator to return register 
204:     LD  3,-1(1)	Load return address 
205:     LD  1,0(1)	Adjust fp 
206:    JMP  7,0(3)	Return 
201:    LDA  7,5(7)	JUMP TO END 
* END IF
189:    LDA  7,17(7)	JUMP TO END 
* END IF
177:    LDA  7,29(7)	JUMP TO END 
* END IF
165:    LDA  7,41(7)	JUMP TO END 
* END IF
153:    LDA  7,53(7)	JUMP TO END 
* END IF
141:    LDA  7,65(7)	JUMP TO END 
* END IF
129:    LDA  7,77(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
207:    LDC  2,0(6)	Set return value to 0 
208:     LD  3,-1(1)	Load return address 
209:     LD  1,0(1)	Adjust fp 
210:    JMP  7,0(3)	Return 
* END FUNCTION charvalue
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION roman2arabic
211:     ST  3,-1(1)	Store return address 
* COMPOUND
212:    LDC  3,0(6)	Load of type int constant 
213:     ST  3,-5(1)	Assigning variable sum in Local 
214:    LDC  3,0(6)	Load of type int constant 
215:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
216:     LD  3,-4(1)	Load variable i into accumulator 
217:     ST  3,-6(1)	Push left side onto temp variable stack 
218:     LD  3,-2(1)	Load variable len into accumulator 
219:     ST  3,-7(1)	Push left side onto temp variable stack 
220:    LDC  3,1(6)	Load of type int constant 
221:     LD  4,-7(1)	Pop left hand side into AC1 
222:    SUB  3,4,3	- Subtraction Operation 
223:     LD  4,-6(1)	Pop left hand side into AC1 
224:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
* CALL charvalue
226:     ST  1,-6(1)	Store fp in ghost frame for charvalue 
227:     LD  3,-3(1)	Load base address of array roman 
228:     LD  3,-4(1)	Load variable i into accumulator 
229:     LD  5,-3(1)	Load base address of array roman into AC2 
230:    SUB  5,5,3	Compute offset for array 
231:     LD  3,0(5)	Load array element roman from AC into loc from AC2 
232:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
233:    LDA  1,-6(1)	Move the fp to the new frame 
234:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
235:    JMP  7,-119(7)	Call function 
236:    LDA  3,0(2)	Save return result in accumulator 
* END CALL charvalue
237:     ST  3,-6(1)	Push left side onto temp variable stack 
* CALL charvalue
238:     ST  1,-7(1)	Store fp in ghost frame for charvalue 
239:     LD  3,-3(1)	Load base address of array roman 
240:     LD  3,-4(1)	Load variable i into accumulator 
241:     ST  3,-10(1)	Push left side onto temp variable stack 
242:    LDC  3,1(6)	Load of type int constant 
243:     LD  4,-10(1)	Pop left hand side into AC1 
244:    ADD  3,4,3	+ Operation 
245:     LD  5,-3(1)	Load base address of array roman into AC2 
246:    SUB  5,5,3	Compute offset for array 
247:     LD  3,0(5)	Load array element roman from AC into loc from AC2 
248:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
249:    LDA  1,-7(1)	Move the fp to the new frame 
250:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
251:    JMP  7,-135(7)	Call function 
252:    LDA  3,0(2)	Save return result in accumulator 
* END CALL charvalue
253:     LD  4,-6(1)	Pop left hand side into AC1 
254:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* CALL charvalue
256:     ST  1,-6(1)	Store fp in ghost frame for charvalue 
257:     LD  3,-3(1)	Load base address of array roman 
258:     LD  3,-4(1)	Load variable i into accumulator 
259:     LD  5,-3(1)	Load base address of array roman into AC2 
260:    SUB  5,5,3	Compute offset for array 
261:     LD  3,0(5)	Load array element roman from AC into loc from AC2 
262:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
263:    LDA  1,-6(1)	Move the fp to the new frame 
264:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
265:    JMP  7,-149(7)	Call function 
266:    LDA  3,0(2)	Save return result in accumulator 
* END CALL charvalue
267:     LD  4,-5(1)	Load lhs variable 
268:    SUB  3,4,3	-= operation 
269:     ST  3,-5(1)	Assigning variable sum in Local 
* IF JUMP TO END
255:    JZR  3,15(7)	IF JMP TO ELSE 
* CALL charvalue
271:     ST  1,-6(1)	Store fp in ghost frame for charvalue 
272:     LD  3,-3(1)	Load base address of array roman 
273:     LD  3,-4(1)	Load variable i into accumulator 
274:     LD  5,-3(1)	Load base address of array roman into AC2 
275:    SUB  5,5,3	Compute offset for array 
276:     LD  3,0(5)	Load array element roman from AC into loc from AC2 
277:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
278:    LDA  1,-6(1)	Move the fp to the new frame 
279:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
280:    JMP  7,-164(7)	Call function 
281:    LDA  3,0(2)	Save return result in accumulator 
* END CALL charvalue
282:     LD  4,-5(1)	Load lhs variable 
283:    ADD  3,4,3	+= operation 
284:     ST  3,-5(1)	Assigning variable sum in Local 
270:    LDA  7,14(7)	JUMP TO END 
* END IF
285:     LD  4,-4(1)	Load lhs variable 
286:    LDA  3,1(4)	++ Increment accumulator operation 
287:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
288:    JMP  7,-73(7)	Go to L1 
225:    JZR  3,63(7)	JMP if condition is false 
* End WHILE statement
* CALL charvalue
289:     ST  1,-6(1)	Store fp in ghost frame for charvalue 
290:     LD  3,-3(1)	Load base address of array roman 
291:     LD  3,-2(1)	Load variable len into accumulator 
292:     ST  3,-9(1)	Push left side onto temp variable stack 
293:    LDC  3,1(6)	Load of type int constant 
294:     LD  4,-9(1)	Pop left hand side into AC1 
295:    SUB  3,4,3	- Subtraction Operation 
296:     LD  5,-3(1)	Load base address of array roman into AC2 
297:    SUB  5,5,3	Compute offset for array 
298:     LD  3,0(5)	Load array element roman from AC into loc from AC2 
299:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
300:    LDA  1,-6(1)	Move the fp to the new frame 
301:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
302:    JMP  7,-186(7)	Call function 
303:    LDA  3,0(2)	Save return result in accumulator 
* END CALL charvalue
304:     LD  4,-5(1)	Load lhs variable 
305:    ADD  3,4,3	+= operation 
306:     ST  3,-5(1)	Assigning variable sum in Local 
307:     LD  3,-5(1)	Load variable sum into accumulator 
308:    LDA  2,0(3)	Copy accumulator to return register 
309:     LD  3,-1(1)	Load return address 
310:     LD  1,0(1)	Adjust fp 
311:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
312:    LDC  2,0(6)	Set return value to 0 
313:     LD  3,-1(1)	Load return address 
314:     LD  1,0(1)	Adjust fp 
315:    JMP  7,0(3)	Return 
* END FUNCTION roman2arabic
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
316:     ST  3,-1(1)	Store return address 
* COMPOUND
317:    LDC  3,50(6)	Load size of s into AC 
318:     ST  3,-2(1)	Store size of s in data memory 
* Beginning WHILE statement
319:    LDC  3,1(6)	Load of type bool constant 
* COMPOUND
* CALL getstring
321:     ST  1,-54(1)	Store fp in ghost frame for getstring 
322:    LDA  3,-3(1)	Load base address of array s 
323:     ST  3,-56(1)	Push parameter onto new frame 
* Begin call
324:    LDA  1,-54(1)	Move the fp to the new frame 
325:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
326:    JMP  7,-288(7)	Call function 
327:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getstring
328:     ST  3,-53(1)	Assigning variable len in Local 
* BEGIN IF BLOCK
329:    LDA  3,-3(1)	Load base address of array s 
330:    LDC  3,0(6)	Load of type int constant 
331:    LDA  5,-3(1)	Load base address of array s into AC2 
332:    SUB  5,5,3	Compute offset for array 
333:     LD  3,0(5)	Load array element s from AC into loc from AC2 
334:     ST  3,-54(1)	Push left side onto temp variable stack 
335:    LDC  3,113(6)	Load of type char constant 
336:     LD  4,-54(1)	Pop left hand side into AC1 
337:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* IF JUMP TO END
338:    JZR  3,2(7)	IF JMP TO ELSE 
340:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL putstring
341:     ST  1,-54(1)	Store fp in ghost frame for putstring 
342:     LD  3,-53(1)	Load variable len into accumulator 
343:     ST  3,-56(1)	Push parameter onto new frame 
344:    LDA  3,-3(1)	Load base address of array s 
345:     ST  3,-57(1)	Push parameter onto new frame 
* Begin call
346:    LDA  1,-54(1)	Move the fp to the new frame 
347:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
348:    JMP  7,-260(7)	Call function 
349:    LDA  3,0(2)	Save return result in accumulator 
* END CALL putstring
* CALL outnl
350:     ST  1,-54(1)	Store fp in ghost frame for outnl 
* Begin call
351:    LDA  1,-54(1)	Move the fp to the new frame 
352:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
353:    JMP  7,-320(7)	Call function 
354:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
355:     ST  1,-54(1)	Store fp in ghost frame for output 
* CALL roman2arabic
356:     ST  1,-57(1)	Store fp in ghost frame for roman2arabic 
357:     LD  3,-53(1)	Load variable len into accumulator 
358:     ST  3,-59(1)	Push parameter onto new frame 
359:    LDA  3,-3(1)	Load base address of array s 
360:     ST  3,-60(1)	Push parameter onto new frame 
* Begin call
361:    LDA  1,-57(1)	Move the fp to the new frame 
362:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
363:    JMP  7,-153(7)	Call function 
364:    LDA  3,0(2)	Save return result in accumulator 
* END CALL roman2arabic
365:     ST  3,-56(1)	Push parameter onto new frame 
* Begin call
366:    LDA  1,-54(1)	Move the fp to the new frame 
367:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
368:    JMP  7,-363(7)	Call function 
369:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
370:     ST  1,-54(1)	Store fp in ghost frame for outnl 
* Begin call
371:    LDA  1,-54(1)	Move the fp to the new frame 
372:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
373:    JMP  7,-340(7)	Call function 
374:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
375:    JMP  7,-57(7)	Go to L1 
320:    JZR  3,55(7)	JMP if condition is false 
339:    JMP  0,36(7)	Break statement backpatch jump 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
376:    LDC  2,0(6)	Set return value to 0 
377:     LD  3,-1(1)	Load return address 
378:     LD  1,0(1)	Adjust fp 
379:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,379(7)	Jump to init [backpatch] 
* INIT
380:    LDA  1,0(0)	set first frame at end of globals 
381:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
382:    LDA  3,1(7)	Return address in ac 
383:    JMP  7,-68(7)	Jump to main 
384:   HALT  0,0,0	DONE! 
* END INIT
