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
 40:    LDA  3,-1(0)	Load base address of array y 
 41:    LDC  3,0(6)	Load of type int constant 
 42:     ST  3,-6(1)	Push array index onto temp stack 
 43:    LDC  3,50(6)	Load of type int constant 
 44:     LD  4,-6(1)	Pop array index into AC1 
 45:    LDA  5,-1(0)	Load base address of array y into AC2 
 46:    SUB  5,5,4	Compute offset for array 
 47:     ST  3,0(5)	Store variable y from AC into loc from AC2 
 48:    LDA  3,-1(0)	Load base address of array y 
 49:    LDC  3,5(6)	Load of type int constant 
 50:     ST  3,-6(1)	Push array index onto temp stack 
 51:    LDC  3,1(6)	Load of type int constant 
 52:     LD  4,-6(1)	Pop array index into AC1 
 53:    LDA  5,-1(0)	Load base address of array y into AC2 
 54:    SUB  5,5,4	Compute offset for array 
 55:     ST  3,0(5)	Store variable y from AC into loc from AC2 
 56:    LDA  3,-1(0)	Load base address of array y 
 57:    LDC  3,8(6)	Load of type int constant 
 58:     ST  3,-6(1)	Push array index onto temp stack 
 59:    LDC  3,2(6)	Load of type int constant 
 60:     LD  4,-6(1)	Pop array index into AC1 
 61:    LDA  5,-1(0)	Load base address of array y into AC2 
 62:    SUB  5,5,4	Compute offset for array 
 63:     ST  3,0(5)	Store variable y from AC into loc from AC2 
 64:    LDC  3,50(6)	Load of type int constant 
 65:     ST  3,-2(1)	Assigning variable a in Local 
 66:    LDC  3,1(6)	Load of type int constant 
 67:     ST  3,-3(1)	Assigning variable b in Local 
 68:    LDC  3,8(6)	Load of type int constant 
 69:     ST  3,-4(1)	Assigning variable c in Local 
 70:    LDC  3,0(6)	Load of type bool constant 
 71:     ST  3,-11(0)	Assigning variable x in Global 
 72:    LDC  3,1(6)	Load of type bool constant 
 73:     ST  3,-5(1)	Assigning variable z in Local 
* CALL outputb
 74:     ST  1,-6(1)	Store fp in ghost frame for outputb 
 75:     LD  3,-2(1)	Load variable a into accumulator 
 76:     ST  3,-9(1)	Push left side onto temp variable stack 
 77:    LDC  3,1(6)	Load of type int constant 
 78:     LD  4,-9(1)	Pop left hand side into AC1 
 79:    TLE  3,4,3	LEQ <= operation store in AC 
 80:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 81:    LDA  1,-6(1)	Move the fp to the new frame 
 82:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 83:    JMP  7,-67(7)	Call function 
 84:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 85:     ST  1,-6(1)	Store fp in ghost frame for outputb 
 86:     LD  3,-3(1)	Load variable b into accumulator 
 87:     ST  3,-9(1)	Push left side onto temp variable stack 
 88:    LDC  3,50(6)	Load of type int constant 
 89:     LD  4,-9(1)	Pop left hand side into AC1 
 90:    TLE  3,4,3	LEQ <= operation store in AC 
 91:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 92:    LDA  1,-6(1)	Move the fp to the new frame 
 93:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 94:    JMP  7,-78(7)	Call function 
 95:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 96:     ST  1,-6(1)	Store fp in ghost frame for outputb 
 97:    LDC  3,50(6)	Load of type int constant 
 98:     ST  3,-9(1)	Push left side onto temp variable stack 
 99:    LDC  3,50(6)	Load of type int constant 
100:     LD  4,-9(1)	Pop left hand side into AC1 
101:    TLE  3,4,3	LEQ <= operation store in AC 
102:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
103:    LDA  1,-6(1)	Move the fp to the new frame 
104:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
105:    JMP  7,-89(7)	Call function 
106:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
107:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
108:    LDA  1,-6(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-77(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
112:     ST  1,-6(1)	Store fp in ghost frame for outputb 
113:    LDC  3,50(6)	Load of type int constant 
114:     ST  3,-9(1)	Push left side onto temp variable stack 
115:    LDC  3,1(6)	Load of type int constant 
116:     LD  4,-9(1)	Pop left hand side into AC1 
117:    TLT  3,4,3	Less than < operation store in AC 
118:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
119:    LDA  1,-6(1)	Move the fp to the new frame 
120:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
121:    JMP  7,-105(7)	Call function 
122:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
123:     ST  1,-6(1)	Store fp in ghost frame for outputb 
124:     LD  3,-3(1)	Load variable b into accumulator 
125:     ST  3,-9(1)	Push left side onto temp variable stack 
126:     LD  3,-2(1)	Load variable a into accumulator 
127:     LD  4,-9(1)	Pop left hand side into AC1 
128:    TLT  3,4,3	Less than < operation store in AC 
129:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
130:    LDA  1,-6(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-116(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
134:     ST  1,-6(1)	Store fp in ghost frame for outputb 
135:     LD  3,-2(1)	Load variable a into accumulator 
136:     ST  3,-9(1)	Push left side onto temp variable stack 
137:     LD  3,-2(1)	Load variable a into accumulator 
138:     LD  4,-9(1)	Pop left hand side into AC1 
139:    TLT  3,4,3	Less than < operation store in AC 
140:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
141:    LDA  1,-6(1)	Move the fp to the new frame 
142:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
143:    JMP  7,-127(7)	Call function 
144:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
145:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
146:    LDA  1,-6(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-115(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
150:     ST  1,-6(1)	Store fp in ghost frame for outputb 
151:    LDC  3,50(6)	Load of type int constant 
152:     ST  3,-9(1)	Push left side onto temp variable stack 
153:    LDC  3,1(6)	Load of type int constant 
154:     LD  4,-9(1)	Pop left hand side into AC1 
155:    TGT  3,4,3	Greather than > operation store in AC 
156:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
157:    LDA  1,-6(1)	Move the fp to the new frame 
158:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
159:    JMP  7,-143(7)	Call function 
160:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
161:     ST  1,-6(1)	Store fp in ghost frame for outputb 
162:    LDC  3,1(6)	Load of type int constant 
163:     ST  3,-9(1)	Push left side onto temp variable stack 
164:    LDC  3,50(6)	Load of type int constant 
165:     LD  4,-9(1)	Pop left hand side into AC1 
166:    TGT  3,4,3	Greather than > operation store in AC 
167:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
168:    LDA  1,-6(1)	Move the fp to the new frame 
169:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
170:    JMP  7,-154(7)	Call function 
171:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
172:     ST  1,-6(1)	Store fp in ghost frame for outputb 
173:    LDC  3,50(6)	Load of type int constant 
174:     ST  3,-9(1)	Push left side onto temp variable stack 
175:    LDC  3,50(6)	Load of type int constant 
176:     LD  4,-9(1)	Pop left hand side into AC1 
177:    TGT  3,4,3	Greather than > operation store in AC 
178:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
179:    LDA  1,-6(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-165(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
183:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
184:    LDA  1,-6(1)	Move the fp to the new frame 
185:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
186:    JMP  7,-153(7)	Call function 
187:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
188:     ST  1,-6(1)	Store fp in ghost frame for outputb 
189:    LDC  3,50(6)	Load of type int constant 
190:     ST  3,-9(1)	Push left side onto temp variable stack 
191:    LDC  3,1(6)	Load of type int constant 
192:     LD  4,-9(1)	Pop left hand side into AC1 
193:    TGE  3,4,3	GEQ >- operation store in AC 
194:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
195:    LDA  1,-6(1)	Move the fp to the new frame 
196:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
197:    JMP  7,-181(7)	Call function 
198:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
199:     ST  1,-6(1)	Store fp in ghost frame for outputb 
200:    LDC  3,1(6)	Load of type int constant 
201:     ST  3,-9(1)	Push left side onto temp variable stack 
202:    LDC  3,50(6)	Load of type int constant 
203:     LD  4,-9(1)	Pop left hand side into AC1 
204:    TGE  3,4,3	GEQ >- operation store in AC 
205:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
206:    LDA  1,-6(1)	Move the fp to the new frame 
207:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
208:    JMP  7,-192(7)	Call function 
209:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
210:     ST  1,-6(1)	Store fp in ghost frame for outputb 
211:    LDC  3,50(6)	Load of type int constant 
212:     ST  3,-9(1)	Push left side onto temp variable stack 
213:    LDC  3,50(6)	Load of type int constant 
214:     LD  4,-9(1)	Pop left hand side into AC1 
215:    TGE  3,4,3	GEQ >- operation store in AC 
216:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
217:    LDA  1,-6(1)	Move the fp to the new frame 
218:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
219:    JMP  7,-203(7)	Call function 
220:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
221:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
222:    LDA  1,-6(1)	Move the fp to the new frame 
223:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
224:    JMP  7,-191(7)	Call function 
225:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
226:     ST  1,-6(1)	Store fp in ghost frame for outputb 
227:    LDA  3,-1(0)	Load base address of array y 
228:    LDC  3,0(6)	Load of type int constant 
229:    LDA  5,-1(0)	Load base address of array y into AC2 
230:    SUB  5,5,3	Compute offset for array 
231:     LD  3,0(5)	Load array element y from AC into loc from AC2 
232:     ST  3,-9(1)	Push left side onto temp variable stack 
233:     LD  3,-3(1)	Load variable b into accumulator 
234:     LD  4,-9(1)	Pop left hand side into AC1 
235:    TEQ  3,4,3	== Equality Operation 
236:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
237:    LDA  1,-6(1)	Move the fp to the new frame 
238:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
239:    JMP  7,-223(7)	Call function 
240:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
241:     ST  1,-6(1)	Store fp in ghost frame for outputb 
242:     LD  3,-2(1)	Load variable a into accumulator 
243:     ST  3,-9(1)	Push left side onto temp variable stack 
244:     LD  3,-3(1)	Load variable b into accumulator 
245:     LD  4,-9(1)	Pop left hand side into AC1 
246:    TEQ  3,4,3	== Equality Operation 
247:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
248:    LDA  1,-6(1)	Move the fp to the new frame 
249:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
250:    JMP  7,-234(7)	Call function 
251:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
252:     ST  1,-6(1)	Store fp in ghost frame for outputb 
253:     LD  3,-3(1)	Load variable b into accumulator 
254:     ST  3,-9(1)	Push left side onto temp variable stack 
255:     LD  3,-3(1)	Load variable b into accumulator 
256:     LD  4,-9(1)	Pop left hand side into AC1 
257:    TEQ  3,4,3	== Equality Operation 
258:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
259:    LDA  1,-6(1)	Move the fp to the new frame 
260:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
261:    JMP  7,-245(7)	Call function 
262:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
263:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
264:    LDA  1,-6(1)	Move the fp to the new frame 
265:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
266:    JMP  7,-233(7)	Call function 
267:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
268:     ST  1,-6(1)	Store fp in ghost frame for outputb 
269:    LDA  3,-1(0)	Load base address of array y 
270:    LDC  3,0(6)	Load of type int constant 
271:    LDA  5,-1(0)	Load base address of array y into AC2 
272:    SUB  5,5,3	Compute offset for array 
273:     LD  3,0(5)	Load array element y from AC into loc from AC2 
274:     ST  3,-9(1)	Push left side onto temp variable stack 
275:     LD  3,-2(1)	Load variable a into accumulator 
276:     LD  4,-9(1)	Pop left hand side into AC1 
277:    TNE  3,4,3	!= Equality Operation 
278:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
279:    LDA  1,-6(1)	Move the fp to the new frame 
280:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
281:    JMP  7,-265(7)	Call function 
282:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
283:     ST  1,-6(1)	Store fp in ghost frame for outputb 
284:    LDA  3,-1(0)	Load base address of array y 
285:    LDC  3,0(6)	Load of type int constant 
286:    LDA  5,-1(0)	Load base address of array y into AC2 
287:    SUB  5,5,3	Compute offset for array 
288:     LD  3,0(5)	Load array element y from AC into loc from AC2 
289:     ST  3,-9(1)	Push left side onto temp variable stack 
290:     LD  3,-3(1)	Load variable b into accumulator 
291:     LD  4,-9(1)	Pop left hand side into AC1 
292:    TNE  3,4,3	!= Equality Operation 
293:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
294:    LDA  1,-6(1)	Move the fp to the new frame 
295:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
296:    JMP  7,-280(7)	Call function 
297:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
298:     ST  1,-6(1)	Store fp in ghost frame for outputb 
299:     LD  3,-2(1)	Load variable a into accumulator 
300:     ST  3,-9(1)	Push left side onto temp variable stack 
301:     LD  3,-3(1)	Load variable b into accumulator 
302:     LD  4,-9(1)	Pop left hand side into AC1 
303:    TNE  3,4,3	!= Equality Operation 
304:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
305:    LDA  1,-6(1)	Move the fp to the new frame 
306:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
307:    JMP  7,-291(7)	Call function 
308:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
309:     ST  1,-6(1)	Store fp in ghost frame for outputb 
310:     LD  3,-3(1)	Load variable b into accumulator 
311:     ST  3,-9(1)	Push left side onto temp variable stack 
312:     LD  3,-3(1)	Load variable b into accumulator 
313:     LD  4,-9(1)	Pop left hand side into AC1 
314:    TNE  3,4,3	!= Equality Operation 
315:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
316:    LDA  1,-6(1)	Move the fp to the new frame 
317:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
318:    JMP  7,-302(7)	Call function 
319:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
320:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
321:    LDA  1,-6(1)	Move the fp to the new frame 
322:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
323:    JMP  7,-290(7)	Call function 
324:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
325:     ST  1,-6(1)	Store fp in ghost frame for outputb 
326:    LDC  3,1(6)	Load of type bool constant 
327:     ST  3,-9(1)	Push left side onto temp variable stack 
328:    LDC  3,1(6)	Load of type bool constant 
329:     LD  4,-9(1)	Pop left hand side into AC1 
330:    AND  3,4,3	AND operation store in AC 
331:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
332:    LDA  1,-6(1)	Move the fp to the new frame 
333:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
334:    JMP  7,-318(7)	Call function 
335:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
336:     ST  1,-6(1)	Store fp in ghost frame for outputb 
337:    LDC  3,1(6)	Load of type bool constant 
338:     ST  3,-9(1)	Push left side onto temp variable stack 
339:    LDC  3,0(6)	Load of type bool constant 
340:     LD  4,-9(1)	Pop left hand side into AC1 
341:    AND  3,4,3	AND operation store in AC 
342:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
343:    LDA  1,-6(1)	Move the fp to the new frame 
344:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
345:    JMP  7,-329(7)	Call function 
346:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
347:     ST  1,-6(1)	Store fp in ghost frame for outputb 
348:    LDC  3,0(6)	Load of type bool constant 
349:     ST  3,-9(1)	Push left side onto temp variable stack 
350:    LDC  3,1(6)	Load of type bool constant 
351:     LD  4,-9(1)	Pop left hand side into AC1 
352:    AND  3,4,3	AND operation store in AC 
353:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
354:    LDA  1,-6(1)	Move the fp to the new frame 
355:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
356:    JMP  7,-340(7)	Call function 
357:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
358:     ST  1,-6(1)	Store fp in ghost frame for outputb 
359:    LDC  3,0(6)	Load of type bool constant 
360:     ST  3,-9(1)	Push left side onto temp variable stack 
361:    LDC  3,0(6)	Load of type bool constant 
362:     LD  4,-9(1)	Pop left hand side into AC1 
363:    AND  3,4,3	AND operation store in AC 
364:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
365:    LDA  1,-6(1)	Move the fp to the new frame 
366:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
367:    JMP  7,-351(7)	Call function 
368:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
369:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
370:    LDA  1,-6(1)	Move the fp to the new frame 
371:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
372:    JMP  7,-339(7)	Call function 
373:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
374:     ST  1,-6(1)	Store fp in ghost frame for outputb 
375:    LDC  3,1(6)	Load of type bool constant 
376:     ST  3,-9(1)	Push left side onto temp variable stack 
377:    LDC  3,1(6)	Load of type bool constant 
378:     LD  4,-9(1)	Pop left hand side into AC1 
379:     OR  3,4,3	OR operation store in AC 
380:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
381:    LDA  1,-6(1)	Move the fp to the new frame 
382:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
383:    JMP  7,-367(7)	Call function 
384:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
385:     ST  1,-6(1)	Store fp in ghost frame for outputb 
386:     LD  3,-5(1)	Load variable z into accumulator 
387:     ST  3,-9(1)	Push left side onto temp variable stack 
388:    LDC  3,0(6)	Load of type bool constant 
389:     LD  4,-9(1)	Pop left hand side into AC1 
390:     OR  3,4,3	OR operation store in AC 
391:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
392:    LDA  1,-6(1)	Move the fp to the new frame 
393:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
394:    JMP  7,-378(7)	Call function 
395:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
396:     ST  1,-6(1)	Store fp in ghost frame for outputb 
397:    LDC  3,0(6)	Load of type bool constant 
398:     ST  3,-9(1)	Push left side onto temp variable stack 
399:    LDC  3,1(6)	Load of type bool constant 
400:     LD  4,-9(1)	Pop left hand side into AC1 
401:     OR  3,4,3	OR operation store in AC 
402:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
403:    LDA  1,-6(1)	Move the fp to the new frame 
404:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
405:    JMP  7,-389(7)	Call function 
406:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
407:     ST  1,-6(1)	Store fp in ghost frame for outputb 
408:    LDC  3,0(6)	Load of type bool constant 
409:     ST  3,-9(1)	Push left side onto temp variable stack 
410:    LDC  3,0(6)	Load of type bool constant 
411:     LD  4,-9(1)	Pop left hand side into AC1 
412:     OR  3,4,3	OR operation store in AC 
413:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
414:    LDA  1,-6(1)	Move the fp to the new frame 
415:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
416:    JMP  7,-400(7)	Call function 
417:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
418:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
419:    LDA  1,-6(1)	Move the fp to the new frame 
420:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
421:    JMP  7,-388(7)	Call function 
422:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
423:     ST  1,-6(1)	Store fp in ghost frame for outputb 
424:    LDC  3,1(6)	Load of type bool constant 
425:    LDC  4,1(6)	Load 1 into AC1 for not operation 
426:    TNE  3,4,3	Not ! operation store in AC 
427:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
428:    LDA  1,-6(1)	Move the fp to the new frame 
429:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
430:    JMP  7,-414(7)	Call function 
431:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
432:     ST  1,-6(1)	Store fp in ghost frame for outputb 
433:     LD  3,-11(0)	Load variable x into accumulator 
434:    LDC  4,1(6)	Load 1 into AC1 for not operation 
435:    TNE  3,4,3	Not ! operation store in AC 
436:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
437:    LDA  1,-6(1)	Move the fp to the new frame 
438:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
439:    JMP  7,-423(7)	Call function 
440:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
441:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
442:    LDA  1,-6(1)	Move the fp to the new frame 
443:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
444:    JMP  7,-411(7)	Call function 
445:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
446:     ST  1,-6(1)	Store fp in ghost frame for output 
447:    LDC  3,5(6)	Load of type int constant 
448:     ST  3,-9(1)	Push left side onto temp variable stack 
449:    LDC  3,50(6)	Load of type int constant 
450:     LD  4,-9(1)	Pop left hand side into AC1 
451:    ADD  3,4,3	+ Operation 
452:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
453:    LDA  1,-6(1)	Move the fp to the new frame 
454:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
455:    JMP  7,-450(7)	Call function 
456:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
457:     ST  1,-6(1)	Store fp in ghost frame for output 
458:    LDA  3,-1(0)	Load base address of array y 
459:     LD  3,-4(1)	Load variable c into accumulator 
460:    LDA  5,-1(0)	Load base address of array y into AC2 
461:    SUB  5,5,3	Compute offset for array 
462:     LD  3,0(5)	Load array element y from AC into loc from AC2 
463:     ST  3,-9(1)	Push left side onto temp variable stack 
464:    LDC  3,50(6)	Load of type int constant 
465:     LD  4,-9(1)	Pop left hand side into AC1 
466:    ADD  3,4,3	+ Operation 
467:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
468:    LDA  1,-6(1)	Move the fp to the new frame 
469:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
470:    JMP  7,-465(7)	Call function 
471:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
472:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
473:    LDA  1,-6(1)	Move the fp to the new frame 
474:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
475:    JMP  7,-442(7)	Call function 
476:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
477:     ST  1,-6(1)	Store fp in ghost frame for output 
478:    LDC  3,5(6)	Load of type int constant 
479:     ST  3,-9(1)	Push left side onto temp variable stack 
480:    LDC  3,50(6)	Load of type int constant 
481:     LD  4,-9(1)	Pop left hand side into AC1 
482:    SUB  3,4,3	- Subtraction Operation 
483:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
484:    LDA  1,-6(1)	Move the fp to the new frame 
485:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
486:    JMP  7,-481(7)	Call function 
487:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
488:     ST  1,-6(1)	Store fp in ghost frame for output 
489:    LDC  3,30(6)	Load of type int constant 
490:     ST  3,-9(1)	Push left side onto temp variable stack 
491:    LDC  3,5(6)	Load of type int constant 
492:     LD  4,-9(1)	Pop left hand side into AC1 
493:    SUB  3,4,3	- Subtraction Operation 
494:     ST  3,-9(1)	Push left side onto temp variable stack 
495:    LDC  3,50(6)	Load of type int constant 
496:     LD  4,-9(1)	Pop left hand side into AC1 
497:    SUB  3,4,3	- Subtraction Operation 
498:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
499:    LDA  1,-6(1)	Move the fp to the new frame 
500:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
501:    JMP  7,-496(7)	Call function 
502:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
503:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
504:    LDA  1,-6(1)	Move the fp to the new frame 
505:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
506:    JMP  7,-473(7)	Call function 
507:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
508:     ST  1,-6(1)	Store fp in ghost frame for output 
509:     LD  3,-2(1)	Load variable a into accumulator 
510:    NEG  3,3,0	- Change Sign Operation 
511:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
512:    LDA  1,-6(1)	Move the fp to the new frame 
513:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
514:    JMP  7,-509(7)	Call function 
515:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
516:     ST  1,-6(1)	Store fp in ghost frame for output 
517:    LDC  3,0(6)	Load of type int constant 
518:    NEG  3,3,0	- Change Sign Operation 
519:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
520:    LDA  1,-6(1)	Move the fp to the new frame 
521:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
522:    JMP  7,-517(7)	Call function 
523:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
524:     ST  1,-6(1)	Store fp in ghost frame for output 
525:    LDC  3,1(6)	Load of type int constant 
526:    NEG  3,3,0	- Change Sign Operation 
527:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
528:    LDA  1,-6(1)	Move the fp to the new frame 
529:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
530:    JMP  7,-525(7)	Call function 
531:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
532:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
533:    LDA  1,-6(1)	Move the fp to the new frame 
534:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
535:    JMP  7,-502(7)	Call function 
536:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
537:     ST  1,-6(1)	Store fp in ghost frame for output 
538:    LDC  3,2(6)	Load of type int constant 
539:     ST  3,-9(1)	Push left side onto temp variable stack 
540:    LDC  3,3(6)	Load of type int constant 
541:     LD  4,-9(1)	Pop left hand side into AC1 
542:    MUL  3,4,3	* Multiplication Operation 
543:     ST  3,-9(1)	Push left side onto temp variable stack 
544:    LDC  3,5(6)	Load of type int constant 
545:     LD  4,-9(1)	Pop left hand side into AC1 
546:    MUL  3,4,3	* Multiplication Operation 
547:     ST  3,-9(1)	Push left side onto temp variable stack 
548:    LDC  3,7(6)	Load of type int constant 
549:     LD  4,-9(1)	Pop left hand side into AC1 
550:    MUL  3,4,3	* Multiplication Operation 
551:     ST  3,-9(1)	Push left side onto temp variable stack 
552:    LDC  3,11(6)	Load of type int constant 
553:     LD  4,-9(1)	Pop left hand side into AC1 
554:    MUL  3,4,3	* Multiplication Operation 
555:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
556:    LDA  1,-6(1)	Move the fp to the new frame 
557:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
558:    JMP  7,-553(7)	Call function 
559:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
560:     ST  1,-6(1)	Store fp in ghost frame for output 
561:    LDC  3,50(6)	Load of type int constant 
562:     ST  3,-9(1)	Push left side onto temp variable stack 
563:    LDA  3,-1(0)	Load base address of array y 
564:    LDC  3,8(6)	Load of type int constant 
565:    LDA  5,-1(0)	Load base address of array y into AC2 
566:    SUB  5,5,3	Compute offset for array 
567:     LD  3,0(5)	Load array element y from AC into loc from AC2 
568:     LD  4,-9(1)	Pop left hand side into AC1 
569:    MUL  3,4,3	* Multiplication Operation 
570:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
571:    LDA  1,-6(1)	Move the fp to the new frame 
572:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
573:    JMP  7,-568(7)	Call function 
574:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
575:     ST  1,-6(1)	Store fp in ghost frame for output 
576:    LDA  3,-1(0)	Load base address of array y 
577:    LDC  3,8(6)	Load of type int constant 
578:    LDA  5,-1(0)	Load base address of array y into AC2 
579:    SUB  5,5,3	Compute offset for array 
580:     LD  3,0(5)	Load array element y from AC into loc from AC2 
581:     ST  3,-9(1)	Push left side onto temp variable stack 
582:    LDC  3,50(6)	Load of type int constant 
583:     LD  4,-9(1)	Pop left hand side into AC1 
584:    MUL  3,4,3	* Multiplication Operation 
585:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
586:    LDA  1,-6(1)	Move the fp to the new frame 
587:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
588:    JMP  7,-583(7)	Call function 
589:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
590:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
591:    LDA  1,-6(1)	Move the fp to the new frame 
592:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
593:    JMP  7,-560(7)	Call function 
594:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
595:     ST  1,-6(1)	Store fp in ghost frame for output 
596:    LDC  3,50(6)	Load of type int constant 
597:     ST  3,-9(1)	Push left side onto temp variable stack 
598:    LDA  3,-1(0)	Load base address of array y 
599:    LDC  3,8(6)	Load of type int constant 
600:    LDA  5,-1(0)	Load base address of array y into AC2 
601:    SUB  5,5,3	Compute offset for array 
602:     LD  3,0(5)	Load array element y from AC into loc from AC2 
603:     LD  4,-9(1)	Pop left hand side into AC1 
604:    DIV  3,4,3	/ Division operation 
605:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
606:    LDA  1,-6(1)	Move the fp to the new frame 
607:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
608:    JMP  7,-603(7)	Call function 
609:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
610:     ST  1,-6(1)	Store fp in ghost frame for output 
611:    LDA  3,-1(0)	Load base address of array y 
612:    LDC  3,8(6)	Load of type int constant 
613:    LDA  5,-1(0)	Load base address of array y into AC2 
614:    SUB  5,5,3	Compute offset for array 
615:     LD  3,0(5)	Load array element y from AC into loc from AC2 
616:     ST  3,-9(1)	Push left side onto temp variable stack 
617:    LDC  3,50(6)	Load of type int constant 
618:     LD  4,-9(1)	Pop left hand side into AC1 
619:    DIV  3,4,3	/ Division operation 
620:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
621:    LDA  1,-6(1)	Move the fp to the new frame 
622:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
623:    JMP  7,-618(7)	Call function 
624:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
625:     ST  1,-6(1)	Store fp in ghost frame for output 
626:    LDA  3,-1(0)	Load base address of array y 
627:    LDC  3,8(6)	Load of type int constant 
628:    LDA  5,-1(0)	Load base address of array y into AC2 
629:    SUB  5,5,3	Compute offset for array 
630:     LD  3,0(5)	Load array element y from AC into loc from AC2 
631:     ST  3,-9(1)	Push left side onto temp variable stack 
632:     LD  3,-3(1)	Load variable b into accumulator 
633:     LD  4,-9(1)	Pop left hand side into AC1 
634:    DIV  3,4,3	/ Division operation 
635:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
636:    LDA  1,-6(1)	Move the fp to the new frame 
637:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
638:    JMP  7,-633(7)	Call function 
639:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
640:     ST  1,-6(1)	Store fp in ghost frame for output 
641:    LDC  3,210(6)	Load of type int constant 
642:     ST  3,-9(1)	Push left side onto temp variable stack 
643:    LDC  3,7(6)	Load of type int constant 
644:     LD  4,-9(1)	Pop left hand side into AC1 
645:    DIV  3,4,3	/ Division operation 
646:     ST  3,-9(1)	Push left side onto temp variable stack 
647:    LDC  3,3(6)	Load of type int constant 
648:     LD  4,-9(1)	Pop left hand side into AC1 
649:    DIV  3,4,3	/ Division operation 
650:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
651:    LDA  1,-6(1)	Move the fp to the new frame 
652:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
653:    JMP  7,-648(7)	Call function 
654:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
655:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
656:    LDA  1,-6(1)	Move the fp to the new frame 
657:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
658:    JMP  7,-625(7)	Call function 
659:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
660:     ST  1,-6(1)	Store fp in ghost frame for output 
661:    LDC  3,211(6)	Load of type int constant 
662:     ST  3,-9(1)	Push left side onto temp variable stack 
663:    LDC  3,7(6)	Load of type int constant 
664:     LD  4,-9(1)	Pop left hand side into AC1 
665:    MOD  3,4,3	% mod operation 
666:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
667:    LDA  1,-6(1)	Move the fp to the new frame 
668:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
669:    JMP  7,-664(7)	Call function 
670:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
671:     ST  1,-6(1)	Store fp in ghost frame for output 
672:    LDC  3,211(6)	Load of type int constant 
673:     ST  3,-9(1)	Push left side onto temp variable stack 
674:    LDC  3,6(6)	Load of type int constant 
675:     LD  4,-9(1)	Pop left hand side into AC1 
676:    MOD  3,4,3	% mod operation 
677:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
678:    LDA  1,-6(1)	Move the fp to the new frame 
679:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
680:    JMP  7,-675(7)	Call function 
681:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
682:     ST  1,-6(1)	Store fp in ghost frame for output 
683:    LDC  3,211(6)	Load of type int constant 
684:     ST  3,-9(1)	Push left side onto temp variable stack 
685:    LDC  3,5(6)	Load of type int constant 
686:     LD  4,-9(1)	Pop left hand side into AC1 
687:    MOD  3,4,3	% mod operation 
688:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
689:    LDA  1,-6(1)	Move the fp to the new frame 
690:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
691:    JMP  7,-686(7)	Call function 
692:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
693:     ST  1,-6(1)	Store fp in ghost frame for output 
694:    LDC  3,211(6)	Load of type int constant 
695:     ST  3,-9(1)	Push left side onto temp variable stack 
696:    LDC  3,4(6)	Load of type int constant 
697:     LD  4,-9(1)	Pop left hand side into AC1 
698:    MOD  3,4,3	% mod operation 
699:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
700:    LDA  1,-6(1)	Move the fp to the new frame 
701:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
702:    JMP  7,-697(7)	Call function 
703:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
704:     ST  1,-6(1)	Store fp in ghost frame for output 
705:    LDC  3,211(6)	Load of type int constant 
706:     ST  3,-9(1)	Push left side onto temp variable stack 
707:    LDC  3,100(6)	Load of type int constant 
708:     LD  4,-9(1)	Pop left hand side into AC1 
709:    MOD  3,4,3	% mod operation 
710:     ST  3,-9(1)	Push left side onto temp variable stack 
711:    LDC  3,3(6)	Load of type int constant 
712:     LD  4,-9(1)	Pop left hand side into AC1 
713:    MOD  3,4,3	% mod operation 
714:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
715:    LDA  1,-6(1)	Move the fp to the new frame 
716:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
717:    JMP  7,-712(7)	Call function 
718:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
719:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
720:    LDA  1,-6(1)	Move the fp to the new frame 
721:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
722:    JMP  7,-689(7)	Call function 
723:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
724:     ST  1,-6(1)	Store fp in ghost frame for output 
725:    LDC  3,43(6)	Load of type int constant 
726:     ST  3,-4(1)	Assigning variable c in Local 
727:     ST  3,-3(1)	Assigning variable b in Local 
728:     ST  3,-2(1)	Assigning variable a in Local 
729:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
730:    LDA  1,-6(1)	Move the fp to the new frame 
731:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
732:    JMP  7,-727(7)	Call function 
733:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
734:     ST  1,-6(1)	Store fp in ghost frame for output 
735:     LD  3,-2(1)	Load variable a into accumulator 
736:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
737:    LDA  1,-6(1)	Move the fp to the new frame 
738:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
739:    JMP  7,-734(7)	Call function 
740:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
741:    LDC  3,3(6)	Load of type int constant 
742:     ST  3,-3(1)	Assigning variable b in Local 
743:     ST  3,-6(1)	Push left side onto temp variable stack 
744:    LDC  3,4(6)	Load of type int constant 
745:     ST  3,-4(1)	Assigning variable c in Local 
746:     LD  4,-6(1)	Pop left hand side into AC1 
747:    MUL  3,4,3	* Multiplication Operation 
748:     ST  3,-2(1)	Assigning variable a in Local 
* CALL output
749:     ST  1,-6(1)	Store fp in ghost frame for output 
750:     LD  3,-2(1)	Load variable a into accumulator 
751:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
752:    LDA  1,-6(1)	Move the fp to the new frame 
753:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
754:    JMP  7,-749(7)	Call function 
755:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
756:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
757:    LDA  1,-6(1)	Move the fp to the new frame 
758:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
759:    JMP  7,-726(7)	Call function 
760:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
761:    LDC  3,44(6)	Load of type int constant 
762:     ST  3,-2(1)	Assigning variable a in Local 
763:    LDC  3,2(6)	Load of type int constant 
764:     ST  3,-3(1)	Assigning variable b in Local 
* CALL output
765:     ST  1,-6(1)	Store fp in ghost frame for output 
766:     LD  3,-3(1)	Load variable b into accumulator 
767:     LD  4,-2(1)	Load lhs variable 
768:    ADD  3,4,3	+= operation 
769:     ST  3,-2(1)	Assigning variable a in Local 
770:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
771:    LDA  1,-6(1)	Move the fp to the new frame 
772:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
773:    JMP  7,-768(7)	Call function 
774:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
775:     ST  1,-6(1)	Store fp in ghost frame for output 
776:     LD  3,-3(1)	Load variable b into accumulator 
777:     LD  4,-2(1)	Load lhs variable 
778:    SUB  3,4,3	-= operation 
779:     ST  3,-2(1)	Assigning variable a in Local 
780:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
781:    LDA  1,-6(1)	Move the fp to the new frame 
782:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
783:    JMP  7,-778(7)	Call function 
784:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
785:     ST  1,-6(1)	Store fp in ghost frame for output 
786:     LD  3,-2(1)	Load variable a into accumulator 
787:     LD  4,-2(1)	Load lhs variable 
788:    SUB  3,4,3	-= operation 
789:     ST  3,-2(1)	Assigning variable a in Local 
790:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
791:    LDA  1,-6(1)	Move the fp to the new frame 
792:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
793:    JMP  7,-788(7)	Call function 
794:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
795:     ST  1,-6(1)	Store fp in ghost frame for output 
796:    LDC  3,10(6)	Load of type int constant 
797:     LD  4,-3(1)	Load lhs variable 
798:    ADD  3,4,3	+= operation 
799:     ST  3,-3(1)	Assigning variable b in Local 
800:     LD  4,-2(1)	Load lhs variable 
801:    ADD  3,4,3	+= operation 
802:     ST  3,-2(1)	Assigning variable a in Local 
803:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
804:    LDA  1,-6(1)	Move the fp to the new frame 
805:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
806:    JMP  7,-801(7)	Call function 
807:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
808:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
809:    LDA  1,-6(1)	Move the fp to the new frame 
810:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
811:    JMP  7,-778(7)	Call function 
812:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
813:     ST  1,-6(1)	Store fp in ghost frame for output 
814:    LDC  3,3(6)	Load of type int constant 
815:     ST  3,-9(1)	Push left side onto temp variable stack 
816:    LDC  3,4(6)	Load of type int constant 
817:     LD  4,-9(1)	Pop left hand side into AC1 
818:    SUB  3,4,3	- Subtraction Operation 
819:     ST  3,-9(1)	Push left side onto temp variable stack 
820:    LDC  3,5(6)	Load of type int constant 
821:     LD  4,-9(1)	Pop left hand side into AC1 
822:    SUB  3,4,3	- Subtraction Operation 
823:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
824:    LDA  1,-6(1)	Move the fp to the new frame 
825:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
826:    JMP  7,-821(7)	Call function 
827:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
828:     ST  1,-6(1)	Store fp in ghost frame for output 
829:    LDC  3,211(6)	Load of type int constant 
830:     ST  3,-9(1)	Push left side onto temp variable stack 
831:    LDC  3,17(6)	Load of type int constant 
832:     LD  4,-9(1)	Pop left hand side into AC1 
833:    DIV  3,4,3	/ Division operation 
834:     ST  3,-9(1)	Push left side onto temp variable stack 
835:    LDC  3,5(6)	Load of type int constant 
836:     LD  4,-9(1)	Pop left hand side into AC1 
837:    DIV  3,4,3	/ Division operation 
838:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
839:    LDA  1,-6(1)	Move the fp to the new frame 
840:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
841:    JMP  7,-836(7)	Call function 
842:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
843:     ST  1,-6(1)	Store fp in ghost frame for output 
844:    LDC  3,211(6)	Load of type int constant 
845:     ST  3,-9(1)	Push left side onto temp variable stack 
846:    LDC  3,17(6)	Load of type int constant 
847:     ST  3,-10(1)	Push left side onto temp variable stack 
848:    LDC  3,5(6)	Load of type int constant 
849:     LD  4,-10(1)	Pop left hand side into AC1 
850:    DIV  3,4,3	/ Division operation 
851:     LD  4,-9(1)	Pop left hand side into AC1 
852:    DIV  3,4,3	/ Division operation 
853:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
854:    LDA  1,-6(1)	Move the fp to the new frame 
855:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
856:    JMP  7,-851(7)	Call function 
857:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outputb
858:     ST  1,-6(1)	Store fp in ghost frame for outputb 
859:    LDC  3,1(6)	Load of type bool constant 
860:     ST  3,-9(1)	Push left side onto temp variable stack 
861:    LDC  3,0(6)	Load of type bool constant 
862:     LD  4,-9(1)	Pop left hand side into AC1 
863:     OR  3,4,3	OR operation store in AC 
864:     ST  3,-9(1)	Push left side onto temp variable stack 
865:    LDC  3,0(6)	Load of type bool constant 
866:     LD  4,-9(1)	Pop left hand side into AC1 
867:    AND  3,4,3	AND operation store in AC 
868:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
869:    LDA  1,-6(1)	Move the fp to the new frame 
870:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
871:    JMP  7,-855(7)	Call function 
872:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
873:     ST  1,-6(1)	Store fp in ghost frame for outputb 
874:    LDC  3,1(6)	Load of type bool constant 
875:     ST  3,-9(1)	Push left side onto temp variable stack 
876:    LDC  3,0(6)	Load of type bool constant 
877:     ST  3,-10(1)	Push left side onto temp variable stack 
878:    LDC  3,0(6)	Load of type bool constant 
879:     LD  4,-10(1)	Pop left hand side into AC1 
880:    AND  3,4,3	AND operation store in AC 
881:     LD  4,-9(1)	Pop left hand side into AC1 
882:     OR  3,4,3	OR operation store in AC 
883:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
884:    LDA  1,-6(1)	Move the fp to the new frame 
885:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
886:    JMP  7,-870(7)	Call function 
887:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
888:     ST  1,-6(1)	Store fp in ghost frame for outputb 
889:    LDC  3,1(6)	Load of type bool constant 
890:     ST  3,-9(1)	Push left side onto temp variable stack 
891:    LDC  3,0(6)	Load of type bool constant 
892:     ST  3,-10(1)	Push left side onto temp variable stack 
893:    LDC  3,0(6)	Load of type bool constant 
894:     LD  4,-10(1)	Pop left hand side into AC1 
895:    AND  3,4,3	AND operation store in AC 
896:     LD  4,-9(1)	Pop left hand side into AC1 
897:     OR  3,4,3	OR operation store in AC 
898:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
899:    LDA  1,-6(1)	Move the fp to the new frame 
900:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
901:    JMP  7,-885(7)	Call function 
902:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
903:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
904:    LDA  1,-6(1)	Move the fp to the new frame 
905:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
906:    JMP  7,-873(7)	Call function 
907:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
908:    LDC  2,0(6)	Set return value to 0 
909:     LD  3,-1(1)	Load return address 
910:     LD  1,0(1)	Adjust fp 
911:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,911(7)	Jump to init [backpatch] 
* INIT
912:    LDA  1,-12(0)	set first frame at end of globals 
913:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
914:    LDC  3,10(6)	Load size of y into AC 
915:     ST  3,0(0)	Store size of y in data memory 
* END INIT GLOBALS AND STATICS
916:    LDA  3,1(7)	Return address in ac 
917:    JMP  7,-879(7)	Jump to main 
918:   HALT  0,0,0	DONE! 
* END INIT
