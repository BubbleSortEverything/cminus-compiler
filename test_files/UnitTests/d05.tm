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
* FUNCTION main
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,213(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable a in Local 
 42:    LDC  3,11(6)	Load of type int constant 
 43:     ST  3,-3(1)	Assigning variable b in Local 
 44:    LDC  3,4133(6)	Load of type int constant 
 45:     ST  3,-4(1)	Assigning variable c in Local 
* CALL outputb
 46:     ST  1,-5(1)	Store fp in ghost frame for outputb 
 47:     LD  3,-2(1)	Load variable a into accumulator 
 48:     ST  3,-8(1)	Push left side onto temp variable stack 
 49:     LD  3,-3(1)	Load variable b into accumulator 
 50:     LD  4,-8(1)	Pop left hand side into AC1 
 51:    TGT  3,4,3	Greather than > operation store in AC 
 52:     ST  3,-8(1)	Push left side onto temp variable stack 
 53:     LD  3,-3(1)	Load variable b into accumulator 
 54:     ST  3,-9(1)	Push left side onto temp variable stack 
 55:     LD  3,-4(1)	Load variable c into accumulator 
 56:     LD  4,-9(1)	Pop left hand side into AC1 
 57:    TLE  3,4,3	LEQ <= operation store in AC 
 58:     ST  3,-9(1)	Push left side onto temp variable stack 
 59:     LD  3,-4(1)	Load variable c into accumulator 
 60:     ST  3,-10(1)	Push left side onto temp variable stack 
 61:     LD  3,-2(1)	Load variable a into accumulator 
 62:     LD  4,-10(1)	Pop left hand side into AC1 
 63:    TGE  3,4,3	GEQ >- operation store in AC 
 64:     LD  4,-9(1)	Pop left hand side into AC1 
 65:    AND  3,4,3	AND operation store in AC 
 66:     LD  4,-8(1)	Pop left hand side into AC1 
 67:     OR  3,4,3	OR operation store in AC 
 68:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-5(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-55(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 73:     ST  1,-5(1)	Store fp in ghost frame for outputb 
 74:     LD  3,-2(1)	Load variable a into accumulator 
 75:     ST  3,-8(1)	Push left side onto temp variable stack 
 76:     LD  3,-3(1)	Load variable b into accumulator 
 77:     LD  4,-8(1)	Pop left hand side into AC1 
 78:    TGT  3,4,3	Greather than > operation store in AC 
 79:     ST  3,-8(1)	Push left side onto temp variable stack 
 80:     LD  3,-3(1)	Load variable b into accumulator 
 81:     ST  3,-9(1)	Push left side onto temp variable stack 
 82:     LD  3,-4(1)	Load variable c into accumulator 
 83:     LD  4,-9(1)	Pop left hand side into AC1 
 84:    TLE  3,4,3	LEQ <= operation store in AC 
 85:     LD  4,-8(1)	Pop left hand side into AC1 
 86:    AND  3,4,3	AND operation store in AC 
 87:     ST  3,-8(1)	Push left side onto temp variable stack 
 88:     LD  3,-4(1)	Load variable c into accumulator 
 89:     ST  3,-9(1)	Push left side onto temp variable stack 
 90:     LD  3,-2(1)	Load variable a into accumulator 
 91:     LD  4,-9(1)	Pop left hand side into AC1 
 92:    TGE  3,4,3	GEQ >- operation store in AC 
 93:     LD  4,-8(1)	Pop left hand side into AC1 
 94:     OR  3,4,3	OR operation store in AC 
 95:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 96:    LDA  1,-5(1)	Move the fp to the new frame 
 97:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 98:    JMP  7,-82(7)	Call function 
 99:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
100:     ST  1,-5(1)	Store fp in ghost frame for outputb 
101:     LD  3,-2(1)	Load variable a into accumulator 
102:     ST  3,-8(1)	Push left side onto temp variable stack 
103:     LD  3,-3(1)	Load variable b into accumulator 
104:     LD  4,-8(1)	Pop left hand side into AC1 
105:    TGT  3,4,3	Greather than > operation store in AC 
106:     ST  3,-8(1)	Push left side onto temp variable stack 
107:     LD  3,-3(1)	Load variable b into accumulator 
108:     ST  3,-9(1)	Push left side onto temp variable stack 
109:     LD  3,-4(1)	Load variable c into accumulator 
110:     LD  4,-9(1)	Pop left hand side into AC1 
111:    TLE  3,4,3	LEQ <= operation store in AC 
112:     LD  4,-8(1)	Pop left hand side into AC1 
113:    AND  3,4,3	AND operation store in AC 
114:     ST  3,-8(1)	Push left side onto temp variable stack 
115:     LD  3,-4(1)	Load variable c into accumulator 
116:     ST  3,-9(1)	Push left side onto temp variable stack 
117:     LD  3,-2(1)	Load variable a into accumulator 
118:     LD  4,-9(1)	Pop left hand side into AC1 
119:    TGE  3,4,3	GEQ >- operation store in AC 
120:     ST  3,-9(1)	Push left side onto temp variable stack 
121:     LD  3,-4(1)	Load variable c into accumulator 
122:     ST  3,-10(1)	Push left side onto temp variable stack 
123:     LD  3,-2(1)	Load variable a into accumulator 
124:     LD  4,-10(1)	Pop left hand side into AC1 
125:    TGE  3,4,3	GEQ >- operation store in AC 
126:     LD  4,-9(1)	Pop left hand side into AC1 
127:    AND  3,4,3	AND operation store in AC 
128:     LD  4,-8(1)	Pop left hand side into AC1 
129:     OR  3,4,3	OR operation store in AC 
130:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
131:    LDA  1,-5(1)	Move the fp to the new frame 
132:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
133:    JMP  7,-117(7)	Call function 
134:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
135:     ST  1,-5(1)	Store fp in ghost frame for outputb 
136:     LD  3,-2(1)	Load variable a into accumulator 
137:     ST  3,-8(1)	Push left side onto temp variable stack 
138:     LD  3,-3(1)	Load variable b into accumulator 
139:     LD  4,-8(1)	Pop left hand side into AC1 
140:    TGT  3,4,3	Greather than > operation store in AC 
141:    LDC  4,1(6)	Load 1 into AC1 for not operation 
142:    TNE  3,4,3	Not ! operation store in AC 
143:     ST  3,-8(1)	Push left side onto temp variable stack 
144:     LD  3,-3(1)	Load variable b into accumulator 
145:     ST  3,-9(1)	Push left side onto temp variable stack 
146:     LD  3,-4(1)	Load variable c into accumulator 
147:     LD  4,-9(1)	Pop left hand side into AC1 
148:    TLE  3,4,3	LEQ <= operation store in AC 
149:     ST  3,-9(1)	Push left side onto temp variable stack 
150:     LD  3,-4(1)	Load variable c into accumulator 
151:     ST  3,-10(1)	Push left side onto temp variable stack 
152:     LD  3,-2(1)	Load variable a into accumulator 
153:     LD  4,-10(1)	Pop left hand side into AC1 
154:    TGE  3,4,3	GEQ >- operation store in AC 
155:     LD  4,-9(1)	Pop left hand side into AC1 
156:    AND  3,4,3	AND operation store in AC 
157:     LD  4,-8(1)	Pop left hand side into AC1 
158:     OR  3,4,3	OR operation store in AC 
159:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
160:    LDA  1,-5(1)	Move the fp to the new frame 
161:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
162:    JMP  7,-146(7)	Call function 
163:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
164:     ST  1,-5(1)	Store fp in ghost frame for outputb 
165:     LD  3,-2(1)	Load variable a into accumulator 
166:     ST  3,-8(1)	Push left side onto temp variable stack 
167:     LD  3,-3(1)	Load variable b into accumulator 
168:     LD  4,-8(1)	Pop left hand side into AC1 
169:    TGT  3,4,3	Greather than > operation store in AC 
170:    LDC  4,1(6)	Load 1 into AC1 for not operation 
171:    TNE  3,4,3	Not ! operation store in AC 
172:     ST  3,-8(1)	Push left side onto temp variable stack 
173:     LD  3,-3(1)	Load variable b into accumulator 
174:     ST  3,-9(1)	Push left side onto temp variable stack 
175:     LD  3,-4(1)	Load variable c into accumulator 
176:     LD  4,-9(1)	Pop left hand side into AC1 
177:    TLE  3,4,3	LEQ <= operation store in AC 
178:     LD  4,-8(1)	Pop left hand side into AC1 
179:    AND  3,4,3	AND operation store in AC 
180:     ST  3,-8(1)	Push left side onto temp variable stack 
181:     LD  3,-4(1)	Load variable c into accumulator 
182:     ST  3,-9(1)	Push left side onto temp variable stack 
183:     LD  3,-2(1)	Load variable a into accumulator 
184:     LD  4,-9(1)	Pop left hand side into AC1 
185:    TGE  3,4,3	GEQ >- operation store in AC 
186:     LD  4,-8(1)	Pop left hand side into AC1 
187:     OR  3,4,3	OR operation store in AC 
188:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
189:    LDA  1,-5(1)	Move the fp to the new frame 
190:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
191:    JMP  7,-175(7)	Call function 
192:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
193:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
194:    LDA  1,-5(1)	Move the fp to the new frame 
195:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
196:    JMP  7,-163(7)	Call function 
197:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
198:    LDC  3,213(6)	Load of type int constant 
199:     ST  3,-3(1)	Assigning variable b in Local 
200:    LDC  3,11(6)	Load of type int constant 
201:     ST  3,-4(1)	Assigning variable c in Local 
202:    LDC  3,4133(6)	Load of type int constant 
203:     ST  3,-2(1)	Assigning variable a in Local 
* CALL outputb
204:     ST  1,-5(1)	Store fp in ghost frame for outputb 
205:     LD  3,-2(1)	Load variable a into accumulator 
206:     ST  3,-8(1)	Push left side onto temp variable stack 
207:     LD  3,-3(1)	Load variable b into accumulator 
208:     LD  4,-8(1)	Pop left hand side into AC1 
209:    TGT  3,4,3	Greather than > operation store in AC 
210:     ST  3,-8(1)	Push left side onto temp variable stack 
211:     LD  3,-3(1)	Load variable b into accumulator 
212:     ST  3,-9(1)	Push left side onto temp variable stack 
213:     LD  3,-4(1)	Load variable c into accumulator 
214:     LD  4,-9(1)	Pop left hand side into AC1 
215:    TLE  3,4,3	LEQ <= operation store in AC 
216:     ST  3,-9(1)	Push left side onto temp variable stack 
217:     LD  3,-4(1)	Load variable c into accumulator 
218:     ST  3,-10(1)	Push left side onto temp variable stack 
219:     LD  3,-2(1)	Load variable a into accumulator 
220:     LD  4,-10(1)	Pop left hand side into AC1 
221:    TGE  3,4,3	GEQ >- operation store in AC 
222:     LD  4,-9(1)	Pop left hand side into AC1 
223:    AND  3,4,3	AND operation store in AC 
224:     LD  4,-8(1)	Pop left hand side into AC1 
225:     OR  3,4,3	OR operation store in AC 
226:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
227:    LDA  1,-5(1)	Move the fp to the new frame 
228:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
229:    JMP  7,-213(7)	Call function 
230:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
231:     ST  1,-5(1)	Store fp in ghost frame for outputb 
232:     LD  3,-2(1)	Load variable a into accumulator 
233:     ST  3,-8(1)	Push left side onto temp variable stack 
234:     LD  3,-3(1)	Load variable b into accumulator 
235:     LD  4,-8(1)	Pop left hand side into AC1 
236:    TGT  3,4,3	Greather than > operation store in AC 
237:     ST  3,-8(1)	Push left side onto temp variable stack 
238:     LD  3,-3(1)	Load variable b into accumulator 
239:     ST  3,-9(1)	Push left side onto temp variable stack 
240:     LD  3,-4(1)	Load variable c into accumulator 
241:     LD  4,-9(1)	Pop left hand side into AC1 
242:    TLE  3,4,3	LEQ <= operation store in AC 
243:     LD  4,-8(1)	Pop left hand side into AC1 
244:    AND  3,4,3	AND operation store in AC 
245:     ST  3,-8(1)	Push left side onto temp variable stack 
246:     LD  3,-4(1)	Load variable c into accumulator 
247:     ST  3,-9(1)	Push left side onto temp variable stack 
248:     LD  3,-2(1)	Load variable a into accumulator 
249:     LD  4,-9(1)	Pop left hand side into AC1 
250:    TGE  3,4,3	GEQ >- operation store in AC 
251:     LD  4,-8(1)	Pop left hand side into AC1 
252:     OR  3,4,3	OR operation store in AC 
253:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
254:    LDA  1,-5(1)	Move the fp to the new frame 
255:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
256:    JMP  7,-240(7)	Call function 
257:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
258:     ST  1,-5(1)	Store fp in ghost frame for outputb 
259:     LD  3,-2(1)	Load variable a into accumulator 
260:     ST  3,-8(1)	Push left side onto temp variable stack 
261:     LD  3,-3(1)	Load variable b into accumulator 
262:     LD  4,-8(1)	Pop left hand side into AC1 
263:    TGT  3,4,3	Greather than > operation store in AC 
264:     ST  3,-8(1)	Push left side onto temp variable stack 
265:     LD  3,-3(1)	Load variable b into accumulator 
266:     ST  3,-9(1)	Push left side onto temp variable stack 
267:     LD  3,-4(1)	Load variable c into accumulator 
268:     LD  4,-9(1)	Pop left hand side into AC1 
269:    TLE  3,4,3	LEQ <= operation store in AC 
270:     LD  4,-8(1)	Pop left hand side into AC1 
271:    AND  3,4,3	AND operation store in AC 
272:     ST  3,-8(1)	Push left side onto temp variable stack 
273:     LD  3,-4(1)	Load variable c into accumulator 
274:     ST  3,-9(1)	Push left side onto temp variable stack 
275:     LD  3,-2(1)	Load variable a into accumulator 
276:     LD  4,-9(1)	Pop left hand side into AC1 
277:    TGE  3,4,3	GEQ >- operation store in AC 
278:     ST  3,-9(1)	Push left side onto temp variable stack 
279:     LD  3,-4(1)	Load variable c into accumulator 
280:     ST  3,-10(1)	Push left side onto temp variable stack 
281:     LD  3,-2(1)	Load variable a into accumulator 
282:     LD  4,-10(1)	Pop left hand side into AC1 
283:    TGE  3,4,3	GEQ >- operation store in AC 
284:     LD  4,-9(1)	Pop left hand side into AC1 
285:    AND  3,4,3	AND operation store in AC 
286:     LD  4,-8(1)	Pop left hand side into AC1 
287:     OR  3,4,3	OR operation store in AC 
288:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
289:    LDA  1,-5(1)	Move the fp to the new frame 
290:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
291:    JMP  7,-275(7)	Call function 
292:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
293:     ST  1,-5(1)	Store fp in ghost frame for outputb 
294:     LD  3,-2(1)	Load variable a into accumulator 
295:     ST  3,-8(1)	Push left side onto temp variable stack 
296:     LD  3,-3(1)	Load variable b into accumulator 
297:     LD  4,-8(1)	Pop left hand side into AC1 
298:    TGT  3,4,3	Greather than > operation store in AC 
299:    LDC  4,1(6)	Load 1 into AC1 for not operation 
300:    TNE  3,4,3	Not ! operation store in AC 
301:     ST  3,-8(1)	Push left side onto temp variable stack 
302:     LD  3,-3(1)	Load variable b into accumulator 
303:     ST  3,-9(1)	Push left side onto temp variable stack 
304:     LD  3,-4(1)	Load variable c into accumulator 
305:     LD  4,-9(1)	Pop left hand side into AC1 
306:    TLE  3,4,3	LEQ <= operation store in AC 
307:     ST  3,-9(1)	Push left side onto temp variable stack 
308:     LD  3,-4(1)	Load variable c into accumulator 
309:     ST  3,-10(1)	Push left side onto temp variable stack 
310:     LD  3,-2(1)	Load variable a into accumulator 
311:     LD  4,-10(1)	Pop left hand side into AC1 
312:    TGE  3,4,3	GEQ >- operation store in AC 
313:     LD  4,-9(1)	Pop left hand side into AC1 
314:    AND  3,4,3	AND operation store in AC 
315:     LD  4,-8(1)	Pop left hand side into AC1 
316:     OR  3,4,3	OR operation store in AC 
317:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
318:    LDA  1,-5(1)	Move the fp to the new frame 
319:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
320:    JMP  7,-304(7)	Call function 
321:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
322:     ST  1,-5(1)	Store fp in ghost frame for outputb 
323:     LD  3,-2(1)	Load variable a into accumulator 
324:     ST  3,-8(1)	Push left side onto temp variable stack 
325:     LD  3,-3(1)	Load variable b into accumulator 
326:     LD  4,-8(1)	Pop left hand side into AC1 
327:    TGT  3,4,3	Greather than > operation store in AC 
328:    LDC  4,1(6)	Load 1 into AC1 for not operation 
329:    TNE  3,4,3	Not ! operation store in AC 
330:     ST  3,-8(1)	Push left side onto temp variable stack 
331:     LD  3,-3(1)	Load variable b into accumulator 
332:     ST  3,-9(1)	Push left side onto temp variable stack 
333:     LD  3,-4(1)	Load variable c into accumulator 
334:     LD  4,-9(1)	Pop left hand side into AC1 
335:    TLE  3,4,3	LEQ <= operation store in AC 
336:     LD  4,-8(1)	Pop left hand side into AC1 
337:    AND  3,4,3	AND operation store in AC 
338:     ST  3,-8(1)	Push left side onto temp variable stack 
339:     LD  3,-4(1)	Load variable c into accumulator 
340:     ST  3,-9(1)	Push left side onto temp variable stack 
341:     LD  3,-2(1)	Load variable a into accumulator 
342:     LD  4,-9(1)	Pop left hand side into AC1 
343:    TGE  3,4,3	GEQ >- operation store in AC 
344:     LD  4,-8(1)	Pop left hand side into AC1 
345:     OR  3,4,3	OR operation store in AC 
346:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
347:    LDA  1,-5(1)	Move the fp to the new frame 
348:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
349:    JMP  7,-333(7)	Call function 
350:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
351:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
352:    LDA  1,-5(1)	Move the fp to the new frame 
353:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
354:    JMP  7,-321(7)	Call function 
355:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
356:    LDC  3,11(6)	Load of type int constant 
357:     ST  3,-3(1)	Assigning variable b in Local 
358:    LDC  3,213(6)	Load of type int constant 
359:     ST  3,-4(1)	Assigning variable c in Local 
360:    LDC  3,4133(6)	Load of type int constant 
361:     ST  3,-2(1)	Assigning variable a in Local 
* CALL outputb
362:     ST  1,-5(1)	Store fp in ghost frame for outputb 
363:     LD  3,-2(1)	Load variable a into accumulator 
364:     ST  3,-8(1)	Push left side onto temp variable stack 
365:     LD  3,-3(1)	Load variable b into accumulator 
366:     LD  4,-8(1)	Pop left hand side into AC1 
367:    TGT  3,4,3	Greather than > operation store in AC 
368:     ST  3,-8(1)	Push left side onto temp variable stack 
369:     LD  3,-3(1)	Load variable b into accumulator 
370:     ST  3,-9(1)	Push left side onto temp variable stack 
371:     LD  3,-4(1)	Load variable c into accumulator 
372:     LD  4,-9(1)	Pop left hand side into AC1 
373:    TLE  3,4,3	LEQ <= operation store in AC 
374:     ST  3,-9(1)	Push left side onto temp variable stack 
375:     LD  3,-4(1)	Load variable c into accumulator 
376:     ST  3,-10(1)	Push left side onto temp variable stack 
377:     LD  3,-2(1)	Load variable a into accumulator 
378:     LD  4,-10(1)	Pop left hand side into AC1 
379:    TGE  3,4,3	GEQ >- operation store in AC 
380:     LD  4,-9(1)	Pop left hand side into AC1 
381:    AND  3,4,3	AND operation store in AC 
382:     LD  4,-8(1)	Pop left hand side into AC1 
383:     OR  3,4,3	OR operation store in AC 
384:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
385:    LDA  1,-5(1)	Move the fp to the new frame 
386:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
387:    JMP  7,-371(7)	Call function 
388:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
389:     ST  1,-5(1)	Store fp in ghost frame for outputb 
390:     LD  3,-2(1)	Load variable a into accumulator 
391:     ST  3,-8(1)	Push left side onto temp variable stack 
392:     LD  3,-3(1)	Load variable b into accumulator 
393:     LD  4,-8(1)	Pop left hand side into AC1 
394:    TGT  3,4,3	Greather than > operation store in AC 
395:     ST  3,-8(1)	Push left side onto temp variable stack 
396:     LD  3,-3(1)	Load variable b into accumulator 
397:     ST  3,-9(1)	Push left side onto temp variable stack 
398:     LD  3,-4(1)	Load variable c into accumulator 
399:     LD  4,-9(1)	Pop left hand side into AC1 
400:    TLE  3,4,3	LEQ <= operation store in AC 
401:     LD  4,-8(1)	Pop left hand side into AC1 
402:    AND  3,4,3	AND operation store in AC 
403:     ST  3,-8(1)	Push left side onto temp variable stack 
404:     LD  3,-4(1)	Load variable c into accumulator 
405:     ST  3,-9(1)	Push left side onto temp variable stack 
406:     LD  3,-2(1)	Load variable a into accumulator 
407:     LD  4,-9(1)	Pop left hand side into AC1 
408:    TGE  3,4,3	GEQ >- operation store in AC 
409:     LD  4,-8(1)	Pop left hand side into AC1 
410:     OR  3,4,3	OR operation store in AC 
411:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
412:    LDA  1,-5(1)	Move the fp to the new frame 
413:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
414:    JMP  7,-398(7)	Call function 
415:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
416:     ST  1,-5(1)	Store fp in ghost frame for outputb 
417:     LD  3,-2(1)	Load variable a into accumulator 
418:     ST  3,-8(1)	Push left side onto temp variable stack 
419:     LD  3,-3(1)	Load variable b into accumulator 
420:     LD  4,-8(1)	Pop left hand side into AC1 
421:    TGT  3,4,3	Greather than > operation store in AC 
422:     ST  3,-8(1)	Push left side onto temp variable stack 
423:     LD  3,-3(1)	Load variable b into accumulator 
424:     ST  3,-9(1)	Push left side onto temp variable stack 
425:     LD  3,-4(1)	Load variable c into accumulator 
426:     LD  4,-9(1)	Pop left hand side into AC1 
427:    TLE  3,4,3	LEQ <= operation store in AC 
428:     LD  4,-8(1)	Pop left hand side into AC1 
429:    AND  3,4,3	AND operation store in AC 
430:     ST  3,-8(1)	Push left side onto temp variable stack 
431:     LD  3,-4(1)	Load variable c into accumulator 
432:     ST  3,-9(1)	Push left side onto temp variable stack 
433:     LD  3,-2(1)	Load variable a into accumulator 
434:     LD  4,-9(1)	Pop left hand side into AC1 
435:    TGE  3,4,3	GEQ >- operation store in AC 
436:     ST  3,-9(1)	Push left side onto temp variable stack 
437:     LD  3,-4(1)	Load variable c into accumulator 
438:     ST  3,-10(1)	Push left side onto temp variable stack 
439:     LD  3,-2(1)	Load variable a into accumulator 
440:     LD  4,-10(1)	Pop left hand side into AC1 
441:    TGE  3,4,3	GEQ >- operation store in AC 
442:     LD  4,-9(1)	Pop left hand side into AC1 
443:    AND  3,4,3	AND operation store in AC 
444:     LD  4,-8(1)	Pop left hand side into AC1 
445:     OR  3,4,3	OR operation store in AC 
446:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
447:    LDA  1,-5(1)	Move the fp to the new frame 
448:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
449:    JMP  7,-433(7)	Call function 
450:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
451:     ST  1,-5(1)	Store fp in ghost frame for outputb 
452:     LD  3,-2(1)	Load variable a into accumulator 
453:     ST  3,-8(1)	Push left side onto temp variable stack 
454:     LD  3,-3(1)	Load variable b into accumulator 
455:     LD  4,-8(1)	Pop left hand side into AC1 
456:    TGT  3,4,3	Greather than > operation store in AC 
457:    LDC  4,1(6)	Load 1 into AC1 for not operation 
458:    TNE  3,4,3	Not ! operation store in AC 
459:     ST  3,-8(1)	Push left side onto temp variable stack 
460:     LD  3,-3(1)	Load variable b into accumulator 
461:     ST  3,-9(1)	Push left side onto temp variable stack 
462:     LD  3,-4(1)	Load variable c into accumulator 
463:     LD  4,-9(1)	Pop left hand side into AC1 
464:    TLE  3,4,3	LEQ <= operation store in AC 
465:     ST  3,-9(1)	Push left side onto temp variable stack 
466:     LD  3,-4(1)	Load variable c into accumulator 
467:     ST  3,-10(1)	Push left side onto temp variable stack 
468:     LD  3,-2(1)	Load variable a into accumulator 
469:     LD  4,-10(1)	Pop left hand side into AC1 
470:    TGE  3,4,3	GEQ >- operation store in AC 
471:     LD  4,-9(1)	Pop left hand side into AC1 
472:    AND  3,4,3	AND operation store in AC 
473:     LD  4,-8(1)	Pop left hand side into AC1 
474:     OR  3,4,3	OR operation store in AC 
475:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
476:    LDA  1,-5(1)	Move the fp to the new frame 
477:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
478:    JMP  7,-462(7)	Call function 
479:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
480:     ST  1,-5(1)	Store fp in ghost frame for outputb 
481:     LD  3,-2(1)	Load variable a into accumulator 
482:     ST  3,-8(1)	Push left side onto temp variable stack 
483:     LD  3,-3(1)	Load variable b into accumulator 
484:     LD  4,-8(1)	Pop left hand side into AC1 
485:    TGT  3,4,3	Greather than > operation store in AC 
486:    LDC  4,1(6)	Load 1 into AC1 for not operation 
487:    TNE  3,4,3	Not ! operation store in AC 
488:     ST  3,-8(1)	Push left side onto temp variable stack 
489:     LD  3,-3(1)	Load variable b into accumulator 
490:     ST  3,-9(1)	Push left side onto temp variable stack 
491:     LD  3,-4(1)	Load variable c into accumulator 
492:     LD  4,-9(1)	Pop left hand side into AC1 
493:    TLE  3,4,3	LEQ <= operation store in AC 
494:     LD  4,-8(1)	Pop left hand side into AC1 
495:    AND  3,4,3	AND operation store in AC 
496:     ST  3,-8(1)	Push left side onto temp variable stack 
497:     LD  3,-4(1)	Load variable c into accumulator 
498:     ST  3,-9(1)	Push left side onto temp variable stack 
499:     LD  3,-2(1)	Load variable a into accumulator 
500:     LD  4,-9(1)	Pop left hand side into AC1 
501:    TGE  3,4,3	GEQ >- operation store in AC 
502:     LD  4,-8(1)	Pop left hand side into AC1 
503:     OR  3,4,3	OR operation store in AC 
504:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
505:    LDA  1,-5(1)	Move the fp to the new frame 
506:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
507:    JMP  7,-491(7)	Call function 
508:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
509:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
510:    LDA  1,-5(1)	Move the fp to the new frame 
511:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
512:    JMP  7,-479(7)	Call function 
513:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
514:    LDC  2,0(6)	Set return value to 0 
515:     LD  3,-1(1)	Load return address 
516:     LD  1,0(1)	Adjust fp 
517:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,517(7)	Jump to init [backpatch] 
* INIT
518:    LDA  1,0(0)	set first frame at end of globals 
519:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
520:    LDA  3,1(7)	Return address in ac 
521:    JMP  7,-483(7)	Jump to main 
522:   HALT  0,0,0	DONE! 
* END INIT
