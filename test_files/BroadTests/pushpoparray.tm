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
 40:     LD  3,-2(1)	Load base address of array pa 
 41:    LDC  3,66(6)	Load of type int constant 
 42:     LD  5,-2(1)	Load base address of array pa into AC2 
 43:    SUB  5,5,3	Compute offset for array 
 44:     LD  3,0(5)	Load array element pa from AC into loc from AC2 
 45:     LD  3,-2(1)	Load base address of array pa 
 46:    LDC  3,22(6)	Load of type int constant 
 47:     LD  5,-2(1)	Load base address of array pa into AC2 
 48:    SUB  5,5,3	Compute offset for array 
 49:     LD  3,0(5)	Load array element pa from AC into loc from AC2 
 50:     ST  3,0(0)	Assigning variable a in Global 
 51:     LD  3,-2(1)	Load base address of array pa 
 52:    LDC  3,88(6)	Load of type int constant 
 53:     ST  3,-3(1)	Push array index onto temp stack 
 54:     LD  4,-3(1)	Pop array index into AC1 
 55:     LD  5,-2(1)	Load base address of array pa into AC2 
 56:    SUB  5,5,4	Compute offset for array 
 57:     LD  4,0(5)	Load lhs variable 
 58:    LDA  3,1(4)	++ Increment accumulator operation 
 59:     ST  3,0(5)	Store variable pa from AC into loc from AC2 
* CALL output
 60:     ST  1,-3(1)	Store fp in ghost frame for output 
 61:     LD  3,0(0)	Load variable a into accumulator 
 62:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-3(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-60(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 67:     ST  1,-3(1)	Store fp in ghost frame for output 
 68:     LD  3,-2(1)	Load base address of array pa 
 69:    LDC  3,88(6)	Load of type int constant 
 70:     LD  5,-2(1)	Load base address of array pa into AC2 
 71:    SUB  5,5,3	Compute offset for array 
 72:     LD  3,0(5)	Load array element pa from AC into loc from AC2 
 73:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 74:    LDA  1,-3(1)	Move the fp to the new frame 
 75:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 76:    JMP  7,-71(7)	Call function 
 77:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 78:     LD  3,-2(1)	Load base address of array pa 
 79:    LDC  3,22(6)	Load of type int constant 
 80:     LD  5,-2(1)	Load base address of array pa into AC2 
 81:    SUB  5,5,3	Compute offset for array 
 82:     LD  3,0(5)	Load array element pa from AC into loc from AC2 
 83:     ST  3,-3(1)	Push left side onto temp variable stack 
 84:     LD  3,-2(1)	Load base address of array pa 
 85:    LDC  3,44(6)	Load of type int constant 
 86:     LD  5,-2(1)	Load base address of array pa into AC2 
 87:    SUB  5,5,3	Compute offset for array 
 88:     LD  3,0(5)	Load array element pa from AC into loc from AC2 
 89:     LD  4,-3(1)	Pop left hand side into AC1 
 90:    ADD  3,4,3	+ Operation 
 91:    LDA  2,0(3)	Copy accumulator to return register 
 92:     LD  3,-1(1)	Load return address 
 93:     LD  1,0(1)	Adjust fp 
 94:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 95:    LDC  2,0(6)	Set return value to 0 
 96:     LD  3,-1(1)	Load return address 
 97:     LD  1,0(1)	Adjust fp 
 98:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 99:     ST  3,-1(1)	Store return address 
* COMPOUND
100:    LDC  3,100(6)	Load size of bb into AC 
101:     ST  3,-3(1)	Store size of bb in data memory 
102:    LDA  3,-2(0)	Load base address of array aa 
103:    LDC  3,11(6)	Load of type int constant 
104:     ST  3,-104(1)	Push array index onto temp stack 
105:    LDC  3,11(6)	Load of type int constant 
106:     LD  4,-104(1)	Pop array index into AC1 
107:    LDA  5,-2(0)	Load base address of array aa into AC2 
108:    SUB  5,5,4	Compute offset for array 
109:     ST  3,0(5)	Store variable aa from AC into loc from AC2 
110:    LDA  3,-4(1)	Load base address of array bb 
111:    LDC  3,22(6)	Load of type int constant 
112:     ST  3,-104(1)	Push array index onto temp stack 
113:    LDC  3,22(6)	Load of type int constant 
114:     LD  4,-104(1)	Pop array index into AC1 
115:    LDA  5,-4(1)	Load base address of array bb into AC2 
116:    SUB  5,5,4	Compute offset for array 
117:     ST  3,0(5)	Store variable bb from AC into loc from AC2 
118:    LDA  3,-2(0)	Load base address of array aa 
119:    LDC  3,33(6)	Load of type int constant 
120:     ST  3,-104(1)	Push array index onto temp stack 
121:    LDC  3,33(6)	Load of type int constant 
122:     LD  4,-104(1)	Pop array index into AC1 
123:    LDA  5,-2(0)	Load base address of array aa into AC2 
124:    SUB  5,5,4	Compute offset for array 
125:     ST  3,0(5)	Store variable aa from AC into loc from AC2 
126:    LDA  3,-4(1)	Load base address of array bb 
127:    LDC  3,44(6)	Load of type int constant 
128:     ST  3,-104(1)	Push array index onto temp stack 
129:    LDC  3,44(6)	Load of type int constant 
130:     LD  4,-104(1)	Pop array index into AC1 
131:    LDA  5,-4(1)	Load base address of array bb into AC2 
132:    SUB  5,5,4	Compute offset for array 
133:     ST  3,0(5)	Store variable bb from AC into loc from AC2 
134:    LDA  3,-2(0)	Load base address of array aa 
135:    LDC  3,55(6)	Load of type int constant 
136:     ST  3,-104(1)	Push array index onto temp stack 
137:    LDC  3,55(6)	Load of type int constant 
138:     LD  4,-104(1)	Pop array index into AC1 
139:    LDA  5,-2(0)	Load base address of array aa into AC2 
140:    SUB  5,5,4	Compute offset for array 
141:     ST  3,0(5)	Store variable aa from AC into loc from AC2 
142:    LDA  3,-4(1)	Load base address of array bb 
143:    LDC  3,66(6)	Load of type int constant 
144:     ST  3,-104(1)	Push array index onto temp stack 
145:    LDC  3,66(6)	Load of type int constant 
146:     LD  4,-104(1)	Pop array index into AC1 
147:    LDA  5,-4(1)	Load base address of array bb into AC2 
148:    SUB  5,5,4	Compute offset for array 
149:     ST  3,0(5)	Store variable bb from AC into loc from AC2 
150:    LDA  3,-2(0)	Load base address of array aa 
151:    LDC  3,77(6)	Load of type int constant 
152:     ST  3,-104(1)	Push array index onto temp stack 
153:    LDC  3,77(6)	Load of type int constant 
154:     LD  4,-104(1)	Pop array index into AC1 
155:    LDA  5,-2(0)	Load base address of array aa into AC2 
156:    SUB  5,5,4	Compute offset for array 
157:     ST  3,0(5)	Store variable aa from AC into loc from AC2 
158:    LDA  3,-4(1)	Load base address of array bb 
159:    LDC  3,88(6)	Load of type int constant 
160:     ST  3,-104(1)	Push array index onto temp stack 
161:    LDC  3,88(6)	Load of type int constant 
162:     LD  4,-104(1)	Pop array index into AC1 
163:    LDA  5,-4(1)	Load base address of array bb into AC2 
164:    SUB  5,5,4	Compute offset for array 
165:     ST  3,0(5)	Store variable bb from AC into loc from AC2 
166:    LDA  3,-2(0)	Load base address of array aa 
167:    LDC  3,99(6)	Load of type int constant 
168:     ST  3,-104(1)	Push array index onto temp stack 
169:    LDC  3,99(6)	Load of type int constant 
170:     LD  4,-104(1)	Pop array index into AC1 
171:    LDA  5,-2(0)	Load base address of array aa into AC2 
172:    SUB  5,5,4	Compute offset for array 
173:     ST  3,0(5)	Store variable aa from AC into loc from AC2 
* CALL output
174:     ST  1,-104(1)	Store fp in ghost frame for output 
175:    LDA  3,-2(0)	Load base address of array aa 
176:    LDC  3,11(6)	Load of type int constant 
177:    LDA  5,-2(0)	Load base address of array aa into AC2 
178:    SUB  5,5,3	Compute offset for array 
179:     LD  3,0(5)	Load array element aa from AC into loc from AC2 
180:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
181:    LDA  1,-104(1)	Move the fp to the new frame 
182:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
183:    JMP  7,-178(7)	Call function 
184:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
185:     ST  1,-104(1)	Store fp in ghost frame for output 
186:    LDA  3,-4(1)	Load base address of array bb 
187:    LDC  3,22(6)	Load of type int constant 
188:    LDA  5,-4(1)	Load base address of array bb into AC2 
189:    SUB  5,5,3	Compute offset for array 
190:     LD  3,0(5)	Load array element bb from AC into loc from AC2 
191:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
192:    LDA  1,-104(1)	Move the fp to the new frame 
193:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
194:    JMP  7,-189(7)	Call function 
195:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
196:     ST  1,-104(1)	Store fp in ghost frame for output 
197:    LDA  3,-2(0)	Load base address of array aa 
198:    LDC  3,99(6)	Load of type int constant 
199:     ST  3,-107(1)	Push array index onto temp stack 
200:     LD  4,-107(1)	Pop array index into AC1 
201:    LDA  5,-2(0)	Load base address of array aa into AC2 
202:    SUB  5,5,4	Compute offset for array 
203:     LD  4,0(5)	Load lhs variable 
204:    LDA  3,1(4)	++ Increment accumulator operation 
205:     ST  3,0(5)	Store variable aa from AC into loc from AC2 
206:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
207:    LDA  1,-104(1)	Move the fp to the new frame 
208:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
209:    JMP  7,-204(7)	Call function 
210:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
211:     ST  1,-104(1)	Store fp in ghost frame for output 
212:    LDA  3,-2(0)	Load base address of array aa 
213:    LDC  3,99(6)	Load of type int constant 
214:    LDA  5,-2(0)	Load base address of array aa into AC2 
215:    SUB  5,5,3	Compute offset for array 
216:     LD  3,0(5)	Load array element aa from AC into loc from AC2 
217:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
218:    LDA  1,-104(1)	Move the fp to the new frame 
219:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
220:    JMP  7,-215(7)	Call function 
221:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
222:     ST  1,-104(1)	Store fp in ghost frame for outnl 
* Begin call
223:    LDA  1,-104(1)	Move the fp to the new frame 
224:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
225:    JMP  7,-192(7)	Call function 
226:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
227:     ST  1,-104(1)	Store fp in ghost frame for output 
228:    LDA  3,-2(0)	Load base address of array aa 
229:    LDC  3,33(6)	Load of type int constant 
230:    LDA  5,-2(0)	Load base address of array aa into AC2 
231:    SUB  5,5,3	Compute offset for array 
232:     LD  3,0(5)	Load array element aa from AC into loc from AC2 
233:     ST  3,0(0)	Assigning variable a in Global 
234:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
235:    LDA  1,-104(1)	Move the fp to the new frame 
236:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
237:    JMP  7,-232(7)	Call function 
238:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
239:     ST  1,-104(1)	Store fp in ghost frame for output 
240:     LD  3,0(0)	Load variable a into accumulator 
241:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
242:    LDA  1,-104(1)	Move the fp to the new frame 
243:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
244:    JMP  7,-239(7)	Call function 
245:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
246:     ST  1,-104(1)	Store fp in ghost frame for outnl 
* Begin call
247:    LDA  1,-104(1)	Move the fp to the new frame 
248:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
249:    JMP  7,-216(7)	Call function 
250:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
251:     ST  1,-104(1)	Store fp in ghost frame for output 
252:    LDA  3,-4(1)	Load base address of array bb 
253:    LDC  3,66(6)	Load of type int constant 
254:     ST  3,-107(1)	Push left side onto temp variable stack 
255:    LDC  3,44(6)	Load of type int constant 
256:     LD  4,-107(1)	Pop left hand side into AC1 
257:    SUB  3,4,3	- Subtraction Operation 
258:    LDA  5,-4(1)	Load base address of array bb into AC2 
259:    SUB  5,5,3	Compute offset for array 
260:     LD  3,0(5)	Load array element bb from AC into loc from AC2 
261:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
262:    LDA  1,-104(1)	Move the fp to the new frame 
263:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
264:    JMP  7,-259(7)	Call function 
265:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
266:     ST  1,-104(1)	Store fp in ghost frame for output 
267:    LDA  3,-2(0)	Load base address of array aa 
268:    LDC  3,77(6)	Load of type int constant 
269:    LDA  5,-2(0)	Load base address of array aa into AC2 
270:    SUB  5,5,3	Compute offset for array 
271:     LD  3,0(5)	Load array element aa from AC into loc from AC2 
272:     ST  3,-107(1)	Push left side onto temp variable stack 
273:    LDA  3,-4(1)	Load base address of array bb 
274:    LDC  3,88(6)	Load of type int constant 
275:    LDA  5,-4(1)	Load base address of array bb into AC2 
276:    SUB  5,5,3	Compute offset for array 
277:     LD  3,0(5)	Load array element bb from AC into loc from AC2 
278:     LD  4,-107(1)	Pop left hand side into AC1 
279:    MUL  3,4,3	* Multiplication Operation 
280:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
281:    LDA  1,-104(1)	Move the fp to the new frame 
282:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
283:    JMP  7,-278(7)	Call function 
284:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
285:     ST  1,-104(1)	Store fp in ghost frame for outnl 
* Begin call
286:    LDA  1,-104(1)	Move the fp to the new frame 
287:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
288:    JMP  7,-255(7)	Call function 
289:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
290:     ST  1,-104(1)	Store fp in ghost frame for output 
* CALL dog
291:     ST  1,-107(1)	Store fp in ghost frame for dog 
292:    LDA  3,-4(1)	Load base address of array bb 
293:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
294:    LDA  1,-107(1)	Move the fp to the new frame 
295:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
296:    JMP  7,-258(7)	Call function 
297:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
298:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
299:    LDA  1,-104(1)	Move the fp to the new frame 
300:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
301:    JMP  7,-296(7)	Call function 
302:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
303:     ST  1,-104(1)	Store fp in ghost frame for output 
304:    LDA  3,-4(1)	Load base address of array bb 
305:    LDC  3,88(6)	Load of type int constant 
306:    LDA  5,-4(1)	Load base address of array bb into AC2 
307:    SUB  5,5,3	Compute offset for array 
308:     LD  3,0(5)	Load array element bb from AC into loc from AC2 
309:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
310:    LDA  1,-104(1)	Move the fp to the new frame 
311:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
312:    JMP  7,-307(7)	Call function 
313:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
314:     ST  1,-104(1)	Store fp in ghost frame for output 
315:    LDA  3,-4(1)	Load base address of array bb 
* CALL dog
316:     ST  1,-107(1)	Store fp in ghost frame for dog 
317:    LDA  3,-4(1)	Load base address of array bb 
318:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
319:    LDA  1,-107(1)	Move the fp to the new frame 
320:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
321:    JMP  7,-283(7)	Call function 
322:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
323:    LDA  5,-4(1)	Load base address of array bb into AC2 
324:    SUB  5,5,3	Compute offset for array 
325:     LD  3,0(5)	Load array element bb from AC into loc from AC2 
326:     ST  3,-106(1)	Push parameter onto new frame 
* Begin call
327:    LDA  1,-104(1)	Move the fp to the new frame 
328:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
329:    JMP  7,-324(7)	Call function 
330:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
331:     ST  1,-104(1)	Store fp in ghost frame for outnl 
* Begin call
332:    LDA  1,-104(1)	Move the fp to the new frame 
333:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
334:    JMP  7,-301(7)	Call function 
335:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
336:    LDC  2,0(6)	Set return value to 0 
337:     LD  3,-1(1)	Load return address 
338:     LD  1,0(1)	Adjust fp 
339:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,339(7)	Jump to init [backpatch] 
* INIT
340:    LDA  1,-102(0)	set first frame at end of globals 
341:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
342:    LDC  3,100(6)	Load size of aa into AC 
343:     ST  3,-1(0)	Store size of aa in data memory 
* END INIT GLOBALS AND STATICS
344:    LDA  3,1(7)	Return address in ac 
345:    JMP  7,-247(7)	Jump to main 
346:   HALT  0,0,0	DONE! 
* END INIT
