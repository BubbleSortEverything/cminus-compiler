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
* FUNCTION suit
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:     LD  3,-2(1)	Load variable c into accumulator 
 41:     ST  3,-3(1)	Push left side onto temp variable stack 
 42:     LD  3,0(0)	Load variable numSuits into accumulator 
 43:     LD  4,-3(1)	Pop left hand side into AC1 
 44:    MOD  3,4,3	% mod operation 
 45:    LDA  2,0(3)	Copy accumulator to return register 
 46:     LD  3,-1(1)	Load return address 
 47:     LD  1,0(1)	Adjust fp 
 48:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 49:    LDC  2,0(6)	Set return value to 0 
 50:     LD  3,-1(1)	Load return address 
 51:     LD  1,0(1)	Adjust fp 
 52:    JMP  7,0(3)	Return 
* END FUNCTION suit
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION pips
 53:     ST  3,-1(1)	Store return address 
* COMPOUND
 54:     LD  3,-2(1)	Load variable c into accumulator 
 55:     ST  3,-3(1)	Push left side onto temp variable stack 
 56:     LD  3,0(0)	Load variable numSuits into accumulator 
 57:     LD  4,-3(1)	Pop left hand side into AC1 
 58:    DIV  3,4,3	/ Division operation 
 59:    LDA  2,0(3)	Copy accumulator to return register 
 60:     LD  3,-1(1)	Load return address 
 61:     LD  1,0(1)	Adjust fp 
 62:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 63:    LDC  2,0(6)	Set return value to 0 
 64:     LD  3,-1(1)	Load return address 
 65:     LD  1,0(1)	Adjust fp 
 66:    JMP  7,0(3)	Return 
* END FUNCTION pips
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION p
 67:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL pips
 68:     ST  1,-4(1)	Store fp in ghost frame for pips 
 69:     LD  3,-2(1)	Load variable a into accumulator 
 70:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-4(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-21(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
 75:     ST  3,-4(1)	Push left side onto temp variable stack 
* CALL pips
 76:     ST  1,-5(1)	Store fp in ghost frame for pips 
 77:     LD  3,-3(1)	Load variable b into accumulator 
 78:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-5(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-29(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
 83:     LD  4,-4(1)	Pop left hand side into AC1 
 84:    TEQ  3,4,3	== Equality Operation 
 85:    LDA  2,0(3)	Copy accumulator to return register 
 86:     LD  3,-1(1)	Load return address 
 87:     LD  1,0(1)	Adjust fp 
 88:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 89:    LDC  2,0(6)	Set return value to 0 
 90:     LD  3,-1(1)	Load return address 
 91:     LD  1,0(1)	Adjust fp 
 92:    JMP  7,0(3)	Return 
* END FUNCTION p
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION ppp
 93:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL p
 94:     ST  1,-5(1)	Store fp in ghost frame for p 
 95:     LD  3,-2(1)	Load variable a into accumulator 
 96:     ST  3,-7(1)	Push parameter onto new frame 
 97:     LD  3,-3(1)	Load variable b into accumulator 
 98:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 99:    LDA  1,-5(1)	Move the fp to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-35(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
103:     ST  3,-5(1)	Push left side onto temp variable stack 
* CALL p
104:     ST  1,-6(1)	Store fp in ghost frame for p 
105:     LD  3,-3(1)	Load variable b into accumulator 
106:     ST  3,-8(1)	Push parameter onto new frame 
107:     LD  3,-4(1)	Load variable c into accumulator 
108:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
109:    LDA  1,-6(1)	Move the fp to the new frame 
110:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
111:    JMP  7,-45(7)	Call function 
112:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
113:     LD  4,-5(1)	Pop left hand side into AC1 
114:    AND  3,4,3	AND operation store in AC 
115:    LDA  2,0(3)	Copy accumulator to return register 
116:     LD  3,-1(1)	Load return address 
117:     LD  1,0(1)	Adjust fp 
118:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
119:    LDC  2,0(6)	Set return value to 0 
120:     LD  3,-1(1)	Load return address 
121:     LD  1,0(1)	Adjust fp 
122:    JMP  7,0(3)	Return 
* END FUNCTION ppp
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION pppp
123:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL p
124:     ST  1,-6(1)	Store fp in ghost frame for p 
125:     LD  3,-2(1)	Load variable a into accumulator 
126:     ST  3,-8(1)	Push parameter onto new frame 
127:     LD  3,-3(1)	Load variable b into accumulator 
128:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
129:    LDA  1,-6(1)	Move the fp to the new frame 
130:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
131:    JMP  7,-65(7)	Call function 
132:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
133:     ST  3,-6(1)	Push left side onto temp variable stack 
* CALL p
134:     ST  1,-7(1)	Store fp in ghost frame for p 
135:     LD  3,-3(1)	Load variable b into accumulator 
136:     ST  3,-9(1)	Push parameter onto new frame 
137:     LD  3,-4(1)	Load variable c into accumulator 
138:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
139:    LDA  1,-7(1)	Move the fp to the new frame 
140:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
141:    JMP  7,-75(7)	Call function 
142:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
143:     LD  4,-6(1)	Pop left hand side into AC1 
144:    AND  3,4,3	AND operation store in AC 
145:     ST  3,-6(1)	Push left side onto temp variable stack 
* CALL p
146:     ST  1,-7(1)	Store fp in ghost frame for p 
147:     LD  3,-4(1)	Load variable c into accumulator 
148:     ST  3,-9(1)	Push parameter onto new frame 
149:     LD  3,-5(1)	Load variable d into accumulator 
150:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
151:    LDA  1,-7(1)	Move the fp to the new frame 
152:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
153:    JMP  7,-87(7)	Call function 
154:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
155:     LD  4,-6(1)	Pop left hand side into AC1 
156:    AND  3,4,3	AND operation store in AC 
157:    LDA  2,0(3)	Copy accumulator to return register 
158:     LD  3,-1(1)	Load return address 
159:     LD  1,0(1)	Adjust fp 
160:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
161:    LDC  2,0(6)	Set return value to 0 
162:     LD  3,-1(1)	Load return address 
163:     LD  1,0(1)	Adjust fp 
164:    JMP  7,0(3)	Return 
* END FUNCTION pppp
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION handtype
165:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL suit
166:     ST  1,-8(1)	Store fp in ghost frame for suit 
167:     LD  3,-2(1)	Load variable a into accumulator 
168:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
169:    LDA  1,-8(1)	Move the fp to the new frame 
170:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
171:    JMP  7,-133(7)	Call function 
172:    LDA  3,0(2)	Save return result in accumulator 
* END CALL suit
173:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL suit
174:     ST  1,-9(1)	Store fp in ghost frame for suit 
175:     LD  3,-3(1)	Load variable b into accumulator 
176:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
177:    LDA  1,-9(1)	Move the fp to the new frame 
178:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
179:    JMP  7,-141(7)	Call function 
180:    LDA  3,0(2)	Save return result in accumulator 
* END CALL suit
181:     LD  4,-8(1)	Pop left hand side into AC1 
182:    TEQ  3,4,3	== Equality Operation 
183:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL suit
184:     ST  1,-9(1)	Store fp in ghost frame for suit 
185:     LD  3,-2(1)	Load variable a into accumulator 
186:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
187:    LDA  1,-9(1)	Move the fp to the new frame 
188:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
189:    JMP  7,-151(7)	Call function 
190:    LDA  3,0(2)	Save return result in accumulator 
* END CALL suit
191:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL suit
192:     ST  1,-10(1)	Store fp in ghost frame for suit 
193:     LD  3,-4(1)	Load variable c into accumulator 
194:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
195:    LDA  1,-10(1)	Move the fp to the new frame 
196:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
197:    JMP  7,-159(7)	Call function 
198:    LDA  3,0(2)	Save return result in accumulator 
* END CALL suit
199:     LD  4,-9(1)	Pop left hand side into AC1 
200:    TEQ  3,4,3	== Equality Operation 
201:     LD  4,-8(1)	Pop left hand side into AC1 
202:    AND  3,4,3	AND operation store in AC 
203:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL suit
204:     ST  1,-9(1)	Store fp in ghost frame for suit 
205:     LD  3,-2(1)	Load variable a into accumulator 
206:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
207:    LDA  1,-9(1)	Move the fp to the new frame 
208:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
209:    JMP  7,-171(7)	Call function 
210:    LDA  3,0(2)	Save return result in accumulator 
* END CALL suit
211:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL suit
212:     ST  1,-10(1)	Store fp in ghost frame for suit 
213:     LD  3,-5(1)	Load variable d into accumulator 
214:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
215:    LDA  1,-10(1)	Move the fp to the new frame 
216:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
217:    JMP  7,-179(7)	Call function 
218:    LDA  3,0(2)	Save return result in accumulator 
* END CALL suit
219:     LD  4,-9(1)	Pop left hand side into AC1 
220:    TEQ  3,4,3	== Equality Operation 
221:     LD  4,-8(1)	Pop left hand side into AC1 
222:    AND  3,4,3	AND operation store in AC 
223:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL suit
224:     ST  1,-9(1)	Store fp in ghost frame for suit 
225:     LD  3,-2(1)	Load variable a into accumulator 
226:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
227:    LDA  1,-9(1)	Move the fp to the new frame 
228:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
229:    JMP  7,-191(7)	Call function 
230:    LDA  3,0(2)	Save return result in accumulator 
* END CALL suit
231:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL suit
232:     ST  1,-10(1)	Store fp in ghost frame for suit 
233:     LD  3,-6(1)	Load variable e into accumulator 
234:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
235:    LDA  1,-10(1)	Move the fp to the new frame 
236:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
237:    JMP  7,-199(7)	Call function 
238:    LDA  3,0(2)	Save return result in accumulator 
* END CALL suit
239:     LD  4,-9(1)	Pop left hand side into AC1 
240:    TEQ  3,4,3	== Equality Operation 
241:     LD  4,-8(1)	Pop left hand side into AC1 
242:    AND  3,4,3	AND operation store in AC 
243:     ST  3,-7(1)	Assigning variable isflush in Local 
* BEGIN IF BLOCK
244:     LD  3,-7(1)	Load variable isflush into accumulator 
245:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
246:     ST  1,-9(1)	Store fp in ghost frame for pips 
247:     LD  3,-2(1)	Load variable a into accumulator 
248:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
249:    LDA  1,-9(1)	Move the fp to the new frame 
250:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
251:    JMP  7,-199(7)	Call function 
252:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
253:     ST  3,-9(1)	Push left side onto temp variable stack 
254:    LDC  3,0(6)	Load of type int constant 
255:     LD  4,-9(1)	Pop left hand side into AC1 
256:    TEQ  3,4,3	== Equality Operation 
257:     LD  4,-8(1)	Pop left hand side into AC1 
258:    AND  3,4,3	AND operation store in AC 
259:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
260:     ST  1,-9(1)	Store fp in ghost frame for pips 
261:     LD  3,-3(1)	Load variable b into accumulator 
262:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
263:    LDA  1,-9(1)	Move the fp to the new frame 
264:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
265:    JMP  7,-213(7)	Call function 
266:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
267:     ST  3,-9(1)	Push left side onto temp variable stack 
268:     LD  3,-1(0)	Load variable numPips into accumulator 
269:     ST  3,-10(1)	Push left side onto temp variable stack 
270:    LDC  3,4(6)	Load of type int constant 
271:     LD  4,-10(1)	Pop left hand side into AC1 
272:    SUB  3,4,3	- Subtraction Operation 
273:     LD  4,-9(1)	Pop left hand side into AC1 
274:    TEQ  3,4,3	== Equality Operation 
275:     LD  4,-8(1)	Pop left hand side into AC1 
276:    AND  3,4,3	AND operation store in AC 
277:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
278:     ST  1,-9(1)	Store fp in ghost frame for pips 
279:     LD  3,-6(1)	Load variable e into accumulator 
280:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
281:    LDA  1,-9(1)	Move the fp to the new frame 
282:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
283:    JMP  7,-231(7)	Call function 
284:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
285:     ST  3,-9(1)	Push left side onto temp variable stack 
286:     LD  3,-1(0)	Load variable numPips into accumulator 
287:     ST  3,-10(1)	Push left side onto temp variable stack 
288:    LDC  3,1(6)	Load of type int constant 
289:     LD  4,-10(1)	Pop left hand side into AC1 
290:    SUB  3,4,3	- Subtraction Operation 
291:     LD  4,-9(1)	Pop left hand side into AC1 
292:    TEQ  3,4,3	== Equality Operation 
293:     LD  4,-8(1)	Pop left hand side into AC1 
294:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
296:    LDC  3,0(6)	Load of type int constant 
297:    LDA  2,0(3)	Copy accumulator to return register 
298:     LD  3,-1(1)	Load return address 
299:     LD  1,0(1)	Adjust fp 
300:    JMP  7,0(3)	Return 
* IF JUMP TO END
295:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
302:     LD  3,-7(1)	Load variable isflush into accumulator 
303:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
304:     ST  1,-9(1)	Store fp in ghost frame for pips 
305:     LD  3,-2(1)	Load variable a into accumulator 
306:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
307:    LDA  1,-9(1)	Move the fp to the new frame 
308:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
309:    JMP  7,-257(7)	Call function 
310:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
311:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL pips
312:     ST  1,-10(1)	Store fp in ghost frame for pips 
313:     LD  3,-6(1)	Load variable e into accumulator 
314:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
315:    LDA  1,-10(1)	Move the fp to the new frame 
316:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
317:    JMP  7,-265(7)	Call function 
318:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
319:     ST  3,-10(1)	Push left side onto temp variable stack 
320:    LDC  3,4(6)	Load of type int constant 
321:     LD  4,-10(1)	Pop left hand side into AC1 
322:    SUB  3,4,3	- Subtraction Operation 
323:     LD  4,-9(1)	Pop left hand side into AC1 
324:    TEQ  3,4,3	== Equality Operation 
325:     LD  4,-8(1)	Pop left hand side into AC1 
326:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
328:    LDC  3,1(6)	Load of type int constant 
329:    LDA  2,0(3)	Copy accumulator to return register 
330:     LD  3,-1(1)	Load return address 
331:     LD  1,0(1)	Adjust fp 
332:    JMP  7,0(3)	Return 
* IF JUMP TO END
327:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
* CALL pppp
334:     ST  1,-8(1)	Store fp in ghost frame for pppp 
335:     LD  3,-2(1)	Load variable a into accumulator 
336:     ST  3,-10(1)	Push parameter onto new frame 
337:     LD  3,-3(1)	Load variable b into accumulator 
338:     ST  3,-11(1)	Push parameter onto new frame 
339:     LD  3,-4(1)	Load variable c into accumulator 
340:     ST  3,-12(1)	Push parameter onto new frame 
341:     LD  3,-5(1)	Load variable d into accumulator 
342:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
343:    LDA  1,-8(1)	Move the fp to the new frame 
344:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
345:    JMP  7,-223(7)	Call function 
346:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pppp
347:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pppp
348:     ST  1,-9(1)	Store fp in ghost frame for pppp 
349:     LD  3,-3(1)	Load variable b into accumulator 
350:     ST  3,-11(1)	Push parameter onto new frame 
351:     LD  3,-4(1)	Load variable c into accumulator 
352:     ST  3,-12(1)	Push parameter onto new frame 
353:     LD  3,-5(1)	Load variable d into accumulator 
354:     ST  3,-13(1)	Push parameter onto new frame 
355:     LD  3,-6(1)	Load variable e into accumulator 
356:     ST  3,-14(1)	Push parameter onto new frame 
* Begin call
357:    LDA  1,-9(1)	Move the fp to the new frame 
358:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
359:    JMP  7,-237(7)	Call function 
360:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pppp
361:     LD  4,-8(1)	Pop left hand side into AC1 
362:     OR  3,4,3	OR operation store in AC 
* IF JUMP TO ELSE
364:    LDC  3,2(6)	Load of type int constant 
365:    LDA  2,0(3)	Copy accumulator to return register 
366:     LD  3,-1(1)	Load return address 
367:     LD  1,0(1)	Adjust fp 
368:    JMP  7,0(3)	Return 
* IF JUMP TO END
363:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
* CALL ppp
370:     ST  1,-8(1)	Store fp in ghost frame for ppp 
371:     LD  3,-2(1)	Load variable a into accumulator 
372:     ST  3,-10(1)	Push parameter onto new frame 
373:     LD  3,-3(1)	Load variable b into accumulator 
374:     ST  3,-11(1)	Push parameter onto new frame 
375:     LD  3,-4(1)	Load variable c into accumulator 
376:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
377:    LDA  1,-8(1)	Move the fp to the new frame 
378:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
379:    JMP  7,-287(7)	Call function 
380:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ppp
381:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL p
382:     ST  1,-9(1)	Store fp in ghost frame for p 
383:     LD  3,-5(1)	Load variable d into accumulator 
384:     ST  3,-11(1)	Push parameter onto new frame 
385:     LD  3,-6(1)	Load variable e into accumulator 
386:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
387:    LDA  1,-9(1)	Move the fp to the new frame 
388:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
389:    JMP  7,-323(7)	Call function 
390:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
391:     LD  4,-8(1)	Pop left hand side into AC1 
392:    AND  3,4,3	AND operation store in AC 
393:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL p
394:     ST  1,-9(1)	Store fp in ghost frame for p 
395:     LD  3,-2(1)	Load variable a into accumulator 
396:     ST  3,-11(1)	Push parameter onto new frame 
397:     LD  3,-3(1)	Load variable b into accumulator 
398:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
399:    LDA  1,-9(1)	Move the fp to the new frame 
400:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
401:    JMP  7,-335(7)	Call function 
402:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
403:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL ppp
404:     ST  1,-10(1)	Store fp in ghost frame for ppp 
405:     LD  3,-4(1)	Load variable c into accumulator 
406:     ST  3,-12(1)	Push parameter onto new frame 
407:     LD  3,-5(1)	Load variable d into accumulator 
408:     ST  3,-13(1)	Push parameter onto new frame 
409:     LD  3,-6(1)	Load variable e into accumulator 
410:     ST  3,-14(1)	Push parameter onto new frame 
* Begin call
411:    LDA  1,-10(1)	Move the fp to the new frame 
412:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
413:    JMP  7,-321(7)	Call function 
414:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ppp
415:     LD  4,-9(1)	Pop left hand side into AC1 
416:    AND  3,4,3	AND operation store in AC 
417:     LD  4,-8(1)	Pop left hand side into AC1 
418:     OR  3,4,3	OR operation store in AC 
* IF JUMP TO ELSE
420:    LDC  3,3(6)	Load of type int constant 
421:    LDA  2,0(3)	Copy accumulator to return register 
422:     LD  3,-1(1)	Load return address 
423:     LD  1,0(1)	Adjust fp 
424:    JMP  7,0(3)	Return 
* IF JUMP TO END
419:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
426:     LD  3,-7(1)	Load variable isflush into accumulator 
* IF JUMP TO ELSE
428:    LDC  3,4(6)	Load of type int constant 
429:    LDA  2,0(3)	Copy accumulator to return register 
430:     LD  3,-1(1)	Load return address 
431:     LD  1,0(1)	Adjust fp 
432:    JMP  7,0(3)	Return 
* IF JUMP TO END
427:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
* CALL pips
434:     ST  1,-8(1)	Store fp in ghost frame for pips 
435:     LD  3,-2(1)	Load variable a into accumulator 
436:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
437:    LDA  1,-8(1)	Move the fp to the new frame 
438:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
439:    JMP  7,-387(7)	Call function 
440:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
441:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
442:     ST  1,-9(1)	Store fp in ghost frame for pips 
443:     LD  3,-3(1)	Load variable b into accumulator 
444:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
445:    LDA  1,-9(1)	Move the fp to the new frame 
446:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
447:    JMP  7,-395(7)	Call function 
448:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
449:     ST  3,-9(1)	Push left side onto temp variable stack 
450:    LDC  3,1(6)	Load of type int constant 
451:     LD  4,-9(1)	Pop left hand side into AC1 
452:    SUB  3,4,3	- Subtraction Operation 
453:     LD  4,-8(1)	Pop left hand side into AC1 
454:    TEQ  3,4,3	== Equality Operation 
455:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
456:     ST  1,-9(1)	Store fp in ghost frame for pips 
457:     LD  3,-3(1)	Load variable b into accumulator 
458:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
459:    LDA  1,-9(1)	Move the fp to the new frame 
460:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
461:    JMP  7,-409(7)	Call function 
462:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
463:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL pips
464:     ST  1,-10(1)	Store fp in ghost frame for pips 
465:     LD  3,-4(1)	Load variable c into accumulator 
466:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
467:    LDA  1,-10(1)	Move the fp to the new frame 
468:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
469:    JMP  7,-417(7)	Call function 
470:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
471:     ST  3,-10(1)	Push left side onto temp variable stack 
472:    LDC  3,1(6)	Load of type int constant 
473:     LD  4,-10(1)	Pop left hand side into AC1 
474:    SUB  3,4,3	- Subtraction Operation 
475:     LD  4,-9(1)	Pop left hand side into AC1 
476:    TEQ  3,4,3	== Equality Operation 
477:     LD  4,-8(1)	Pop left hand side into AC1 
478:    AND  3,4,3	AND operation store in AC 
479:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
480:     ST  1,-9(1)	Store fp in ghost frame for pips 
481:     LD  3,-4(1)	Load variable c into accumulator 
482:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
483:    LDA  1,-9(1)	Move the fp to the new frame 
484:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
485:    JMP  7,-433(7)	Call function 
486:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
487:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL pips
488:     ST  1,-10(1)	Store fp in ghost frame for pips 
489:     LD  3,-5(1)	Load variable d into accumulator 
490:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
491:    LDA  1,-10(1)	Move the fp to the new frame 
492:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
493:    JMP  7,-441(7)	Call function 
494:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
495:     ST  3,-10(1)	Push left side onto temp variable stack 
496:    LDC  3,1(6)	Load of type int constant 
497:     LD  4,-10(1)	Pop left hand side into AC1 
498:    SUB  3,4,3	- Subtraction Operation 
499:     LD  4,-9(1)	Pop left hand side into AC1 
500:    TEQ  3,4,3	== Equality Operation 
501:     LD  4,-8(1)	Pop left hand side into AC1 
502:    AND  3,4,3	AND operation store in AC 
503:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
504:     ST  1,-9(1)	Store fp in ghost frame for pips 
505:     LD  3,-5(1)	Load variable d into accumulator 
506:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
507:    LDA  1,-9(1)	Move the fp to the new frame 
508:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
509:    JMP  7,-457(7)	Call function 
510:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
511:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL pips
512:     ST  1,-10(1)	Store fp in ghost frame for pips 
513:     LD  3,-6(1)	Load variable e into accumulator 
514:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
515:    LDA  1,-10(1)	Move the fp to the new frame 
516:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
517:    JMP  7,-465(7)	Call function 
518:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
519:     ST  3,-10(1)	Push left side onto temp variable stack 
520:    LDC  3,1(6)	Load of type int constant 
521:     LD  4,-10(1)	Pop left hand side into AC1 
522:    SUB  3,4,3	- Subtraction Operation 
523:     LD  4,-9(1)	Pop left hand side into AC1 
524:    TEQ  3,4,3	== Equality Operation 
525:     LD  4,-8(1)	Pop left hand side into AC1 
526:    AND  3,4,3	AND operation store in AC 
527:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL pips
528:     ST  1,-9(1)	Store fp in ghost frame for pips 
529:     LD  3,-2(1)	Load variable a into accumulator 
530:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
531:    LDA  1,-9(1)	Move the fp to the new frame 
532:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
533:    JMP  7,-481(7)	Call function 
534:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
535:     ST  3,-9(1)	Push left side onto temp variable stack 
536:    LDC  3,0(6)	Load of type int constant 
537:     LD  4,-9(1)	Pop left hand side into AC1 
538:    TEQ  3,4,3	== Equality Operation 
539:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL pips
540:     ST  1,-10(1)	Store fp in ghost frame for pips 
541:     LD  3,-3(1)	Load variable b into accumulator 
542:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
543:    LDA  1,-10(1)	Move the fp to the new frame 
544:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
545:    JMP  7,-493(7)	Call function 
546:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
547:     ST  3,-10(1)	Push left side onto temp variable stack 
548:     LD  3,-1(0)	Load variable numPips into accumulator 
549:     ST  3,-11(1)	Push left side onto temp variable stack 
550:    LDC  3,4(6)	Load of type int constant 
551:     LD  4,-11(1)	Pop left hand side into AC1 
552:    SUB  3,4,3	- Subtraction Operation 
553:     LD  4,-10(1)	Pop left hand side into AC1 
554:    TEQ  3,4,3	== Equality Operation 
555:     LD  4,-9(1)	Pop left hand side into AC1 
556:    AND  3,4,3	AND operation store in AC 
557:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL pips
558:     ST  1,-10(1)	Store fp in ghost frame for pips 
559:     LD  3,-4(1)	Load variable c into accumulator 
560:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
561:    LDA  1,-10(1)	Move the fp to the new frame 
562:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
563:    JMP  7,-511(7)	Call function 
564:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
565:     ST  3,-10(1)	Push left side onto temp variable stack 
566:     LD  3,-1(0)	Load variable numPips into accumulator 
567:     ST  3,-11(1)	Push left side onto temp variable stack 
568:    LDC  3,3(6)	Load of type int constant 
569:     LD  4,-11(1)	Pop left hand side into AC1 
570:    SUB  3,4,3	- Subtraction Operation 
571:     LD  4,-10(1)	Pop left hand side into AC1 
572:    TEQ  3,4,3	== Equality Operation 
573:     LD  4,-9(1)	Pop left hand side into AC1 
574:    AND  3,4,3	AND operation store in AC 
575:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL pips
576:     ST  1,-10(1)	Store fp in ghost frame for pips 
577:     LD  3,-5(1)	Load variable d into accumulator 
578:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
579:    LDA  1,-10(1)	Move the fp to the new frame 
580:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
581:    JMP  7,-529(7)	Call function 
582:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
583:     ST  3,-10(1)	Push left side onto temp variable stack 
584:     LD  3,-1(0)	Load variable numPips into accumulator 
585:     ST  3,-11(1)	Push left side onto temp variable stack 
586:    LDC  3,2(6)	Load of type int constant 
587:     LD  4,-11(1)	Pop left hand side into AC1 
588:    SUB  3,4,3	- Subtraction Operation 
589:     LD  4,-10(1)	Pop left hand side into AC1 
590:    TEQ  3,4,3	== Equality Operation 
591:     LD  4,-9(1)	Pop left hand side into AC1 
592:    AND  3,4,3	AND operation store in AC 
593:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL pips
594:     ST  1,-10(1)	Store fp in ghost frame for pips 
595:     LD  3,-6(1)	Load variable e into accumulator 
596:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
597:    LDA  1,-10(1)	Move the fp to the new frame 
598:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
599:    JMP  7,-547(7)	Call function 
600:    LDA  3,0(2)	Save return result in accumulator 
* END CALL pips
601:     ST  3,-10(1)	Push left side onto temp variable stack 
602:     LD  3,-1(0)	Load variable numPips into accumulator 
603:     ST  3,-11(1)	Push left side onto temp variable stack 
604:    LDC  3,1(6)	Load of type int constant 
605:     LD  4,-11(1)	Pop left hand side into AC1 
606:    SUB  3,4,3	- Subtraction Operation 
607:     LD  4,-10(1)	Pop left hand side into AC1 
608:    TEQ  3,4,3	== Equality Operation 
609:     LD  4,-9(1)	Pop left hand side into AC1 
610:    AND  3,4,3	AND operation store in AC 
611:     LD  4,-8(1)	Pop left hand side into AC1 
612:     OR  3,4,3	OR operation store in AC 
* IF JUMP TO ELSE
614:    LDC  3,5(6)	Load of type int constant 
615:    LDA  2,0(3)	Copy accumulator to return register 
616:     LD  3,-1(1)	Load return address 
617:     LD  1,0(1)	Adjust fp 
618:    JMP  7,0(3)	Return 
* IF JUMP TO END
613:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
* CALL ppp
620:     ST  1,-8(1)	Store fp in ghost frame for ppp 
621:     LD  3,-2(1)	Load variable a into accumulator 
622:     ST  3,-10(1)	Push parameter onto new frame 
623:     LD  3,-3(1)	Load variable b into accumulator 
624:     ST  3,-11(1)	Push parameter onto new frame 
625:     LD  3,-4(1)	Load variable c into accumulator 
626:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
627:    LDA  1,-8(1)	Move the fp to the new frame 
628:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
629:    JMP  7,-537(7)	Call function 
630:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ppp
631:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL ppp
632:     ST  1,-9(1)	Store fp in ghost frame for ppp 
633:     LD  3,-3(1)	Load variable b into accumulator 
634:     ST  3,-11(1)	Push parameter onto new frame 
635:     LD  3,-4(1)	Load variable c into accumulator 
636:     ST  3,-12(1)	Push parameter onto new frame 
637:     LD  3,-5(1)	Load variable d into accumulator 
638:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
639:    LDA  1,-9(1)	Move the fp to the new frame 
640:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
641:    JMP  7,-549(7)	Call function 
642:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ppp
643:     LD  4,-8(1)	Pop left hand side into AC1 
644:     OR  3,4,3	OR operation store in AC 
645:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL ppp
646:     ST  1,-9(1)	Store fp in ghost frame for ppp 
647:     LD  3,-4(1)	Load variable c into accumulator 
648:     ST  3,-11(1)	Push parameter onto new frame 
649:     LD  3,-5(1)	Load variable d into accumulator 
650:     ST  3,-12(1)	Push parameter onto new frame 
651:     LD  3,-6(1)	Load variable e into accumulator 
652:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
653:    LDA  1,-9(1)	Move the fp to the new frame 
654:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
655:    JMP  7,-563(7)	Call function 
656:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ppp
657:     LD  4,-8(1)	Pop left hand side into AC1 
658:     OR  3,4,3	OR operation store in AC 
* IF JUMP TO ELSE
660:    LDC  3,6(6)	Load of type int constant 
661:    LDA  2,0(3)	Copy accumulator to return register 
662:     LD  3,-1(1)	Load return address 
663:     LD  1,0(1)	Adjust fp 
664:    JMP  7,0(3)	Return 
* IF JUMP TO END
659:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
* CALL p
666:     ST  1,-8(1)	Store fp in ghost frame for p 
667:     LD  3,-2(1)	Load variable a into accumulator 
668:     ST  3,-10(1)	Push parameter onto new frame 
669:     LD  3,-3(1)	Load variable b into accumulator 
670:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
671:    LDA  1,-8(1)	Move the fp to the new frame 
672:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
673:    JMP  7,-607(7)	Call function 
674:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
675:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL p
676:     ST  1,-9(1)	Store fp in ghost frame for p 
677:     LD  3,-4(1)	Load variable c into accumulator 
678:     ST  3,-11(1)	Push parameter onto new frame 
679:     LD  3,-5(1)	Load variable d into accumulator 
680:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
681:    LDA  1,-9(1)	Move the fp to the new frame 
682:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
683:    JMP  7,-617(7)	Call function 
684:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
685:     LD  4,-8(1)	Pop left hand side into AC1 
686:    AND  3,4,3	AND operation store in AC 
687:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL p
688:     ST  1,-9(1)	Store fp in ghost frame for p 
689:     LD  3,-2(1)	Load variable a into accumulator 
690:     ST  3,-11(1)	Push parameter onto new frame 
691:     LD  3,-3(1)	Load variable b into accumulator 
692:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
693:    LDA  1,-9(1)	Move the fp to the new frame 
694:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
695:    JMP  7,-629(7)	Call function 
696:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
697:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL p
698:     ST  1,-10(1)	Store fp in ghost frame for p 
699:     LD  3,-5(1)	Load variable d into accumulator 
700:     ST  3,-12(1)	Push parameter onto new frame 
701:     LD  3,-6(1)	Load variable e into accumulator 
702:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
703:    LDA  1,-10(1)	Move the fp to the new frame 
704:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
705:    JMP  7,-639(7)	Call function 
706:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
707:     LD  4,-9(1)	Pop left hand side into AC1 
708:    AND  3,4,3	AND operation store in AC 
709:     LD  4,-8(1)	Pop left hand side into AC1 
710:     OR  3,4,3	OR operation store in AC 
711:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL p
712:     ST  1,-9(1)	Store fp in ghost frame for p 
713:     LD  3,-3(1)	Load variable b into accumulator 
714:     ST  3,-11(1)	Push parameter onto new frame 
715:     LD  3,-4(1)	Load variable c into accumulator 
716:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
717:    LDA  1,-9(1)	Move the fp to the new frame 
718:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
719:    JMP  7,-653(7)	Call function 
720:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
721:     ST  3,-9(1)	Push left side onto temp variable stack 
* CALL p
722:     ST  1,-10(1)	Store fp in ghost frame for p 
723:     LD  3,-5(1)	Load variable d into accumulator 
724:     ST  3,-12(1)	Push parameter onto new frame 
725:     LD  3,-6(1)	Load variable e into accumulator 
726:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
727:    LDA  1,-10(1)	Move the fp to the new frame 
728:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
729:    JMP  7,-663(7)	Call function 
730:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
731:     LD  4,-9(1)	Pop left hand side into AC1 
732:    AND  3,4,3	AND operation store in AC 
733:     LD  4,-8(1)	Pop left hand side into AC1 
734:     OR  3,4,3	OR operation store in AC 
* IF JUMP TO ELSE
736:    LDC  3,7(6)	Load of type int constant 
737:    LDA  2,0(3)	Copy accumulator to return register 
738:     LD  3,-1(1)	Load return address 
739:     LD  1,0(1)	Adjust fp 
740:    JMP  7,0(3)	Return 
* IF JUMP TO END
735:    JZR  3,6(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
* CALL p
742:     ST  1,-8(1)	Store fp in ghost frame for p 
743:     LD  3,-2(1)	Load variable a into accumulator 
744:     ST  3,-10(1)	Push parameter onto new frame 
745:     LD  3,-3(1)	Load variable b into accumulator 
746:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
747:    LDA  1,-8(1)	Move the fp to the new frame 
748:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
749:    JMP  7,-683(7)	Call function 
750:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
751:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL p
752:     ST  1,-9(1)	Store fp in ghost frame for p 
753:     LD  3,-3(1)	Load variable b into accumulator 
754:     ST  3,-11(1)	Push parameter onto new frame 
755:     LD  3,-4(1)	Load variable c into accumulator 
756:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
757:    LDA  1,-9(1)	Move the fp to the new frame 
758:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
759:    JMP  7,-693(7)	Call function 
760:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
761:     LD  4,-8(1)	Pop left hand side into AC1 
762:     OR  3,4,3	OR operation store in AC 
763:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL p
764:     ST  1,-9(1)	Store fp in ghost frame for p 
765:     LD  3,-4(1)	Load variable c into accumulator 
766:     ST  3,-11(1)	Push parameter onto new frame 
767:     LD  3,-5(1)	Load variable d into accumulator 
768:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
769:    LDA  1,-9(1)	Move the fp to the new frame 
770:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
771:    JMP  7,-705(7)	Call function 
772:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
773:     LD  4,-8(1)	Pop left hand side into AC1 
774:     OR  3,4,3	OR operation store in AC 
775:     ST  3,-8(1)	Push left side onto temp variable stack 
* CALL p
776:     ST  1,-9(1)	Store fp in ghost frame for p 
777:     LD  3,-5(1)	Load variable d into accumulator 
778:     ST  3,-11(1)	Push parameter onto new frame 
779:     LD  3,-6(1)	Load variable e into accumulator 
780:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
781:    LDA  1,-9(1)	Move the fp to the new frame 
782:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
783:    JMP  7,-717(7)	Call function 
784:    LDA  3,0(2)	Save return result in accumulator 
* END CALL p
785:     LD  4,-8(1)	Pop left hand side into AC1 
786:     OR  3,4,3	OR operation store in AC 
* IF JUMP TO ELSE
788:    LDC  3,8(6)	Load of type int constant 
789:    LDA  2,0(3)	Copy accumulator to return register 
790:     LD  3,-1(1)	Load return address 
791:     LD  1,0(1)	Adjust fp 
792:    JMP  7,0(3)	Return 
* IF JUMP TO END
787:    JZR  3,6(7)	IF JMP TO ELSE 
794:    LDC  3,9(6)	Load of type int constant 
795:    LDA  2,0(3)	Copy accumulator to return register 
796:     LD  3,-1(1)	Load return address 
797:     LD  1,0(1)	Adjust fp 
798:    JMP  7,0(3)	Return 
793:    LDA  7,5(7)	JUMP TO END 
* END IF
741:    LDA  7,57(7)	JUMP TO END 
* END IF
665:    LDA  7,133(7)	JUMP TO END 
* END IF
619:    LDA  7,179(7)	JUMP TO END 
* END IF
433:    LDA  7,365(7)	JUMP TO END 
* END IF
425:    LDA  7,373(7)	JUMP TO END 
* END IF
369:    LDA  7,429(7)	JUMP TO END 
* END IF
333:    LDA  7,465(7)	JUMP TO END 
* END IF
301:    LDA  7,497(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
799:    LDC  2,0(6)	Set return value to 0 
800:     LD  3,-1(1)	Load return address 
801:     LD  1,0(1)	Adjust fp 
802:    JMP  7,0(3)	Return 
* END FUNCTION handtype
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
803:     ST  3,-1(1)	Store return address 
* COMPOUND
804:    LDC  3,10(6)	Load size of hands into AC 
805:     ST  3,-2(1)	Store size of hands in data memory 
806:    LDC  3,0(6)	Load of type int constant 
807:     ST  3,-20(1)	Assigning variable i in Local 
* Beginning WHILE statement
808:     LD  3,-20(1)	Load variable i into accumulator 
809:     ST  3,-21(1)	Push left side onto temp variable stack 
810:    LDC  3,10(6)	Load of type int constant 
811:     LD  4,-21(1)	Pop left hand side into AC1 
812:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
814:    LDA  3,-3(1)	Load base address of array hands 
815:     LD  3,-20(1)	Load variable i into accumulator 
816:     ST  3,-21(1)	Push array index onto temp stack 
817:    LDC  3,0(6)	Load of type int constant 
818:     LD  4,-21(1)	Pop array index into AC1 
819:    LDA  5,-3(1)	Load base address of array hands into AC2 
820:    SUB  5,5,4	Compute offset for array 
821:     ST  3,0(5)	Store variable hands from AC into loc from AC2 
822:     LD  3,-20(1)	Load variable i into accumulator 
823:     ST  3,-21(1)	Push left side onto temp variable stack 
824:    LDC  3,1(6)	Load of type int constant 
825:     LD  4,-21(1)	Pop left hand side into AC1 
826:    ADD  3,4,3	+ Operation 
827:     ST  3,-20(1)	Assigning variable i in Local 
* END COMPOUND
828:    JMP  7,-21(7)	Go to L1 
813:    JZR  3,15(7)	JMP if condition is false 
* End WHILE statement
829:    LDC  3,4(6)	Load of type int constant 
830:     ST  3,0(0)	Assigning variable numSuits in Global 
831:    LDC  3,6(6)	Load of type int constant 
832:     ST  3,-1(0)	Assigning variable numPips in Global 
833:     LD  3,-1(0)	Load variable numPips into accumulator 
834:     ST  3,-21(1)	Push left side onto temp variable stack 
835:     LD  3,0(0)	Load variable numSuits into accumulator 
836:     LD  4,-21(1)	Pop left hand side into AC1 
837:    MUL  3,4,3	* Multiplication Operation 
838:     ST  3,-21(1)	Push left side onto temp variable stack 
839:    LDC  3,1(6)	Load of type int constant 
840:     LD  4,-21(1)	Pop left hand side into AC1 
841:    SUB  3,4,3	- Subtraction Operation 
842:     ST  3,-2(0)	Assigning variable numCards in Global 
843:    LDC  3,0(6)	Load of type int constant 
844:     ST  3,-19(1)	Assigning variable possible in Local 
845:    LDC  3,0(6)	Load of type int constant 
846:     ST  3,-13(1)	Assigning variable a in Local 
* Beginning WHILE statement
847:     LD  3,-13(1)	Load variable a into accumulator 
848:     ST  3,-21(1)	Push left side onto temp variable stack 
849:     LD  3,-2(0)	Load variable numCards into accumulator 
850:     LD  4,-21(1)	Pop left hand side into AC1 
851:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* CALL output
853:     ST  1,-21(1)	Store fp in ghost frame for output 
854:     LD  3,-13(1)	Load variable a into accumulator 
855:     ST  3,-23(1)	Push parameter onto new frame 
* Begin call
856:    LDA  1,-21(1)	Move the fp to the new frame 
857:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
858:    JMP  7,-853(7)	Call function 
859:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
860:     ST  1,-21(1)	Store fp in ghost frame for outnl 
* Begin call
861:    LDA  1,-21(1)	Move the fp to the new frame 
862:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
863:    JMP  7,-830(7)	Call function 
864:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
865:     LD  3,-13(1)	Load variable a into accumulator 
866:     ST  3,-21(1)	Push left side onto temp variable stack 
867:    LDC  3,1(6)	Load of type int constant 
868:     LD  4,-21(1)	Pop left hand side into AC1 
869:    ADD  3,4,3	+ Operation 
870:     ST  3,-14(1)	Assigning variable b in Local 
* Beginning WHILE statement
871:     LD  3,-14(1)	Load variable b into accumulator 
872:     ST  3,-21(1)	Push left side onto temp variable stack 
873:     LD  3,-2(0)	Load variable numCards into accumulator 
874:     LD  4,-21(1)	Pop left hand side into AC1 
875:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
877:     LD  3,-14(1)	Load variable b into accumulator 
878:     ST  3,-21(1)	Push left side onto temp variable stack 
879:    LDC  3,1(6)	Load of type int constant 
880:     LD  4,-21(1)	Pop left hand side into AC1 
881:    ADD  3,4,3	+ Operation 
882:     ST  3,-15(1)	Assigning variable c in Local 
* Beginning WHILE statement
883:     LD  3,-15(1)	Load variable c into accumulator 
884:     ST  3,-21(1)	Push left side onto temp variable stack 
885:     LD  3,-2(0)	Load variable numCards into accumulator 
886:     LD  4,-21(1)	Pop left hand side into AC1 
887:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
889:     LD  3,-15(1)	Load variable c into accumulator 
890:     ST  3,-21(1)	Push left side onto temp variable stack 
891:    LDC  3,1(6)	Load of type int constant 
892:     LD  4,-21(1)	Pop left hand side into AC1 
893:    ADD  3,4,3	+ Operation 
894:     ST  3,-16(1)	Assigning variable d in Local 
* Beginning WHILE statement
895:     LD  3,-16(1)	Load variable d into accumulator 
896:     ST  3,-21(1)	Push left side onto temp variable stack 
897:     LD  3,-2(0)	Load variable numCards into accumulator 
898:     LD  4,-21(1)	Pop left hand side into AC1 
899:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
901:     LD  3,-16(1)	Load variable d into accumulator 
902:     ST  3,-21(1)	Push left side onto temp variable stack 
903:    LDC  3,1(6)	Load of type int constant 
904:     LD  4,-21(1)	Pop left hand side into AC1 
905:    ADD  3,4,3	+ Operation 
906:     ST  3,-17(1)	Assigning variable e in Local 
* Beginning WHILE statement
907:     LD  3,-17(1)	Load variable e into accumulator 
908:     ST  3,-21(1)	Push left side onto temp variable stack 
909:     LD  3,-2(0)	Load variable numCards into accumulator 
910:     LD  4,-21(1)	Pop left hand side into AC1 
911:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
913:     LD  3,-19(1)	Load variable possible into accumulator 
914:     ST  3,-21(1)	Push left side onto temp variable stack 
915:    LDC  3,1(6)	Load of type int constant 
916:     LD  4,-21(1)	Pop left hand side into AC1 
917:    ADD  3,4,3	+ Operation 
918:     ST  3,-19(1)	Assigning variable possible in Local 
* CALL handtype
919:     ST  1,-21(1)	Store fp in ghost frame for handtype 
920:     LD  3,-13(1)	Load variable a into accumulator 
921:     ST  3,-23(1)	Push parameter onto new frame 
922:     LD  3,-14(1)	Load variable b into accumulator 
923:     ST  3,-24(1)	Push parameter onto new frame 
924:     LD  3,-15(1)	Load variable c into accumulator 
925:     ST  3,-25(1)	Push parameter onto new frame 
926:     LD  3,-16(1)	Load variable d into accumulator 
927:     ST  3,-26(1)	Push parameter onto new frame 
928:     LD  3,-17(1)	Load variable e into accumulator 
929:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
930:    LDA  1,-21(1)	Move the fp to the new frame 
931:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
932:    JMP  7,-768(7)	Call function 
933:    LDA  3,0(2)	Save return result in accumulator 
* END CALL handtype
934:     ST  3,-18(1)	Assigning variable h in Local 
935:    LDA  3,-3(1)	Load base address of array hands 
936:     LD  3,-18(1)	Load variable h into accumulator 
937:     ST  3,-21(1)	Push array index onto temp stack 
938:    LDA  3,-3(1)	Load base address of array hands 
939:     LD  3,-18(1)	Load variable h into accumulator 
940:    LDA  5,-3(1)	Load base address of array hands into AC2 
941:    SUB  5,5,3	Compute offset for array 
942:     LD  3,0(5)	Load array element hands from AC into loc from AC2 
943:     ST  3,-22(1)	Push left side onto temp variable stack 
944:    LDC  3,1(6)	Load of type int constant 
945:     LD  4,-22(1)	Pop left hand side into AC1 
946:    ADD  3,4,3	+ Operation 
947:     LD  4,-21(1)	Pop array index into AC1 
948:    LDA  5,-3(1)	Load base address of array hands into AC2 
949:    SUB  5,5,4	Compute offset for array 
950:     ST  3,0(5)	Store variable hands from AC into loc from AC2 
951:     LD  4,-17(1)	Load lhs variable 
952:    LDA  3,1(4)	++ Increment accumulator operation 
953:     ST  3,-17(1)	Assigning variable e in Local 
* END COMPOUND
954:    JMP  7,-48(7)	Go to L1 
912:    JZR  3,42(7)	JMP if condition is false 
* End WHILE statement
955:     LD  4,-16(1)	Load lhs variable 
956:    LDA  3,1(4)	++ Increment accumulator operation 
957:     ST  3,-16(1)	Assigning variable d in Local 
* END COMPOUND
958:    JMP  7,-64(7)	Go to L1 
900:    JZR  3,58(7)	JMP if condition is false 
* End WHILE statement
959:     LD  4,-15(1)	Load lhs variable 
960:    LDA  3,1(4)	++ Increment accumulator operation 
961:     ST  3,-15(1)	Assigning variable c in Local 
* END COMPOUND
962:    JMP  7,-80(7)	Go to L1 
888:    JZR  3,74(7)	JMP if condition is false 
* End WHILE statement
963:     LD  4,-14(1)	Load lhs variable 
964:    LDA  3,1(4)	++ Increment accumulator operation 
965:     ST  3,-14(1)	Assigning variable b in Local 
* END COMPOUND
966:    JMP  7,-96(7)	Go to L1 
876:    JZR  3,90(7)	JMP if condition is false 
* End WHILE statement
967:     LD  4,-13(1)	Load lhs variable 
968:    LDA  3,1(4)	++ Increment accumulator operation 
969:     ST  3,-13(1)	Assigning variable a in Local 
* END COMPOUND
970:    JMP  7,-124(7)	Go to L1 
852:    JZR  3,118(7)	JMP if condition is false 
* End WHILE statement
971:    LDC  3,0(6)	Load of type int constant 
972:     ST  3,-18(1)	Assigning variable h in Local 
* Beginning WHILE statement
973:     LD  3,-18(1)	Load variable h into accumulator 
974:     ST  3,-21(1)	Push left side onto temp variable stack 
975:    LDC  3,10(6)	Load of type int constant 
976:     LD  4,-21(1)	Pop left hand side into AC1 
977:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
979:     ST  1,-21(1)	Store fp in ghost frame for output 
980:     LD  3,-18(1)	Load variable h into accumulator 
981:     ST  3,-23(1)	Push parameter onto new frame 
* Begin call
982:    LDA  1,-21(1)	Move the fp to the new frame 
983:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
984:    JMP  7,-979(7)	Call function 
985:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
986:     ST  1,-21(1)	Store fp in ghost frame for output 
987:    LDA  3,-3(1)	Load base address of array hands 
988:     LD  3,-18(1)	Load variable h into accumulator 
989:    LDA  5,-3(1)	Load base address of array hands into AC2 
990:    SUB  5,5,3	Compute offset for array 
991:     LD  3,0(5)	Load array element hands from AC into loc from AC2 
992:     ST  3,-23(1)	Push parameter onto new frame 
* Begin call
993:    LDA  1,-21(1)	Move the fp to the new frame 
994:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
995:    JMP  7,-990(7)	Call function 
996:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
997:     ST  1,-21(1)	Store fp in ghost frame for outnl 
* Begin call
998:    LDA  1,-21(1)	Move the fp to the new frame 
999:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
1000:    JMP  7,-967(7)	Call function 
1001:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
1002:     LD  3,-18(1)	Load variable h into accumulator 
1003:     ST  3,-21(1)	Push left side onto temp variable stack 
1004:    LDC  3,1(6)	Load of type int constant 
1005:     LD  4,-21(1)	Pop left hand side into AC1 
1006:    ADD  3,4,3	+ Operation 
1007:     ST  3,-18(1)	Assigning variable h in Local 
* END COMPOUND
1008:    JMP  7,-36(7)	Go to L1 
978:    JZR  3,30(7)	JMP if condition is false 
* End WHILE statement
1009:    LDC  3,0(6)	Load of type int constant 
1010:    LDA  2,0(3)	Copy accumulator to return register 
1011:     LD  3,-1(1)	Load return address 
1012:     LD  1,0(1)	Adjust fp 
1013:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
1014:    LDC  2,0(6)	Set return value to 0 
1015:     LD  3,-1(1)	Load return address 
1016:     LD  1,0(1)	Adjust fp 
1017:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,1017(7)	Jump to init [backpatch] 
* INIT
1018:    LDA  1,-3(0)	set first frame at end of globals 
1019:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
1020:    LDA  3,1(7)	Return address in ac 
1021:    JMP  7,-219(7)	Jump to main 
1022:   HALT  0,0,0	DONE! 
* END INIT
