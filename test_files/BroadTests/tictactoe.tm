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
* FUNCTION move
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,0(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
 42:     LD  3,-2(1)	Load variable i into accumulator 
 43:     ST  3,-3(1)	Push left side onto temp variable stack 
 44:    LDC  3,9(6)	Load of type int constant 
 45:     LD  4,-3(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
 48:    LDA  3,-1(0)	Load base address of array board 
 49:     LD  3,-2(1)	Load variable i into accumulator 
 50:    LDA  5,-1(0)	Load base address of array board into AC2 
 51:    SUB  5,5,3	Compute offset for array 
 52:     LD  3,0(5)	Load array element board from AC into loc from AC2 
 53:     ST  3,-3(1)	Push left side onto temp variable stack 
 54:    LDC  3,1(6)	Load of type int constant 
 55:    NEG  3,3,0	- Change Sign Operation 
 56:     LD  4,-3(1)	Pop left hand side into AC1 
 57:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
* END COMPOUND
* IF JUMP TO END
 58:    JZR  3,2(7)	IF JMP TO ELSE 
 60:    LDA  7,0(7)	JUMP TO END 
* END IF
 61:     LD  4,-2(1)	Load lhs variable 
 62:    LDA  3,1(4)	++ Increment accumulator operation 
 63:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
 64:    JMP  7,-23(7)	Go to L1 
 47:    JZR  3,17(7)	JMP if condition is false 
 59:    JMP  0,5(7)	Break statement backpatch jump 
* End WHILE statement
* BEGIN IF BLOCK
 65:     LD  3,-2(1)	Load variable i into accumulator 
 66:     ST  3,-3(1)	Push left side onto temp variable stack 
 67:    LDC  3,9(6)	Load of type int constant 
 68:     LD  4,-3(1)	Pop left hand side into AC1 
 69:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
 71:    LDA  3,-1(0)	Load base address of array board 
 72:     LD  3,-2(1)	Load variable i into accumulator 
 73:     ST  3,-3(1)	Push array index onto temp stack 
 74:    LDC  3,2(6)	Load of type int constant 
 75:     LD  4,-3(1)	Pop array index into AC1 
 76:    LDA  5,-1(0)	Load base address of array board into AC2 
 77:    SUB  5,5,4	Compute offset for array 
 78:     ST  3,0(5)	Store variable board from AC into loc from AC2 
 79:    LDC  3,1(6)	Load of type bool constant 
 80:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
 70:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
 82:    LDC  3,0(6)	Load of type bool constant 
 83:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
 81:    LDA  7,2(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
 84:    LDC  2,0(6)	Set return value to 0 
 85:     LD  3,-1(1)	Load return address 
 86:     LD  1,0(1)	Adjust fp 
 87:    JMP  7,0(3)	Return 
* END FUNCTION move
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION win
 88:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 89:    LDA  3,-1(0)	Load base address of array board 
 90:    LDC  3,0(6)	Load of type int constant 
 91:    LDA  5,-1(0)	Load base address of array board into AC2 
 92:    SUB  5,5,3	Compute offset for array 
 93:     LD  3,0(5)	Load array element board from AC into loc from AC2 
 94:     ST  3,-2(1)	Push left side onto temp variable stack 
 95:    LDC  3,2(6)	Load of type int constant 
 96:     LD  4,-2(1)	Pop left hand side into AC1 
 97:    TEQ  3,4,3	== Equality Operation 
 98:     ST  3,-2(1)	Push left side onto temp variable stack 
 99:    LDA  3,-1(0)	Load base address of array board 
100:    LDC  3,1(6)	Load of type int constant 
101:    LDA  5,-1(0)	Load base address of array board into AC2 
102:    SUB  5,5,3	Compute offset for array 
103:     LD  3,0(5)	Load array element board from AC into loc from AC2 
104:     ST  3,-3(1)	Push left side onto temp variable stack 
105:    LDC  3,2(6)	Load of type int constant 
106:     LD  4,-3(1)	Pop left hand side into AC1 
107:    TEQ  3,4,3	== Equality Operation 
108:     LD  4,-2(1)	Pop left hand side into AC1 
109:    AND  3,4,3	AND operation store in AC 
110:     ST  3,-2(1)	Push left side onto temp variable stack 
111:    LDA  3,-1(0)	Load base address of array board 
112:    LDC  3,6(6)	Load of type int constant 
113:    LDA  5,-1(0)	Load base address of array board into AC2 
114:    SUB  5,5,3	Compute offset for array 
115:     LD  3,0(5)	Load array element board from AC into loc from AC2 
116:     ST  3,-3(1)	Push left side onto temp variable stack 
117:    LDC  3,2(6)	Load of type int constant 
118:     LD  4,-3(1)	Pop left hand side into AC1 
119:    TEQ  3,4,3	== Equality Operation 
120:     ST  3,-3(1)	Push left side onto temp variable stack 
121:    LDA  3,-1(0)	Load base address of array board 
122:    LDC  3,4(6)	Load of type int constant 
123:    LDA  5,-1(0)	Load base address of array board into AC2 
124:    SUB  5,5,3	Compute offset for array 
125:     LD  3,0(5)	Load array element board from AC into loc from AC2 
126:     ST  3,-4(1)	Push left side onto temp variable stack 
127:    LDC  3,2(6)	Load of type int constant 
128:     LD  4,-4(1)	Pop left hand side into AC1 
129:    TEQ  3,4,3	== Equality Operation 
130:     LD  4,-3(1)	Pop left hand side into AC1 
131:    AND  3,4,3	AND operation store in AC 
132:     LD  4,-2(1)	Pop left hand side into AC1 
133:     OR  3,4,3	OR operation store in AC 
134:     ST  3,-2(1)	Push left side onto temp variable stack 
135:    LDA  3,-1(0)	Load base address of array board 
136:    LDC  3,8(6)	Load of type int constant 
137:    LDA  5,-1(0)	Load base address of array board into AC2 
138:    SUB  5,5,3	Compute offset for array 
139:     LD  3,0(5)	Load array element board from AC into loc from AC2 
140:     ST  3,-3(1)	Push left side onto temp variable stack 
141:    LDC  3,2(6)	Load of type int constant 
142:     LD  4,-3(1)	Pop left hand side into AC1 
143:    TEQ  3,4,3	== Equality Operation 
144:     ST  3,-3(1)	Push left side onto temp variable stack 
145:    LDA  3,-1(0)	Load base address of array board 
146:    LDC  3,5(6)	Load of type int constant 
147:    LDA  5,-1(0)	Load base address of array board into AC2 
148:    SUB  5,5,3	Compute offset for array 
149:     LD  3,0(5)	Load array element board from AC into loc from AC2 
150:     ST  3,-4(1)	Push left side onto temp variable stack 
151:    LDC  3,2(6)	Load of type int constant 
152:     LD  4,-4(1)	Pop left hand side into AC1 
153:    TEQ  3,4,3	== Equality Operation 
154:     LD  4,-3(1)	Pop left hand side into AC1 
155:    AND  3,4,3	AND operation store in AC 
156:     LD  4,-2(1)	Pop left hand side into AC1 
157:     OR  3,4,3	OR operation store in AC 
158:     ST  3,-2(1)	Push left side onto temp variable stack 
159:    LDA  3,-1(0)	Load base address of array board 
160:    LDC  3,2(6)	Load of type int constant 
161:    LDA  5,-1(0)	Load base address of array board into AC2 
162:    SUB  5,5,3	Compute offset for array 
163:     LD  3,0(5)	Load array element board from AC into loc from AC2 
164:     ST  3,-3(1)	Push left side onto temp variable stack 
165:    LDC  3,1(6)	Load of type int constant 
166:    NEG  3,3,0	- Change Sign Operation 
167:     LD  4,-3(1)	Pop left hand side into AC1 
168:    TEQ  3,4,3	== Equality Operation 
169:     LD  4,-2(1)	Pop left hand side into AC1 
170:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
172:    LDA  3,-1(0)	Load base address of array board 
173:    LDC  3,2(6)	Load of type int constant 
174:     ST  3,-2(1)	Push array index onto temp stack 
175:    LDC  3,2(6)	Load of type int constant 
176:     LD  4,-2(1)	Pop array index into AC1 
177:    LDA  5,-1(0)	Load base address of array board into AC2 
178:    SUB  5,5,4	Compute offset for array 
179:     ST  3,0(5)	Store variable board from AC into loc from AC2 
180:    LDC  3,0(6)	Load of type bool constant 
181:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
171:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
183:    LDA  3,-1(0)	Load base address of array board 
184:    LDC  3,0(6)	Load of type int constant 
185:    LDA  5,-1(0)	Load base address of array board into AC2 
186:    SUB  5,5,3	Compute offset for array 
187:     LD  3,0(5)	Load array element board from AC into loc from AC2 
188:     ST  3,-2(1)	Push left side onto temp variable stack 
189:    LDC  3,2(6)	Load of type int constant 
190:     LD  4,-2(1)	Pop left hand side into AC1 
191:    TEQ  3,4,3	== Equality Operation 
192:     ST  3,-2(1)	Push left side onto temp variable stack 
193:    LDA  3,-1(0)	Load base address of array board 
194:    LDC  3,2(6)	Load of type int constant 
195:    LDA  5,-1(0)	Load base address of array board into AC2 
196:    SUB  5,5,3	Compute offset for array 
197:     LD  3,0(5)	Load array element board from AC into loc from AC2 
198:     ST  3,-3(1)	Push left side onto temp variable stack 
199:    LDC  3,2(6)	Load of type int constant 
200:     LD  4,-3(1)	Pop left hand side into AC1 
201:    TEQ  3,4,3	== Equality Operation 
202:     LD  4,-2(1)	Pop left hand side into AC1 
203:    AND  3,4,3	AND operation store in AC 
204:     ST  3,-2(1)	Push left side onto temp variable stack 
205:    LDA  3,-1(0)	Load base address of array board 
206:    LDC  3,4(6)	Load of type int constant 
207:    LDA  5,-1(0)	Load base address of array board into AC2 
208:    SUB  5,5,3	Compute offset for array 
209:     LD  3,0(5)	Load array element board from AC into loc from AC2 
210:     ST  3,-3(1)	Push left side onto temp variable stack 
211:    LDC  3,2(6)	Load of type int constant 
212:     LD  4,-3(1)	Pop left hand side into AC1 
213:    TEQ  3,4,3	== Equality Operation 
214:     ST  3,-3(1)	Push left side onto temp variable stack 
215:    LDA  3,-1(0)	Load base address of array board 
216:    LDC  3,7(6)	Load of type int constant 
217:    LDA  5,-1(0)	Load base address of array board into AC2 
218:    SUB  5,5,3	Compute offset for array 
219:     LD  3,0(5)	Load array element board from AC into loc from AC2 
220:     ST  3,-4(1)	Push left side onto temp variable stack 
221:    LDC  3,2(6)	Load of type int constant 
222:     LD  4,-4(1)	Pop left hand side into AC1 
223:    TEQ  3,4,3	== Equality Operation 
224:     LD  4,-3(1)	Pop left hand side into AC1 
225:    AND  3,4,3	AND operation store in AC 
226:     LD  4,-2(1)	Pop left hand side into AC1 
227:     OR  3,4,3	OR operation store in AC 
228:     ST  3,-2(1)	Push left side onto temp variable stack 
229:    LDA  3,-1(0)	Load base address of array board 
230:    LDC  3,1(6)	Load of type int constant 
231:    LDA  5,-1(0)	Load base address of array board into AC2 
232:    SUB  5,5,3	Compute offset for array 
233:     LD  3,0(5)	Load array element board from AC into loc from AC2 
234:     ST  3,-3(1)	Push left side onto temp variable stack 
235:    LDC  3,1(6)	Load of type int constant 
236:    NEG  3,3,0	- Change Sign Operation 
237:     LD  4,-3(1)	Pop left hand side into AC1 
238:    TEQ  3,4,3	== Equality Operation 
239:     LD  4,-2(1)	Pop left hand side into AC1 
240:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
242:    LDA  3,-1(0)	Load base address of array board 
243:    LDC  3,1(6)	Load of type int constant 
244:     ST  3,-2(1)	Push array index onto temp stack 
245:    LDC  3,2(6)	Load of type int constant 
246:     LD  4,-2(1)	Pop array index into AC1 
247:    LDA  5,-1(0)	Load base address of array board into AC2 
248:    SUB  5,5,4	Compute offset for array 
249:     ST  3,0(5)	Store variable board from AC into loc from AC2 
250:    LDC  3,0(6)	Load of type bool constant 
251:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
241:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
253:    LDA  3,-1(0)	Load base address of array board 
254:    LDC  3,2(6)	Load of type int constant 
255:    LDA  5,-1(0)	Load base address of array board into AC2 
256:    SUB  5,5,3	Compute offset for array 
257:     LD  3,0(5)	Load array element board from AC into loc from AC2 
258:     ST  3,-2(1)	Push left side onto temp variable stack 
259:    LDC  3,2(6)	Load of type int constant 
260:     LD  4,-2(1)	Pop left hand side into AC1 
261:    TEQ  3,4,3	== Equality Operation 
262:     ST  3,-2(1)	Push left side onto temp variable stack 
263:    LDA  3,-1(0)	Load base address of array board 
264:    LDC  3,1(6)	Load of type int constant 
265:    LDA  5,-1(0)	Load base address of array board into AC2 
266:    SUB  5,5,3	Compute offset for array 
267:     LD  3,0(5)	Load array element board from AC into loc from AC2 
268:     ST  3,-3(1)	Push left side onto temp variable stack 
269:    LDC  3,2(6)	Load of type int constant 
270:     LD  4,-3(1)	Pop left hand side into AC1 
271:    TEQ  3,4,3	== Equality Operation 
272:     LD  4,-2(1)	Pop left hand side into AC1 
273:    AND  3,4,3	AND operation store in AC 
274:     ST  3,-2(1)	Push left side onto temp variable stack 
275:    LDA  3,-1(0)	Load base address of array board 
276:    LDC  3,6(6)	Load of type int constant 
277:    LDA  5,-1(0)	Load base address of array board into AC2 
278:    SUB  5,5,3	Compute offset for array 
279:     LD  3,0(5)	Load array element board from AC into loc from AC2 
280:     ST  3,-3(1)	Push left side onto temp variable stack 
281:    LDC  3,2(6)	Load of type int constant 
282:     LD  4,-3(1)	Pop left hand side into AC1 
283:    TEQ  3,4,3	== Equality Operation 
284:     ST  3,-3(1)	Push left side onto temp variable stack 
285:    LDA  3,-1(0)	Load base address of array board 
286:    LDC  3,3(6)	Load of type int constant 
287:    LDA  5,-1(0)	Load base address of array board into AC2 
288:    SUB  5,5,3	Compute offset for array 
289:     LD  3,0(5)	Load array element board from AC into loc from AC2 
290:     ST  3,-4(1)	Push left side onto temp variable stack 
291:    LDC  3,2(6)	Load of type int constant 
292:     LD  4,-4(1)	Pop left hand side into AC1 
293:    TEQ  3,4,3	== Equality Operation 
294:     LD  4,-3(1)	Pop left hand side into AC1 
295:    AND  3,4,3	AND operation store in AC 
296:     LD  4,-2(1)	Pop left hand side into AC1 
297:     OR  3,4,3	OR operation store in AC 
298:     ST  3,-2(1)	Push left side onto temp variable stack 
299:    LDA  3,-1(0)	Load base address of array board 
300:    LDC  3,4(6)	Load of type int constant 
301:    LDA  5,-1(0)	Load base address of array board into AC2 
302:    SUB  5,5,3	Compute offset for array 
303:     LD  3,0(5)	Load array element board from AC into loc from AC2 
304:     ST  3,-3(1)	Push left side onto temp variable stack 
305:    LDC  3,2(6)	Load of type int constant 
306:     LD  4,-3(1)	Pop left hand side into AC1 
307:    TEQ  3,4,3	== Equality Operation 
308:     ST  3,-3(1)	Push left side onto temp variable stack 
309:    LDA  3,-1(0)	Load base address of array board 
310:    LDC  3,8(6)	Load of type int constant 
311:    LDA  5,-1(0)	Load base address of array board into AC2 
312:    SUB  5,5,3	Compute offset for array 
313:     LD  3,0(5)	Load array element board from AC into loc from AC2 
314:     ST  3,-4(1)	Push left side onto temp variable stack 
315:    LDC  3,2(6)	Load of type int constant 
316:     LD  4,-4(1)	Pop left hand side into AC1 
317:    TEQ  3,4,3	== Equality Operation 
318:     LD  4,-3(1)	Pop left hand side into AC1 
319:    AND  3,4,3	AND operation store in AC 
320:     LD  4,-2(1)	Pop left hand side into AC1 
321:     OR  3,4,3	OR operation store in AC 
322:     ST  3,-2(1)	Push left side onto temp variable stack 
323:    LDA  3,-1(0)	Load base address of array board 
324:    LDC  3,0(6)	Load of type int constant 
325:    LDA  5,-1(0)	Load base address of array board into AC2 
326:    SUB  5,5,3	Compute offset for array 
327:     LD  3,0(5)	Load array element board from AC into loc from AC2 
328:     ST  3,-3(1)	Push left side onto temp variable stack 
329:    LDC  3,1(6)	Load of type int constant 
330:    NEG  3,3,0	- Change Sign Operation 
331:     LD  4,-3(1)	Pop left hand side into AC1 
332:    TEQ  3,4,3	== Equality Operation 
333:     LD  4,-2(1)	Pop left hand side into AC1 
334:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
336:    LDA  3,-1(0)	Load base address of array board 
337:    LDC  3,0(6)	Load of type int constant 
338:     ST  3,-2(1)	Push array index onto temp stack 
339:    LDC  3,2(6)	Load of type int constant 
340:     LD  4,-2(1)	Pop array index into AC1 
341:    LDA  5,-1(0)	Load base address of array board into AC2 
342:    SUB  5,5,4	Compute offset for array 
343:     ST  3,0(5)	Store variable board from AC into loc from AC2 
344:    LDC  3,0(6)	Load of type bool constant 
345:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
335:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
347:    LDA  3,-1(0)	Load base address of array board 
348:    LDC  3,3(6)	Load of type int constant 
349:    LDA  5,-1(0)	Load base address of array board into AC2 
350:    SUB  5,5,3	Compute offset for array 
351:     LD  3,0(5)	Load array element board from AC into loc from AC2 
352:     ST  3,-2(1)	Push left side onto temp variable stack 
353:    LDC  3,2(6)	Load of type int constant 
354:     LD  4,-2(1)	Pop left hand side into AC1 
355:    TEQ  3,4,3	== Equality Operation 
356:     ST  3,-2(1)	Push left side onto temp variable stack 
357:    LDA  3,-1(0)	Load base address of array board 
358:    LDC  3,4(6)	Load of type int constant 
359:    LDA  5,-1(0)	Load base address of array board into AC2 
360:    SUB  5,5,3	Compute offset for array 
361:     LD  3,0(5)	Load array element board from AC into loc from AC2 
362:     ST  3,-3(1)	Push left side onto temp variable stack 
363:    LDC  3,2(6)	Load of type int constant 
364:     LD  4,-3(1)	Pop left hand side into AC1 
365:    TEQ  3,4,3	== Equality Operation 
366:     LD  4,-2(1)	Pop left hand side into AC1 
367:    AND  3,4,3	AND operation store in AC 
368:     ST  3,-2(1)	Push left side onto temp variable stack 
369:    LDA  3,-1(0)	Load base address of array board 
370:    LDC  3,2(6)	Load of type int constant 
371:    LDA  5,-1(0)	Load base address of array board into AC2 
372:    SUB  5,5,3	Compute offset for array 
373:     LD  3,0(5)	Load array element board from AC into loc from AC2 
374:     ST  3,-3(1)	Push left side onto temp variable stack 
375:    LDC  3,2(6)	Load of type int constant 
376:     LD  4,-3(1)	Pop left hand side into AC1 
377:    TEQ  3,4,3	== Equality Operation 
378:     ST  3,-3(1)	Push left side onto temp variable stack 
379:    LDA  3,-1(0)	Load base address of array board 
380:    LDC  3,8(6)	Load of type int constant 
381:    LDA  5,-1(0)	Load base address of array board into AC2 
382:    SUB  5,5,3	Compute offset for array 
383:     LD  3,0(5)	Load array element board from AC into loc from AC2 
384:     ST  3,-4(1)	Push left side onto temp variable stack 
385:    LDC  3,2(6)	Load of type int constant 
386:     LD  4,-4(1)	Pop left hand side into AC1 
387:    TEQ  3,4,3	== Equality Operation 
388:     LD  4,-3(1)	Pop left hand side into AC1 
389:    AND  3,4,3	AND operation store in AC 
390:     LD  4,-2(1)	Pop left hand side into AC1 
391:     OR  3,4,3	OR operation store in AC 
392:     ST  3,-2(1)	Push left side onto temp variable stack 
393:    LDA  3,-1(0)	Load base address of array board 
394:    LDC  3,5(6)	Load of type int constant 
395:    LDA  5,-1(0)	Load base address of array board into AC2 
396:    SUB  5,5,3	Compute offset for array 
397:     LD  3,0(5)	Load array element board from AC into loc from AC2 
398:     ST  3,-3(1)	Push left side onto temp variable stack 
399:    LDC  3,1(6)	Load of type int constant 
400:    NEG  3,3,0	- Change Sign Operation 
401:     LD  4,-3(1)	Pop left hand side into AC1 
402:    TEQ  3,4,3	== Equality Operation 
403:     LD  4,-2(1)	Pop left hand side into AC1 
404:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
406:    LDA  3,-1(0)	Load base address of array board 
407:    LDC  3,5(6)	Load of type int constant 
408:     ST  3,-2(1)	Push array index onto temp stack 
409:    LDC  3,2(6)	Load of type int constant 
410:     LD  4,-2(1)	Pop array index into AC1 
411:    LDA  5,-1(0)	Load base address of array board into AC2 
412:    SUB  5,5,4	Compute offset for array 
413:     ST  3,0(5)	Store variable board from AC into loc from AC2 
414:    LDC  3,0(6)	Load of type bool constant 
415:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
405:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
417:    LDA  3,-1(0)	Load base address of array board 
418:    LDC  3,3(6)	Load of type int constant 
419:    LDA  5,-1(0)	Load base address of array board into AC2 
420:    SUB  5,5,3	Compute offset for array 
421:     LD  3,0(5)	Load array element board from AC into loc from AC2 
422:     ST  3,-2(1)	Push left side onto temp variable stack 
423:    LDC  3,2(6)	Load of type int constant 
424:     LD  4,-2(1)	Pop left hand side into AC1 
425:    TEQ  3,4,3	== Equality Operation 
426:     ST  3,-2(1)	Push left side onto temp variable stack 
427:    LDA  3,-1(0)	Load base address of array board 
428:    LDC  3,5(6)	Load of type int constant 
429:    LDA  5,-1(0)	Load base address of array board into AC2 
430:    SUB  5,5,3	Compute offset for array 
431:     LD  3,0(5)	Load array element board from AC into loc from AC2 
432:     ST  3,-3(1)	Push left side onto temp variable stack 
433:    LDC  3,2(6)	Load of type int constant 
434:     LD  4,-3(1)	Pop left hand side into AC1 
435:    TEQ  3,4,3	== Equality Operation 
436:     LD  4,-2(1)	Pop left hand side into AC1 
437:    AND  3,4,3	AND operation store in AC 
438:     ST  3,-2(1)	Push left side onto temp variable stack 
439:    LDA  3,-1(0)	Load base address of array board 
440:    LDC  3,0(6)	Load of type int constant 
441:    LDA  5,-1(0)	Load base address of array board into AC2 
442:    SUB  5,5,3	Compute offset for array 
443:     LD  3,0(5)	Load array element board from AC into loc from AC2 
444:     ST  3,-3(1)	Push left side onto temp variable stack 
445:    LDC  3,2(6)	Load of type int constant 
446:     LD  4,-3(1)	Pop left hand side into AC1 
447:    TEQ  3,4,3	== Equality Operation 
448:     ST  3,-3(1)	Push left side onto temp variable stack 
449:    LDA  3,-1(0)	Load base address of array board 
450:    LDC  3,8(6)	Load of type int constant 
451:    LDA  5,-1(0)	Load base address of array board into AC2 
452:    SUB  5,5,3	Compute offset for array 
453:     LD  3,0(5)	Load array element board from AC into loc from AC2 
454:     ST  3,-4(1)	Push left side onto temp variable stack 
455:    LDC  3,2(6)	Load of type int constant 
456:     LD  4,-4(1)	Pop left hand side into AC1 
457:    TEQ  3,4,3	== Equality Operation 
458:     LD  4,-3(1)	Pop left hand side into AC1 
459:    AND  3,4,3	AND operation store in AC 
460:     LD  4,-2(1)	Pop left hand side into AC1 
461:     OR  3,4,3	OR operation store in AC 
462:     ST  3,-2(1)	Push left side onto temp variable stack 
463:    LDA  3,-1(0)	Load base address of array board 
464:    LDC  3,2(6)	Load of type int constant 
465:    LDA  5,-1(0)	Load base address of array board into AC2 
466:    SUB  5,5,3	Compute offset for array 
467:     LD  3,0(5)	Load array element board from AC into loc from AC2 
468:     ST  3,-3(1)	Push left side onto temp variable stack 
469:    LDC  3,2(6)	Load of type int constant 
470:     LD  4,-3(1)	Pop left hand side into AC1 
471:    TEQ  3,4,3	== Equality Operation 
472:     ST  3,-3(1)	Push left side onto temp variable stack 
473:    LDA  3,-1(0)	Load base address of array board 
474:    LDC  3,6(6)	Load of type int constant 
475:    LDA  5,-1(0)	Load base address of array board into AC2 
476:    SUB  5,5,3	Compute offset for array 
477:     LD  3,0(5)	Load array element board from AC into loc from AC2 
478:     ST  3,-4(1)	Push left side onto temp variable stack 
479:    LDC  3,2(6)	Load of type int constant 
480:     LD  4,-4(1)	Pop left hand side into AC1 
481:    TEQ  3,4,3	== Equality Operation 
482:     LD  4,-3(1)	Pop left hand side into AC1 
483:    AND  3,4,3	AND operation store in AC 
484:     LD  4,-2(1)	Pop left hand side into AC1 
485:     OR  3,4,3	OR operation store in AC 
486:     ST  3,-2(1)	Push left side onto temp variable stack 
487:    LDA  3,-1(0)	Load base address of array board 
488:    LDC  3,1(6)	Load of type int constant 
489:    LDA  5,-1(0)	Load base address of array board into AC2 
490:    SUB  5,5,3	Compute offset for array 
491:     LD  3,0(5)	Load array element board from AC into loc from AC2 
492:     ST  3,-3(1)	Push left side onto temp variable stack 
493:    LDC  3,2(6)	Load of type int constant 
494:     LD  4,-3(1)	Pop left hand side into AC1 
495:    TEQ  3,4,3	== Equality Operation 
496:     ST  3,-3(1)	Push left side onto temp variable stack 
497:    LDA  3,-1(0)	Load base address of array board 
498:    LDC  3,7(6)	Load of type int constant 
499:    LDA  5,-1(0)	Load base address of array board into AC2 
500:    SUB  5,5,3	Compute offset for array 
501:     LD  3,0(5)	Load array element board from AC into loc from AC2 
502:     ST  3,-4(1)	Push left side onto temp variable stack 
503:    LDC  3,2(6)	Load of type int constant 
504:     LD  4,-4(1)	Pop left hand side into AC1 
505:    TEQ  3,4,3	== Equality Operation 
506:     LD  4,-3(1)	Pop left hand side into AC1 
507:    AND  3,4,3	AND operation store in AC 
508:     LD  4,-2(1)	Pop left hand side into AC1 
509:     OR  3,4,3	OR operation store in AC 
510:     ST  3,-2(1)	Push left side onto temp variable stack 
511:    LDA  3,-1(0)	Load base address of array board 
512:    LDC  3,4(6)	Load of type int constant 
513:    LDA  5,-1(0)	Load base address of array board into AC2 
514:    SUB  5,5,3	Compute offset for array 
515:     LD  3,0(5)	Load array element board from AC into loc from AC2 
516:     ST  3,-3(1)	Push left side onto temp variable stack 
517:    LDC  3,1(6)	Load of type int constant 
518:    NEG  3,3,0	- Change Sign Operation 
519:     LD  4,-3(1)	Pop left hand side into AC1 
520:    TEQ  3,4,3	== Equality Operation 
521:     LD  4,-2(1)	Pop left hand side into AC1 
522:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
524:    LDA  3,-1(0)	Load base address of array board 
525:    LDC  3,4(6)	Load of type int constant 
526:     ST  3,-2(1)	Push array index onto temp stack 
527:    LDC  3,2(6)	Load of type int constant 
528:     LD  4,-2(1)	Pop array index into AC1 
529:    LDA  5,-1(0)	Load base address of array board into AC2 
530:    SUB  5,5,4	Compute offset for array 
531:     ST  3,0(5)	Store variable board from AC into loc from AC2 
532:    LDC  3,0(6)	Load of type bool constant 
533:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
523:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
535:    LDA  3,-1(0)	Load base address of array board 
536:    LDC  3,4(6)	Load of type int constant 
537:    LDA  5,-1(0)	Load base address of array board into AC2 
538:    SUB  5,5,3	Compute offset for array 
539:     LD  3,0(5)	Load array element board from AC into loc from AC2 
540:     ST  3,-2(1)	Push left side onto temp variable stack 
541:    LDC  3,2(6)	Load of type int constant 
542:     LD  4,-2(1)	Pop left hand side into AC1 
543:    TEQ  3,4,3	== Equality Operation 
544:     ST  3,-2(1)	Push left side onto temp variable stack 
545:    LDA  3,-1(0)	Load base address of array board 
546:    LDC  3,5(6)	Load of type int constant 
547:    LDA  5,-1(0)	Load base address of array board into AC2 
548:    SUB  5,5,3	Compute offset for array 
549:     LD  3,0(5)	Load array element board from AC into loc from AC2 
550:     ST  3,-3(1)	Push left side onto temp variable stack 
551:    LDC  3,2(6)	Load of type int constant 
552:     LD  4,-3(1)	Pop left hand side into AC1 
553:    TEQ  3,4,3	== Equality Operation 
554:     LD  4,-2(1)	Pop left hand side into AC1 
555:    AND  3,4,3	AND operation store in AC 
556:     ST  3,-2(1)	Push left side onto temp variable stack 
557:    LDA  3,-1(0)	Load base address of array board 
558:    LDC  3,0(6)	Load of type int constant 
559:    LDA  5,-1(0)	Load base address of array board into AC2 
560:    SUB  5,5,3	Compute offset for array 
561:     LD  3,0(5)	Load array element board from AC into loc from AC2 
562:     ST  3,-3(1)	Push left side onto temp variable stack 
563:    LDC  3,2(6)	Load of type int constant 
564:     LD  4,-3(1)	Pop left hand side into AC1 
565:    TEQ  3,4,3	== Equality Operation 
566:     ST  3,-3(1)	Push left side onto temp variable stack 
567:    LDA  3,-1(0)	Load base address of array board 
568:    LDC  3,6(6)	Load of type int constant 
569:    LDA  5,-1(0)	Load base address of array board into AC2 
570:    SUB  5,5,3	Compute offset for array 
571:     LD  3,0(5)	Load array element board from AC into loc from AC2 
572:     ST  3,-4(1)	Push left side onto temp variable stack 
573:    LDC  3,2(6)	Load of type int constant 
574:     LD  4,-4(1)	Pop left hand side into AC1 
575:    TEQ  3,4,3	== Equality Operation 
576:     LD  4,-3(1)	Pop left hand side into AC1 
577:    AND  3,4,3	AND operation store in AC 
578:     LD  4,-2(1)	Pop left hand side into AC1 
579:     OR  3,4,3	OR operation store in AC 
580:     ST  3,-2(1)	Push left side onto temp variable stack 
581:    LDA  3,-1(0)	Load base address of array board 
582:    LDC  3,3(6)	Load of type int constant 
583:    LDA  5,-1(0)	Load base address of array board into AC2 
584:    SUB  5,5,3	Compute offset for array 
585:     LD  3,0(5)	Load array element board from AC into loc from AC2 
586:     ST  3,-3(1)	Push left side onto temp variable stack 
587:    LDC  3,1(6)	Load of type int constant 
588:    NEG  3,3,0	- Change Sign Operation 
589:     LD  4,-3(1)	Pop left hand side into AC1 
590:    TEQ  3,4,3	== Equality Operation 
591:     LD  4,-2(1)	Pop left hand side into AC1 
592:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
594:    LDA  3,-1(0)	Load base address of array board 
595:    LDC  3,3(6)	Load of type int constant 
596:     ST  3,-2(1)	Push array index onto temp stack 
597:    LDC  3,2(6)	Load of type int constant 
598:     LD  4,-2(1)	Pop array index into AC1 
599:    LDA  5,-1(0)	Load base address of array board into AC2 
600:    SUB  5,5,4	Compute offset for array 
601:     ST  3,0(5)	Store variable board from AC into loc from AC2 
602:    LDC  3,0(6)	Load of type bool constant 
603:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
593:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
605:    LDA  3,-1(0)	Load base address of array board 
606:    LDC  3,6(6)	Load of type int constant 
607:    LDA  5,-1(0)	Load base address of array board into AC2 
608:    SUB  5,5,3	Compute offset for array 
609:     LD  3,0(5)	Load array element board from AC into loc from AC2 
610:     ST  3,-2(1)	Push left side onto temp variable stack 
611:    LDC  3,2(6)	Load of type int constant 
612:     LD  4,-2(1)	Pop left hand side into AC1 
613:    TEQ  3,4,3	== Equality Operation 
614:     ST  3,-2(1)	Push left side onto temp variable stack 
615:    LDA  3,-1(0)	Load base address of array board 
616:    LDC  3,7(6)	Load of type int constant 
617:    LDA  5,-1(0)	Load base address of array board into AC2 
618:    SUB  5,5,3	Compute offset for array 
619:     LD  3,0(5)	Load array element board from AC into loc from AC2 
620:     ST  3,-3(1)	Push left side onto temp variable stack 
621:    LDC  3,2(6)	Load of type int constant 
622:     LD  4,-3(1)	Pop left hand side into AC1 
623:    TEQ  3,4,3	== Equality Operation 
624:     LD  4,-2(1)	Pop left hand side into AC1 
625:    AND  3,4,3	AND operation store in AC 
626:     ST  3,-2(1)	Push left side onto temp variable stack 
627:    LDA  3,-1(0)	Load base address of array board 
628:    LDC  3,0(6)	Load of type int constant 
629:    LDA  5,-1(0)	Load base address of array board into AC2 
630:    SUB  5,5,3	Compute offset for array 
631:     LD  3,0(5)	Load array element board from AC into loc from AC2 
632:     ST  3,-3(1)	Push left side onto temp variable stack 
633:    LDC  3,2(6)	Load of type int constant 
634:     LD  4,-3(1)	Pop left hand side into AC1 
635:    TEQ  3,4,3	== Equality Operation 
636:     ST  3,-3(1)	Push left side onto temp variable stack 
637:    LDA  3,-1(0)	Load base address of array board 
638:    LDC  3,4(6)	Load of type int constant 
639:    LDA  5,-1(0)	Load base address of array board into AC2 
640:    SUB  5,5,3	Compute offset for array 
641:     LD  3,0(5)	Load array element board from AC into loc from AC2 
642:     ST  3,-4(1)	Push left side onto temp variable stack 
643:    LDC  3,2(6)	Load of type int constant 
644:     LD  4,-4(1)	Pop left hand side into AC1 
645:    TEQ  3,4,3	== Equality Operation 
646:     LD  4,-3(1)	Pop left hand side into AC1 
647:    AND  3,4,3	AND operation store in AC 
648:     LD  4,-2(1)	Pop left hand side into AC1 
649:     OR  3,4,3	OR operation store in AC 
650:     ST  3,-2(1)	Push left side onto temp variable stack 
651:    LDA  3,-1(0)	Load base address of array board 
652:    LDC  3,2(6)	Load of type int constant 
653:    LDA  5,-1(0)	Load base address of array board into AC2 
654:    SUB  5,5,3	Compute offset for array 
655:     LD  3,0(5)	Load array element board from AC into loc from AC2 
656:     ST  3,-3(1)	Push left side onto temp variable stack 
657:    LDC  3,2(6)	Load of type int constant 
658:     LD  4,-3(1)	Pop left hand side into AC1 
659:    TEQ  3,4,3	== Equality Operation 
660:     ST  3,-3(1)	Push left side onto temp variable stack 
661:    LDA  3,-1(0)	Load base address of array board 
662:    LDC  3,5(6)	Load of type int constant 
663:    LDA  5,-1(0)	Load base address of array board into AC2 
664:    SUB  5,5,3	Compute offset for array 
665:     LD  3,0(5)	Load array element board from AC into loc from AC2 
666:     ST  3,-4(1)	Push left side onto temp variable stack 
667:    LDC  3,2(6)	Load of type int constant 
668:     LD  4,-4(1)	Pop left hand side into AC1 
669:    TEQ  3,4,3	== Equality Operation 
670:     LD  4,-3(1)	Pop left hand side into AC1 
671:    AND  3,4,3	AND operation store in AC 
672:     LD  4,-2(1)	Pop left hand side into AC1 
673:     OR  3,4,3	OR operation store in AC 
674:     ST  3,-2(1)	Push left side onto temp variable stack 
675:    LDA  3,-1(0)	Load base address of array board 
676:    LDC  3,8(6)	Load of type int constant 
677:    LDA  5,-1(0)	Load base address of array board into AC2 
678:    SUB  5,5,3	Compute offset for array 
679:     LD  3,0(5)	Load array element board from AC into loc from AC2 
680:     ST  3,-3(1)	Push left side onto temp variable stack 
681:    LDC  3,1(6)	Load of type int constant 
682:    NEG  3,3,0	- Change Sign Operation 
683:     LD  4,-3(1)	Pop left hand side into AC1 
684:    TEQ  3,4,3	== Equality Operation 
685:     LD  4,-2(1)	Pop left hand side into AC1 
686:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
688:    LDA  3,-1(0)	Load base address of array board 
689:    LDC  3,8(6)	Load of type int constant 
690:     ST  3,-2(1)	Push array index onto temp stack 
691:    LDC  3,2(6)	Load of type int constant 
692:     LD  4,-2(1)	Pop array index into AC1 
693:    LDA  5,-1(0)	Load base address of array board into AC2 
694:    SUB  5,5,4	Compute offset for array 
695:     ST  3,0(5)	Store variable board from AC into loc from AC2 
696:    LDC  3,0(6)	Load of type bool constant 
697:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
687:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
699:    LDA  3,-1(0)	Load base address of array board 
700:    LDC  3,6(6)	Load of type int constant 
701:    LDA  5,-1(0)	Load base address of array board into AC2 
702:    SUB  5,5,3	Compute offset for array 
703:     LD  3,0(5)	Load array element board from AC into loc from AC2 
704:     ST  3,-2(1)	Push left side onto temp variable stack 
705:    LDC  3,2(6)	Load of type int constant 
706:     LD  4,-2(1)	Pop left hand side into AC1 
707:    TEQ  3,4,3	== Equality Operation 
708:     ST  3,-2(1)	Push left side onto temp variable stack 
709:    LDA  3,-1(0)	Load base address of array board 
710:    LDC  3,8(6)	Load of type int constant 
711:    LDA  5,-1(0)	Load base address of array board into AC2 
712:    SUB  5,5,3	Compute offset for array 
713:     LD  3,0(5)	Load array element board from AC into loc from AC2 
714:     ST  3,-3(1)	Push left side onto temp variable stack 
715:    LDC  3,2(6)	Load of type int constant 
716:     LD  4,-3(1)	Pop left hand side into AC1 
717:    TEQ  3,4,3	== Equality Operation 
718:     LD  4,-2(1)	Pop left hand side into AC1 
719:    AND  3,4,3	AND operation store in AC 
720:     ST  3,-2(1)	Push left side onto temp variable stack 
721:    LDA  3,-1(0)	Load base address of array board 
722:    LDC  3,4(6)	Load of type int constant 
723:    LDA  5,-1(0)	Load base address of array board into AC2 
724:    SUB  5,5,3	Compute offset for array 
725:     LD  3,0(5)	Load array element board from AC into loc from AC2 
726:     ST  3,-3(1)	Push left side onto temp variable stack 
727:    LDC  3,2(6)	Load of type int constant 
728:     LD  4,-3(1)	Pop left hand side into AC1 
729:    TEQ  3,4,3	== Equality Operation 
730:     ST  3,-3(1)	Push left side onto temp variable stack 
731:    LDA  3,-1(0)	Load base address of array board 
732:    LDC  3,1(6)	Load of type int constant 
733:    LDA  5,-1(0)	Load base address of array board into AC2 
734:    SUB  5,5,3	Compute offset for array 
735:     LD  3,0(5)	Load array element board from AC into loc from AC2 
736:     ST  3,-4(1)	Push left side onto temp variable stack 
737:    LDC  3,2(6)	Load of type int constant 
738:     LD  4,-4(1)	Pop left hand side into AC1 
739:    TEQ  3,4,3	== Equality Operation 
740:     LD  4,-3(1)	Pop left hand side into AC1 
741:    AND  3,4,3	AND operation store in AC 
742:     LD  4,-2(1)	Pop left hand side into AC1 
743:     OR  3,4,3	OR operation store in AC 
744:     ST  3,-2(1)	Push left side onto temp variable stack 
745:    LDA  3,-1(0)	Load base address of array board 
746:    LDC  3,7(6)	Load of type int constant 
747:    LDA  5,-1(0)	Load base address of array board into AC2 
748:    SUB  5,5,3	Compute offset for array 
749:     LD  3,0(5)	Load array element board from AC into loc from AC2 
750:     ST  3,-3(1)	Push left side onto temp variable stack 
751:    LDC  3,1(6)	Load of type int constant 
752:    NEG  3,3,0	- Change Sign Operation 
753:     LD  4,-3(1)	Pop left hand side into AC1 
754:    TEQ  3,4,3	== Equality Operation 
755:     LD  4,-2(1)	Pop left hand side into AC1 
756:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
758:    LDA  3,-1(0)	Load base address of array board 
759:    LDC  3,7(6)	Load of type int constant 
760:     ST  3,-2(1)	Push array index onto temp stack 
761:    LDC  3,2(6)	Load of type int constant 
762:     LD  4,-2(1)	Pop array index into AC1 
763:    LDA  5,-1(0)	Load base address of array board into AC2 
764:    SUB  5,5,4	Compute offset for array 
765:     ST  3,0(5)	Store variable board from AC into loc from AC2 
766:    LDC  3,0(6)	Load of type bool constant 
767:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
757:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
769:    LDA  3,-1(0)	Load base address of array board 
770:    LDC  3,7(6)	Load of type int constant 
771:    LDA  5,-1(0)	Load base address of array board into AC2 
772:    SUB  5,5,3	Compute offset for array 
773:     LD  3,0(5)	Load array element board from AC into loc from AC2 
774:     ST  3,-2(1)	Push left side onto temp variable stack 
775:    LDC  3,2(6)	Load of type int constant 
776:     LD  4,-2(1)	Pop left hand side into AC1 
777:    TEQ  3,4,3	== Equality Operation 
778:     ST  3,-2(1)	Push left side onto temp variable stack 
779:    LDA  3,-1(0)	Load base address of array board 
780:    LDC  3,8(6)	Load of type int constant 
781:    LDA  5,-1(0)	Load base address of array board into AC2 
782:    SUB  5,5,3	Compute offset for array 
783:     LD  3,0(5)	Load array element board from AC into loc from AC2 
784:     ST  3,-3(1)	Push left side onto temp variable stack 
785:    LDC  3,2(6)	Load of type int constant 
786:     LD  4,-3(1)	Pop left hand side into AC1 
787:    TEQ  3,4,3	== Equality Operation 
788:     LD  4,-2(1)	Pop left hand side into AC1 
789:    AND  3,4,3	AND operation store in AC 
790:     ST  3,-2(1)	Push left side onto temp variable stack 
791:    LDA  3,-1(0)	Load base address of array board 
792:    LDC  3,4(6)	Load of type int constant 
793:    LDA  5,-1(0)	Load base address of array board into AC2 
794:    SUB  5,5,3	Compute offset for array 
795:     LD  3,0(5)	Load array element board from AC into loc from AC2 
796:     ST  3,-3(1)	Push left side onto temp variable stack 
797:    LDC  3,2(6)	Load of type int constant 
798:     LD  4,-3(1)	Pop left hand side into AC1 
799:    TEQ  3,4,3	== Equality Operation 
800:     ST  3,-3(1)	Push left side onto temp variable stack 
801:    LDA  3,-1(0)	Load base address of array board 
802:    LDC  3,2(6)	Load of type int constant 
803:    LDA  5,-1(0)	Load base address of array board into AC2 
804:    SUB  5,5,3	Compute offset for array 
805:     LD  3,0(5)	Load array element board from AC into loc from AC2 
806:     ST  3,-4(1)	Push left side onto temp variable stack 
807:    LDC  3,2(6)	Load of type int constant 
808:     LD  4,-4(1)	Pop left hand side into AC1 
809:    TEQ  3,4,3	== Equality Operation 
810:     LD  4,-3(1)	Pop left hand side into AC1 
811:    AND  3,4,3	AND operation store in AC 
812:     LD  4,-2(1)	Pop left hand side into AC1 
813:     OR  3,4,3	OR operation store in AC 
814:     ST  3,-2(1)	Push left side onto temp variable stack 
815:    LDA  3,-1(0)	Load base address of array board 
816:    LDC  3,0(6)	Load of type int constant 
817:    LDA  5,-1(0)	Load base address of array board into AC2 
818:    SUB  5,5,3	Compute offset for array 
819:     LD  3,0(5)	Load array element board from AC into loc from AC2 
820:     ST  3,-3(1)	Push left side onto temp variable stack 
821:    LDC  3,2(6)	Load of type int constant 
822:     LD  4,-3(1)	Pop left hand side into AC1 
823:    TEQ  3,4,3	== Equality Operation 
824:     ST  3,-3(1)	Push left side onto temp variable stack 
825:    LDA  3,-1(0)	Load base address of array board 
826:    LDC  3,3(6)	Load of type int constant 
827:    LDA  5,-1(0)	Load base address of array board into AC2 
828:    SUB  5,5,3	Compute offset for array 
829:     LD  3,0(5)	Load array element board from AC into loc from AC2 
830:     ST  3,-4(1)	Push left side onto temp variable stack 
831:    LDC  3,2(6)	Load of type int constant 
832:     LD  4,-4(1)	Pop left hand side into AC1 
833:    TEQ  3,4,3	== Equality Operation 
834:     LD  4,-3(1)	Pop left hand side into AC1 
835:    AND  3,4,3	AND operation store in AC 
836:     LD  4,-2(1)	Pop left hand side into AC1 
837:     OR  3,4,3	OR operation store in AC 
838:     ST  3,-2(1)	Push left side onto temp variable stack 
839:    LDA  3,-1(0)	Load base address of array board 
840:    LDC  3,6(6)	Load of type int constant 
841:    LDA  5,-1(0)	Load base address of array board into AC2 
842:    SUB  5,5,3	Compute offset for array 
843:     LD  3,0(5)	Load array element board from AC into loc from AC2 
844:     ST  3,-3(1)	Push left side onto temp variable stack 
845:    LDC  3,1(6)	Load of type int constant 
846:    NEG  3,3,0	- Change Sign Operation 
847:     LD  4,-3(1)	Pop left hand side into AC1 
848:    TEQ  3,4,3	== Equality Operation 
849:     LD  4,-2(1)	Pop left hand side into AC1 
850:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
852:    LDA  3,-1(0)	Load base address of array board 
853:    LDC  3,6(6)	Load of type int constant 
854:     ST  3,-2(1)	Push array index onto temp stack 
855:    LDC  3,2(6)	Load of type int constant 
856:     LD  4,-2(1)	Pop array index into AC1 
857:    LDA  5,-1(0)	Load base address of array board into AC2 
858:    SUB  5,5,4	Compute offset for array 
859:     ST  3,0(5)	Store variable board from AC into loc from AC2 
860:    LDC  3,0(6)	Load of type bool constant 
861:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* END COMPOUND
* IF JUMP TO END
851:    JZR  3,11(7)	IF JMP TO ELSE 
862:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
768:    LDA  7,94(7)	JUMP TO END 
* END IF
* END COMPOUND
698:    LDA  7,164(7)	JUMP TO END 
* END IF
* END COMPOUND
604:    LDA  7,258(7)	JUMP TO END 
* END IF
* END COMPOUND
534:    LDA  7,328(7)	JUMP TO END 
* END IF
* END COMPOUND
416:    LDA  7,446(7)	JUMP TO END 
* END IF
* END COMPOUND
346:    LDA  7,516(7)	JUMP TO END 
* END IF
* END COMPOUND
252:    LDA  7,610(7)	JUMP TO END 
* END IF
* END COMPOUND
182:    LDA  7,680(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
863:     LD  3,-10(0)	Load variable gamenotdone into accumulator 
864:     ST  3,-2(1)	Push left side onto temp variable stack 
865:    LDC  3,0(6)	Load of type bool constant 
866:     LD  4,-2(1)	Pop left hand side into AC1 
867:    TNE  3,4,3	!= Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
869:    LDC  3,0(6)	Load of type bool constant 
870:    LDA  2,0(3)	Copy accumulator to return register 
871:     LD  3,-1(1)	Load return address 
872:     LD  1,0(1)	Adjust fp 
873:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
868:    JZR  3,6(7)	IF JMP TO ELSE 
874:    LDA  7,0(7)	JUMP TO END 
* END IF
875:    LDC  3,1(6)	Load of type bool constant 
876:    LDA  2,0(3)	Copy accumulator to return register 
877:     LD  3,-1(1)	Load return address 
878:     LD  1,0(1)	Adjust fp 
879:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
880:    LDC  2,0(6)	Set return value to 0 
881:     LD  3,-1(1)	Load return address 
882:     LD  1,0(1)	Adjust fp 
883:    JMP  7,0(3)	Return 
* END FUNCTION win
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION blockplayer
884:     ST  3,-1(1)	Store return address 
* COMPOUND
885:    LDC  3,0(6)	Load of type bool constant 
886:     ST  3,-2(1)	Assigning variable blocked in Local 
* BEGIN IF BLOCK
887:    LDA  3,-1(0)	Load base address of array board 
888:    LDC  3,0(6)	Load of type int constant 
889:    LDA  5,-1(0)	Load base address of array board into AC2 
890:    SUB  5,5,3	Compute offset for array 
891:     LD  3,0(5)	Load array element board from AC into loc from AC2 
892:     ST  3,-3(1)	Push left side onto temp variable stack 
893:    LDC  3,1(6)	Load of type int constant 
894:     LD  4,-3(1)	Pop left hand side into AC1 
895:    TEQ  3,4,3	== Equality Operation 
896:     ST  3,-3(1)	Push left side onto temp variable stack 
897:    LDA  3,-1(0)	Load base address of array board 
898:    LDC  3,1(6)	Load of type int constant 
899:    LDA  5,-1(0)	Load base address of array board into AC2 
900:    SUB  5,5,3	Compute offset for array 
901:     LD  3,0(5)	Load array element board from AC into loc from AC2 
902:     ST  3,-4(1)	Push left side onto temp variable stack 
903:    LDC  3,1(6)	Load of type int constant 
904:     LD  4,-4(1)	Pop left hand side into AC1 
905:    TEQ  3,4,3	== Equality Operation 
906:     LD  4,-3(1)	Pop left hand side into AC1 
907:    AND  3,4,3	AND operation store in AC 
908:     ST  3,-3(1)	Push left side onto temp variable stack 
909:    LDA  3,-1(0)	Load base address of array board 
910:    LDC  3,6(6)	Load of type int constant 
911:    LDA  5,-1(0)	Load base address of array board into AC2 
912:    SUB  5,5,3	Compute offset for array 
913:     LD  3,0(5)	Load array element board from AC into loc from AC2 
914:     ST  3,-4(1)	Push left side onto temp variable stack 
915:    LDC  3,1(6)	Load of type int constant 
916:     LD  4,-4(1)	Pop left hand side into AC1 
917:    TEQ  3,4,3	== Equality Operation 
918:     ST  3,-4(1)	Push left side onto temp variable stack 
919:    LDA  3,-1(0)	Load base address of array board 
920:    LDC  3,4(6)	Load of type int constant 
921:    LDA  5,-1(0)	Load base address of array board into AC2 
922:    SUB  5,5,3	Compute offset for array 
923:     LD  3,0(5)	Load array element board from AC into loc from AC2 
924:     ST  3,-5(1)	Push left side onto temp variable stack 
925:    LDC  3,1(6)	Load of type int constant 
926:     LD  4,-5(1)	Pop left hand side into AC1 
927:    TEQ  3,4,3	== Equality Operation 
928:     LD  4,-4(1)	Pop left hand side into AC1 
929:    AND  3,4,3	AND operation store in AC 
930:     LD  4,-3(1)	Pop left hand side into AC1 
931:     OR  3,4,3	OR operation store in AC 
932:     ST  3,-3(1)	Push left side onto temp variable stack 
933:    LDA  3,-1(0)	Load base address of array board 
934:    LDC  3,8(6)	Load of type int constant 
935:    LDA  5,-1(0)	Load base address of array board into AC2 
936:    SUB  5,5,3	Compute offset for array 
937:     LD  3,0(5)	Load array element board from AC into loc from AC2 
938:     ST  3,-4(1)	Push left side onto temp variable stack 
939:    LDC  3,1(6)	Load of type int constant 
940:     LD  4,-4(1)	Pop left hand side into AC1 
941:    TEQ  3,4,3	== Equality Operation 
942:     ST  3,-4(1)	Push left side onto temp variable stack 
943:    LDA  3,-1(0)	Load base address of array board 
944:    LDC  3,5(6)	Load of type int constant 
945:    LDA  5,-1(0)	Load base address of array board into AC2 
946:    SUB  5,5,3	Compute offset for array 
947:     LD  3,0(5)	Load array element board from AC into loc from AC2 
948:     ST  3,-5(1)	Push left side onto temp variable stack 
949:    LDC  3,1(6)	Load of type int constant 
950:     LD  4,-5(1)	Pop left hand side into AC1 
951:    TEQ  3,4,3	== Equality Operation 
952:     LD  4,-4(1)	Pop left hand side into AC1 
953:    AND  3,4,3	AND operation store in AC 
954:     LD  4,-3(1)	Pop left hand side into AC1 
955:     OR  3,4,3	OR operation store in AC 
956:     ST  3,-3(1)	Push left side onto temp variable stack 
957:    LDA  3,-1(0)	Load base address of array board 
958:    LDC  3,2(6)	Load of type int constant 
959:    LDA  5,-1(0)	Load base address of array board into AC2 
960:    SUB  5,5,3	Compute offset for array 
961:     LD  3,0(5)	Load array element board from AC into loc from AC2 
962:     ST  3,-4(1)	Push left side onto temp variable stack 
963:    LDC  3,1(6)	Load of type int constant 
964:    NEG  3,3,0	- Change Sign Operation 
965:     LD  4,-4(1)	Pop left hand side into AC1 
966:    TEQ  3,4,3	== Equality Operation 
967:     LD  4,-3(1)	Pop left hand side into AC1 
968:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
970:    LDA  3,-1(0)	Load base address of array board 
971:    LDC  3,2(6)	Load of type int constant 
972:     ST  3,-3(1)	Push array index onto temp stack 
973:    LDC  3,2(6)	Load of type int constant 
974:     LD  4,-3(1)	Pop array index into AC1 
975:    LDA  5,-1(0)	Load base address of array board into AC2 
976:    SUB  5,5,4	Compute offset for array 
977:     ST  3,0(5)	Store variable board from AC into loc from AC2 
978:    LDC  3,1(6)	Load of type bool constant 
979:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
969:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
981:    LDA  3,-1(0)	Load base address of array board 
982:    LDC  3,0(6)	Load of type int constant 
983:    LDA  5,-1(0)	Load base address of array board into AC2 
984:    SUB  5,5,3	Compute offset for array 
985:     LD  3,0(5)	Load array element board from AC into loc from AC2 
986:     ST  3,-3(1)	Push left side onto temp variable stack 
987:    LDC  3,1(6)	Load of type int constant 
988:     LD  4,-3(1)	Pop left hand side into AC1 
989:    TEQ  3,4,3	== Equality Operation 
990:     ST  3,-3(1)	Push left side onto temp variable stack 
991:    LDA  3,-1(0)	Load base address of array board 
992:    LDC  3,2(6)	Load of type int constant 
993:    LDA  5,-1(0)	Load base address of array board into AC2 
994:    SUB  5,5,3	Compute offset for array 
995:     LD  3,0(5)	Load array element board from AC into loc from AC2 
996:     ST  3,-4(1)	Push left side onto temp variable stack 
997:    LDC  3,1(6)	Load of type int constant 
998:     LD  4,-4(1)	Pop left hand side into AC1 
999:    TEQ  3,4,3	== Equality Operation 
1000:     LD  4,-3(1)	Pop left hand side into AC1 
1001:    AND  3,4,3	AND operation store in AC 
1002:     ST  3,-3(1)	Push left side onto temp variable stack 
1003:    LDA  3,-1(0)	Load base address of array board 
1004:    LDC  3,4(6)	Load of type int constant 
1005:    LDA  5,-1(0)	Load base address of array board into AC2 
1006:    SUB  5,5,3	Compute offset for array 
1007:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1008:     ST  3,-4(1)	Push left side onto temp variable stack 
1009:    LDC  3,1(6)	Load of type int constant 
1010:     LD  4,-4(1)	Pop left hand side into AC1 
1011:    TEQ  3,4,3	== Equality Operation 
1012:     ST  3,-4(1)	Push left side onto temp variable stack 
1013:    LDA  3,-1(0)	Load base address of array board 
1014:    LDC  3,7(6)	Load of type int constant 
1015:    LDA  5,-1(0)	Load base address of array board into AC2 
1016:    SUB  5,5,3	Compute offset for array 
1017:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1018:     ST  3,-5(1)	Push left side onto temp variable stack 
1019:    LDC  3,1(6)	Load of type int constant 
1020:     LD  4,-5(1)	Pop left hand side into AC1 
1021:    TEQ  3,4,3	== Equality Operation 
1022:     LD  4,-4(1)	Pop left hand side into AC1 
1023:    AND  3,4,3	AND operation store in AC 
1024:     LD  4,-3(1)	Pop left hand side into AC1 
1025:     OR  3,4,3	OR operation store in AC 
1026:     ST  3,-3(1)	Push left side onto temp variable stack 
1027:    LDA  3,-1(0)	Load base address of array board 
1028:    LDC  3,1(6)	Load of type int constant 
1029:    LDA  5,-1(0)	Load base address of array board into AC2 
1030:    SUB  5,5,3	Compute offset for array 
1031:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1032:     ST  3,-4(1)	Push left side onto temp variable stack 
1033:    LDC  3,1(6)	Load of type int constant 
1034:    NEG  3,3,0	- Change Sign Operation 
1035:     LD  4,-4(1)	Pop left hand side into AC1 
1036:    TEQ  3,4,3	== Equality Operation 
1037:     LD  4,-3(1)	Pop left hand side into AC1 
1038:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1040:    LDA  3,-1(0)	Load base address of array board 
1041:    LDC  3,1(6)	Load of type int constant 
1042:     ST  3,-3(1)	Push array index onto temp stack 
1043:    LDC  3,2(6)	Load of type int constant 
1044:     LD  4,-3(1)	Pop array index into AC1 
1045:    LDA  5,-1(0)	Load base address of array board into AC2 
1046:    SUB  5,5,4	Compute offset for array 
1047:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1048:    LDC  3,1(6)	Load of type bool constant 
1049:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
1039:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
1051:    LDA  3,-1(0)	Load base address of array board 
1052:    LDC  3,2(6)	Load of type int constant 
1053:    LDA  5,-1(0)	Load base address of array board into AC2 
1054:    SUB  5,5,3	Compute offset for array 
1055:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1056:     ST  3,-3(1)	Push left side onto temp variable stack 
1057:    LDC  3,1(6)	Load of type int constant 
1058:     LD  4,-3(1)	Pop left hand side into AC1 
1059:    TEQ  3,4,3	== Equality Operation 
1060:     ST  3,-3(1)	Push left side onto temp variable stack 
1061:    LDA  3,-1(0)	Load base address of array board 
1062:    LDC  3,1(6)	Load of type int constant 
1063:    LDA  5,-1(0)	Load base address of array board into AC2 
1064:    SUB  5,5,3	Compute offset for array 
1065:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1066:     ST  3,-4(1)	Push left side onto temp variable stack 
1067:    LDC  3,1(6)	Load of type int constant 
1068:     LD  4,-4(1)	Pop left hand side into AC1 
1069:    TEQ  3,4,3	== Equality Operation 
1070:     LD  4,-3(1)	Pop left hand side into AC1 
1071:    AND  3,4,3	AND operation store in AC 
1072:     ST  3,-3(1)	Push left side onto temp variable stack 
1073:    LDA  3,-1(0)	Load base address of array board 
1074:    LDC  3,6(6)	Load of type int constant 
1075:    LDA  5,-1(0)	Load base address of array board into AC2 
1076:    SUB  5,5,3	Compute offset for array 
1077:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1078:     ST  3,-4(1)	Push left side onto temp variable stack 
1079:    LDC  3,1(6)	Load of type int constant 
1080:     LD  4,-4(1)	Pop left hand side into AC1 
1081:    TEQ  3,4,3	== Equality Operation 
1082:     ST  3,-4(1)	Push left side onto temp variable stack 
1083:    LDA  3,-1(0)	Load base address of array board 
1084:    LDC  3,3(6)	Load of type int constant 
1085:    LDA  5,-1(0)	Load base address of array board into AC2 
1086:    SUB  5,5,3	Compute offset for array 
1087:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1088:     ST  3,-5(1)	Push left side onto temp variable stack 
1089:    LDC  3,1(6)	Load of type int constant 
1090:     LD  4,-5(1)	Pop left hand side into AC1 
1091:    TEQ  3,4,3	== Equality Operation 
1092:     LD  4,-4(1)	Pop left hand side into AC1 
1093:    AND  3,4,3	AND operation store in AC 
1094:     LD  4,-3(1)	Pop left hand side into AC1 
1095:     OR  3,4,3	OR operation store in AC 
1096:     ST  3,-3(1)	Push left side onto temp variable stack 
1097:    LDA  3,-1(0)	Load base address of array board 
1098:    LDC  3,4(6)	Load of type int constant 
1099:    LDA  5,-1(0)	Load base address of array board into AC2 
1100:    SUB  5,5,3	Compute offset for array 
1101:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1102:     ST  3,-4(1)	Push left side onto temp variable stack 
1103:    LDC  3,1(6)	Load of type int constant 
1104:     LD  4,-4(1)	Pop left hand side into AC1 
1105:    TEQ  3,4,3	== Equality Operation 
1106:     ST  3,-4(1)	Push left side onto temp variable stack 
1107:    LDA  3,-1(0)	Load base address of array board 
1108:    LDC  3,8(6)	Load of type int constant 
1109:    LDA  5,-1(0)	Load base address of array board into AC2 
1110:    SUB  5,5,3	Compute offset for array 
1111:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1112:     ST  3,-5(1)	Push left side onto temp variable stack 
1113:    LDC  3,1(6)	Load of type int constant 
1114:     LD  4,-5(1)	Pop left hand side into AC1 
1115:    TEQ  3,4,3	== Equality Operation 
1116:     LD  4,-4(1)	Pop left hand side into AC1 
1117:    AND  3,4,3	AND operation store in AC 
1118:     LD  4,-3(1)	Pop left hand side into AC1 
1119:     OR  3,4,3	OR operation store in AC 
1120:     ST  3,-3(1)	Push left side onto temp variable stack 
1121:    LDA  3,-1(0)	Load base address of array board 
1122:    LDC  3,0(6)	Load of type int constant 
1123:    LDA  5,-1(0)	Load base address of array board into AC2 
1124:    SUB  5,5,3	Compute offset for array 
1125:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1126:     ST  3,-4(1)	Push left side onto temp variable stack 
1127:    LDC  3,1(6)	Load of type int constant 
1128:    NEG  3,3,0	- Change Sign Operation 
1129:     LD  4,-4(1)	Pop left hand side into AC1 
1130:    TEQ  3,4,3	== Equality Operation 
1131:     LD  4,-3(1)	Pop left hand side into AC1 
1132:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1134:    LDA  3,-1(0)	Load base address of array board 
1135:    LDC  3,0(6)	Load of type int constant 
1136:     ST  3,-3(1)	Push array index onto temp stack 
1137:    LDC  3,2(6)	Load of type int constant 
1138:     LD  4,-3(1)	Pop array index into AC1 
1139:    LDA  5,-1(0)	Load base address of array board into AC2 
1140:    SUB  5,5,4	Compute offset for array 
1141:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1142:    LDC  3,1(6)	Load of type bool constant 
1143:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
1133:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
1145:    LDA  3,-1(0)	Load base address of array board 
1146:    LDC  3,3(6)	Load of type int constant 
1147:    LDA  5,-1(0)	Load base address of array board into AC2 
1148:    SUB  5,5,3	Compute offset for array 
1149:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1150:     ST  3,-3(1)	Push left side onto temp variable stack 
1151:    LDC  3,1(6)	Load of type int constant 
1152:     LD  4,-3(1)	Pop left hand side into AC1 
1153:    TEQ  3,4,3	== Equality Operation 
1154:     ST  3,-3(1)	Push left side onto temp variable stack 
1155:    LDA  3,-1(0)	Load base address of array board 
1156:    LDC  3,4(6)	Load of type int constant 
1157:    LDA  5,-1(0)	Load base address of array board into AC2 
1158:    SUB  5,5,3	Compute offset for array 
1159:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1160:     ST  3,-4(1)	Push left side onto temp variable stack 
1161:    LDC  3,1(6)	Load of type int constant 
1162:     LD  4,-4(1)	Pop left hand side into AC1 
1163:    TEQ  3,4,3	== Equality Operation 
1164:     LD  4,-3(1)	Pop left hand side into AC1 
1165:    AND  3,4,3	AND operation store in AC 
1166:     ST  3,-3(1)	Push left side onto temp variable stack 
1167:    LDA  3,-1(0)	Load base address of array board 
1168:    LDC  3,2(6)	Load of type int constant 
1169:    LDA  5,-1(0)	Load base address of array board into AC2 
1170:    SUB  5,5,3	Compute offset for array 
1171:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1172:     ST  3,-4(1)	Push left side onto temp variable stack 
1173:    LDC  3,1(6)	Load of type int constant 
1174:     LD  4,-4(1)	Pop left hand side into AC1 
1175:    TEQ  3,4,3	== Equality Operation 
1176:     ST  3,-4(1)	Push left side onto temp variable stack 
1177:    LDA  3,-1(0)	Load base address of array board 
1178:    LDC  3,8(6)	Load of type int constant 
1179:    LDA  5,-1(0)	Load base address of array board into AC2 
1180:    SUB  5,5,3	Compute offset for array 
1181:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1182:     ST  3,-5(1)	Push left side onto temp variable stack 
1183:    LDC  3,1(6)	Load of type int constant 
1184:     LD  4,-5(1)	Pop left hand side into AC1 
1185:    TEQ  3,4,3	== Equality Operation 
1186:     LD  4,-4(1)	Pop left hand side into AC1 
1187:    AND  3,4,3	AND operation store in AC 
1188:     LD  4,-3(1)	Pop left hand side into AC1 
1189:     OR  3,4,3	OR operation store in AC 
1190:     ST  3,-3(1)	Push left side onto temp variable stack 
1191:    LDA  3,-1(0)	Load base address of array board 
1192:    LDC  3,5(6)	Load of type int constant 
1193:    LDA  5,-1(0)	Load base address of array board into AC2 
1194:    SUB  5,5,3	Compute offset for array 
1195:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1196:     ST  3,-4(1)	Push left side onto temp variable stack 
1197:    LDC  3,1(6)	Load of type int constant 
1198:    NEG  3,3,0	- Change Sign Operation 
1199:     LD  4,-4(1)	Pop left hand side into AC1 
1200:    TEQ  3,4,3	== Equality Operation 
1201:     LD  4,-3(1)	Pop left hand side into AC1 
1202:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1204:    LDA  3,-1(0)	Load base address of array board 
1205:    LDC  3,5(6)	Load of type int constant 
1206:     ST  3,-3(1)	Push array index onto temp stack 
1207:    LDC  3,2(6)	Load of type int constant 
1208:     LD  4,-3(1)	Pop array index into AC1 
1209:    LDA  5,-1(0)	Load base address of array board into AC2 
1210:    SUB  5,5,4	Compute offset for array 
1211:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1212:    LDC  3,1(6)	Load of type bool constant 
1213:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
1203:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
1215:    LDA  3,-1(0)	Load base address of array board 
1216:    LDC  3,3(6)	Load of type int constant 
1217:    LDA  5,-1(0)	Load base address of array board into AC2 
1218:    SUB  5,5,3	Compute offset for array 
1219:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1220:     ST  3,-3(1)	Push left side onto temp variable stack 
1221:    LDC  3,1(6)	Load of type int constant 
1222:     LD  4,-3(1)	Pop left hand side into AC1 
1223:    TEQ  3,4,3	== Equality Operation 
1224:     ST  3,-3(1)	Push left side onto temp variable stack 
1225:    LDA  3,-1(0)	Load base address of array board 
1226:    LDC  3,5(6)	Load of type int constant 
1227:    LDA  5,-1(0)	Load base address of array board into AC2 
1228:    SUB  5,5,3	Compute offset for array 
1229:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1230:     ST  3,-4(1)	Push left side onto temp variable stack 
1231:    LDC  3,1(6)	Load of type int constant 
1232:     LD  4,-4(1)	Pop left hand side into AC1 
1233:    TEQ  3,4,3	== Equality Operation 
1234:     LD  4,-3(1)	Pop left hand side into AC1 
1235:    AND  3,4,3	AND operation store in AC 
1236:     ST  3,-3(1)	Push left side onto temp variable stack 
1237:    LDA  3,-1(0)	Load base address of array board 
1238:    LDC  3,0(6)	Load of type int constant 
1239:    LDA  5,-1(0)	Load base address of array board into AC2 
1240:    SUB  5,5,3	Compute offset for array 
1241:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1242:     ST  3,-4(1)	Push left side onto temp variable stack 
1243:    LDC  3,1(6)	Load of type int constant 
1244:     LD  4,-4(1)	Pop left hand side into AC1 
1245:    TEQ  3,4,3	== Equality Operation 
1246:     ST  3,-4(1)	Push left side onto temp variable stack 
1247:    LDA  3,-1(0)	Load base address of array board 
1248:    LDC  3,8(6)	Load of type int constant 
1249:    LDA  5,-1(0)	Load base address of array board into AC2 
1250:    SUB  5,5,3	Compute offset for array 
1251:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1252:     ST  3,-5(1)	Push left side onto temp variable stack 
1253:    LDC  3,1(6)	Load of type int constant 
1254:     LD  4,-5(1)	Pop left hand side into AC1 
1255:    TEQ  3,4,3	== Equality Operation 
1256:     LD  4,-4(1)	Pop left hand side into AC1 
1257:    AND  3,4,3	AND operation store in AC 
1258:     LD  4,-3(1)	Pop left hand side into AC1 
1259:     OR  3,4,3	OR operation store in AC 
1260:     ST  3,-3(1)	Push left side onto temp variable stack 
1261:    LDA  3,-1(0)	Load base address of array board 
1262:    LDC  3,2(6)	Load of type int constant 
1263:    LDA  5,-1(0)	Load base address of array board into AC2 
1264:    SUB  5,5,3	Compute offset for array 
1265:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1266:     ST  3,-4(1)	Push left side onto temp variable stack 
1267:    LDC  3,1(6)	Load of type int constant 
1268:     LD  4,-4(1)	Pop left hand side into AC1 
1269:    TEQ  3,4,3	== Equality Operation 
1270:     ST  3,-4(1)	Push left side onto temp variable stack 
1271:    LDA  3,-1(0)	Load base address of array board 
1272:    LDC  3,6(6)	Load of type int constant 
1273:    LDA  5,-1(0)	Load base address of array board into AC2 
1274:    SUB  5,5,3	Compute offset for array 
1275:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1276:     ST  3,-5(1)	Push left side onto temp variable stack 
1277:    LDC  3,1(6)	Load of type int constant 
1278:     LD  4,-5(1)	Pop left hand side into AC1 
1279:    TEQ  3,4,3	== Equality Operation 
1280:     LD  4,-4(1)	Pop left hand side into AC1 
1281:    AND  3,4,3	AND operation store in AC 
1282:     LD  4,-3(1)	Pop left hand side into AC1 
1283:     OR  3,4,3	OR operation store in AC 
1284:     ST  3,-3(1)	Push left side onto temp variable stack 
1285:    LDA  3,-1(0)	Load base address of array board 
1286:    LDC  3,1(6)	Load of type int constant 
1287:    LDA  5,-1(0)	Load base address of array board into AC2 
1288:    SUB  5,5,3	Compute offset for array 
1289:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1290:     ST  3,-4(1)	Push left side onto temp variable stack 
1291:    LDC  3,1(6)	Load of type int constant 
1292:     LD  4,-4(1)	Pop left hand side into AC1 
1293:    TEQ  3,4,3	== Equality Operation 
1294:     ST  3,-4(1)	Push left side onto temp variable stack 
1295:    LDA  3,-1(0)	Load base address of array board 
1296:    LDC  3,7(6)	Load of type int constant 
1297:    LDA  5,-1(0)	Load base address of array board into AC2 
1298:    SUB  5,5,3	Compute offset for array 
1299:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1300:     ST  3,-5(1)	Push left side onto temp variable stack 
1301:    LDC  3,1(6)	Load of type int constant 
1302:     LD  4,-5(1)	Pop left hand side into AC1 
1303:    TEQ  3,4,3	== Equality Operation 
1304:     LD  4,-4(1)	Pop left hand side into AC1 
1305:    AND  3,4,3	AND operation store in AC 
1306:     LD  4,-3(1)	Pop left hand side into AC1 
1307:     OR  3,4,3	OR operation store in AC 
1308:     ST  3,-3(1)	Push left side onto temp variable stack 
1309:    LDA  3,-1(0)	Load base address of array board 
1310:    LDC  3,4(6)	Load of type int constant 
1311:    LDA  5,-1(0)	Load base address of array board into AC2 
1312:    SUB  5,5,3	Compute offset for array 
1313:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1314:     ST  3,-4(1)	Push left side onto temp variable stack 
1315:    LDC  3,1(6)	Load of type int constant 
1316:    NEG  3,3,0	- Change Sign Operation 
1317:     LD  4,-4(1)	Pop left hand side into AC1 
1318:    TEQ  3,4,3	== Equality Operation 
1319:     LD  4,-3(1)	Pop left hand side into AC1 
1320:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1322:    LDA  3,-1(0)	Load base address of array board 
1323:    LDC  3,4(6)	Load of type int constant 
1324:     ST  3,-3(1)	Push array index onto temp stack 
1325:    LDC  3,2(6)	Load of type int constant 
1326:     LD  4,-3(1)	Pop array index into AC1 
1327:    LDA  5,-1(0)	Load base address of array board into AC2 
1328:    SUB  5,5,4	Compute offset for array 
1329:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1330:    LDC  3,1(6)	Load of type bool constant 
1331:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
1321:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
1333:    LDA  3,-1(0)	Load base address of array board 
1334:    LDC  3,4(6)	Load of type int constant 
1335:    LDA  5,-1(0)	Load base address of array board into AC2 
1336:    SUB  5,5,3	Compute offset for array 
1337:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1338:     ST  3,-3(1)	Push left side onto temp variable stack 
1339:    LDC  3,1(6)	Load of type int constant 
1340:     LD  4,-3(1)	Pop left hand side into AC1 
1341:    TEQ  3,4,3	== Equality Operation 
1342:     ST  3,-3(1)	Push left side onto temp variable stack 
1343:    LDA  3,-1(0)	Load base address of array board 
1344:    LDC  3,5(6)	Load of type int constant 
1345:    LDA  5,-1(0)	Load base address of array board into AC2 
1346:    SUB  5,5,3	Compute offset for array 
1347:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1348:     ST  3,-4(1)	Push left side onto temp variable stack 
1349:    LDC  3,1(6)	Load of type int constant 
1350:     LD  4,-4(1)	Pop left hand side into AC1 
1351:    TEQ  3,4,3	== Equality Operation 
1352:     LD  4,-3(1)	Pop left hand side into AC1 
1353:    AND  3,4,3	AND operation store in AC 
1354:     ST  3,-3(1)	Push left side onto temp variable stack 
1355:    LDA  3,-1(0)	Load base address of array board 
1356:    LDC  3,0(6)	Load of type int constant 
1357:    LDA  5,-1(0)	Load base address of array board into AC2 
1358:    SUB  5,5,3	Compute offset for array 
1359:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1360:     ST  3,-4(1)	Push left side onto temp variable stack 
1361:    LDC  3,1(6)	Load of type int constant 
1362:     LD  4,-4(1)	Pop left hand side into AC1 
1363:    TEQ  3,4,3	== Equality Operation 
1364:     ST  3,-4(1)	Push left side onto temp variable stack 
1365:    LDA  3,-1(0)	Load base address of array board 
1366:    LDC  3,6(6)	Load of type int constant 
1367:    LDA  5,-1(0)	Load base address of array board into AC2 
1368:    SUB  5,5,3	Compute offset for array 
1369:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1370:     ST  3,-5(1)	Push left side onto temp variable stack 
1371:    LDC  3,1(6)	Load of type int constant 
1372:     LD  4,-5(1)	Pop left hand side into AC1 
1373:    TEQ  3,4,3	== Equality Operation 
1374:     LD  4,-4(1)	Pop left hand side into AC1 
1375:    AND  3,4,3	AND operation store in AC 
1376:     LD  4,-3(1)	Pop left hand side into AC1 
1377:     OR  3,4,3	OR operation store in AC 
1378:     ST  3,-3(1)	Push left side onto temp variable stack 
1379:    LDA  3,-1(0)	Load base address of array board 
1380:    LDC  3,3(6)	Load of type int constant 
1381:    LDA  5,-1(0)	Load base address of array board into AC2 
1382:    SUB  5,5,3	Compute offset for array 
1383:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1384:     ST  3,-4(1)	Push left side onto temp variable stack 
1385:    LDC  3,1(6)	Load of type int constant 
1386:    NEG  3,3,0	- Change Sign Operation 
1387:     LD  4,-4(1)	Pop left hand side into AC1 
1388:    TEQ  3,4,3	== Equality Operation 
1389:     LD  4,-3(1)	Pop left hand side into AC1 
1390:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1392:    LDA  3,-1(0)	Load base address of array board 
1393:    LDC  3,3(6)	Load of type int constant 
1394:     ST  3,-3(1)	Push array index onto temp stack 
1395:    LDC  3,2(6)	Load of type int constant 
1396:     LD  4,-3(1)	Pop array index into AC1 
1397:    LDA  5,-1(0)	Load base address of array board into AC2 
1398:    SUB  5,5,4	Compute offset for array 
1399:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1400:    LDC  3,1(6)	Load of type bool constant 
1401:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
1391:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
1403:    LDA  3,-1(0)	Load base address of array board 
1404:    LDC  3,6(6)	Load of type int constant 
1405:    LDA  5,-1(0)	Load base address of array board into AC2 
1406:    SUB  5,5,3	Compute offset for array 
1407:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1408:     ST  3,-3(1)	Push left side onto temp variable stack 
1409:    LDC  3,1(6)	Load of type int constant 
1410:     LD  4,-3(1)	Pop left hand side into AC1 
1411:    TEQ  3,4,3	== Equality Operation 
1412:     ST  3,-3(1)	Push left side onto temp variable stack 
1413:    LDA  3,-1(0)	Load base address of array board 
1414:    LDC  3,7(6)	Load of type int constant 
1415:    LDA  5,-1(0)	Load base address of array board into AC2 
1416:    SUB  5,5,3	Compute offset for array 
1417:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1418:     ST  3,-4(1)	Push left side onto temp variable stack 
1419:    LDC  3,1(6)	Load of type int constant 
1420:     LD  4,-4(1)	Pop left hand side into AC1 
1421:    TEQ  3,4,3	== Equality Operation 
1422:     LD  4,-3(1)	Pop left hand side into AC1 
1423:    AND  3,4,3	AND operation store in AC 
1424:     ST  3,-3(1)	Push left side onto temp variable stack 
1425:    LDA  3,-1(0)	Load base address of array board 
1426:    LDC  3,0(6)	Load of type int constant 
1427:    LDA  5,-1(0)	Load base address of array board into AC2 
1428:    SUB  5,5,3	Compute offset for array 
1429:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1430:     ST  3,-4(1)	Push left side onto temp variable stack 
1431:    LDC  3,1(6)	Load of type int constant 
1432:     LD  4,-4(1)	Pop left hand side into AC1 
1433:    TEQ  3,4,3	== Equality Operation 
1434:     ST  3,-4(1)	Push left side onto temp variable stack 
1435:    LDA  3,-1(0)	Load base address of array board 
1436:    LDC  3,4(6)	Load of type int constant 
1437:    LDA  5,-1(0)	Load base address of array board into AC2 
1438:    SUB  5,5,3	Compute offset for array 
1439:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1440:     ST  3,-5(1)	Push left side onto temp variable stack 
1441:    LDC  3,1(6)	Load of type int constant 
1442:     LD  4,-5(1)	Pop left hand side into AC1 
1443:    TEQ  3,4,3	== Equality Operation 
1444:     LD  4,-4(1)	Pop left hand side into AC1 
1445:    AND  3,4,3	AND operation store in AC 
1446:     LD  4,-3(1)	Pop left hand side into AC1 
1447:     OR  3,4,3	OR operation store in AC 
1448:     ST  3,-3(1)	Push left side onto temp variable stack 
1449:    LDA  3,-1(0)	Load base address of array board 
1450:    LDC  3,2(6)	Load of type int constant 
1451:    LDA  5,-1(0)	Load base address of array board into AC2 
1452:    SUB  5,5,3	Compute offset for array 
1453:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1454:     ST  3,-4(1)	Push left side onto temp variable stack 
1455:    LDC  3,1(6)	Load of type int constant 
1456:     LD  4,-4(1)	Pop left hand side into AC1 
1457:    TEQ  3,4,3	== Equality Operation 
1458:     ST  3,-4(1)	Push left side onto temp variable stack 
1459:    LDA  3,-1(0)	Load base address of array board 
1460:    LDC  3,5(6)	Load of type int constant 
1461:    LDA  5,-1(0)	Load base address of array board into AC2 
1462:    SUB  5,5,3	Compute offset for array 
1463:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1464:     ST  3,-5(1)	Push left side onto temp variable stack 
1465:    LDC  3,1(6)	Load of type int constant 
1466:     LD  4,-5(1)	Pop left hand side into AC1 
1467:    TEQ  3,4,3	== Equality Operation 
1468:     LD  4,-4(1)	Pop left hand side into AC1 
1469:    AND  3,4,3	AND operation store in AC 
1470:     LD  4,-3(1)	Pop left hand side into AC1 
1471:     OR  3,4,3	OR operation store in AC 
1472:     ST  3,-3(1)	Push left side onto temp variable stack 
1473:    LDA  3,-1(0)	Load base address of array board 
1474:    LDC  3,8(6)	Load of type int constant 
1475:    LDA  5,-1(0)	Load base address of array board into AC2 
1476:    SUB  5,5,3	Compute offset for array 
1477:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1478:     ST  3,-4(1)	Push left side onto temp variable stack 
1479:    LDC  3,1(6)	Load of type int constant 
1480:    NEG  3,3,0	- Change Sign Operation 
1481:     LD  4,-4(1)	Pop left hand side into AC1 
1482:    TEQ  3,4,3	== Equality Operation 
1483:     LD  4,-3(1)	Pop left hand side into AC1 
1484:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1486:    LDA  3,-1(0)	Load base address of array board 
1487:    LDC  3,8(6)	Load of type int constant 
1488:     ST  3,-3(1)	Push array index onto temp stack 
1489:    LDC  3,2(6)	Load of type int constant 
1490:     LD  4,-3(1)	Pop array index into AC1 
1491:    LDA  5,-1(0)	Load base address of array board into AC2 
1492:    SUB  5,5,4	Compute offset for array 
1493:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1494:    LDC  3,1(6)	Load of type bool constant 
1495:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
1485:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
1497:    LDA  3,-1(0)	Load base address of array board 
1498:    LDC  3,6(6)	Load of type int constant 
1499:    LDA  5,-1(0)	Load base address of array board into AC2 
1500:    SUB  5,5,3	Compute offset for array 
1501:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1502:     ST  3,-3(1)	Push left side onto temp variable stack 
1503:    LDC  3,1(6)	Load of type int constant 
1504:     LD  4,-3(1)	Pop left hand side into AC1 
1505:    TEQ  3,4,3	== Equality Operation 
1506:     ST  3,-3(1)	Push left side onto temp variable stack 
1507:    LDA  3,-1(0)	Load base address of array board 
1508:    LDC  3,8(6)	Load of type int constant 
1509:    LDA  5,-1(0)	Load base address of array board into AC2 
1510:    SUB  5,5,3	Compute offset for array 
1511:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1512:     ST  3,-4(1)	Push left side onto temp variable stack 
1513:    LDC  3,1(6)	Load of type int constant 
1514:     LD  4,-4(1)	Pop left hand side into AC1 
1515:    TEQ  3,4,3	== Equality Operation 
1516:     LD  4,-3(1)	Pop left hand side into AC1 
1517:    AND  3,4,3	AND operation store in AC 
1518:     ST  3,-3(1)	Push left side onto temp variable stack 
1519:    LDA  3,-1(0)	Load base address of array board 
1520:    LDC  3,4(6)	Load of type int constant 
1521:    LDA  5,-1(0)	Load base address of array board into AC2 
1522:    SUB  5,5,3	Compute offset for array 
1523:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1524:     ST  3,-4(1)	Push left side onto temp variable stack 
1525:    LDC  3,1(6)	Load of type int constant 
1526:     LD  4,-4(1)	Pop left hand side into AC1 
1527:    TEQ  3,4,3	== Equality Operation 
1528:     ST  3,-4(1)	Push left side onto temp variable stack 
1529:    LDA  3,-1(0)	Load base address of array board 
1530:    LDC  3,1(6)	Load of type int constant 
1531:    LDA  5,-1(0)	Load base address of array board into AC2 
1532:    SUB  5,5,3	Compute offset for array 
1533:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1534:     ST  3,-5(1)	Push left side onto temp variable stack 
1535:    LDC  3,1(6)	Load of type int constant 
1536:     LD  4,-5(1)	Pop left hand side into AC1 
1537:    TEQ  3,4,3	== Equality Operation 
1538:     LD  4,-4(1)	Pop left hand side into AC1 
1539:    AND  3,4,3	AND operation store in AC 
1540:     LD  4,-3(1)	Pop left hand side into AC1 
1541:     OR  3,4,3	OR operation store in AC 
1542:     ST  3,-3(1)	Push left side onto temp variable stack 
1543:    LDA  3,-1(0)	Load base address of array board 
1544:    LDC  3,7(6)	Load of type int constant 
1545:    LDA  5,-1(0)	Load base address of array board into AC2 
1546:    SUB  5,5,3	Compute offset for array 
1547:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1548:     ST  3,-4(1)	Push left side onto temp variable stack 
1549:    LDC  3,1(6)	Load of type int constant 
1550:    NEG  3,3,0	- Change Sign Operation 
1551:     LD  4,-4(1)	Pop left hand side into AC1 
1552:    TEQ  3,4,3	== Equality Operation 
1553:     LD  4,-3(1)	Pop left hand side into AC1 
1554:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1556:    LDA  3,-1(0)	Load base address of array board 
1557:    LDC  3,7(6)	Load of type int constant 
1558:     ST  3,-3(1)	Push array index onto temp stack 
1559:    LDC  3,2(6)	Load of type int constant 
1560:     LD  4,-3(1)	Pop array index into AC1 
1561:    LDA  5,-1(0)	Load base address of array board into AC2 
1562:    SUB  5,5,4	Compute offset for array 
1563:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1564:    LDC  3,1(6)	Load of type bool constant 
1565:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
1555:    JZR  3,11(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
1567:    LDA  3,-1(0)	Load base address of array board 
1568:    LDC  3,7(6)	Load of type int constant 
1569:    LDA  5,-1(0)	Load base address of array board into AC2 
1570:    SUB  5,5,3	Compute offset for array 
1571:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1572:     ST  3,-3(1)	Push left side onto temp variable stack 
1573:    LDC  3,1(6)	Load of type int constant 
1574:     LD  4,-3(1)	Pop left hand side into AC1 
1575:    TEQ  3,4,3	== Equality Operation 
1576:     ST  3,-3(1)	Push left side onto temp variable stack 
1577:    LDA  3,-1(0)	Load base address of array board 
1578:    LDC  3,8(6)	Load of type int constant 
1579:    LDA  5,-1(0)	Load base address of array board into AC2 
1580:    SUB  5,5,3	Compute offset for array 
1581:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1582:     ST  3,-4(1)	Push left side onto temp variable stack 
1583:    LDC  3,1(6)	Load of type int constant 
1584:     LD  4,-4(1)	Pop left hand side into AC1 
1585:    TEQ  3,4,3	== Equality Operation 
1586:     LD  4,-3(1)	Pop left hand side into AC1 
1587:    AND  3,4,3	AND operation store in AC 
1588:     ST  3,-3(1)	Push left side onto temp variable stack 
1589:    LDA  3,-1(0)	Load base address of array board 
1590:    LDC  3,4(6)	Load of type int constant 
1591:    LDA  5,-1(0)	Load base address of array board into AC2 
1592:    SUB  5,5,3	Compute offset for array 
1593:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1594:     ST  3,-4(1)	Push left side onto temp variable stack 
1595:    LDC  3,1(6)	Load of type int constant 
1596:     LD  4,-4(1)	Pop left hand side into AC1 
1597:    TEQ  3,4,3	== Equality Operation 
1598:     ST  3,-4(1)	Push left side onto temp variable stack 
1599:    LDA  3,-1(0)	Load base address of array board 
1600:    LDC  3,2(6)	Load of type int constant 
1601:    LDA  5,-1(0)	Load base address of array board into AC2 
1602:    SUB  5,5,3	Compute offset for array 
1603:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1604:     ST  3,-5(1)	Push left side onto temp variable stack 
1605:    LDC  3,1(6)	Load of type int constant 
1606:     LD  4,-5(1)	Pop left hand side into AC1 
1607:    TEQ  3,4,3	== Equality Operation 
1608:     LD  4,-4(1)	Pop left hand side into AC1 
1609:    AND  3,4,3	AND operation store in AC 
1610:     LD  4,-3(1)	Pop left hand side into AC1 
1611:     OR  3,4,3	OR operation store in AC 
1612:     ST  3,-3(1)	Push left side onto temp variable stack 
1613:    LDA  3,-1(0)	Load base address of array board 
1614:    LDC  3,0(6)	Load of type int constant 
1615:    LDA  5,-1(0)	Load base address of array board into AC2 
1616:    SUB  5,5,3	Compute offset for array 
1617:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1618:     ST  3,-4(1)	Push left side onto temp variable stack 
1619:    LDC  3,1(6)	Load of type int constant 
1620:     LD  4,-4(1)	Pop left hand side into AC1 
1621:    TEQ  3,4,3	== Equality Operation 
1622:     ST  3,-4(1)	Push left side onto temp variable stack 
1623:    LDA  3,-1(0)	Load base address of array board 
1624:    LDC  3,3(6)	Load of type int constant 
1625:    LDA  5,-1(0)	Load base address of array board into AC2 
1626:    SUB  5,5,3	Compute offset for array 
1627:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1628:     ST  3,-5(1)	Push left side onto temp variable stack 
1629:    LDC  3,1(6)	Load of type int constant 
1630:     LD  4,-5(1)	Pop left hand side into AC1 
1631:    TEQ  3,4,3	== Equality Operation 
1632:     LD  4,-4(1)	Pop left hand side into AC1 
1633:    AND  3,4,3	AND operation store in AC 
1634:     LD  4,-3(1)	Pop left hand side into AC1 
1635:     OR  3,4,3	OR operation store in AC 
1636:     ST  3,-3(1)	Push left side onto temp variable stack 
1637:    LDA  3,-1(0)	Load base address of array board 
1638:    LDC  3,6(6)	Load of type int constant 
1639:    LDA  5,-1(0)	Load base address of array board into AC2 
1640:    SUB  5,5,3	Compute offset for array 
1641:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1642:     ST  3,-4(1)	Push left side onto temp variable stack 
1643:    LDC  3,1(6)	Load of type int constant 
1644:    NEG  3,3,0	- Change Sign Operation 
1645:     LD  4,-4(1)	Pop left hand side into AC1 
1646:    TEQ  3,4,3	== Equality Operation 
1647:     LD  4,-3(1)	Pop left hand side into AC1 
1648:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1650:    LDA  3,-1(0)	Load base address of array board 
1651:    LDC  3,6(6)	Load of type int constant 
1652:     ST  3,-3(1)	Push array index onto temp stack 
1653:    LDC  3,2(6)	Load of type int constant 
1654:     LD  4,-3(1)	Pop array index into AC1 
1655:    LDA  5,-1(0)	Load base address of array board into AC2 
1656:    SUB  5,5,4	Compute offset for array 
1657:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1658:    LDC  3,1(6)	Load of type bool constant 
1659:     ST  3,-2(1)	Assigning variable blocked in Local 
* END COMPOUND
* IF JUMP TO END
1649:    JZR  3,11(7)	IF JMP TO ELSE 
1660:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
1566:    LDA  7,94(7)	JUMP TO END 
* END IF
* END COMPOUND
1496:    LDA  7,164(7)	JUMP TO END 
* END IF
* END COMPOUND
1402:    LDA  7,258(7)	JUMP TO END 
* END IF
* END COMPOUND
1332:    LDA  7,328(7)	JUMP TO END 
* END IF
* END COMPOUND
1214:    LDA  7,446(7)	JUMP TO END 
* END IF
* END COMPOUND
1144:    LDA  7,516(7)	JUMP TO END 
* END IF
* END COMPOUND
1050:    LDA  7,610(7)	JUMP TO END 
* END IF
* END COMPOUND
980:    LDA  7,680(7)	JUMP TO END 
* END IF
1661:     LD  3,-2(1)	Load variable blocked into accumulator 
1662:    LDA  2,0(3)	Copy accumulator to return register 
1663:     LD  3,-1(1)	Load return address 
1664:     LD  1,0(1)	Adjust fp 
1665:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
1666:    LDC  2,0(6)	Set return value to 0 
1667:     LD  3,-1(1)	Load return address 
1668:     LD  1,0(1)	Adjust fp 
1669:    JMP  7,0(3)	Return 
* END FUNCTION blockplayer
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION placey
1670:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
* CALL win
1671:     ST  1,-2(1)	Store fp in ghost frame for win 
* Begin call
1672:    LDA  1,-2(1)	Move the fp to the new frame 
1673:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
1674:    JMP  7,-1587(7)	Call function 
1675:    LDA  3,0(2)	Save return result in accumulator 
* END CALL win
1676:    LDC  4,1(6)	Load 1 into AC1 for not operation 
1677:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* BEGIN IF BLOCK
* CALL blockplayer
1679:     ST  1,-2(1)	Store fp in ghost frame for blockplayer 
* Begin call
1680:    LDA  1,-2(1)	Move the fp to the new frame 
1681:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
1682:    JMP  7,-799(7)	Call function 
1683:    LDA  3,0(2)	Save return result in accumulator 
* END CALL blockplayer
1684:    LDC  4,1(6)	Load 1 into AC1 for not operation 
1685:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* CALL move
1687:     ST  1,-2(1)	Store fp in ghost frame for move 
* Begin call
1688:    LDA  1,-2(1)	Move the fp to the new frame 
1689:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
1690:    JMP  7,-1652(7)	Call function 
1691:    LDA  3,0(2)	Save return result in accumulator 
* END CALL move
* END COMPOUND
* IF JUMP TO END
1686:    JZR  3,6(7)	IF JMP TO ELSE 
1692:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
* IF JUMP TO END
1678:    JZR  3,15(7)	IF JMP TO ELSE 
1693:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
1694:    LDC  2,0(6)	Set return value to 0 
1695:     LD  3,-1(1)	Load return address 
1696:     LD  1,0(1)	Adjust fp 
1697:    JMP  7,0(3)	Return 
* END FUNCTION placey
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION xingrid
1698:     ST  3,-1(1)	Store return address 
* COMPOUND
1699:    LDC  3,0(6)	Load of type bool constant 
1700:     ST  3,-3(1)	Assigning variable retval in Local 
* BEGIN IF BLOCK
1701:     LD  3,-2(1)	Load variable x into accumulator 
1702:     ST  3,-4(1)	Push left side onto temp variable stack 
1703:    LDC  3,0(6)	Load of type int constant 
1704:     LD  4,-4(1)	Pop left hand side into AC1 
1705:    TGE  3,4,3	GEQ >- operation store in AC 
1706:     ST  3,-4(1)	Push left side onto temp variable stack 
1707:     LD  3,-2(1)	Load variable x into accumulator 
1708:     ST  3,-5(1)	Push left side onto temp variable stack 
1709:    LDC  3,8(6)	Load of type int constant 
1710:     LD  4,-5(1)	Pop left hand side into AC1 
1711:    TLE  3,4,3	LEQ <= operation store in AC 
1712:     LD  4,-4(1)	Pop left hand side into AC1 
1713:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* BEGIN IF BLOCK
1715:    LDA  3,-1(0)	Load base address of array board 
1716:     LD  3,-2(1)	Load variable x into accumulator 
1717:    LDA  5,-1(0)	Load base address of array board into AC2 
1718:    SUB  5,5,3	Compute offset for array 
1719:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1720:     ST  3,-4(1)	Push left side onto temp variable stack 
1721:    LDC  3,1(6)	Load of type int constant 
1722:     LD  4,-4(1)	Pop left hand side into AC1 
1723:    TNE  3,4,3	!= Equality Operation 
1724:     ST  3,-4(1)	Push left side onto temp variable stack 
1725:    LDA  3,-1(0)	Load base address of array board 
1726:     LD  3,-2(1)	Load variable x into accumulator 
1727:    LDA  5,-1(0)	Load base address of array board into AC2 
1728:    SUB  5,5,3	Compute offset for array 
1729:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1730:     ST  3,-5(1)	Push left side onto temp variable stack 
1731:    LDC  3,2(6)	Load of type int constant 
1732:     LD  4,-5(1)	Pop left hand side into AC1 
1733:    TNE  3,4,3	!= Equality Operation 
1734:     LD  4,-4(1)	Pop left hand side into AC1 
1735:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1737:    LDA  3,-1(0)	Load base address of array board 
1738:     LD  3,-2(1)	Load variable x into accumulator 
1739:     ST  3,-4(1)	Push array index onto temp stack 
1740:    LDC  3,1(6)	Load of type int constant 
1741:     LD  4,-4(1)	Pop array index into AC1 
1742:    LDA  5,-1(0)	Load base address of array board into AC2 
1743:    SUB  5,5,4	Compute offset for array 
1744:     ST  3,0(5)	Store variable board from AC into loc from AC2 
1745:    LDC  3,1(6)	Load of type bool constant 
1746:     ST  3,-3(1)	Assigning variable retval in Local 
* END COMPOUND
* IF JUMP TO END
1736:    JZR  3,11(7)	IF JMP TO ELSE 
1747:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
* IF JUMP TO END
1714:    JZR  3,34(7)	IF JMP TO ELSE 
1748:    LDA  7,0(7)	JUMP TO END 
* END IF
1749:     LD  3,-3(1)	Load variable retval into accumulator 
1750:    LDA  2,0(3)	Copy accumulator to return register 
1751:     LD  3,-1(1)	Load return address 
1752:     LD  1,0(1)	Adjust fp 
1753:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
1754:    LDC  2,0(6)	Set return value to 0 
1755:     LD  3,-1(1)	Load return address 
1756:     LD  1,0(1)	Adjust fp 
1757:    JMP  7,0(3)	Return 
* END FUNCTION xingrid
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION printboard
1758:     ST  3,-1(1)	Store return address 
* COMPOUND
1759:    LDC  3,0(6)	Load of type int constant 
1760:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
1761:     LD  3,-2(1)	Load variable i into accumulator 
1762:     ST  3,-3(1)	Push left side onto temp variable stack 
1763:    LDC  3,9(6)	Load of type int constant 
1764:     LD  4,-3(1)	Pop left hand side into AC1 
1765:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
1767:    LDA  3,-1(0)	Load base address of array board 
1768:     LD  3,-2(1)	Load variable i into accumulator 
1769:    LDA  5,-1(0)	Load base address of array board into AC2 
1770:    SUB  5,5,3	Compute offset for array 
1771:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1772:     ST  3,-3(1)	Push left side onto temp variable stack 
1773:    LDC  3,1(6)	Load of type int constant 
1774:     LD  4,-3(1)	Pop left hand side into AC1 
1775:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
* CALL outputb
1777:     ST  1,-3(1)	Store fp in ghost frame for outputb 
1778:    LDC  3,1(6)	Load of type bool constant 
1779:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
1780:    LDA  1,-3(1)	Move the fp to the new frame 
1781:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
1782:    JMP  7,-1766(7)	Call function 
1783:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* END COMPOUND
* IF JUMP TO END
1776:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
1785:    LDA  3,-1(0)	Load base address of array board 
1786:     LD  3,-2(1)	Load variable i into accumulator 
1787:    LDA  5,-1(0)	Load base address of array board into AC2 
1788:    SUB  5,5,3	Compute offset for array 
1789:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1790:     ST  3,-3(1)	Push left side onto temp variable stack 
1791:    LDC  3,2(6)	Load of type int constant 
1792:     LD  4,-3(1)	Pop left hand side into AC1 
1793:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
* CALL outputb
1795:     ST  1,-3(1)	Store fp in ghost frame for outputb 
1796:    LDC  3,0(6)	Load of type bool constant 
1797:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
1798:    LDA  1,-3(1)	Move the fp to the new frame 
1799:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
1800:    JMP  7,-1784(7)	Call function 
1801:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* END COMPOUND
* IF JUMP TO END
1794:    JZR  3,8(7)	IF JMP TO ELSE 
* COMPOUND
* CALL output
1803:     ST  1,-3(1)	Store fp in ghost frame for output 
1804:     LD  3,-2(1)	Load variable i into accumulator 
1805:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
1806:    LDA  1,-3(1)	Move the fp to the new frame 
1807:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
1808:    JMP  7,-1803(7)	Call function 
1809:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
1802:    LDA  7,7(7)	JUMP TO END 
* END IF
1784:    LDA  7,25(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
1810:     LD  3,-2(1)	Load variable i into accumulator 
1811:     ST  3,-3(1)	Push left side onto temp variable stack 
1812:    LDC  3,2(6)	Load of type int constant 
1813:     LD  4,-3(1)	Pop left hand side into AC1 
1814:    TEQ  3,4,3	== Equality Operation 
1815:     ST  3,-3(1)	Push left side onto temp variable stack 
1816:     LD  3,-2(1)	Load variable i into accumulator 
1817:     ST  3,-4(1)	Push left side onto temp variable stack 
1818:    LDC  3,5(6)	Load of type int constant 
1819:     LD  4,-4(1)	Pop left hand side into AC1 
1820:    TEQ  3,4,3	== Equality Operation 
1821:     LD  4,-3(1)	Pop left hand side into AC1 
1822:     OR  3,4,3	OR operation store in AC 
1823:     ST  3,-3(1)	Push left side onto temp variable stack 
1824:     LD  3,-2(1)	Load variable i into accumulator 
1825:     ST  3,-4(1)	Push left side onto temp variable stack 
1826:    LDC  3,8(6)	Load of type int constant 
1827:     LD  4,-4(1)	Pop left hand side into AC1 
1828:    TEQ  3,4,3	== Equality Operation 
1829:     LD  4,-3(1)	Pop left hand side into AC1 
1830:     OR  3,4,3	OR operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* CALL outnl
1832:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
1833:    LDA  1,-3(1)	Move the fp to the new frame 
1834:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
1835:    JMP  7,-1802(7)	Call function 
1836:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* IF JUMP TO END
1831:    JZR  3,6(7)	IF JMP TO ELSE 
1837:    LDA  7,0(7)	JUMP TO END 
* END IF
1838:     LD  4,-2(1)	Load lhs variable 
1839:    LDA  3,1(4)	++ Increment accumulator operation 
1840:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
1841:    JMP  7,-81(7)	Go to L1 
1766:    JZR  3,75(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
1842:    LDC  2,0(6)	Set return value to 0 
1843:     LD  3,-1(1)	Load return address 
1844:     LD  1,0(1)	Adjust fp 
1845:    JMP  7,0(3)	Return 
* END FUNCTION printboard
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION finished
1846:     ST  3,-1(1)	Store return address 
* COMPOUND
1847:    LDC  3,0(6)	Load of type int constant 
1848:     ST  3,-2(1)	Assigning variable i in Local 
* BEGIN IF BLOCK
1849:    LDA  3,-1(0)	Load base address of array board 
1850:    LDC  3,0(6)	Load of type int constant 
1851:    LDA  5,-1(0)	Load base address of array board into AC2 
1852:    SUB  5,5,3	Compute offset for array 
1853:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1854:     ST  3,-3(1)	Push left side onto temp variable stack 
1855:    LDC  3,1(6)	Load of type int constant 
1856:    NEG  3,3,0	- Change Sign Operation 
1857:     LD  4,-3(1)	Pop left hand side into AC1 
1858:    TNE  3,4,3	!= Equality Operation 
1859:     ST  3,-3(1)	Push left side onto temp variable stack 
1860:    LDA  3,-1(0)	Load base address of array board 
1861:    LDC  3,0(6)	Load of type int constant 
1862:    LDA  5,-1(0)	Load base address of array board into AC2 
1863:    SUB  5,5,3	Compute offset for array 
1864:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1865:     ST  3,-4(1)	Push left side onto temp variable stack 
1866:    LDA  3,-1(0)	Load base address of array board 
1867:    LDC  3,1(6)	Load of type int constant 
1868:    LDA  5,-1(0)	Load base address of array board into AC2 
1869:    SUB  5,5,3	Compute offset for array 
1870:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1871:     LD  4,-4(1)	Pop left hand side into AC1 
1872:    TEQ  3,4,3	== Equality Operation 
1873:     ST  3,-4(1)	Push left side onto temp variable stack 
1874:    LDA  3,-1(0)	Load base address of array board 
1875:    LDC  3,0(6)	Load of type int constant 
1876:    LDA  5,-1(0)	Load base address of array board into AC2 
1877:    SUB  5,5,3	Compute offset for array 
1878:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1879:     ST  3,-5(1)	Push left side onto temp variable stack 
1880:    LDA  3,-1(0)	Load base address of array board 
1881:    LDC  3,2(6)	Load of type int constant 
1882:    LDA  5,-1(0)	Load base address of array board into AC2 
1883:    SUB  5,5,3	Compute offset for array 
1884:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1885:     LD  4,-5(1)	Pop left hand side into AC1 
1886:    TEQ  3,4,3	== Equality Operation 
1887:     LD  4,-4(1)	Pop left hand side into AC1 
1888:    AND  3,4,3	AND operation store in AC 
1889:     ST  3,-4(1)	Push left side onto temp variable stack 
1890:    LDA  3,-1(0)	Load base address of array board 
1891:    LDC  3,0(6)	Load of type int constant 
1892:    LDA  5,-1(0)	Load base address of array board into AC2 
1893:    SUB  5,5,3	Compute offset for array 
1894:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1895:     ST  3,-5(1)	Push left side onto temp variable stack 
1896:    LDA  3,-1(0)	Load base address of array board 
1897:    LDC  3,4(6)	Load of type int constant 
1898:    LDA  5,-1(0)	Load base address of array board into AC2 
1899:    SUB  5,5,3	Compute offset for array 
1900:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1901:     LD  4,-5(1)	Pop left hand side into AC1 
1902:    TEQ  3,4,3	== Equality Operation 
1903:     ST  3,-5(1)	Push left side onto temp variable stack 
1904:    LDA  3,-1(0)	Load base address of array board 
1905:    LDC  3,0(6)	Load of type int constant 
1906:    LDA  5,-1(0)	Load base address of array board into AC2 
1907:    SUB  5,5,3	Compute offset for array 
1908:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1909:     ST  3,-6(1)	Push left side onto temp variable stack 
1910:    LDA  3,-1(0)	Load base address of array board 
1911:    LDC  3,8(6)	Load of type int constant 
1912:    LDA  5,-1(0)	Load base address of array board into AC2 
1913:    SUB  5,5,3	Compute offset for array 
1914:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1915:     LD  4,-6(1)	Pop left hand side into AC1 
1916:    TEQ  3,4,3	== Equality Operation 
1917:     LD  4,-5(1)	Pop left hand side into AC1 
1918:    AND  3,4,3	AND operation store in AC 
1919:     LD  4,-4(1)	Pop left hand side into AC1 
1920:     OR  3,4,3	OR operation store in AC 
1921:     ST  3,-4(1)	Push left side onto temp variable stack 
1922:    LDA  3,-1(0)	Load base address of array board 
1923:    LDC  3,0(6)	Load of type int constant 
1924:    LDA  5,-1(0)	Load base address of array board into AC2 
1925:    SUB  5,5,3	Compute offset for array 
1926:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1927:     ST  3,-5(1)	Push left side onto temp variable stack 
1928:    LDA  3,-1(0)	Load base address of array board 
1929:    LDC  3,3(6)	Load of type int constant 
1930:    LDA  5,-1(0)	Load base address of array board into AC2 
1931:    SUB  5,5,3	Compute offset for array 
1932:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1933:     LD  4,-5(1)	Pop left hand side into AC1 
1934:    TEQ  3,4,3	== Equality Operation 
1935:     ST  3,-5(1)	Push left side onto temp variable stack 
1936:    LDA  3,-1(0)	Load base address of array board 
1937:    LDC  3,0(6)	Load of type int constant 
1938:    LDA  5,-1(0)	Load base address of array board into AC2 
1939:    SUB  5,5,3	Compute offset for array 
1940:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1941:     ST  3,-6(1)	Push left side onto temp variable stack 
1942:    LDA  3,-1(0)	Load base address of array board 
1943:    LDC  3,6(6)	Load of type int constant 
1944:    LDA  5,-1(0)	Load base address of array board into AC2 
1945:    SUB  5,5,3	Compute offset for array 
1946:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1947:     LD  4,-6(1)	Pop left hand side into AC1 
1948:    TEQ  3,4,3	== Equality Operation 
1949:     LD  4,-5(1)	Pop left hand side into AC1 
1950:    AND  3,4,3	AND operation store in AC 
1951:     LD  4,-4(1)	Pop left hand side into AC1 
1952:     OR  3,4,3	OR operation store in AC 
1953:     LD  4,-3(1)	Pop left hand side into AC1 
1954:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
1956:    LDC  3,1(6)	Load of type bool constant 
1957:    LDA  2,0(3)	Copy accumulator to return register 
1958:     LD  3,-1(1)	Load return address 
1959:     LD  1,0(1)	Adjust fp 
1960:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
1955:    JZR  3,6(7)	IF JMP TO ELSE 
1961:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
1962:    LDA  3,-1(0)	Load base address of array board 
1963:    LDC  3,1(6)	Load of type int constant 
1964:    LDA  5,-1(0)	Load base address of array board into AC2 
1965:    SUB  5,5,3	Compute offset for array 
1966:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1967:     ST  3,-3(1)	Push left side onto temp variable stack 
1968:    LDC  3,1(6)	Load of type int constant 
1969:    NEG  3,3,0	- Change Sign Operation 
1970:     LD  4,-3(1)	Pop left hand side into AC1 
1971:    TNE  3,4,3	!= Equality Operation 
1972:     ST  3,-3(1)	Push left side onto temp variable stack 
1973:    LDA  3,-1(0)	Load base address of array board 
1974:    LDC  3,1(6)	Load of type int constant 
1975:    LDA  5,-1(0)	Load base address of array board into AC2 
1976:    SUB  5,5,3	Compute offset for array 
1977:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1978:     ST  3,-4(1)	Push left side onto temp variable stack 
1979:    LDA  3,-1(0)	Load base address of array board 
1980:    LDC  3,4(6)	Load of type int constant 
1981:    LDA  5,-1(0)	Load base address of array board into AC2 
1982:    SUB  5,5,3	Compute offset for array 
1983:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1984:     LD  4,-4(1)	Pop left hand side into AC1 
1985:    TEQ  3,4,3	== Equality Operation 
1986:     ST  3,-4(1)	Push left side onto temp variable stack 
1987:    LDA  3,-1(0)	Load base address of array board 
1988:    LDC  3,1(6)	Load of type int constant 
1989:    LDA  5,-1(0)	Load base address of array board into AC2 
1990:    SUB  5,5,3	Compute offset for array 
1991:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1992:     ST  3,-5(1)	Push left side onto temp variable stack 
1993:    LDA  3,-1(0)	Load base address of array board 
1994:    LDC  3,7(6)	Load of type int constant 
1995:    LDA  5,-1(0)	Load base address of array board into AC2 
1996:    SUB  5,5,3	Compute offset for array 
1997:     LD  3,0(5)	Load array element board from AC into loc from AC2 
1998:     LD  4,-5(1)	Pop left hand side into AC1 
1999:    TEQ  3,4,3	== Equality Operation 
2000:     LD  4,-4(1)	Pop left hand side into AC1 
2001:    AND  3,4,3	AND operation store in AC 
2002:     LD  4,-3(1)	Pop left hand side into AC1 
2003:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
2005:    LDC  3,1(6)	Load of type bool constant 
2006:    LDA  2,0(3)	Copy accumulator to return register 
2007:     LD  3,-1(1)	Load return address 
2008:     LD  1,0(1)	Adjust fp 
2009:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
2004:    JZR  3,6(7)	IF JMP TO ELSE 
2010:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
2011:    LDA  3,-1(0)	Load base address of array board 
2012:    LDC  3,2(6)	Load of type int constant 
2013:    LDA  5,-1(0)	Load base address of array board into AC2 
2014:    SUB  5,5,3	Compute offset for array 
2015:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2016:     ST  3,-3(1)	Push left side onto temp variable stack 
2017:    LDC  3,1(6)	Load of type int constant 
2018:    NEG  3,3,0	- Change Sign Operation 
2019:     LD  4,-3(1)	Pop left hand side into AC1 
2020:    TNE  3,4,3	!= Equality Operation 
2021:     ST  3,-3(1)	Push left side onto temp variable stack 
2022:    LDA  3,-1(0)	Load base address of array board 
2023:    LDC  3,2(6)	Load of type int constant 
2024:    LDA  5,-1(0)	Load base address of array board into AC2 
2025:    SUB  5,5,3	Compute offset for array 
2026:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2027:     ST  3,-4(1)	Push left side onto temp variable stack 
2028:    LDA  3,-1(0)	Load base address of array board 
2029:    LDC  3,4(6)	Load of type int constant 
2030:    LDA  5,-1(0)	Load base address of array board into AC2 
2031:    SUB  5,5,3	Compute offset for array 
2032:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2033:     LD  4,-4(1)	Pop left hand side into AC1 
2034:    TEQ  3,4,3	== Equality Operation 
2035:     ST  3,-4(1)	Push left side onto temp variable stack 
2036:    LDA  3,-1(0)	Load base address of array board 
2037:    LDC  3,2(6)	Load of type int constant 
2038:    LDA  5,-1(0)	Load base address of array board into AC2 
2039:    SUB  5,5,3	Compute offset for array 
2040:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2041:     ST  3,-5(1)	Push left side onto temp variable stack 
2042:    LDA  3,-1(0)	Load base address of array board 
2043:    LDC  3,6(6)	Load of type int constant 
2044:    LDA  5,-1(0)	Load base address of array board into AC2 
2045:    SUB  5,5,3	Compute offset for array 
2046:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2047:     LD  4,-5(1)	Pop left hand side into AC1 
2048:    TEQ  3,4,3	== Equality Operation 
2049:     LD  4,-4(1)	Pop left hand side into AC1 
2050:    AND  3,4,3	AND operation store in AC 
2051:     ST  3,-4(1)	Push left side onto temp variable stack 
2052:    LDA  3,-1(0)	Load base address of array board 
2053:    LDC  3,2(6)	Load of type int constant 
2054:    LDA  5,-1(0)	Load base address of array board into AC2 
2055:    SUB  5,5,3	Compute offset for array 
2056:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2057:     ST  3,-5(1)	Push left side onto temp variable stack 
2058:    LDA  3,-1(0)	Load base address of array board 
2059:    LDC  3,5(6)	Load of type int constant 
2060:    LDA  5,-1(0)	Load base address of array board into AC2 
2061:    SUB  5,5,3	Compute offset for array 
2062:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2063:     LD  4,-5(1)	Pop left hand side into AC1 
2064:    TEQ  3,4,3	== Equality Operation 
2065:     ST  3,-5(1)	Push left side onto temp variable stack 
2066:    LDA  3,-1(0)	Load base address of array board 
2067:    LDC  3,2(6)	Load of type int constant 
2068:    LDA  5,-1(0)	Load base address of array board into AC2 
2069:    SUB  5,5,3	Compute offset for array 
2070:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2071:     ST  3,-6(1)	Push left side onto temp variable stack 
2072:    LDA  3,-1(0)	Load base address of array board 
2073:    LDC  3,8(6)	Load of type int constant 
2074:    LDA  5,-1(0)	Load base address of array board into AC2 
2075:    SUB  5,5,3	Compute offset for array 
2076:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2077:     LD  4,-6(1)	Pop left hand side into AC1 
2078:    TEQ  3,4,3	== Equality Operation 
2079:     LD  4,-5(1)	Pop left hand side into AC1 
2080:    AND  3,4,3	AND operation store in AC 
2081:     LD  4,-4(1)	Pop left hand side into AC1 
2082:     OR  3,4,3	OR operation store in AC 
2083:     LD  4,-3(1)	Pop left hand side into AC1 
2084:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
2086:    LDC  3,1(6)	Load of type bool constant 
2087:    LDA  2,0(3)	Copy accumulator to return register 
2088:     LD  3,-1(1)	Load return address 
2089:     LD  1,0(1)	Adjust fp 
2090:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
2085:    JZR  3,6(7)	IF JMP TO ELSE 
2091:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
2092:    LDA  3,-1(0)	Load base address of array board 
2093:    LDC  3,3(6)	Load of type int constant 
2094:    LDA  5,-1(0)	Load base address of array board into AC2 
2095:    SUB  5,5,3	Compute offset for array 
2096:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2097:     ST  3,-3(1)	Push left side onto temp variable stack 
2098:    LDC  3,1(6)	Load of type int constant 
2099:    NEG  3,3,0	- Change Sign Operation 
2100:     LD  4,-3(1)	Pop left hand side into AC1 
2101:    TNE  3,4,3	!= Equality Operation 
2102:     ST  3,-3(1)	Push left side onto temp variable stack 
2103:    LDA  3,-1(0)	Load base address of array board 
2104:    LDC  3,3(6)	Load of type int constant 
2105:    LDA  5,-1(0)	Load base address of array board into AC2 
2106:    SUB  5,5,3	Compute offset for array 
2107:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2108:     ST  3,-4(1)	Push left side onto temp variable stack 
2109:    LDA  3,-1(0)	Load base address of array board 
2110:    LDC  3,4(6)	Load of type int constant 
2111:    LDA  5,-1(0)	Load base address of array board into AC2 
2112:    SUB  5,5,3	Compute offset for array 
2113:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2114:     LD  4,-4(1)	Pop left hand side into AC1 
2115:    TEQ  3,4,3	== Equality Operation 
2116:     ST  3,-4(1)	Push left side onto temp variable stack 
2117:    LDA  3,-1(0)	Load base address of array board 
2118:    LDC  3,3(6)	Load of type int constant 
2119:    LDA  5,-1(0)	Load base address of array board into AC2 
2120:    SUB  5,5,3	Compute offset for array 
2121:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2122:     ST  3,-5(1)	Push left side onto temp variable stack 
2123:    LDA  3,-1(0)	Load base address of array board 
2124:    LDC  3,5(6)	Load of type int constant 
2125:    LDA  5,-1(0)	Load base address of array board into AC2 
2126:    SUB  5,5,3	Compute offset for array 
2127:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2128:     LD  4,-5(1)	Pop left hand side into AC1 
2129:    TEQ  3,4,3	== Equality Operation 
2130:     LD  4,-4(1)	Pop left hand side into AC1 
2131:    AND  3,4,3	AND operation store in AC 
2132:     LD  4,-3(1)	Pop left hand side into AC1 
2133:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
2135:    LDC  3,1(6)	Load of type bool constant 
2136:    LDA  2,0(3)	Copy accumulator to return register 
2137:     LD  3,-1(1)	Load return address 
2138:     LD  1,0(1)	Adjust fp 
2139:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
2134:    JZR  3,6(7)	IF JMP TO ELSE 
2140:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
2141:    LDA  3,-1(0)	Load base address of array board 
2142:    LDC  3,6(6)	Load of type int constant 
2143:    LDA  5,-1(0)	Load base address of array board into AC2 
2144:    SUB  5,5,3	Compute offset for array 
2145:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2146:     ST  3,-3(1)	Push left side onto temp variable stack 
2147:    LDC  3,1(6)	Load of type int constant 
2148:    NEG  3,3,0	- Change Sign Operation 
2149:     LD  4,-3(1)	Pop left hand side into AC1 
2150:    TNE  3,4,3	!= Equality Operation 
2151:     ST  3,-3(1)	Push left side onto temp variable stack 
2152:    LDA  3,-1(0)	Load base address of array board 
2153:    LDC  3,6(6)	Load of type int constant 
2154:    LDA  5,-1(0)	Load base address of array board into AC2 
2155:    SUB  5,5,3	Compute offset for array 
2156:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2157:     ST  3,-4(1)	Push left side onto temp variable stack 
2158:    LDA  3,-1(0)	Load base address of array board 
2159:    LDC  3,7(6)	Load of type int constant 
2160:    LDA  5,-1(0)	Load base address of array board into AC2 
2161:    SUB  5,5,3	Compute offset for array 
2162:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2163:     LD  4,-4(1)	Pop left hand side into AC1 
2164:    TEQ  3,4,3	== Equality Operation 
2165:     ST  3,-4(1)	Push left side onto temp variable stack 
2166:    LDA  3,-1(0)	Load base address of array board 
2167:    LDC  3,6(6)	Load of type int constant 
2168:    LDA  5,-1(0)	Load base address of array board into AC2 
2169:    SUB  5,5,3	Compute offset for array 
2170:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2171:     ST  3,-5(1)	Push left side onto temp variable stack 
2172:    LDA  3,-1(0)	Load base address of array board 
2173:    LDC  3,8(6)	Load of type int constant 
2174:    LDA  5,-1(0)	Load base address of array board into AC2 
2175:    SUB  5,5,3	Compute offset for array 
2176:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2177:     LD  4,-5(1)	Pop left hand side into AC1 
2178:    TEQ  3,4,3	== Equality Operation 
2179:     LD  4,-4(1)	Pop left hand side into AC1 
2180:    AND  3,4,3	AND operation store in AC 
2181:     LD  4,-3(1)	Pop left hand side into AC1 
2182:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
2184:    LDC  3,1(6)	Load of type bool constant 
2185:    LDA  2,0(3)	Copy accumulator to return register 
2186:     LD  3,-1(1)	Load return address 
2187:     LD  1,0(1)	Adjust fp 
2188:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
2183:    JZR  3,6(7)	IF JMP TO ELSE 
2189:    LDA  7,0(7)	JUMP TO END 
* END IF
* Beginning WHILE statement
2190:    LDA  3,-1(0)	Load base address of array board 
2191:     LD  3,-2(1)	Load variable i into accumulator 
2192:    LDA  5,-1(0)	Load base address of array board into AC2 
2193:    SUB  5,5,3	Compute offset for array 
2194:     LD  3,0(5)	Load array element board from AC into loc from AC2 
2195:     ST  3,-3(1)	Push left side onto temp variable stack 
2196:    LDC  3,1(6)	Load of type int constant 
2197:    NEG  3,3,0	- Change Sign Operation 
2198:     LD  4,-3(1)	Pop left hand side into AC1 
2199:    TNE  3,4,3	!= Equality Operation 
2200:     ST  3,-3(1)	Push left side onto temp variable stack 
2201:     LD  3,-2(1)	Load variable i into accumulator 
2202:     ST  3,-4(1)	Push left side onto temp variable stack 
2203:    LDC  3,9(6)	Load of type int constant 
2204:     LD  4,-4(1)	Pop left hand side into AC1 
2205:    TLT  3,4,3	Less than < operation store in AC 
2206:     LD  4,-3(1)	Pop left hand side into AC1 
2207:    AND  3,4,3	AND operation store in AC 
* COMPOUND
2209:     LD  4,-2(1)	Load lhs variable 
2210:    LDA  3,1(4)	++ Increment accumulator operation 
2211:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
2212:    JMP  7,-23(7)	Go to L1 
2208:    JZR  3,4(7)	JMP if condition is false 
* End WHILE statement
* BEGIN IF BLOCK
2213:     LD  3,-2(1)	Load variable i into accumulator 
2214:     ST  3,-3(1)	Push left side onto temp variable stack 
2215:    LDC  3,9(6)	Load of type int constant 
2216:     LD  4,-3(1)	Pop left hand side into AC1 
2217:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
2219:    LDC  3,1(6)	Load of type bool constant 
2220:    LDA  2,0(3)	Copy accumulator to return register 
2221:     LD  3,-1(1)	Load return address 
2222:     LD  1,0(1)	Adjust fp 
2223:    JMP  7,0(3)	Return 
* END COMPOUND
* IF JUMP TO END
2218:    JZR  3,6(7)	IF JMP TO ELSE 
* COMPOUND
2225:    LDC  3,0(6)	Load of type bool constant 
2226:    LDA  2,0(3)	Copy accumulator to return register 
2227:     LD  3,-1(1)	Load return address 
2228:     LD  1,0(1)	Adjust fp 
2229:    JMP  7,0(3)	Return 
* END COMPOUND
2224:    LDA  7,5(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
2230:    LDC  2,0(6)	Set return value to 0 
2231:     LD  3,-1(1)	Load return address 
2232:     LD  1,0(1)	Adjust fp 
2233:    JMP  7,0(3)	Return 
* END FUNCTION finished
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION playgame
2234:     ST  3,-1(1)	Store return address 
* COMPOUND
2235:    LDC  3,9(6)	Load of type int constant 
2236:     ST  3,-2(1)	Assigning variable x in Local 
* CALL outnl
2237:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
2238:    LDA  1,-3(1)	Move the fp to the new frame 
2239:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2240:    JMP  7,-2207(7)	Call function 
2241:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL printboard
2242:     ST  1,-3(1)	Store fp in ghost frame for printboard 
* Begin call
2243:    LDA  1,-3(1)	Move the fp to the new frame 
2244:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2245:    JMP  7,-488(7)	Call function 
2246:    LDA  3,0(2)	Save return result in accumulator 
* END CALL printboard
* Beginning WHILE statement
* CALL finished
2247:     ST  1,-3(1)	Store fp in ghost frame for finished 
* Begin call
2248:    LDA  1,-3(1)	Move the fp to the new frame 
2249:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2250:    JMP  7,-405(7)	Call function 
2251:    LDA  3,0(2)	Save return result in accumulator 
* END CALL finished
2252:    LDC  4,1(6)	Load 1 into AC1 for not operation 
2253:    TNE  3,4,3	Not ! operation store in AC 
2254:     ST  3,-3(1)	Push left side onto temp variable stack 
2255:     LD  3,-10(0)	Load variable gamenotdone into accumulator 
2256:     ST  3,-4(1)	Push left side onto temp variable stack 
2257:    LDC  3,1(6)	Load of type bool constant 
2258:     LD  4,-4(1)	Pop left hand side into AC1 
2259:    TEQ  3,4,3	== Equality Operation 
2260:     LD  4,-3(1)	Pop left hand side into AC1 
2261:    AND  3,4,3	AND operation store in AC 
* COMPOUND
* CALL input
2263:     ST  1,-3(1)	Store fp in ghost frame for input 
* Begin call
2264:    LDA  1,-3(1)	Move the fp to the new frame 
2265:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2266:    JMP  7,-2266(7)	Call function 
2267:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
2268:     ST  3,-2(1)	Assigning variable x in Local 
* BEGIN IF BLOCK
* CALL xingrid
2269:     ST  1,-3(1)	Store fp in ghost frame for xingrid 
2270:     LD  3,-2(1)	Load variable x into accumulator 
2271:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
2272:    LDA  1,-3(1)	Move the fp to the new frame 
2273:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2274:    JMP  7,-577(7)	Call function 
2275:    LDA  3,0(2)	Save return result in accumulator 
* END CALL xingrid
2276:     ST  3,-3(1)	Push left side onto temp variable stack 
* CALL finished
2277:     ST  1,-4(1)	Store fp in ghost frame for finished 
* Begin call
2278:    LDA  1,-4(1)	Move the fp to the new frame 
2279:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2280:    JMP  7,-435(7)	Call function 
2281:    LDA  3,0(2)	Save return result in accumulator 
* END CALL finished
2282:    LDC  4,1(6)	Load 1 into AC1 for not operation 
2283:    TNE  3,4,3	Not ! operation store in AC 
2284:     LD  4,-3(1)	Pop left hand side into AC1 
2285:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* CALL placey
2287:     ST  1,-3(1)	Store fp in ghost frame for placey 
* Begin call
2288:    LDA  1,-3(1)	Move the fp to the new frame 
2289:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2290:    JMP  7,-621(7)	Call function 
2291:    LDA  3,0(2)	Save return result in accumulator 
* END CALL placey
* CALL outnl
2292:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
2293:    LDA  1,-3(1)	Move the fp to the new frame 
2294:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2295:    JMP  7,-2262(7)	Call function 
2296:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL printboard
2297:     ST  1,-3(1)	Store fp in ghost frame for printboard 
* Begin call
2298:    LDA  1,-3(1)	Move the fp to the new frame 
2299:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2300:    JMP  7,-543(7)	Call function 
2301:    LDA  3,0(2)	Save return result in accumulator 
* END CALL printboard
* CALL outnl
2302:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
2303:    LDA  1,-3(1)	Move the fp to the new frame 
2304:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2305:    JMP  7,-2272(7)	Call function 
2306:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* IF JUMP TO END
2286:    JZR  3,21(7)	IF JMP TO ELSE 
2307:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
2308:    JMP  7,-62(7)	Go to L1 
2262:    JZR  3,46(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
2309:    LDC  2,0(6)	Set return value to 0 
2310:     LD  3,-1(1)	Load return address 
2311:     LD  1,0(1)	Adjust fp 
2312:    JMP  7,0(3)	Return 
* END FUNCTION playgame
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
2313:     ST  3,-1(1)	Store return address 
* COMPOUND
2314:    LDC  3,0(6)	Load of type int constant 
2315:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
2316:     LD  3,-2(1)	Load variable i into accumulator 
2317:     ST  3,-3(1)	Push left side onto temp variable stack 
2318:    LDC  3,9(6)	Load of type int constant 
2319:     LD  4,-3(1)	Pop left hand side into AC1 
2320:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
2322:    LDA  3,-1(0)	Load base address of array board 
2323:     LD  3,-2(1)	Load variable i into accumulator 
2324:     ST  3,-3(1)	Push array index onto temp stack 
2325:    LDC  3,1(6)	Load of type int constant 
2326:    NEG  3,3,0	- Change Sign Operation 
2327:     LD  4,-3(1)	Pop array index into AC1 
2328:    LDA  5,-1(0)	Load base address of array board into AC2 
2329:    SUB  5,5,4	Compute offset for array 
2330:     ST  3,0(5)	Store variable board from AC into loc from AC2 
2331:     LD  4,-2(1)	Load lhs variable 
2332:    LDA  3,1(4)	++ Increment accumulator operation 
2333:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
2334:    JMP  7,-19(7)	Go to L1 
2321:    JZR  3,13(7)	JMP if condition is false 
* End WHILE statement
2335:    LDC  3,1(6)	Load of type bool constant 
2336:     ST  3,-10(0)	Assigning variable gamenotdone in Global 
* CALL playgame
2337:     ST  1,-3(1)	Store fp in ghost frame for playgame 
* Begin call
2338:    LDA  1,-3(1)	Move the fp to the new frame 
2339:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2340:    JMP  7,-107(7)	Call function 
2341:    LDA  3,0(2)	Save return result in accumulator 
* END CALL playgame
* CALL outnl
2342:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
2343:    LDA  1,-3(1)	Move the fp to the new frame 
2344:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2345:    JMP  7,-2312(7)	Call function 
2346:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL printboard
2347:     ST  1,-3(1)	Store fp in ghost frame for printboard 
* Begin call
2348:    LDA  1,-3(1)	Move the fp to the new frame 
2349:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2350:    JMP  7,-593(7)	Call function 
2351:    LDA  3,0(2)	Save return result in accumulator 
* END CALL printboard
* CALL outnl
2352:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
2353:    LDA  1,-3(1)	Move the fp to the new frame 
2354:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
2355:    JMP  7,-2322(7)	Call function 
2356:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
2357:    LDC  2,0(6)	Set return value to 0 
2358:     LD  3,-1(1)	Load return address 
2359:     LD  1,0(1)	Adjust fp 
2360:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,2360(7)	Jump to init [backpatch] 
* INIT
2361:    LDA  1,-11(0)	set first frame at end of globals 
2362:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
2363:    LDC  3,9(6)	Load size of board into AC 
2364:     ST  3,0(0)	Store size of board in data memory 
* END INIT GLOBALS AND STATICS
2365:    LDA  3,1(7)	Return address in ac 
2366:    JMP  7,-54(7)	Jump to main 
2367:   HALT  0,0,0	DONE! 
* END INIT
