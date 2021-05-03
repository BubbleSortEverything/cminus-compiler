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
* FUNCTION showInt
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
 40:     ST  1,-3(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load variable x into accumulator 
 42:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 43:    LDA  1,-3(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-40(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 47:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 48:    LDA  1,-3(1)	Move the fp to the new frame 
 49:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 50:    JMP  7,-17(7)	Call function 
 51:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 52:    LDC  2,0(6)	Set return value to 0 
 53:     LD  3,-1(1)	Load return address 
 54:     LD  1,0(1)	Adjust fp 
 55:    JMP  7,0(3)	Return 
* END FUNCTION showInt
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION showIntArray
 56:     ST  3,-1(1)	Store return address 
* COMPOUND
 57:    LDC  3,0(6)	Load of type int constant 
 58:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
 59:     LD  3,-4(1)	Load variable i into accumulator 
 60:     ST  3,-5(1)	Push left side onto temp variable stack 
 61:     LD  3,-3(1)	Load variable size into accumulator 
 62:     LD  4,-5(1)	Pop left hand side into AC1 
 63:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 65:     ST  1,-5(1)	Store fp in ghost frame for output 
 66:     LD  3,-2(1)	Load base address of array x 
 67:     LD  3,-4(1)	Load variable i into accumulator 
 68:     LD  5,-2(1)	Load base address of array x into AC2 
 69:    SUB  5,5,3	Compute offset for array 
 70:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 71:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 72:    LDA  1,-5(1)	Move the fp to the new frame 
 73:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 74:    JMP  7,-69(7)	Call function 
 75:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 76:     LD  3,-4(1)	Load variable i into accumulator 
 77:     ST  3,-5(1)	Push left side onto temp variable stack 
 78:    LDC  3,1(6)	Load of type int constant 
 79:     LD  4,-5(1)	Pop left hand side into AC1 
 80:    ADD  3,4,3	+ Operation 
 81:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
 82:    JMP  7,-24(7)	Go to L1 
 64:    JZR  3,18(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
 83:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
 84:    LDA  1,-5(1)	Move the fp to the new frame 
 85:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 86:    JMP  7,-53(7)	Call function 
 87:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 88:    LDC  2,0(6)	Set return value to 0 
 89:     LD  3,-1(1)	Load return address 
 90:     LD  1,0(1)	Adjust fp 
 91:    JMP  7,0(3)	Return 
* END FUNCTION showIntArray
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION showBool
 92:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL outputb
 93:     ST  1,-3(1)	Store fp in ghost frame for outputb 
 94:     LD  3,-2(1)	Load variable x into accumulator 
 95:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 96:    LDA  1,-3(1)	Move the fp to the new frame 
 97:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 98:    JMP  7,-82(7)	Call function 
 99:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
100:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
101:    LDA  1,-3(1)	Move the fp to the new frame 
102:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
103:    JMP  7,-70(7)	Call function 
104:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
105:    LDC  2,0(6)	Set return value to 0 
106:     LD  3,-1(1)	Load return address 
107:     LD  1,0(1)	Adjust fp 
108:    JMP  7,0(3)	Return 
* END FUNCTION showBool
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION truth
109:     ST  3,-1(1)	Store return address 
* COMPOUND
110:    LDC  3,1(6)	Load of type bool constant 
111:    LDA  2,0(3)	Copy accumulator to return register 
112:     LD  3,-1(1)	Load return address 
113:     LD  1,0(1)	Adjust fp 
114:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
115:    LDC  2,0(6)	Set return value to 0 
116:     LD  3,-1(1)	Load return address 
117:     LD  1,0(1)	Adjust fp 
118:    JMP  7,0(3)	Return 
* END FUNCTION truth
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION magic
119:     ST  3,-1(1)	Store return address 
* COMPOUND
120:    LDC  3,666(6)	Load of type int constant 
121:    LDA  2,0(3)	Copy accumulator to return register 
122:     LD  3,-1(1)	Load return address 
123:     LD  1,0(1)	Adjust fp 
124:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
125:    LDC  2,0(6)	Set return value to 0 
126:     LD  3,-1(1)	Load return address 
127:     LD  1,0(1)	Adjust fp 
128:    JMP  7,0(3)	Return 
* END FUNCTION magic
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION sqr
129:     ST  3,-1(1)	Store return address 
* COMPOUND
130:     LD  3,-2(1)	Load variable x into accumulator 
131:     ST  3,-3(1)	Push left side onto temp variable stack 
132:     LD  3,-2(1)	Load variable x into accumulator 
133:     LD  4,-3(1)	Pop left hand side into AC1 
134:    MUL  3,4,3	* Multiplication Operation 
135:    LDA  2,0(3)	Copy accumulator to return register 
136:     LD  3,-1(1)	Load return address 
137:     LD  1,0(1)	Adjust fp 
138:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
139:    LDC  2,0(6)	Set return value to 0 
140:     LD  3,-1(1)	Load return address 
141:     LD  1,0(1)	Adjust fp 
142:    JMP  7,0(3)	Return 
* END FUNCTION sqr
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION add
143:     ST  3,-1(1)	Store return address 
* COMPOUND
144:     LD  3,-2(1)	Load variable x into accumulator 
145:     ST  3,-4(1)	Push left side onto temp variable stack 
146:     LD  3,-3(1)	Load variable y into accumulator 
147:     LD  4,-4(1)	Pop left hand side into AC1 
148:    ADD  3,4,3	+ Operation 
149:    LDA  2,0(3)	Copy accumulator to return register 
150:     LD  3,-1(1)	Load return address 
151:     LD  1,0(1)	Adjust fp 
152:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
153:    LDC  2,0(6)	Set return value to 0 
154:     LD  3,-1(1)	Load return address 
155:     LD  1,0(1)	Adjust fp 
156:    JMP  7,0(3)	Return 
* END FUNCTION add
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION mul
157:     ST  3,-1(1)	Store return address 
* COMPOUND
158:     LD  3,-2(1)	Load variable x into accumulator 
159:     ST  3,-4(1)	Push left side onto temp variable stack 
160:     LD  3,-3(1)	Load variable y into accumulator 
161:     LD  4,-4(1)	Pop left hand side into AC1 
162:    MUL  3,4,3	* Multiplication Operation 
163:    LDA  2,0(3)	Copy accumulator to return register 
164:     LD  3,-1(1)	Load return address 
165:     LD  1,0(1)	Adjust fp 
166:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
167:    LDC  2,0(6)	Set return value to 0 
168:     LD  3,-1(1)	Load return address 
169:     LD  1,0(1)	Adjust fp 
170:    JMP  7,0(3)	Return 
* END FUNCTION mul
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION caller
171:     ST  3,-1(1)	Store return address 
* COMPOUND
172:    LDC  3,666(6)	Load of type int constant 
173:     ST  3,-5(1)	Assigning variable a in Local 
174:    LDC  3,777(6)	Load of type int constant 
175:     ST  3,0(0)	Assigning variable g in Global 
* CALL sqr
176:     ST  1,-6(1)	Store fp in ghost frame for sqr 
177:     LD  3,-2(1)	Load variable x into accumulator 
178:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
179:    LDA  1,-6(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-53(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sqr
183:     ST  3,-4(1)	Assigning variable z in Local 
* CALL output
184:     ST  1,-6(1)	Store fp in ghost frame for output 
185:     LD  3,-4(1)	Load variable z into accumulator 
186:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
187:    LDA  1,-6(1)	Move the fp to the new frame 
188:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
189:    JMP  7,-184(7)	Call function 
190:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
191:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
192:    LDA  1,-6(1)	Move the fp to the new frame 
193:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
194:    JMP  7,-161(7)	Call function 
195:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL sqr
196:     ST  1,-6(1)	Store fp in ghost frame for sqr 
197:     LD  3,-3(1)	Load base address of array y 
198:    LDC  3,7(6)	Load of type int constant 
199:     LD  5,-3(1)	Load base address of array y into AC2 
200:    SUB  5,5,3	Compute offset for array 
201:     LD  3,0(5)	Load array element y from AC into loc from AC2 
202:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
203:    LDA  1,-6(1)	Move the fp to the new frame 
204:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
205:    JMP  7,-77(7)	Call function 
206:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sqr
207:     ST  3,-4(1)	Assigning variable z in Local 
* CALL output
208:     ST  1,-6(1)	Store fp in ghost frame for output 
209:     LD  3,-4(1)	Load variable z into accumulator 
210:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
211:    LDA  1,-6(1)	Move the fp to the new frame 
212:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
213:    JMP  7,-208(7)	Call function 
214:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
215:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
216:    LDA  1,-6(1)	Move the fp to the new frame 
217:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
218:    JMP  7,-185(7)	Call function 
219:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL sqr
220:     ST  1,-6(1)	Store fp in ghost frame for sqr 
221:     LD  3,-5(1)	Load variable a into accumulator 
222:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
223:    LDA  1,-6(1)	Move the fp to the new frame 
224:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
225:    JMP  7,-97(7)	Call function 
226:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sqr
227:     ST  3,-4(1)	Assigning variable z in Local 
* CALL output
228:     ST  1,-6(1)	Store fp in ghost frame for output 
229:     LD  3,-4(1)	Load variable z into accumulator 
230:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
231:    LDA  1,-6(1)	Move the fp to the new frame 
232:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
233:    JMP  7,-228(7)	Call function 
234:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
235:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
236:    LDA  1,-6(1)	Move the fp to the new frame 
237:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
238:    JMP  7,-205(7)	Call function 
239:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL sqr
240:     ST  1,-6(1)	Store fp in ghost frame for sqr 
241:     LD  3,0(0)	Load variable g into accumulator 
242:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
243:    LDA  1,-6(1)	Move the fp to the new frame 
244:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
245:    JMP  7,-117(7)	Call function 
246:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sqr
247:     ST  3,-4(1)	Assigning variable z in Local 
* CALL output
248:     ST  1,-6(1)	Store fp in ghost frame for output 
249:     LD  3,-4(1)	Load variable z into accumulator 
250:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
251:    LDA  1,-6(1)	Move the fp to the new frame 
252:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
253:    JMP  7,-248(7)	Call function 
254:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
255:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
256:    LDA  1,-6(1)	Move the fp to the new frame 
257:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
258:    JMP  7,-225(7)	Call function 
259:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
260:    LDC  2,0(6)	Set return value to 0 
261:     LD  3,-1(1)	Load return address 
262:     LD  1,0(1)	Adjust fp 
263:    JMP  7,0(3)	Return 
* END FUNCTION caller
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION swap
264:     ST  3,-1(1)	Store return address 
* COMPOUND
265:     LD  3,-2(1)	Load base address of array x 
266:     LD  3,-3(1)	Load variable z1 into accumulator 
267:     LD  5,-2(1)	Load base address of array x into AC2 
268:    SUB  5,5,3	Compute offset for array 
269:     LD  3,0(5)	Load array element x from AC into loc from AC2 
270:     ST  3,-5(1)	Assigning variable tmp in Local 
271:     LD  3,-2(1)	Load base address of array x 
272:     LD  3,-3(1)	Load variable z1 into accumulator 
273:     ST  3,-6(1)	Push array index onto temp stack 
274:     LD  3,-2(1)	Load base address of array x 
275:     LD  3,-4(1)	Load variable z2 into accumulator 
276:     LD  5,-2(1)	Load base address of array x into AC2 
277:    SUB  5,5,3	Compute offset for array 
278:     LD  3,0(5)	Load array element x from AC into loc from AC2 
279:     LD  4,-6(1)	Pop array index into AC1 
280:     LD  5,-2(1)	Load base address of array x into AC2 
281:    SUB  5,5,4	Compute offset for array 
282:     ST  3,0(5)	Store variable x from AC into loc from AC2 
283:     LD  3,-2(1)	Load base address of array x 
284:     LD  3,-4(1)	Load variable z2 into accumulator 
285:     ST  3,-6(1)	Push array index onto temp stack 
286:     LD  3,-5(1)	Load variable tmp into accumulator 
287:     LD  4,-6(1)	Pop array index into AC1 
288:     LD  5,-2(1)	Load base address of array x into AC2 
289:    SUB  5,5,4	Compute offset for array 
290:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* END COMPOUND
* Add standard closing in case there is no return statement
291:    LDC  2,0(6)	Set return value to 0 
292:     LD  3,-1(1)	Load return address 
293:     LD  1,0(1)	Adjust fp 
294:    JMP  7,0(3)	Return 
* END FUNCTION swap
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
295:     ST  3,-1(1)	Store return address 
* COMPOUND
296:    LDC  3,10(6)	Load size of r into AC 
297:     ST  3,-4(1)	Store size of r in data memory 
298:    LDC  3,10(6)	Load size of s into AC 
299:     ST  3,-15(1)	Store size of s in data memory 
300:    LDC  3,0(6)	Load of type int constant 
301:     ST  3,-2(1)	Assigning variable p in Local 
* Beginning WHILE statement
302:     LD  3,-2(1)	Load variable p into accumulator 
303:     ST  3,-26(1)	Push left side onto temp variable stack 
304:    LDC  3,10(6)	Load of type int constant 
305:     LD  4,-26(1)	Pop left hand side into AC1 
306:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
308:    LDA  3,-5(1)	Load base address of array r 
309:     LD  3,-2(1)	Load variable p into accumulator 
310:     ST  3,-26(1)	Push array index onto temp stack 
311:     LD  3,-2(1)	Load variable p into accumulator 
312:     LD  4,-26(1)	Pop array index into AC1 
313:    LDA  5,-5(1)	Load base address of array r into AC2 
314:    SUB  5,5,4	Compute offset for array 
315:     ST  3,0(5)	Store variable r from AC into loc from AC2 
316:     LD  4,-2(1)	Load lhs variable 
317:    LDA  3,1(4)	++ Increment accumulator operation 
318:     ST  3,-2(1)	Assigning variable p in Local 
* END COMPOUND
319:    JMP  7,-18(7)	Go to L1 
307:    JZR  3,12(7)	JMP if condition is false 
* End WHILE statement
320:    LDC  3,111(6)	Load of type int constant 
321:     ST  3,-2(1)	Assigning variable p in Local 
322:    LDC  3,222(6)	Load of type int constant 
323:     ST  3,-3(1)	Assigning variable q in Local 
324:    LDA  3,-5(1)	Load base address of array r 
325:    LDC  3,7(6)	Load of type int constant 
326:     ST  3,-26(1)	Push array index onto temp stack 
327:    LDC  3,333(6)	Load of type int constant 
328:     LD  4,-26(1)	Pop array index into AC1 
329:    LDA  5,-5(1)	Load base address of array r into AC2 
330:    SUB  5,5,4	Compute offset for array 
331:     ST  3,0(5)	Store variable r from AC into loc from AC2 
332:    LDA  3,-16(1)	Load base address of array s 
333:    LDC  3,7(6)	Load of type int constant 
334:     ST  3,-26(1)	Push array index onto temp stack 
335:    LDC  3,444(6)	Load of type int constant 
336:     LD  4,-26(1)	Pop array index into AC1 
337:    LDA  5,-16(1)	Load base address of array s into AC2 
338:    SUB  5,5,4	Compute offset for array 
339:     ST  3,0(5)	Store variable s from AC into loc from AC2 
* CALL showInt
340:     ST  1,-26(1)	Store fp in ghost frame for showInt 
341:     LD  3,-2(1)	Load variable p into accumulator 
342:     ST  3,-28(1)	Push parameter onto new frame 
* Begin call
343:    LDA  1,-26(1)	Move the fp to the new frame 
344:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
345:    JMP  7,-307(7)	Call function 
346:    LDA  3,0(2)	Save return result in accumulator 
* END CALL showInt
* CALL showIntArray
347:     ST  1,-26(1)	Store fp in ghost frame for showIntArray 
348:    LDA  3,-5(1)	Load base address of array r 
349:     ST  3,-28(1)	Push parameter onto new frame 
350:    LDC  3,10(6)	Load of type int constant 
351:     ST  3,-29(1)	Push parameter onto new frame 
* Begin call
352:    LDA  1,-26(1)	Move the fp to the new frame 
353:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
354:    JMP  7,-299(7)	Call function 
355:    LDA  3,0(2)	Save return result in accumulator 
* END CALL showIntArray
* CALL showBool
356:     ST  1,-26(1)	Store fp in ghost frame for showBool 
* CALL truth
357:     ST  1,-29(1)	Store fp in ghost frame for truth 
* Begin call
358:    LDA  1,-29(1)	Move the fp to the new frame 
359:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
360:    JMP  7,-252(7)	Call function 
361:    LDA  3,0(2)	Save return result in accumulator 
* END CALL truth
362:     ST  3,-28(1)	Push parameter onto new frame 
* Begin call
363:    LDA  1,-26(1)	Move the fp to the new frame 
364:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
365:    JMP  7,-274(7)	Call function 
366:    LDA  3,0(2)	Save return result in accumulator 
* END CALL showBool
* CALL caller
367:     ST  1,-26(1)	Store fp in ghost frame for caller 
368:     LD  3,-2(1)	Load variable p into accumulator 
369:     ST  3,-28(1)	Push parameter onto new frame 
370:    LDA  3,-5(1)	Load base address of array r 
371:     ST  3,-29(1)	Push parameter onto new frame 
* Begin call
372:    LDA  1,-26(1)	Move the fp to the new frame 
373:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
374:    JMP  7,-204(7)	Call function 
375:    LDA  3,0(2)	Save return result in accumulator 
* END CALL caller
* CALL output
376:     ST  1,-26(1)	Store fp in ghost frame for output 
* CALL add
377:     ST  1,-29(1)	Store fp in ghost frame for add 
* CALL add
378:     ST  1,-33(1)	Store fp in ghost frame for add 
379:     LD  3,-2(1)	Load variable p into accumulator 
380:     ST  3,-35(1)	Push parameter onto new frame 
381:     LD  3,-3(1)	Load variable q into accumulator 
382:     ST  3,-36(1)	Push parameter onto new frame 
* Begin call
383:    LDA  1,-33(1)	Move the fp to the new frame 
384:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
385:    JMP  7,-243(7)	Call function 
386:    LDA  3,0(2)	Save return result in accumulator 
* END CALL add
387:     ST  3,-31(1)	Push parameter onto new frame 
* CALL mul
388:     ST  1,-33(1)	Store fp in ghost frame for mul 
389:     LD  3,-2(1)	Load variable p into accumulator 
390:     ST  3,-35(1)	Push parameter onto new frame 
391:     LD  3,-3(1)	Load variable q into accumulator 
392:     ST  3,-36(1)	Push parameter onto new frame 
* Begin call
393:    LDA  1,-33(1)	Move the fp to the new frame 
394:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
395:    JMP  7,-239(7)	Call function 
396:    LDA  3,0(2)	Save return result in accumulator 
* END CALL mul
397:     ST  3,-32(1)	Push parameter onto new frame 
* Begin call
398:    LDA  1,-29(1)	Move the fp to the new frame 
399:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
400:    JMP  7,-258(7)	Call function 
401:    LDA  3,0(2)	Save return result in accumulator 
* END CALL add
402:     ST  3,-28(1)	Push parameter onto new frame 
* Begin call
403:    LDA  1,-26(1)	Move the fp to the new frame 
404:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
405:    JMP  7,-400(7)	Call function 
406:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
407:     ST  1,-26(1)	Store fp in ghost frame for outnl 
* Begin call
408:    LDA  1,-26(1)	Move the fp to the new frame 
409:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
410:    JMP  7,-377(7)	Call function 
411:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
412:    LDA  3,-5(1)	Load base address of array r 
413:    LDC  3,9(6)	Load of type int constant 
414:     ST  3,-26(1)	Push array index onto temp stack 
415:    LDC  3,555(6)	Load of type int constant 
416:     LD  4,-26(1)	Pop array index into AC1 
417:    LDA  5,-5(1)	Load base address of array r into AC2 
418:    SUB  5,5,4	Compute offset for array 
419:     ST  3,0(5)	Store variable r from AC into loc from AC2 
* CALL swap
420:     ST  1,-26(1)	Store fp in ghost frame for swap 
421:    LDA  3,-5(1)	Load base address of array r 
422:     ST  3,-28(1)	Push parameter onto new frame 
423:    LDC  3,7(6)	Load of type int constant 
424:     ST  3,-29(1)	Push parameter onto new frame 
425:    LDC  3,9(6)	Load of type int constant 
426:     ST  3,-30(1)	Push parameter onto new frame 
* Begin call
427:    LDA  1,-26(1)	Move the fp to the new frame 
428:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
429:    JMP  7,-166(7)	Call function 
430:    LDA  3,0(2)	Save return result in accumulator 
* END CALL swap
* CALL output
431:     ST  1,-26(1)	Store fp in ghost frame for output 
432:    LDA  3,-5(1)	Load base address of array r 
433:    LDC  3,9(6)	Load of type int constant 
434:    LDA  5,-5(1)	Load base address of array r into AC2 
435:    SUB  5,5,3	Compute offset for array 
436:     LD  3,0(5)	Load array element r from AC into loc from AC2 
437:     ST  3,-28(1)	Push parameter onto new frame 
* Begin call
438:    LDA  1,-26(1)	Move the fp to the new frame 
439:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
440:    JMP  7,-435(7)	Call function 
441:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
442:     ST  1,-26(1)	Store fp in ghost frame for outnl 
* Begin call
443:    LDA  1,-26(1)	Move the fp to the new frame 
444:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
445:    JMP  7,-412(7)	Call function 
446:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
447:     ST  1,-26(1)	Store fp in ghost frame for output 
448:    LDC  3,2(6)	Load of type int constant 
449:     ST  3,-29(1)	Push left side onto temp variable stack 
* CALL add
450:     ST  1,-30(1)	Store fp in ghost frame for add 
* CALL add
451:     ST  1,-34(1)	Store fp in ghost frame for add 
452:    LDC  3,3(6)	Load of type int constant 
453:     ST  3,-38(1)	Push left side onto temp variable stack 
454:    LDC  3,4(6)	Load of type int constant 
455:     LD  4,-38(1)	Pop left hand side into AC1 
456:    MUL  3,4,3	* Multiplication Operation 
457:     ST  3,-36(1)	Push parameter onto new frame 
458:    LDC  3,5(6)	Load of type int constant 
459:     ST  3,-38(1)	Push left side onto temp variable stack 
460:    LDC  3,6(6)	Load of type int constant 
461:     LD  4,-38(1)	Pop left hand side into AC1 
462:    MUL  3,4,3	* Multiplication Operation 
463:     ST  3,-37(1)	Push parameter onto new frame 
* Begin call
464:    LDA  1,-34(1)	Move the fp to the new frame 
465:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
466:    JMP  7,-324(7)	Call function 
467:    LDA  3,0(2)	Save return result in accumulator 
* END CALL add
468:     ST  3,-34(1)	Push left side onto temp variable stack 
469:    LDC  3,7(6)	Load of type int constant 
470:     LD  4,-34(1)	Pop left hand side into AC1 
471:    MUL  3,4,3	* Multiplication Operation 
472:     ST  3,-32(1)	Push parameter onto new frame 
* CALL add
473:     ST  1,-34(1)	Store fp in ghost frame for add 
474:    LDC  3,9(6)	Load of type int constant 
475:     ST  3,-38(1)	Push left side onto temp variable stack 
476:    LDC  3,10(6)	Load of type int constant 
477:     LD  4,-38(1)	Pop left hand side into AC1 
478:    MUL  3,4,3	* Multiplication Operation 
479:     ST  3,-36(1)	Push parameter onto new frame 
480:    LDC  3,11(6)	Load of type int constant 
481:     ST  3,-38(1)	Push left side onto temp variable stack 
482:    LDC  3,12(6)	Load of type int constant 
483:     LD  4,-38(1)	Pop left hand side into AC1 
484:    MUL  3,4,3	* Multiplication Operation 
485:     ST  3,-37(1)	Push parameter onto new frame 
* Begin call
486:    LDA  1,-34(1)	Move the fp to the new frame 
487:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
488:    JMP  7,-346(7)	Call function 
489:    LDA  3,0(2)	Save return result in accumulator 
* END CALL add
490:     ST  3,-34(1)	Push left side onto temp variable stack 
491:    LDC  3,13(6)	Load of type int constant 
492:     LD  4,-34(1)	Pop left hand side into AC1 
493:    MUL  3,4,3	* Multiplication Operation 
494:     ST  3,-33(1)	Push parameter onto new frame 
* Begin call
495:    LDA  1,-30(1)	Move the fp to the new frame 
496:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
497:    JMP  7,-355(7)	Call function 
498:    LDA  3,0(2)	Save return result in accumulator 
* END CALL add
499:     LD  4,-29(1)	Pop left hand side into AC1 
500:    MUL  3,4,3	* Multiplication Operation 
501:     ST  3,-28(1)	Push parameter onto new frame 
* Begin call
502:    LDA  1,-26(1)	Move the fp to the new frame 
503:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
504:    JMP  7,-499(7)	Call function 
505:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
506:     ST  1,-26(1)	Store fp in ghost frame for outnl 
* Begin call
507:    LDA  1,-26(1)	Move the fp to the new frame 
508:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
509:    JMP  7,-476(7)	Call function 
510:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
511:     ST  1,-26(1)	Store fp in ghost frame for output 
* CALL magic
512:     ST  1,-29(1)	Store fp in ghost frame for magic 
* Begin call
513:    LDA  1,-29(1)	Move the fp to the new frame 
514:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
515:    JMP  7,-397(7)	Call function 
516:    LDA  3,0(2)	Save return result in accumulator 
* END CALL magic
517:     ST  3,-29(1)	Push left side onto temp variable stack 
* CALL magic
518:     ST  1,-30(1)	Store fp in ghost frame for magic 
* Begin call
519:    LDA  1,-30(1)	Move the fp to the new frame 
520:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
521:    JMP  7,-403(7)	Call function 
522:    LDA  3,0(2)	Save return result in accumulator 
* END CALL magic
523:     LD  4,-29(1)	Pop left hand side into AC1 
524:    MUL  3,4,3	* Multiplication Operation 
525:     ST  3,-28(1)	Push parameter onto new frame 
* Begin call
526:    LDA  1,-26(1)	Move the fp to the new frame 
527:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
528:    JMP  7,-523(7)	Call function 
529:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
530:     ST  1,-26(1)	Store fp in ghost frame for outnl 
* Begin call
531:    LDA  1,-26(1)	Move the fp to the new frame 
532:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
533:    JMP  7,-500(7)	Call function 
534:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
535:    LDC  2,0(6)	Set return value to 0 
536:     LD  3,-1(1)	Load return address 
537:     LD  1,0(1)	Adjust fp 
538:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,538(7)	Jump to init [backpatch] 
* INIT
539:    LDA  1,-1(0)	set first frame at end of globals 
540:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
541:    LDA  3,1(7)	Return address in ac 
542:    JMP  7,-248(7)	Jump to main 
543:   HALT  0,0,0	DONE! 
* END INIT
