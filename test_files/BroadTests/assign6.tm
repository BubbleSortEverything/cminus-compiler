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
* FUNCTION dog
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,10(6)	Load size of b into AC 
 41:     ST  3,-5(1)	Store size of b in data memory 
 42:    LDC  3,777(6)	Load of type int constant 
 43:     ST  3,-4(1)	Assigning variable a in Local 
* CALL output
 44:     ST  1,-17(1)	Store fp in ghost frame for output 
 45:     LD  3,-4(1)	Load variable a into accumulator 
 46:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-17(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 51:    LDC  3,666(6)	Load of type int constant 
 52:     LD  4,-4(1)	Load lhs variable 
 53:    ADD  3,4,3	+= operation 
 54:     ST  3,-4(1)	Assigning variable a in Local 
* CALL output
 55:     ST  1,-17(1)	Store fp in ghost frame for output 
 56:     LD  3,-4(1)	Load variable a into accumulator 
 57:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-17(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-55(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 62:    LDC  3,666(6)	Load of type int constant 
 63:     LD  4,-4(1)	Load lhs variable 
 64:    SUB  3,4,3	-= operation 
 65:     ST  3,-4(1)	Assigning variable a in Local 
* CALL output
 66:     ST  1,-17(1)	Store fp in ghost frame for output 
 67:     LD  3,-4(1)	Load variable a into accumulator 
 68:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-17(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-66(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 73:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
 74:    LDA  1,-17(1)	Move the fp to the new frame 
 75:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 76:    JMP  7,-43(7)	Call function 
 77:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 78:    LDC  3,777(6)	Load of type int constant 
 79:     ST  3,0(0)	Assigning variable g in Global 
* CALL output
 80:     ST  1,-17(1)	Store fp in ghost frame for output 
 81:     LD  3,0(0)	Load variable g into accumulator 
 82:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
 83:    LDA  1,-17(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-80(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 87:    LDC  3,666(6)	Load of type int constant 
 88:     LD  4,0(0)	Load lhs variable 
 89:    ADD  3,4,3	+= operation 
 90:     ST  3,0(0)	Assigning variable g in Global 
* CALL output
 91:     ST  1,-17(1)	Store fp in ghost frame for output 
 92:     LD  3,0(0)	Load variable g into accumulator 
 93:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
 94:    LDA  1,-17(1)	Move the fp to the new frame 
 95:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 96:    JMP  7,-91(7)	Call function 
 97:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 98:    LDC  3,666(6)	Load of type int constant 
 99:     LD  4,0(0)	Load lhs variable 
100:    SUB  3,4,3	-= operation 
101:     ST  3,0(0)	Assigning variable g in Global 
* CALL output
102:     ST  1,-17(1)	Store fp in ghost frame for output 
103:     LD  3,0(0)	Load variable g into accumulator 
104:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
105:    LDA  1,-17(1)	Move the fp to the new frame 
106:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
107:    JMP  7,-102(7)	Call function 
108:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
109:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
110:    LDA  1,-17(1)	Move the fp to the new frame 
111:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
112:    JMP  7,-79(7)	Call function 
113:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
114:    LDC  3,777(6)	Load of type int constant 
115:     ST  3,-2(1)	Assigning variable p in Parameter 
* CALL output
116:     ST  1,-17(1)	Store fp in ghost frame for output 
117:     LD  3,-2(1)	Load variable p into accumulator 
118:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
119:    LDA  1,-17(1)	Move the fp to the new frame 
120:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
121:    JMP  7,-116(7)	Call function 
122:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
123:    LDC  3,666(6)	Load of type int constant 
124:     LD  4,-2(1)	Load lhs variable 
125:    ADD  3,4,3	+= operation 
126:     ST  3,-2(1)	Assigning variable p in Parameter 
* CALL output
127:     ST  1,-17(1)	Store fp in ghost frame for output 
128:     LD  3,-2(1)	Load variable p into accumulator 
129:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
130:    LDA  1,-17(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-127(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
134:    LDC  3,666(6)	Load of type int constant 
135:     LD  4,-2(1)	Load lhs variable 
136:    SUB  3,4,3	-= operation 
137:     ST  3,-2(1)	Assigning variable p in Parameter 
* CALL output
138:     ST  1,-17(1)	Store fp in ghost frame for output 
139:     LD  3,-2(1)	Load variable p into accumulator 
140:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
141:    LDA  1,-17(1)	Move the fp to the new frame 
142:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
143:    JMP  7,-138(7)	Call function 
144:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
145:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
146:    LDA  1,-17(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-115(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
150:    LDA  3,-6(1)	Load base address of array b 
151:    LDC  3,1(6)	Load of type int constant 
152:     ST  3,-17(1)	Push array index onto temp stack 
153:    LDC  3,777(6)	Load of type int constant 
154:     LD  4,-17(1)	Pop array index into AC1 
155:    LDA  5,-6(1)	Load base address of array b into AC2 
156:    SUB  5,5,4	Compute offset for array 
157:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL output
158:     ST  1,-17(1)	Store fp in ghost frame for output 
159:    LDA  3,-6(1)	Load base address of array b 
160:    LDC  3,1(6)	Load of type int constant 
161:    LDA  5,-6(1)	Load base address of array b into AC2 
162:    SUB  5,5,3	Compute offset for array 
163:     LD  3,0(5)	Load array element b from AC into loc from AC2 
164:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
165:    LDA  1,-17(1)	Move the fp to the new frame 
166:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
167:    JMP  7,-162(7)	Call function 
168:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
169:    LDA  3,-6(1)	Load base address of array b 
170:    LDC  3,1(6)	Load of type int constant 
171:     ST  3,-17(1)	Push array index onto temp stack 
172:    LDC  3,666(6)	Load of type int constant 
173:     LD  4,-17(1)	Pop array index into AC1 
174:    LDA  5,-6(1)	Load base address of array b into AC2 
175:    SUB  5,5,4	Compute offset for array 
176:     LD  4,0(5)	Load lhs variable 
177:    ADD  3,4,3	+= operation 
178:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL output
179:     ST  1,-17(1)	Store fp in ghost frame for output 
180:    LDA  3,-6(1)	Load base address of array b 
181:    LDC  3,1(6)	Load of type int constant 
182:    LDA  5,-6(1)	Load base address of array b into AC2 
183:    SUB  5,5,3	Compute offset for array 
184:     LD  3,0(5)	Load array element b from AC into loc from AC2 
185:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
186:    LDA  1,-17(1)	Move the fp to the new frame 
187:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
188:    JMP  7,-183(7)	Call function 
189:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
190:    LDA  3,-6(1)	Load base address of array b 
191:    LDC  3,1(6)	Load of type int constant 
192:     ST  3,-17(1)	Push array index onto temp stack 
193:    LDC  3,666(6)	Load of type int constant 
194:     LD  4,-17(1)	Pop array index into AC1 
195:    LDA  5,-6(1)	Load base address of array b into AC2 
196:    SUB  5,5,4	Compute offset for array 
197:     LD  4,0(5)	Load lhs variable 
198:    SUB  3,4,3	-= operation 
199:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL output
200:     ST  1,-17(1)	Store fp in ghost frame for output 
201:    LDA  3,-6(1)	Load base address of array b 
202:    LDC  3,1(6)	Load of type int constant 
203:    LDA  5,-6(1)	Load base address of array b into AC2 
204:    SUB  5,5,3	Compute offset for array 
205:     LD  3,0(5)	Load array element b from AC into loc from AC2 
206:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
207:    LDA  1,-17(1)	Move the fp to the new frame 
208:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
209:    JMP  7,-204(7)	Call function 
210:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
211:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
212:    LDA  1,-17(1)	Move the fp to the new frame 
213:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
214:    JMP  7,-181(7)	Call function 
215:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
216:    LDA  3,-2(0)	Load base address of array h 
217:    LDC  3,1(6)	Load of type int constant 
218:     ST  3,-17(1)	Push array index onto temp stack 
219:    LDC  3,777(6)	Load of type int constant 
220:     LD  4,-17(1)	Pop array index into AC1 
221:    LDA  5,-2(0)	Load base address of array h into AC2 
222:    SUB  5,5,4	Compute offset for array 
223:     ST  3,0(5)	Store variable h from AC into loc from AC2 
* CALL output
224:     ST  1,-17(1)	Store fp in ghost frame for output 
225:    LDA  3,-2(0)	Load base address of array h 
226:    LDC  3,1(6)	Load of type int constant 
227:    LDA  5,-2(0)	Load base address of array h into AC2 
228:    SUB  5,5,3	Compute offset for array 
229:     LD  3,0(5)	Load array element h from AC into loc from AC2 
230:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
231:    LDA  1,-17(1)	Move the fp to the new frame 
232:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
233:    JMP  7,-228(7)	Call function 
234:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
235:    LDA  3,-2(0)	Load base address of array h 
236:    LDC  3,1(6)	Load of type int constant 
237:     ST  3,-17(1)	Push array index onto temp stack 
238:    LDC  3,666(6)	Load of type int constant 
239:     LD  4,-17(1)	Pop array index into AC1 
240:    LDA  5,-2(0)	Load base address of array h into AC2 
241:    SUB  5,5,4	Compute offset for array 
242:     LD  4,0(5)	Load lhs variable 
243:    ADD  3,4,3	+= operation 
244:     ST  3,0(5)	Store variable h from AC into loc from AC2 
* CALL output
245:     ST  1,-17(1)	Store fp in ghost frame for output 
246:    LDA  3,-2(0)	Load base address of array h 
247:    LDC  3,1(6)	Load of type int constant 
248:    LDA  5,-2(0)	Load base address of array h into AC2 
249:    SUB  5,5,3	Compute offset for array 
250:     LD  3,0(5)	Load array element h from AC into loc from AC2 
251:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
252:    LDA  1,-17(1)	Move the fp to the new frame 
253:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
254:    JMP  7,-249(7)	Call function 
255:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
256:    LDA  3,-2(0)	Load base address of array h 
257:    LDC  3,1(6)	Load of type int constant 
258:     ST  3,-17(1)	Push array index onto temp stack 
259:    LDC  3,666(6)	Load of type int constant 
260:     LD  4,-17(1)	Pop array index into AC1 
261:    LDA  5,-2(0)	Load base address of array h into AC2 
262:    SUB  5,5,4	Compute offset for array 
263:     LD  4,0(5)	Load lhs variable 
264:    SUB  3,4,3	-= operation 
265:     ST  3,0(5)	Store variable h from AC into loc from AC2 
* CALL output
266:     ST  1,-17(1)	Store fp in ghost frame for output 
267:    LDA  3,-2(0)	Load base address of array h 
268:    LDC  3,1(6)	Load of type int constant 
269:    LDA  5,-2(0)	Load base address of array h into AC2 
270:    SUB  5,5,3	Compute offset for array 
271:     LD  3,0(5)	Load array element h from AC into loc from AC2 
272:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
273:    LDA  1,-17(1)	Move the fp to the new frame 
274:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
275:    JMP  7,-270(7)	Call function 
276:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
277:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
278:    LDA  1,-17(1)	Move the fp to the new frame 
279:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
280:    JMP  7,-247(7)	Call function 
281:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
282:     LD  3,-3(1)	Load base address of array q 
283:    LDC  3,1(6)	Load of type int constant 
284:     ST  3,-17(1)	Push array index onto temp stack 
285:    LDC  3,777(6)	Load of type int constant 
286:     LD  4,-17(1)	Pop array index into AC1 
287:     LD  5,-3(1)	Load base address of array q into AC2 
288:    SUB  5,5,4	Compute offset for array 
289:     ST  3,0(5)	Store variable q from AC into loc from AC2 
* CALL output
290:     ST  1,-17(1)	Store fp in ghost frame for output 
291:     LD  3,-3(1)	Load base address of array q 
292:    LDC  3,1(6)	Load of type int constant 
293:     LD  5,-3(1)	Load base address of array q into AC2 
294:    SUB  5,5,3	Compute offset for array 
295:     LD  3,0(5)	Load array element q from AC into loc from AC2 
296:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
297:    LDA  1,-17(1)	Move the fp to the new frame 
298:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
299:    JMP  7,-294(7)	Call function 
300:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
301:     LD  3,-3(1)	Load base address of array q 
302:    LDC  3,1(6)	Load of type int constant 
303:     ST  3,-17(1)	Push array index onto temp stack 
304:    LDC  3,666(6)	Load of type int constant 
305:     LD  4,-17(1)	Pop array index into AC1 
306:     LD  5,-3(1)	Load base address of array q into AC2 
307:    SUB  5,5,4	Compute offset for array 
308:     LD  4,0(5)	Load lhs variable 
309:    ADD  3,4,3	+= operation 
310:     ST  3,0(5)	Store variable q from AC into loc from AC2 
* CALL output
311:     ST  1,-17(1)	Store fp in ghost frame for output 
312:     LD  3,-3(1)	Load base address of array q 
313:    LDC  3,1(6)	Load of type int constant 
314:     LD  5,-3(1)	Load base address of array q into AC2 
315:    SUB  5,5,3	Compute offset for array 
316:     LD  3,0(5)	Load array element q from AC into loc from AC2 
317:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
318:    LDA  1,-17(1)	Move the fp to the new frame 
319:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
320:    JMP  7,-315(7)	Call function 
321:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
322:     LD  3,-3(1)	Load base address of array q 
323:    LDC  3,1(6)	Load of type int constant 
324:     ST  3,-17(1)	Push array index onto temp stack 
325:    LDC  3,666(6)	Load of type int constant 
326:     LD  4,-17(1)	Pop array index into AC1 
327:     LD  5,-3(1)	Load base address of array q into AC2 
328:    SUB  5,5,4	Compute offset for array 
329:     LD  4,0(5)	Load lhs variable 
330:    SUB  3,4,3	-= operation 
331:     ST  3,0(5)	Store variable q from AC into loc from AC2 
* CALL output
332:     ST  1,-17(1)	Store fp in ghost frame for output 
333:     LD  3,-3(1)	Load base address of array q 
334:    LDC  3,1(6)	Load of type int constant 
335:     LD  5,-3(1)	Load base address of array q into AC2 
336:    SUB  5,5,3	Compute offset for array 
337:     LD  3,0(5)	Load array element q from AC into loc from AC2 
338:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
339:    LDA  1,-17(1)	Move the fp to the new frame 
340:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
341:    JMP  7,-336(7)	Call function 
342:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
343:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
344:    LDA  1,-17(1)	Move the fp to the new frame 
345:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
346:    JMP  7,-313(7)	Call function 
347:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
348:    LDA  3,-6(1)	Load base address of array b 
349:    LDC  3,1(6)	Load of type int constant 
350:     ST  3,-17(1)	Push array index onto temp stack 
351:    LDC  3,3(6)	Load of type int constant 
352:     LD  4,-17(1)	Pop array index into AC1 
353:    LDA  5,-6(1)	Load base address of array b into AC2 
354:    SUB  5,5,4	Compute offset for array 
355:     ST  3,0(5)	Store variable b from AC into loc from AC2 
356:     LD  3,-3(1)	Load base address of array q 
357:    LDA  3,-6(1)	Load base address of array b 
358:    LDC  3,1(6)	Load of type int constant 
359:    LDA  5,-6(1)	Load base address of array b into AC2 
360:    SUB  5,5,3	Compute offset for array 
361:     LD  3,0(5)	Load array element b from AC into loc from AC2 
362:     ST  3,-17(1)	Push left side onto temp variable stack 
363:    LDC  3,1(6)	Load of type int constant 
364:     LD  4,-17(1)	Pop left hand side into AC1 
365:    ADD  3,4,3	+ Operation 
366:     ST  3,-17(1)	Push array index onto temp stack 
367:    LDC  3,777(6)	Load of type int constant 
368:     LD  4,-17(1)	Pop array index into AC1 
369:     LD  5,-3(1)	Load base address of array q into AC2 
370:    SUB  5,5,4	Compute offset for array 
371:     ST  3,0(5)	Store variable q from AC into loc from AC2 
* CALL output
372:     ST  1,-17(1)	Store fp in ghost frame for output 
373:     LD  3,-3(1)	Load base address of array q 
374:    LDA  3,-6(1)	Load base address of array b 
375:    LDC  3,1(6)	Load of type int constant 
376:    LDA  5,-6(1)	Load base address of array b into AC2 
377:    SUB  5,5,3	Compute offset for array 
378:     LD  3,0(5)	Load array element b from AC into loc from AC2 
379:     ST  3,-20(1)	Push left side onto temp variable stack 
380:    LDC  3,1(6)	Load of type int constant 
381:     LD  4,-20(1)	Pop left hand side into AC1 
382:    ADD  3,4,3	+ Operation 
383:     LD  5,-3(1)	Load base address of array q into AC2 
384:    SUB  5,5,3	Compute offset for array 
385:     LD  3,0(5)	Load array element q from AC into loc from AC2 
386:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
387:    LDA  1,-17(1)	Move the fp to the new frame 
388:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
389:    JMP  7,-384(7)	Call function 
390:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
391:     LD  3,-3(1)	Load base address of array q 
392:    LDA  3,-6(1)	Load base address of array b 
393:    LDC  3,1(6)	Load of type int constant 
394:    LDA  5,-6(1)	Load base address of array b into AC2 
395:    SUB  5,5,3	Compute offset for array 
396:     LD  3,0(5)	Load array element b from AC into loc from AC2 
397:     ST  3,-17(1)	Push left side onto temp variable stack 
398:    LDC  3,1(6)	Load of type int constant 
399:     LD  4,-17(1)	Pop left hand side into AC1 
400:    ADD  3,4,3	+ Operation 
401:     ST  3,-17(1)	Push array index onto temp stack 
402:    LDC  3,666(6)	Load of type int constant 
403:     LD  4,-17(1)	Pop array index into AC1 
404:     LD  5,-3(1)	Load base address of array q into AC2 
405:    SUB  5,5,4	Compute offset for array 
406:     LD  4,0(5)	Load lhs variable 
407:    ADD  3,4,3	+= operation 
408:     ST  3,0(5)	Store variable q from AC into loc from AC2 
* CALL output
409:     ST  1,-17(1)	Store fp in ghost frame for output 
410:     LD  3,-3(1)	Load base address of array q 
411:    LDA  3,-6(1)	Load base address of array b 
412:    LDC  3,1(6)	Load of type int constant 
413:    LDA  5,-6(1)	Load base address of array b into AC2 
414:    SUB  5,5,3	Compute offset for array 
415:     LD  3,0(5)	Load array element b from AC into loc from AC2 
416:     ST  3,-20(1)	Push left side onto temp variable stack 
417:    LDC  3,1(6)	Load of type int constant 
418:     LD  4,-20(1)	Pop left hand side into AC1 
419:    ADD  3,4,3	+ Operation 
420:     LD  5,-3(1)	Load base address of array q into AC2 
421:    SUB  5,5,3	Compute offset for array 
422:     LD  3,0(5)	Load array element q from AC into loc from AC2 
423:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
424:    LDA  1,-17(1)	Move the fp to the new frame 
425:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
426:    JMP  7,-421(7)	Call function 
427:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
428:     LD  3,-3(1)	Load base address of array q 
429:    LDA  3,-6(1)	Load base address of array b 
430:    LDC  3,1(6)	Load of type int constant 
431:    LDA  5,-6(1)	Load base address of array b into AC2 
432:    SUB  5,5,3	Compute offset for array 
433:     LD  3,0(5)	Load array element b from AC into loc from AC2 
434:     ST  3,-17(1)	Push left side onto temp variable stack 
435:    LDC  3,1(6)	Load of type int constant 
436:     LD  4,-17(1)	Pop left hand side into AC1 
437:    ADD  3,4,3	+ Operation 
438:     ST  3,-17(1)	Push array index onto temp stack 
439:    LDC  3,666(6)	Load of type int constant 
440:     LD  4,-17(1)	Pop array index into AC1 
441:     LD  5,-3(1)	Load base address of array q into AC2 
442:    SUB  5,5,4	Compute offset for array 
443:     LD  4,0(5)	Load lhs variable 
444:    SUB  3,4,3	-= operation 
445:     ST  3,0(5)	Store variable q from AC into loc from AC2 
* CALL output
446:     ST  1,-17(1)	Store fp in ghost frame for output 
447:     LD  3,-3(1)	Load base address of array q 
448:    LDA  3,-6(1)	Load base address of array b 
449:    LDC  3,1(6)	Load of type int constant 
450:    LDA  5,-6(1)	Load base address of array b into AC2 
451:    SUB  5,5,3	Compute offset for array 
452:     LD  3,0(5)	Load array element b from AC into loc from AC2 
453:     ST  3,-20(1)	Push left side onto temp variable stack 
454:    LDC  3,1(6)	Load of type int constant 
455:     LD  4,-20(1)	Pop left hand side into AC1 
456:    ADD  3,4,3	+ Operation 
457:     LD  5,-3(1)	Load base address of array q into AC2 
458:    SUB  5,5,3	Compute offset for array 
459:     LD  3,0(5)	Load array element q from AC into loc from AC2 
460:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
461:    LDA  1,-17(1)	Move the fp to the new frame 
462:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
463:    JMP  7,-458(7)	Call function 
464:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
465:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
466:    LDA  1,-17(1)	Move the fp to the new frame 
467:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
468:    JMP  7,-435(7)	Call function 
469:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
470:    LDC  3,777(6)	Load of type int constant 
471:     ST  3,-4(1)	Assigning variable a in Local 
472:     ST  3,-16(1)	Assigning variable x in Local 
* CALL output
473:     ST  1,-17(1)	Store fp in ghost frame for output 
474:     LD  3,-16(1)	Load variable x into accumulator 
475:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
476:    LDA  1,-17(1)	Move the fp to the new frame 
477:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
478:    JMP  7,-473(7)	Call function 
479:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
480:    LDC  3,666(6)	Load of type int constant 
481:     LD  4,-4(1)	Load lhs variable 
482:    ADD  3,4,3	+= operation 
483:     ST  3,-4(1)	Assigning variable a in Local 
484:     ST  3,-16(1)	Assigning variable x in Local 
* CALL output
485:     ST  1,-17(1)	Store fp in ghost frame for output 
486:     LD  3,-16(1)	Load variable x into accumulator 
487:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
488:    LDA  1,-17(1)	Move the fp to the new frame 
489:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
490:    JMP  7,-485(7)	Call function 
491:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
492:    LDC  3,666(6)	Load of type int constant 
493:     LD  4,-4(1)	Load lhs variable 
494:    SUB  3,4,3	-= operation 
495:     ST  3,-4(1)	Assigning variable a in Local 
496:     ST  3,-16(1)	Assigning variable x in Local 
* CALL output
497:     ST  1,-17(1)	Store fp in ghost frame for output 
498:     LD  3,-16(1)	Load variable x into accumulator 
499:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
500:    LDA  1,-17(1)	Move the fp to the new frame 
501:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
502:    JMP  7,-497(7)	Call function 
503:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
504:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
505:    LDA  1,-17(1)	Move the fp to the new frame 
506:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
507:    JMP  7,-474(7)	Call function 
508:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
509:    LDA  3,-6(1)	Load base address of array b 
510:    LDC  3,1(6)	Load of type int constant 
511:     ST  3,-17(1)	Push array index onto temp stack 
512:    LDA  3,-6(1)	Load base address of array b 
513:    LDC  3,2(6)	Load of type int constant 
514:     ST  3,-18(1)	Push array index onto temp stack 
515:    LDC  3,777(6)	Load of type int constant 
516:     LD  4,-18(1)	Pop array index into AC1 
517:    LDA  5,-6(1)	Load base address of array b into AC2 
518:    SUB  5,5,4	Compute offset for array 
519:     ST  3,0(5)	Store variable b from AC into loc from AC2 
520:     LD  4,-17(1)	Pop array index into AC1 
521:    LDA  5,-6(1)	Load base address of array b into AC2 
522:    SUB  5,5,4	Compute offset for array 
523:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL output
524:     ST  1,-17(1)	Store fp in ghost frame for output 
525:    LDA  3,-6(1)	Load base address of array b 
526:    LDC  3,1(6)	Load of type int constant 
527:    LDA  5,-6(1)	Load base address of array b into AC2 
528:    SUB  5,5,3	Compute offset for array 
529:     LD  3,0(5)	Load array element b from AC into loc from AC2 
530:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
531:    LDA  1,-17(1)	Move the fp to the new frame 
532:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
533:    JMP  7,-528(7)	Call function 
534:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
535:    LDA  3,-6(1)	Load base address of array b 
536:    LDC  3,1(6)	Load of type int constant 
537:     ST  3,-17(1)	Push array index onto temp stack 
538:    LDA  3,-6(1)	Load base address of array b 
539:    LDC  3,2(6)	Load of type int constant 
540:     ST  3,-18(1)	Push array index onto temp stack 
541:    LDC  3,666(6)	Load of type int constant 
542:     LD  4,-18(1)	Pop array index into AC1 
543:    LDA  5,-6(1)	Load base address of array b into AC2 
544:    SUB  5,5,4	Compute offset for array 
545:     LD  4,0(5)	Load lhs variable 
546:    ADD  3,4,3	+= operation 
547:     ST  3,0(5)	Store variable b from AC into loc from AC2 
548:     LD  4,-17(1)	Pop array index into AC1 
549:    LDA  5,-6(1)	Load base address of array b into AC2 
550:    SUB  5,5,4	Compute offset for array 
551:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL output
552:     ST  1,-17(1)	Store fp in ghost frame for output 
553:    LDA  3,-6(1)	Load base address of array b 
554:    LDC  3,1(6)	Load of type int constant 
555:    LDA  5,-6(1)	Load base address of array b into AC2 
556:    SUB  5,5,3	Compute offset for array 
557:     LD  3,0(5)	Load array element b from AC into loc from AC2 
558:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
559:    LDA  1,-17(1)	Move the fp to the new frame 
560:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
561:    JMP  7,-556(7)	Call function 
562:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
563:    LDA  3,-6(1)	Load base address of array b 
564:    LDC  3,1(6)	Load of type int constant 
565:     ST  3,-17(1)	Push array index onto temp stack 
566:    LDA  3,-6(1)	Load base address of array b 
567:    LDC  3,2(6)	Load of type int constant 
568:     ST  3,-18(1)	Push array index onto temp stack 
569:    LDC  3,666(6)	Load of type int constant 
570:     LD  4,-18(1)	Pop array index into AC1 
571:    LDA  5,-6(1)	Load base address of array b into AC2 
572:    SUB  5,5,4	Compute offset for array 
573:     LD  4,0(5)	Load lhs variable 
574:    SUB  3,4,3	-= operation 
575:     ST  3,0(5)	Store variable b from AC into loc from AC2 
576:     LD  4,-17(1)	Pop array index into AC1 
577:    LDA  5,-6(1)	Load base address of array b into AC2 
578:    SUB  5,5,4	Compute offset for array 
579:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL output
580:     ST  1,-17(1)	Store fp in ghost frame for output 
581:    LDA  3,-6(1)	Load base address of array b 
582:    LDC  3,1(6)	Load of type int constant 
583:    LDA  5,-6(1)	Load base address of array b into AC2 
584:    SUB  5,5,3	Compute offset for array 
585:     LD  3,0(5)	Load array element b from AC into loc from AC2 
586:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
587:    LDA  1,-17(1)	Move the fp to the new frame 
588:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
589:    JMP  7,-584(7)	Call function 
590:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
591:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
592:    LDA  1,-17(1)	Move the fp to the new frame 
593:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
594:    JMP  7,-561(7)	Call function 
595:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
596:     LD  3,-4(1)	Load variable a into accumulator 
597:     ST  3,-17(1)	Push left side onto temp variable stack 
598:     LD  3,-16(1)	Load variable x into accumulator 
599:     LD  4,-17(1)	Pop left hand side into AC1 
600:    MUL  3,4,3	* Multiplication Operation 
601:     LD  4,-4(1)	Load lhs variable 
602:    ADD  3,4,3	+= operation 
603:     ST  3,-4(1)	Assigning variable a in Local 
* CALL output
604:     ST  1,-17(1)	Store fp in ghost frame for output 
605:     LD  3,-4(1)	Load variable a into accumulator 
606:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
607:    LDA  1,-17(1)	Move the fp to the new frame 
608:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
609:    JMP  7,-604(7)	Call function 
610:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
611:     ST  1,-17(1)	Store fp in ghost frame for outnl 
* Begin call
612:    LDA  1,-17(1)	Move the fp to the new frame 
613:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
614:    JMP  7,-581(7)	Call function 
615:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
616:    LDC  2,0(6)	Set return value to 0 
617:     LD  3,-1(1)	Load return address 
618:     LD  1,0(1)	Adjust fp 
619:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
620:     ST  3,-1(1)	Store return address 
* COMPOUND
621:    LDC  3,20(6)	Load size of qq into AC 
622:     ST  3,-3(1)	Store size of qq in data memory 
623:    LDC  3,888(6)	Load of type int constant 
624:     ST  3,-2(1)	Assigning variable pp in Local 
625:    LDA  3,-4(1)	Load base address of array qq 
626:    LDC  3,1(6)	Load of type int constant 
627:     ST  3,-24(1)	Push array index onto temp stack 
628:    LDC  3,999(6)	Load of type int constant 
629:     LD  4,-24(1)	Pop array index into AC1 
630:    LDA  5,-4(1)	Load base address of array qq into AC2 
631:    SUB  5,5,4	Compute offset for array 
632:     ST  3,0(5)	Store variable qq from AC into loc from AC2 
* CALL dog
633:     ST  1,-24(1)	Store fp in ghost frame for dog 
634:     LD  3,-2(1)	Load variable pp into accumulator 
635:     ST  3,-26(1)	Push parameter onto new frame 
636:    LDA  3,-4(1)	Load base address of array qq 
637:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
638:    LDA  1,-24(1)	Move the fp to the new frame 
639:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
640:    JMP  7,-602(7)	Call function 
641:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL output
642:     ST  1,-24(1)	Store fp in ghost frame for output 
643:     LD  3,-2(1)	Load variable pp into accumulator 
644:     ST  3,-26(1)	Push parameter onto new frame 
* Begin call
645:    LDA  1,-24(1)	Move the fp to the new frame 
646:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
647:    JMP  7,-642(7)	Call function 
648:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
649:     ST  1,-24(1)	Store fp in ghost frame for output 
650:    LDA  3,-4(1)	Load base address of array qq 
651:    LDC  3,1(6)	Load of type int constant 
652:    LDA  5,-4(1)	Load base address of array qq into AC2 
653:    SUB  5,5,3	Compute offset for array 
654:     LD  3,0(5)	Load array element qq from AC into loc from AC2 
655:     ST  3,-26(1)	Push parameter onto new frame 
* Begin call
656:    LDA  1,-24(1)	Move the fp to the new frame 
657:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
658:    JMP  7,-653(7)	Call function 
659:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
660:     ST  1,-24(1)	Store fp in ghost frame for outnl 
* Begin call
661:    LDA  1,-24(1)	Move the fp to the new frame 
662:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
663:    JMP  7,-630(7)	Call function 
664:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
665:    LDC  2,0(6)	Set return value to 0 
666:     LD  3,-1(1)	Load return address 
667:     LD  1,0(1)	Adjust fp 
668:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,668(7)	Jump to init [backpatch] 
* INIT
669:    LDA  1,-12(0)	set first frame at end of globals 
670:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
671:    LDC  3,10(6)	Load size of h into AC 
672:     ST  3,-1(0)	Store size of h in data memory 
* END INIT GLOBALS AND STATICS
673:    LDA  3,1(7)	Return address in ac 
674:    JMP  7,-55(7)	Jump to main 
675:   HALT  0,0,0	DONE! 
* END INIT
