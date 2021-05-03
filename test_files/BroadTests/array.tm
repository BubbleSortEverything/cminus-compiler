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
* FUNCTION get
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
 40:     ST  1,-4(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load base address of array x 
 42:    LDC  3,0(6)	Load of type int constant 
 43:     LD  5,-2(1)	Load base address of array x into AC2 
 44:    SUB  5,5,3	Compute offset for array 
 45:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 46:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-4(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 51:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 52:    LDA  1,-4(1)	Move the fp to the new frame 
 53:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 54:    JMP  7,-21(7)	Call function 
 55:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 56:     LD  3,-2(1)	Load base address of array x 
 57:    LDC  3,1(6)	Load of type int constant 
 58:     ST  3,-4(1)	Push array index onto temp stack 
 59:    LDC  3,666(6)	Load of type int constant 
 60:     LD  4,-4(1)	Pop array index into AC1 
 61:     LD  5,-2(1)	Load base address of array x into AC2 
 62:    SUB  5,5,4	Compute offset for array 
 63:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 64:     LD  3,-2(1)	Load base address of array x 
 65:     LD  3,-3(1)	Load variable i into accumulator 
 66:     LD  5,-2(1)	Load base address of array x into AC2 
 67:    SUB  5,5,3	Compute offset for array 
 68:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 69:    LDA  2,0(3)	Copy accumulator to return register 
 70:     LD  3,-1(1)	Load return address 
 71:     LD  1,0(1)	Adjust fp 
 72:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 73:    LDC  2,0(6)	Set return value to 0 
 74:     LD  3,-1(1)	Load return address 
 75:     LD  1,0(1)	Adjust fp 
 76:    JMP  7,0(3)	Return 
* END FUNCTION get
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 77:     ST  3,-1(1)	Store return address 
* COMPOUND
 78:    LDC  3,5(6)	Load size of x into AC 
 79:     ST  3,-2(1)	Store size of x in data memory 
 80:    LDC  3,2(6)	Load of type int constant 
 81:     ST  3,-8(1)	Assigning variable dog in Local 
 82:    LDA  3,-3(1)	Load base address of array x 
 83:    LDC  3,0(6)	Load of type int constant 
 84:     ST  3,-9(1)	Push array index onto temp stack 
 85:    LDC  3,3(6)	Load of type int constant 
 86:     LD  4,-9(1)	Pop array index into AC1 
 87:    LDA  5,-3(1)	Load base address of array x into AC2 
 88:    SUB  5,5,4	Compute offset for array 
 89:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
 90:     ST  1,-9(1)	Store fp in ghost frame for output 
 91:    LDA  3,-3(1)	Load base address of array x 
 92:    LDC  3,0(6)	Load of type int constant 
 93:    LDA  5,-3(1)	Load base address of array x into AC2 
 94:    SUB  5,5,3	Compute offset for array 
 95:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 96:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-9(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-94(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
101:    LDA  3,-3(1)	Load base address of array x 
102:    LDC  3,1(6)	Load of type int constant 
103:     ST  3,-9(1)	Push array index onto temp stack 
104:    LDA  3,-3(1)	Load base address of array x 
105:    LDC  3,0(6)	Load of type int constant 
106:    LDA  5,-3(1)	Load base address of array x into AC2 
107:    SUB  5,5,3	Compute offset for array 
108:     LD  3,0(5)	Load array element x from AC into loc from AC2 
109:     LD  4,-9(1)	Pop array index into AC1 
110:    LDA  5,-3(1)	Load base address of array x into AC2 
111:    SUB  5,5,4	Compute offset for array 
112:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
113:     ST  1,-9(1)	Store fp in ghost frame for output 
114:    LDA  3,-3(1)	Load base address of array x 
115:    LDC  3,1(6)	Load of type int constant 
116:    LDA  5,-3(1)	Load base address of array x into AC2 
117:    SUB  5,5,3	Compute offset for array 
118:     LD  3,0(5)	Load array element x from AC into loc from AC2 
119:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
120:    LDA  1,-9(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-117(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
124:    LDA  3,-3(1)	Load base address of array x 
125:    LDC  3,2(6)	Load of type int constant 
126:     ST  3,-9(1)	Push array index onto temp stack 
127:    LDA  3,-3(1)	Load base address of array x 
128:    LDC  3,1(6)	Load of type int constant 
129:    LDA  5,-3(1)	Load base address of array x into AC2 
130:    SUB  5,5,3	Compute offset for array 
131:     LD  3,0(5)	Load array element x from AC into loc from AC2 
132:     ST  3,-10(1)	Push left side onto temp variable stack 
133:    LDC  3,1(6)	Load of type int constant 
134:     LD  4,-10(1)	Pop left hand side into AC1 
135:    ADD  3,4,3	+ Operation 
136:     LD  4,-9(1)	Pop array index into AC1 
137:    LDA  5,-3(1)	Load base address of array x into AC2 
138:    SUB  5,5,4	Compute offset for array 
139:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
140:     ST  1,-9(1)	Store fp in ghost frame for output 
141:    LDA  3,-3(1)	Load base address of array x 
142:    LDC  3,2(6)	Load of type int constant 
143:    LDA  5,-3(1)	Load base address of array x into AC2 
144:    SUB  5,5,3	Compute offset for array 
145:     LD  3,0(5)	Load array element x from AC into loc from AC2 
146:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
147:    LDA  1,-9(1)	Move the fp to the new frame 
148:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
149:    JMP  7,-144(7)	Call function 
150:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
151:    LDA  3,-3(1)	Load base address of array x 
152:     LD  3,-8(1)	Load variable dog into accumulator 
153:     ST  3,-9(1)	Push left side onto temp variable stack 
154:     LD  3,-8(1)	Load variable dog into accumulator 
155:     LD  4,-9(1)	Pop left hand side into AC1 
156:    ADD  3,4,3	+ Operation 
157:     ST  3,-9(1)	Push array index onto temp stack 
158:    LDC  3,496(6)	Load of type int constant 
159:     LD  4,-9(1)	Pop array index into AC1 
160:    LDA  5,-3(1)	Load base address of array x into AC2 
161:    SUB  5,5,4	Compute offset for array 
162:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
163:     ST  1,-9(1)	Store fp in ghost frame for output 
164:    LDA  3,-3(1)	Load base address of array x 
165:    LDC  3,4(6)	Load of type int constant 
166:    LDA  5,-3(1)	Load base address of array x into AC2 
167:    SUB  5,5,3	Compute offset for array 
168:     LD  3,0(5)	Load array element x from AC into loc from AC2 
169:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
170:    LDA  1,-9(1)	Move the fp to the new frame 
171:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
172:    JMP  7,-167(7)	Call function 
173:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
174:     ST  1,-9(1)	Store fp in ghost frame for outnl 
* Begin call
175:    LDA  1,-9(1)	Move the fp to the new frame 
176:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
177:    JMP  7,-144(7)	Call function 
178:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
179:    LDC  3,2(6)	Load of type int constant 
180:     ST  3,-8(1)	Assigning variable dog in Local 
181:    LDA  3,-1(0)	Load base address of array y 
182:    LDC  3,0(6)	Load of type int constant 
183:     ST  3,-9(1)	Push array index onto temp stack 
184:    LDC  3,3(6)	Load of type int constant 
185:     LD  4,-9(1)	Pop array index into AC1 
186:    LDA  5,-1(0)	Load base address of array y into AC2 
187:    SUB  5,5,4	Compute offset for array 
188:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
189:     ST  1,-9(1)	Store fp in ghost frame for output 
190:    LDA  3,-1(0)	Load base address of array y 
191:    LDC  3,0(6)	Load of type int constant 
192:    LDA  5,-1(0)	Load base address of array y into AC2 
193:    SUB  5,5,3	Compute offset for array 
194:     LD  3,0(5)	Load array element y from AC into loc from AC2 
195:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
196:    LDA  1,-9(1)	Move the fp to the new frame 
197:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
198:    JMP  7,-193(7)	Call function 
199:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
200:    LDA  3,-1(0)	Load base address of array y 
201:    LDC  3,1(6)	Load of type int constant 
202:     ST  3,-9(1)	Push array index onto temp stack 
203:    LDA  3,-1(0)	Load base address of array y 
204:    LDC  3,0(6)	Load of type int constant 
205:    LDA  5,-1(0)	Load base address of array y into AC2 
206:    SUB  5,5,3	Compute offset for array 
207:     LD  3,0(5)	Load array element y from AC into loc from AC2 
208:     LD  4,-9(1)	Pop array index into AC1 
209:    LDA  5,-1(0)	Load base address of array y into AC2 
210:    SUB  5,5,4	Compute offset for array 
211:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
212:     ST  1,-9(1)	Store fp in ghost frame for output 
213:    LDA  3,-1(0)	Load base address of array y 
214:    LDC  3,1(6)	Load of type int constant 
215:    LDA  5,-1(0)	Load base address of array y into AC2 
216:    SUB  5,5,3	Compute offset for array 
217:     LD  3,0(5)	Load array element y from AC into loc from AC2 
218:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
219:    LDA  1,-9(1)	Move the fp to the new frame 
220:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
221:    JMP  7,-216(7)	Call function 
222:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
223:    LDA  3,-1(0)	Load base address of array y 
224:    LDC  3,2(6)	Load of type int constant 
225:     ST  3,-9(1)	Push array index onto temp stack 
226:    LDA  3,-1(0)	Load base address of array y 
227:    LDC  3,1(6)	Load of type int constant 
228:    LDA  5,-1(0)	Load base address of array y into AC2 
229:    SUB  5,5,3	Compute offset for array 
230:     LD  3,0(5)	Load array element y from AC into loc from AC2 
231:     ST  3,-10(1)	Push left side onto temp variable stack 
232:    LDC  3,311(6)	Load of type int constant 
233:     LD  4,-10(1)	Pop left hand side into AC1 
234:    ADD  3,4,3	+ Operation 
235:     LD  4,-9(1)	Pop array index into AC1 
236:    LDA  5,-1(0)	Load base address of array y into AC2 
237:    SUB  5,5,4	Compute offset for array 
238:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
239:     ST  1,-9(1)	Store fp in ghost frame for output 
240:    LDA  3,-1(0)	Load base address of array y 
241:    LDC  3,2(6)	Load of type int constant 
242:    LDA  5,-1(0)	Load base address of array y into AC2 
243:    SUB  5,5,3	Compute offset for array 
244:     LD  3,0(5)	Load array element y from AC into loc from AC2 
245:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
246:    LDA  1,-9(1)	Move the fp to the new frame 
247:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
248:    JMP  7,-243(7)	Call function 
249:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
250:    LDA  3,-1(0)	Load base address of array y 
251:     LD  3,-8(1)	Load variable dog into accumulator 
252:     ST  3,-9(1)	Push left side onto temp variable stack 
253:     LD  3,-8(1)	Load variable dog into accumulator 
254:     LD  4,-9(1)	Pop left hand side into AC1 
255:    ADD  3,4,3	+ Operation 
256:     ST  3,-9(1)	Push array index onto temp stack 
257:    LDC  3,496(6)	Load of type int constant 
258:     LD  4,-9(1)	Pop array index into AC1 
259:    LDA  5,-1(0)	Load base address of array y into AC2 
260:    SUB  5,5,4	Compute offset for array 
261:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
262:     ST  1,-9(1)	Store fp in ghost frame for output 
263:    LDA  3,-1(0)	Load base address of array y 
264:    LDC  3,4(6)	Load of type int constant 
265:    LDA  5,-1(0)	Load base address of array y into AC2 
266:    SUB  5,5,3	Compute offset for array 
267:     LD  3,0(5)	Load array element y from AC into loc from AC2 
268:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
269:    LDA  1,-9(1)	Move the fp to the new frame 
270:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
271:    JMP  7,-266(7)	Call function 
272:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
273:     ST  1,-9(1)	Store fp in ghost frame for outnl 
* Begin call
274:    LDA  1,-9(1)	Move the fp to the new frame 
275:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
276:    JMP  7,-243(7)	Call function 
277:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL get
278:     ST  1,-9(1)	Store fp in ghost frame for get 
279:    LDA  3,-1(0)	Load base address of array y 
280:     ST  3,-11(1)	Push parameter onto new frame 
281:    LDC  3,2(6)	Load of type int constant 
282:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
283:    LDA  1,-9(1)	Move the fp to the new frame 
284:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
285:    JMP  7,-247(7)	Call function 
286:    LDA  3,0(2)	Save return result in accumulator 
* END CALL get
287:     ST  3,-8(1)	Assigning variable dog in Local 
* CALL output
288:     ST  1,-9(1)	Store fp in ghost frame for output 
289:     LD  3,-8(1)	Load variable dog into accumulator 
290:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
291:    LDA  1,-9(1)	Move the fp to the new frame 
292:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
293:    JMP  7,-288(7)	Call function 
294:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
295:     ST  1,-9(1)	Store fp in ghost frame for output 
* CALL get
296:     ST  1,-12(1)	Store fp in ghost frame for get 
297:    LDA  3,-1(0)	Load base address of array y 
298:     ST  3,-14(1)	Push parameter onto new frame 
299:    LDC  3,2(6)	Load of type int constant 
300:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
301:    LDA  1,-12(1)	Move the fp to the new frame 
302:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
303:    JMP  7,-265(7)	Call function 
304:    LDA  3,0(2)	Save return result in accumulator 
* END CALL get
305:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
306:    LDA  1,-9(1)	Move the fp to the new frame 
307:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
308:    JMP  7,-303(7)	Call function 
309:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
310:     ST  1,-9(1)	Store fp in ghost frame for output 
311:    LDA  3,-3(1)	Load base address of array x 
312:    LDC  3,1(6)	Load of type int constant 
313:    LDA  5,-3(1)	Load base address of array x into AC2 
314:    SUB  5,5,3	Compute offset for array 
315:     LD  3,0(5)	Load array element x from AC into loc from AC2 
316:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
317:    LDA  1,-9(1)	Move the fp to the new frame 
318:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
319:    JMP  7,-314(7)	Call function 
320:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
321:     ST  1,-9(1)	Store fp in ghost frame for outnl 
* Begin call
322:    LDA  1,-9(1)	Move the fp to the new frame 
323:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
324:    JMP  7,-291(7)	Call function 
325:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
326:    LDC  2,0(6)	Set return value to 0 
327:     LD  3,-1(1)	Load return address 
328:     LD  1,0(1)	Adjust fp 
329:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,329(7)	Jump to init [backpatch] 
* INIT
330:    LDA  1,-6(0)	set first frame at end of globals 
331:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
332:    LDC  3,5(6)	Load size of y into AC 
333:     ST  3,0(0)	Store size of y in data memory 
* END INIT GLOBALS AND STATICS
334:    LDA  3,1(7)	Return address in ac 
335:    JMP  7,-259(7)	Jump to main 
336:   HALT  0,0,0	DONE! 
* END INIT
