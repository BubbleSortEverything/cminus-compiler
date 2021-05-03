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
* FUNCTION showIntArray
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,0(6)	Load of type int constant 
 41:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
 42:     LD  3,-4(1)	Load variable i into accumulator 
 43:     ST  3,-5(1)	Push left side onto temp variable stack 
 44:     LD  3,-3(1)	Load variable size into accumulator 
 45:     LD  4,-5(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 48:     ST  1,-5(1)	Store fp in ghost frame for output 
 49:     LD  3,-2(1)	Load base address of array x 
 50:     LD  3,-4(1)	Load variable i into accumulator 
 51:     LD  5,-2(1)	Load base address of array x into AC2 
 52:    SUB  5,5,3	Compute offset for array 
 53:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 54:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 55:    LDA  1,-5(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-52(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 59:     LD  3,-4(1)	Load variable i into accumulator 
 60:     ST  3,-5(1)	Push left side onto temp variable stack 
 61:    LDC  3,1(6)	Load of type int constant 
 62:     LD  4,-5(1)	Pop left hand side into AC1 
 63:    ADD  3,4,3	+ Operation 
 64:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
 65:    JMP  7,-24(7)	Go to L1 
 47:    JZR  3,18(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
 66:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
 67:    LDA  1,-5(1)	Move the fp to the new frame 
 68:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 69:    JMP  7,-36(7)	Call function 
 70:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 71:    LDC  2,0(6)	Set return value to 0 
 72:     LD  3,-1(1)	Load return address 
 73:     LD  1,0(1)	Adjust fp 
 74:    JMP  7,0(3)	Return 
* END FUNCTION showIntArray
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION dog
 75:     ST  3,-1(1)	Store return address 
* COMPOUND
 76:     LD  3,-2(1)	Load variable a into accumulator 
 77:     ST  3,-2(1)	Assigning variable a in Parameter 
 78:     LD  3,-3(1)	Load base address of array b 
 79:    LDC  3,7(6)	Load of type int constant 
 80:     ST  3,-4(1)	Push array index onto temp stack 
 81:     LD  3,-3(1)	Load base address of array b 
 82:    LDC  3,9(6)	Load of type int constant 
 83:     LD  5,-3(1)	Load base address of array b into AC2 
 84:    SUB  5,5,3	Compute offset for array 
 85:     LD  3,0(5)	Load array element b from AC into loc from AC2 
 86:     LD  4,-4(1)	Pop array index into AC1 
 87:     LD  5,-3(1)	Load base address of array b into AC2 
 88:    SUB  5,5,4	Compute offset for array 
 89:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL output
 90:     ST  1,-4(1)	Store fp in ghost frame for output 
 91:     LD  3,-2(1)	Load variable a into accumulator 
 92:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 93:    LDA  1,-4(1)	Move the fp to the new frame 
 94:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 95:    JMP  7,-90(7)	Call function 
 96:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 97:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 98:    LDA  1,-4(1)	Move the fp to the new frame 
 99:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
100:    JMP  7,-67(7)	Call function 
101:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
102:     ST  1,-4(1)	Store fp in ghost frame for output 
103:     LD  3,-3(1)	Load base address of array b 
104:    LDC  3,7(6)	Load of type int constant 
105:     LD  5,-3(1)	Load base address of array b into AC2 
106:    SUB  5,5,3	Compute offset for array 
107:     LD  3,0(5)	Load array element b from AC into loc from AC2 
108:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
109:    LDA  1,-4(1)	Move the fp to the new frame 
110:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
111:    JMP  7,-106(7)	Call function 
112:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
113:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
114:    LDA  1,-4(1)	Move the fp to the new frame 
115:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
116:    JMP  7,-83(7)	Call function 
117:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
118:    LDC  2,0(6)	Set return value to 0 
119:     LD  3,-1(1)	Load return address 
120:     LD  1,0(1)	Adjust fp 
121:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION getnxtindex
122:     ST  3,-1(1)	Store return address 
* COMPOUND
123:     LD  3,-2(1)	Load variable x into accumulator 
124:     ST  3,-3(1)	Push left side onto temp variable stack 
125:    LDC  3,1(6)	Load of type int constant 
126:     LD  4,-3(1)	Pop left hand side into AC1 
127:    ADD  3,4,3	+ Operation 
128:    LDA  2,0(3)	Copy accumulator to return register 
129:     LD  3,-1(1)	Load return address 
130:     LD  1,0(1)	Adjust fp 
131:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
132:    LDC  2,0(6)	Set return value to 0 
133:     LD  3,-1(1)	Load return address 
134:     LD  1,0(1)	Adjust fp 
135:    JMP  7,0(3)	Return 
* END FUNCTION getnxtindex
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
136:     ST  3,-1(1)	Store return address 
* COMPOUND
137:    LDC  3,10(6)	Load size of c into AC 
138:     ST  3,-3(1)	Store size of c in data memory 
139:    LDC  3,10(6)	Load size of d into AC 
140:     ST  3,-14(1)	Store size of d in data memory 
141:    LDC  3,10(6)	Load size of y into AC 
142:     ST  3,-25(1)	Store size of y in data memory 
143:    LDC  3,10(6)	Load size of z into AC 
144:     ST  3,-36(1)	Store size of z in data memory 
145:    LDC  3,10(6)	Load size of w into AC 
146:     ST  3,-47(1)	Store size of w in data memory 
147:    LDA  3,-4(1)	Load base address of array c 
148:    LDC  3,0(6)	Load of type int constant 
149:     ST  3,-60(1)	Push array index onto temp stack 
150:    LDC  3,3(6)	Load of type int constant 
151:     LD  4,-60(1)	Pop array index into AC1 
152:    LDA  5,-4(1)	Load base address of array c into AC2 
153:    SUB  5,5,4	Compute offset for array 
154:     ST  3,0(5)	Store variable c from AC into loc from AC2 
155:    LDA  3,-15(1)	Load base address of array d 
156:    LDC  3,3(6)	Load of type int constant 
157:     ST  3,-60(1)	Push array index onto temp stack 
158:    LDC  3,5(6)	Load of type int constant 
159:     LD  4,-60(1)	Pop array index into AC1 
160:    LDA  5,-15(1)	Load base address of array d into AC2 
161:    SUB  5,5,4	Compute offset for array 
162:     ST  3,0(5)	Store variable d from AC into loc from AC2 
163:    LDA  3,-15(1)	Load base address of array d 
164:    LDC  3,4(6)	Load of type int constant 
165:     ST  3,-60(1)	Push array index onto temp stack 
166:    LDC  3,9(6)	Load of type int constant 
167:     LD  4,-60(1)	Pop array index into AC1 
168:    LDA  5,-15(1)	Load base address of array d into AC2 
169:    SUB  5,5,4	Compute offset for array 
170:     ST  3,0(5)	Store variable d from AC into loc from AC2 
171:    LDA  3,-26(1)	Load base address of array y 
172:    LDC  3,5(6)	Load of type int constant 
173:     ST  3,-60(1)	Push array index onto temp stack 
174:    LDC  3,100(6)	Load of type int constant 
175:     LD  4,-60(1)	Pop array index into AC1 
176:    LDA  5,-26(1)	Load base address of array y into AC2 
177:    SUB  5,5,4	Compute offset for array 
178:     ST  3,0(5)	Store variable y from AC into loc from AC2 
179:    LDA  3,-48(1)	Load base address of array w 
180:    LDC  3,9(6)	Load of type int constant 
181:     ST  3,-60(1)	Push array index onto temp stack 
182:    LDC  3,50(6)	Load of type int constant 
183:     LD  4,-60(1)	Pop array index into AC1 
184:    LDA  5,-48(1)	Load base address of array w into AC2 
185:    SUB  5,5,4	Compute offset for array 
186:     ST  3,0(5)	Store variable w from AC into loc from AC2 
* CALL dog
187:     ST  1,-60(1)	Store fp in ghost frame for dog 
188:    LDA  3,-26(1)	Load base address of array y 
189:    LDC  3,5(6)	Load of type int constant 
190:    LDA  5,-26(1)	Load base address of array y into AC2 
191:    SUB  5,5,3	Compute offset for array 
192:     LD  3,0(5)	Load array element y from AC into loc from AC2 
193:     ST  3,-62(1)	Push parameter onto new frame 
194:    LDA  3,-48(1)	Load base address of array w 
195:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
196:    LDA  1,-60(1)	Move the fp to the new frame 
197:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
198:    JMP  7,-124(7)	Call function 
199:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
200:    LDA  3,-48(1)	Load base address of array w 
201:    LDC  3,9(6)	Load of type int constant 
202:     ST  3,-60(1)	Push array index onto temp stack 
203:    LDC  3,12(6)	Load of type int constant 
204:     LD  4,-60(1)	Pop array index into AC1 
205:    LDA  5,-48(1)	Load base address of array w into AC2 
206:    SUB  5,5,4	Compute offset for array 
207:     ST  3,0(5)	Store variable w from AC into loc from AC2 
* CALL dog
208:     ST  1,-60(1)	Store fp in ghost frame for dog 
209:    LDA  3,-26(1)	Load base address of array y 
210:    LDA  3,-15(1)	Load base address of array d 
211:    LDC  3,3(6)	Load of type int constant 
212:    LDA  5,-15(1)	Load base address of array d into AC2 
213:    SUB  5,5,3	Compute offset for array 
214:     LD  3,0(5)	Load array element d from AC into loc from AC2 
215:    LDA  5,-26(1)	Load base address of array y into AC2 
216:    SUB  5,5,3	Compute offset for array 
217:     LD  3,0(5)	Load array element y from AC into loc from AC2 
218:     ST  3,-62(1)	Push parameter onto new frame 
219:    LDA  3,-48(1)	Load base address of array w 
220:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
221:    LDA  1,-60(1)	Move the fp to the new frame 
222:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
223:    JMP  7,-149(7)	Call function 
224:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
225:    LDA  3,-4(1)	Load base address of array c 
226:    LDC  3,8(6)	Load of type int constant 
227:     ST  3,-60(1)	Push array index onto temp stack 
228:    LDC  3,4(6)	Load of type int constant 
229:     LD  4,-60(1)	Pop array index into AC1 
230:    LDA  5,-4(1)	Load base address of array c into AC2 
231:    SUB  5,5,4	Compute offset for array 
232:     ST  3,0(5)	Store variable c from AC into loc from AC2 
233:    LDA  3,-4(1)	Load base address of array c 
234:    LDC  3,9(6)	Load of type int constant 
235:     ST  3,-60(1)	Push array index onto temp stack 
236:    LDC  3,25(6)	Load of type int constant 
237:     LD  4,-60(1)	Pop array index into AC1 
238:    LDA  5,-4(1)	Load base address of array c into AC2 
239:    SUB  5,5,4	Compute offset for array 
240:     ST  3,0(5)	Store variable c from AC into loc from AC2 
241:    LDA  3,-26(1)	Load base address of array y 
242:    LDC  3,9(6)	Load of type int constant 
243:     ST  3,-60(1)	Push array index onto temp stack 
244:    LDC  3,66(6)	Load of type int constant 
245:     LD  4,-60(1)	Pop array index into AC1 
246:    LDA  5,-26(1)	Load base address of array y into AC2 
247:    SUB  5,5,4	Compute offset for array 
248:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL dog
249:     ST  1,-60(1)	Store fp in ghost frame for dog 
250:    LDA  3,-26(1)	Load base address of array y 
251:    LDA  3,-15(1)	Load base address of array d 
252:    LDA  3,-4(1)	Load base address of array c 
253:    LDC  3,8(6)	Load of type int constant 
254:    LDA  5,-4(1)	Load base address of array c into AC2 
255:    SUB  5,5,3	Compute offset for array 
256:     LD  3,0(5)	Load array element c from AC into loc from AC2 
257:    LDA  5,-15(1)	Load base address of array d into AC2 
258:    SUB  5,5,3	Compute offset for array 
259:     LD  3,0(5)	Load array element d from AC into loc from AC2 
260:    LDA  5,-26(1)	Load base address of array y into AC2 
261:    SUB  5,5,3	Compute offset for array 
262:     LD  3,0(5)	Load array element y from AC into loc from AC2 
263:     ST  3,-62(1)	Push parameter onto new frame 
264:    LDA  3,-4(1)	Load base address of array c 
265:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
266:    LDA  1,-60(1)	Move the fp to the new frame 
267:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
268:    JMP  7,-194(7)	Call function 
269:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
270:    LDC  3,777(6)	Load of type int constant 
271:     ST  3,-2(1)	Assigning variable x in Local 
272:    LDA  3,-26(1)	Load base address of array y 
273:    LDC  3,7(6)	Load of type int constant 
274:     ST  3,-60(1)	Push array index onto temp stack 
275:    LDC  3,123(6)	Load of type int constant 
276:     LD  4,-60(1)	Pop array index into AC1 
277:    LDA  5,-26(1)	Load base address of array y into AC2 
278:    SUB  5,5,4	Compute offset for array 
279:     ST  3,0(5)	Store variable y from AC into loc from AC2 
280:    LDA  3,-26(1)	Load base address of array y 
281:    LDC  3,9(6)	Load of type int constant 
282:     ST  3,-60(1)	Push array index onto temp stack 
283:    LDA  3,-26(1)	Load base address of array y 
284:    LDC  3,7(6)	Load of type int constant 
285:    LDA  5,-26(1)	Load base address of array y into AC2 
286:    SUB  5,5,3	Compute offset for array 
287:     LD  3,0(5)	Load array element y from AC into loc from AC2 
288:     LD  4,-60(1)	Pop array index into AC1 
289:    LDA  5,-26(1)	Load base address of array y into AC2 
290:    SUB  5,5,4	Compute offset for array 
291:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL dog
292:     ST  1,-60(1)	Store fp in ghost frame for dog 
293:     LD  3,-2(1)	Load variable x into accumulator 
294:     ST  3,-62(1)	Push parameter onto new frame 
295:    LDA  3,-26(1)	Load base address of array y 
296:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
297:    LDA  1,-60(1)	Move the fp to the new frame 
298:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
299:    JMP  7,-225(7)	Call function 
300:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
301:     LD  3,-2(1)	Load variable x into accumulator 
302:     ST  3,-2(1)	Assigning variable x in Local 
303:    LDA  3,-4(1)	Load base address of array c 
304:    LDC  3,9(6)	Load of type int constant 
305:     ST  3,-60(1)	Push array index onto temp stack 
306:     LD  3,-2(1)	Load variable x into accumulator 
307:     LD  4,-60(1)	Pop array index into AC1 
308:    LDA  5,-4(1)	Load base address of array c into AC2 
309:    SUB  5,5,4	Compute offset for array 
310:     ST  3,0(5)	Store variable c from AC into loc from AC2 
311:    LDC  3,888(6)	Load of type int constant 
312:     ST  3,-11(0)	Assigning variable glx in Global 
313:    LDA  3,-26(1)	Load base address of array y 
314:    LDC  3,7(6)	Load of type int constant 
315:     ST  3,-60(1)	Push array index onto temp stack 
316:     LD  3,-11(0)	Load variable glx into accumulator 
317:     LD  4,-60(1)	Pop array index into AC1 
318:    LDA  5,-26(1)	Load base address of array y into AC2 
319:    SUB  5,5,4	Compute offset for array 
320:     ST  3,0(5)	Store variable y from AC into loc from AC2 
321:    LDA  3,-15(1)	Load base address of array d 
322:    LDC  3,6(6)	Load of type int constant 
323:     ST  3,-60(1)	Push array index onto temp stack 
324:    LDC  3,2(6)	Load of type int constant 
325:     LD  4,-60(1)	Pop array index into AC1 
326:    LDA  5,-15(1)	Load base address of array d into AC2 
327:    SUB  5,5,4	Compute offset for array 
328:     ST  3,0(5)	Store variable d from AC into loc from AC2 
329:    LDA  3,-4(1)	Load base address of array c 
330:    LDC  3,2(6)	Load of type int constant 
331:     ST  3,-60(1)	Push array index onto temp stack 
332:    LDC  3,4(6)	Load of type int constant 
333:     LD  4,-60(1)	Pop array index into AC1 
334:    LDA  5,-4(1)	Load base address of array c into AC2 
335:    SUB  5,5,4	Compute offset for array 
336:     ST  3,0(5)	Store variable c from AC into loc from AC2 
337:    LDA  3,-15(1)	Load base address of array d 
338:    LDC  3,4(6)	Load of type int constant 
339:     ST  3,-60(1)	Push array index onto temp stack 
340:    LDC  3,7(6)	Load of type int constant 
341:     LD  4,-60(1)	Pop array index into AC1 
342:    LDA  5,-15(1)	Load base address of array d into AC2 
343:    SUB  5,5,4	Compute offset for array 
344:     ST  3,0(5)	Store variable d from AC into loc from AC2 
345:    LDA  3,-15(1)	Load base address of array d 
346:    LDC  3,2(6)	Load of type int constant 
347:     ST  3,-60(1)	Push array index onto temp stack 
348:    LDA  3,-26(1)	Load base address of array y 
349:    LDA  3,-15(1)	Load base address of array d 
350:    LDA  3,-4(1)	Load base address of array c 
351:    LDA  3,-15(1)	Load base address of array d 
352:    LDC  3,6(6)	Load of type int constant 
353:    LDA  5,-15(1)	Load base address of array d into AC2 
354:    SUB  5,5,3	Compute offset for array 
355:     LD  3,0(5)	Load array element d from AC into loc from AC2 
356:    LDA  5,-4(1)	Load base address of array c into AC2 
357:    SUB  5,5,3	Compute offset for array 
358:     LD  3,0(5)	Load array element c from AC into loc from AC2 
359:    LDA  5,-15(1)	Load base address of array d into AC2 
360:    SUB  5,5,3	Compute offset for array 
361:     LD  3,0(5)	Load array element d from AC into loc from AC2 
362:    LDA  5,-26(1)	Load base address of array y into AC2 
363:    SUB  5,5,3	Compute offset for array 
364:     LD  3,0(5)	Load array element y from AC into loc from AC2 
365:     LD  4,-60(1)	Pop array index into AC1 
366:    LDA  5,-15(1)	Load base address of array d into AC2 
367:    SUB  5,5,4	Compute offset for array 
368:     ST  3,0(5)	Store variable d from AC into loc from AC2 
* CALL dog
369:     ST  1,-60(1)	Store fp in ghost frame for dog 
370:    LDA  3,-26(1)	Load base address of array y 
371:    LDA  3,-15(1)	Load base address of array d 
372:    LDA  3,-4(1)	Load base address of array c 
373:    LDC  3,8(6)	Load of type int constant 
374:    LDA  5,-4(1)	Load base address of array c into AC2 
375:    SUB  5,5,3	Compute offset for array 
376:     LD  3,0(5)	Load array element c from AC into loc from AC2 
377:    LDA  5,-15(1)	Load base address of array d into AC2 
378:    SUB  5,5,3	Compute offset for array 
379:     LD  3,0(5)	Load array element d from AC into loc from AC2 
380:    LDA  5,-26(1)	Load base address of array y into AC2 
381:    SUB  5,5,3	Compute offset for array 
382:     LD  3,0(5)	Load array element y from AC into loc from AC2 
383:     ST  3,-62(1)	Push parameter onto new frame 
384:    LDA  3,-4(1)	Load base address of array c 
385:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
386:    LDA  1,-60(1)	Move the fp to the new frame 
387:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
388:    JMP  7,-314(7)	Call function 
389:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
390:    LDA  3,-15(1)	Load base address of array d 
391:    LDC  3,2(6)	Load of type int constant 
392:     ST  3,-60(1)	Push array index onto temp stack 
393:    LDA  3,-4(1)	Load base address of array c 
394:    LDC  3,3(6)	Load of type int constant 
395:    LDA  5,-4(1)	Load base address of array c into AC2 
396:    SUB  5,5,3	Compute offset for array 
397:     LD  3,0(5)	Load array element c from AC into loc from AC2 
398:     LD  4,-60(1)	Pop array index into AC1 
399:    LDA  5,-15(1)	Load base address of array d into AC2 
400:    SUB  5,5,4	Compute offset for array 
401:     ST  3,0(5)	Store variable d from AC into loc from AC2 
402:    LDA  3,-26(1)	Load base address of array y 
403:    LDC  3,7(6)	Load of type int constant 
404:     ST  3,-60(1)	Push array index onto temp stack 
405:    LDA  3,-26(1)	Load base address of array y 
406:    LDC  3,9(6)	Load of type int constant 
407:    LDA  5,-26(1)	Load base address of array y into AC2 
408:    SUB  5,5,3	Compute offset for array 
409:     LD  3,0(5)	Load array element y from AC into loc from AC2 
410:     LD  4,-60(1)	Pop array index into AC1 
411:    LDA  5,-26(1)	Load base address of array y into AC2 
412:    SUB  5,5,4	Compute offset for array 
413:     ST  3,0(5)	Store variable y from AC into loc from AC2 
414:    LDA  3,-1(0)	Load base address of array gl 
415:    LDC  3,2(6)	Load of type int constant 
416:     ST  3,-60(1)	Push array index onto temp stack 
417:    LDC  3,3(6)	Load of type int constant 
418:     LD  4,-60(1)	Pop array index into AC1 
419:    LDA  5,-1(0)	Load base address of array gl into AC2 
420:    SUB  5,5,4	Compute offset for array 
421:     ST  3,0(5)	Store variable gl from AC into loc from AC2 
422:    LDA  3,-1(0)	Load base address of array gl 
423:    LDC  3,2(6)	Load of type int constant 
424:    LDA  5,-1(0)	Load base address of array gl into AC2 
425:    SUB  5,5,3	Compute offset for array 
426:     LD  3,0(5)	Load array element gl from AC into loc from AC2 
427:     ST  3,-2(1)	Assigning variable x in Local 
428:    LDA  3,-26(1)	Load base address of array y 
429:    LDC  3,7(6)	Load of type int constant 
430:     ST  3,-60(1)	Push array index onto temp stack 
431:    LDA  3,-1(0)	Load base address of array gl 
432:    LDC  3,9(6)	Load of type int constant 
433:    LDA  5,-1(0)	Load base address of array gl into AC2 
434:    SUB  5,5,3	Compute offset for array 
435:     LD  3,0(5)	Load array element gl from AC into loc from AC2 
436:     LD  4,-60(1)	Pop array index into AC1 
437:    LDA  5,-26(1)	Load base address of array y into AC2 
438:    SUB  5,5,4	Compute offset for array 
439:     ST  3,0(5)	Store variable y from AC into loc from AC2 
440:    LDA  3,-1(0)	Load base address of array gl 
441:    LDC  3,7(6)	Load of type int constant 
442:     ST  3,-60(1)	Push array index onto temp stack 
443:    LDA  3,-26(1)	Load base address of array y 
444:    LDC  3,9(6)	Load of type int constant 
445:    LDA  5,-26(1)	Load base address of array y into AC2 
446:    SUB  5,5,3	Compute offset for array 
447:     LD  3,0(5)	Load array element y from AC into loc from AC2 
448:     LD  4,-60(1)	Pop array index into AC1 
449:    LDA  5,-1(0)	Load base address of array gl into AC2 
450:    SUB  5,5,4	Compute offset for array 
451:     ST  3,0(5)	Store variable gl from AC into loc from AC2 
452:    LDA  3,-26(1)	Load base address of array y 
453:    LDC  3,0(6)	Load of type int constant 
454:     ST  3,-60(1)	Push array index onto temp stack 
455:    LDC  3,5(6)	Load of type int constant 
456:     LD  4,-60(1)	Pop array index into AC1 
457:    LDA  5,-26(1)	Load base address of array y into AC2 
458:    SUB  5,5,4	Compute offset for array 
459:     ST  3,0(5)	Store variable y from AC into loc from AC2 
460:    LDA  3,-15(1)	Load base address of array d 
461:    LDC  3,5(6)	Load of type int constant 
462:     ST  3,-60(1)	Push array index onto temp stack 
463:    LDC  3,3(6)	Load of type int constant 
464:     LD  4,-60(1)	Pop array index into AC1 
465:    LDA  5,-15(1)	Load base address of array d into AC2 
466:    SUB  5,5,4	Compute offset for array 
467:     ST  3,0(5)	Store variable d from AC into loc from AC2 
468:    LDA  3,-4(1)	Load base address of array c 
469:    LDC  3,8(6)	Load of type int constant 
470:     ST  3,-60(1)	Push array index onto temp stack 
471:    LDA  3,-15(1)	Load base address of array d 
472:    LDA  3,-26(1)	Load base address of array y 
473:    LDC  3,0(6)	Load of type int constant 
474:    LDA  5,-26(1)	Load base address of array y into AC2 
475:    SUB  5,5,3	Compute offset for array 
476:     LD  3,0(5)	Load array element y from AC into loc from AC2 
477:    LDA  5,-15(1)	Load base address of array d into AC2 
478:    SUB  5,5,3	Compute offset for array 
479:     LD  3,0(5)	Load array element d from AC into loc from AC2 
480:     LD  4,-60(1)	Pop array index into AC1 
481:    LDA  5,-4(1)	Load base address of array c into AC2 
482:    SUB  5,5,4	Compute offset for array 
483:     ST  3,0(5)	Store variable c from AC into loc from AC2 
* CALL output
484:     ST  1,-60(1)	Store fp in ghost frame for output 
485:    LDA  3,-4(1)	Load base address of array c 
486:    LDC  3,8(6)	Load of type int constant 
487:    LDA  5,-4(1)	Load base address of array c into AC2 
488:    SUB  5,5,3	Compute offset for array 
489:     LD  3,0(5)	Load array element c from AC into loc from AC2 
490:     ST  3,-62(1)	Push parameter onto new frame 
* Begin call
491:    LDA  1,-60(1)	Move the fp to the new frame 
492:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
493:    JMP  7,-488(7)	Call function 
494:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
495:     ST  1,-60(1)	Store fp in ghost frame for outnl 
* Begin call
496:    LDA  1,-60(1)	Move the fp to the new frame 
497:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
498:    JMP  7,-465(7)	Call function 
499:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
500:    LDA  3,-15(1)	Load base address of array d 
501:    LDC  3,3(6)	Load of type int constant 
502:     ST  3,-60(1)	Push array index onto temp stack 
503:    LDC  3,4(6)	Load of type int constant 
504:     LD  4,-60(1)	Pop array index into AC1 
505:    LDA  5,-15(1)	Load base address of array d into AC2 
506:    SUB  5,5,4	Compute offset for array 
507:     ST  3,0(5)	Store variable d from AC into loc from AC2 
508:    LDA  3,-26(1)	Load base address of array y 
509:    LDC  3,4(6)	Load of type int constant 
510:     ST  3,-60(1)	Push array index onto temp stack 
511:    LDC  3,987(6)	Load of type int constant 
512:     LD  4,-60(1)	Pop array index into AC1 
513:    LDA  5,-26(1)	Load base address of array y into AC2 
514:    SUB  5,5,4	Compute offset for array 
515:     ST  3,0(5)	Store variable y from AC into loc from AC2 
516:    LDA  3,-4(1)	Load base address of array c 
517:    LDC  3,9(6)	Load of type int constant 
518:     ST  3,-60(1)	Push array index onto temp stack 
519:    LDC  3,3(6)	Load of type int constant 
520:     LD  4,-60(1)	Pop array index into AC1 
521:    LDA  5,-4(1)	Load base address of array c into AC2 
522:    SUB  5,5,4	Compute offset for array 
523:     LD  4,0(5)	Load lhs variable 
524:    SUB  3,4,3	-= operation 
525:     ST  3,0(5)	Store variable c from AC into loc from AC2 
* CALL dog
526:     ST  1,-60(1)	Store fp in ghost frame for dog 
527:    LDA  3,-26(1)	Load base address of array y 
528:    LDA  3,-15(1)	Load base address of array d 
529:    LDA  3,-4(1)	Load base address of array c 
530:    LDC  3,8(6)	Load of type int constant 
531:    LDA  5,-4(1)	Load base address of array c into AC2 
532:    SUB  5,5,3	Compute offset for array 
533:     LD  3,0(5)	Load array element c from AC into loc from AC2 
534:    LDA  5,-15(1)	Load base address of array d into AC2 
535:    SUB  5,5,3	Compute offset for array 
536:     LD  3,0(5)	Load array element d from AC into loc from AC2 
537:    LDA  5,-26(1)	Load base address of array y into AC2 
538:    SUB  5,5,3	Compute offset for array 
539:     LD  3,0(5)	Load array element y from AC into loc from AC2 
540:     ST  3,-62(1)	Push parameter onto new frame 
541:    LDA  3,-4(1)	Load base address of array c 
542:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
543:    LDA  1,-60(1)	Move the fp to the new frame 
544:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
545:    JMP  7,-471(7)	Call function 
546:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
547:    LDA  3,-4(1)	Load base address of array c 
548:    LDC  3,9(6)	Load of type int constant 
549:    LDA  5,-4(1)	Load base address of array c into AC2 
550:    SUB  5,5,3	Compute offset for array 
551:     LD  3,0(5)	Load array element c from AC into loc from AC2 
552:     LD  4,-2(1)	Load lhs variable 
553:    ADD  3,4,3	+= operation 
554:     ST  3,-2(1)	Assigning variable x in Local 
555:    LDA  3,-4(1)	Load base address of array c 
556:    LDC  3,9(6)	Load of type int constant 
557:    LDA  5,-4(1)	Load base address of array c into AC2 
558:    SUB  5,5,3	Compute offset for array 
559:     LD  3,0(5)	Load array element c from AC into loc from AC2 
560:     LD  4,-2(1)	Load lhs variable 
561:    SUB  3,4,3	-= operation 
562:     ST  3,-2(1)	Assigning variable x in Local 
563:    LDA  3,-26(1)	Load base address of array y 
564:    LDC  3,8(6)	Load of type int constant 
565:     ST  3,-60(1)	Push array index onto temp stack 
566:    LDC  3,8(6)	Load of type int constant 
567:     LD  4,-60(1)	Pop array index into AC1 
568:    LDA  5,-26(1)	Load base address of array y into AC2 
569:    SUB  5,5,4	Compute offset for array 
570:     ST  3,0(5)	Store variable y from AC into loc from AC2 
571:    LDA  3,-26(1)	Load base address of array y 
572:    LDC  3,9(6)	Load of type int constant 
573:     ST  3,-60(1)	Push array index onto temp stack 
574:    LDA  3,-26(1)	Load base address of array y 
* CALL getnxtindex
575:     ST  1,-61(1)	Store fp in ghost frame for getnxtindex 
576:    LDC  3,7(6)	Load of type int constant 
577:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
578:    LDA  1,-61(1)	Move the fp to the new frame 
579:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
580:    JMP  7,-459(7)	Call function 
581:    LDA  3,0(2)	Save return result in accumulator 
* END CALL getnxtindex
582:    LDA  5,-26(1)	Load base address of array y into AC2 
583:    SUB  5,5,3	Compute offset for array 
584:     LD  3,0(5)	Load array element y from AC into loc from AC2 
585:     ST  3,-61(1)	Push left side onto temp variable stack 
586:    LDC  3,1(6)	Load of type int constant 
587:     LD  4,-61(1)	Pop left hand side into AC1 
588:    ADD  3,4,3	+ Operation 
589:     LD  4,-60(1)	Pop array index into AC1 
590:    LDA  5,-26(1)	Load base address of array y into AC2 
591:    SUB  5,5,4	Compute offset for array 
592:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL dog
593:     ST  1,-60(1)	Store fp in ghost frame for dog 
594:    LDA  3,-26(1)	Load base address of array y 
595:    LDC  3,4(6)	Load of type int constant 
596:    LDA  5,-26(1)	Load base address of array y into AC2 
597:    SUB  5,5,3	Compute offset for array 
598:     LD  3,0(5)	Load array element y from AC into loc from AC2 
599:     ST  3,-62(1)	Push parameter onto new frame 
600:    LDA  3,-26(1)	Load base address of array y 
601:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
602:    LDA  1,-60(1)	Move the fp to the new frame 
603:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
604:    JMP  7,-530(7)	Call function 
605:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
606:    LDA  3,-4(1)	Load base address of array c 
607:    LDC  3,5(6)	Load of type int constant 
608:     ST  3,-60(1)	Push array index onto temp stack 
609:    LDC  3,0(6)	Load of type int constant 
610:     LD  4,-60(1)	Pop array index into AC1 
611:    LDA  5,-4(1)	Load base address of array c into AC2 
612:    SUB  5,5,4	Compute offset for array 
613:     ST  3,0(5)	Store variable c from AC into loc from AC2 
614:    LDA  3,-48(1)	Load base address of array w 
615:    LDC  3,0(6)	Load of type int constant 
616:     ST  3,-60(1)	Push array index onto temp stack 
617:    LDC  3,3(6)	Load of type int constant 
618:     LD  4,-60(1)	Pop array index into AC1 
619:    LDA  5,-48(1)	Load base address of array w into AC2 
620:    SUB  5,5,4	Compute offset for array 
621:     ST  3,0(5)	Store variable w from AC into loc from AC2 
622:    LDA  3,-37(1)	Load base address of array z 
623:    LDC  3,3(6)	Load of type int constant 
624:     ST  3,-60(1)	Push array index onto temp stack 
625:    LDC  3,9(6)	Load of type int constant 
626:     LD  4,-60(1)	Pop array index into AC1 
627:    LDA  5,-37(1)	Load base address of array z into AC2 
628:    SUB  5,5,4	Compute offset for array 
629:     ST  3,0(5)	Store variable z from AC into loc from AC2 
630:    LDA  3,-26(1)	Load base address of array y 
631:    LDC  3,9(6)	Load of type int constant 
632:     ST  3,-60(1)	Push array index onto temp stack 
633:    LDC  3,1(6)	Load of type int constant 
634:     LD  4,-60(1)	Pop array index into AC1 
635:    LDA  5,-26(1)	Load base address of array y into AC2 
636:    SUB  5,5,4	Compute offset for array 
637:     ST  3,0(5)	Store variable y from AC into loc from AC2 
638:    LDA  3,-15(1)	Load base address of array d 
639:    LDA  3,-26(1)	Load base address of array y 
640:    LDA  3,-37(1)	Load base address of array z 
641:    LDA  3,-48(1)	Load base address of array w 
642:    LDA  3,-4(1)	Load base address of array c 
643:    LDC  3,5(6)	Load of type int constant 
644:    LDA  5,-4(1)	Load base address of array c into AC2 
645:    SUB  5,5,3	Compute offset for array 
646:     LD  3,0(5)	Load array element c from AC into loc from AC2 
647:    LDA  5,-48(1)	Load base address of array w into AC2 
648:    SUB  5,5,3	Compute offset for array 
649:     LD  3,0(5)	Load array element w from AC into loc from AC2 
650:    LDA  5,-37(1)	Load base address of array z into AC2 
651:    SUB  5,5,3	Compute offset for array 
652:     LD  3,0(5)	Load array element z from AC into loc from AC2 
653:    LDA  5,-26(1)	Load base address of array y into AC2 
654:    SUB  5,5,3	Compute offset for array 
655:     LD  3,0(5)	Load array element y from AC into loc from AC2 
656:     ST  3,-60(1)	Push array index onto temp stack 
657:    LDC  3,77(6)	Load of type int constant 
658:     LD  4,-60(1)	Pop array index into AC1 
659:    LDA  5,-15(1)	Load base address of array d into AC2 
660:    SUB  5,5,4	Compute offset for array 
661:     ST  3,0(5)	Store variable d from AC into loc from AC2 
662:    LDA  3,-4(1)	Load base address of array c 
663:    LDC  3,9(6)	Load of type int constant 
664:     ST  3,-60(1)	Push array index onto temp stack 
665:    LDA  3,-15(1)	Load base address of array d 
666:    LDC  3,1(6)	Load of type int constant 
667:    LDA  5,-15(1)	Load base address of array d into AC2 
668:    SUB  5,5,3	Compute offset for array 
669:     LD  3,0(5)	Load array element d from AC into loc from AC2 
670:     LD  4,-60(1)	Pop array index into AC1 
671:    LDA  5,-4(1)	Load base address of array c into AC2 
672:    SUB  5,5,4	Compute offset for array 
673:     ST  3,0(5)	Store variable c from AC into loc from AC2 
* CALL dog
674:     ST  1,-60(1)	Store fp in ghost frame for dog 
675:    LDC  3,66(6)	Load of type int constant 
676:     ST  3,-62(1)	Push parameter onto new frame 
677:    LDA  3,-4(1)	Load base address of array c 
678:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
679:    LDA  1,-60(1)	Move the fp to the new frame 
680:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
681:    JMP  7,-607(7)	Call function 
682:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* COMPOUND
683:    LDC  3,0(6)	Load of type int constant 
684:     ST  3,-58(1)	Assigning variable p in Local 
* Beginning WHILE statement
685:     LD  3,-58(1)	Load variable p into accumulator 
686:     ST  3,-60(1)	Push left side onto temp variable stack 
687:    LDC  3,10(6)	Load of type int constant 
688:     LD  4,-60(1)	Pop left hand side into AC1 
689:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
691:     LD  3,-58(1)	Load variable p into accumulator 
692:     ST  3,-59(1)	Assigning variable q in Local 
693:    LDA  3,-4(1)	Load base address of array c 
694:    LDC  3,9(6)	Load of type int constant 
695:     ST  3,-60(1)	Push left side onto temp variable stack 
696:     LD  3,-59(1)	Load variable q into accumulator 
697:     LD  4,-60(1)	Pop left hand side into AC1 
698:    SUB  3,4,3	- Subtraction Operation 
699:     ST  3,-60(1)	Push array index onto temp stack 
700:    LDC  3,1(6)	Load of type int constant 
701:     LD  4,-58(1)	Load lhs variable 
702:    ADD  3,4,3	+= operation 
703:     ST  3,-58(1)	Assigning variable p in Local 
704:     LD  4,-60(1)	Pop array index into AC1 
705:    LDA  5,-4(1)	Load base address of array c into AC2 
706:    SUB  5,5,4	Compute offset for array 
707:     ST  3,0(5)	Store variable c from AC into loc from AC2 
* END COMPOUND
708:    JMP  7,-24(7)	Go to L1 
690:    JZR  3,18(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* CALL showIntArray
709:     ST  1,-60(1)	Store fp in ghost frame for showIntArray 
710:    LDA  3,-4(1)	Load base address of array c 
711:     ST  3,-62(1)	Push parameter onto new frame 
712:    LDC  3,10(6)	Load of type int constant 
713:     ST  3,-63(1)	Push parameter onto new frame 
* Begin call
714:    LDA  1,-60(1)	Move the fp to the new frame 
715:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
716:    JMP  7,-678(7)	Call function 
717:    LDA  3,0(2)	Save return result in accumulator 
* END CALL showIntArray
* END COMPOUND
* Add standard closing in case there is no return statement
718:    LDC  2,0(6)	Set return value to 0 
719:     LD  3,-1(1)	Load return address 
720:     LD  1,0(1)	Adjust fp 
721:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,721(7)	Jump to init [backpatch] 
* INIT
722:    LDA  1,-12(0)	set first frame at end of globals 
723:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
724:    LDC  3,10(6)	Load size of gl into AC 
725:     ST  3,0(0)	Store size of gl in data memory 
* END INIT GLOBALS AND STATICS
726:    LDA  3,1(7)	Return address in ac 
727:    JMP  7,-592(7)	Jump to main 
728:   HALT  0,0,0	DONE! 
* END INIT
