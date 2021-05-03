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
 40:    LDC  3,8(6)	Load size of x into AC 
 41:     ST  3,-2(1)	Store size of x in data memory 
 42:    LDC  3,7(6)	Load size of y into AC 
 43:     ST  3,-11(1)	Store size of y in data memory 
 44:    LDA  3,-3(1)	Load base address of array x 
 45:    LDC  3,5(6)	Load of type int constant 
 46:     ST  3,-19(1)	Push array index onto temp stack 
 47:    LDC  3,111(6)	Load of type int constant 
 48:     LD  4,-19(1)	Pop array index into AC1 
 49:    LDA  5,-3(1)	Load base address of array x into AC2 
 50:    SUB  5,5,4	Compute offset for array 
 51:     LD  4,0(5)	Load lhs variable 
 52:    ADD  3,4,3	+= operation 
 53:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
 54:     ST  1,-19(1)	Store fp in ghost frame for output 
 55:    LDA  3,-3(1)	Load base address of array x 
 56:    LDC  3,5(6)	Load of type int constant 
 57:    LDA  5,-3(1)	Load base address of array x into AC2 
 58:    SUB  5,5,3	Compute offset for array 
 59:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 60:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
 61:    LDA  1,-19(1)	Move the fp to the new frame 
 62:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 63:    JMP  7,-58(7)	Call function 
 64:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 65:    LDA  3,-12(1)	Load base address of array y 
 66:    LDC  3,4(6)	Load of type int constant 
 67:     ST  3,-19(1)	Push array index onto temp stack 
 68:    LDC  3,222(6)	Load of type int constant 
 69:     LD  4,-19(1)	Pop array index into AC1 
 70:    LDA  5,-12(1)	Load base address of array y into AC2 
 71:    SUB  5,5,4	Compute offset for array 
 72:     LD  4,0(5)	Load lhs variable 
 73:    ADD  3,4,3	+= operation 
 74:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
 75:     ST  1,-19(1)	Store fp in ghost frame for output 
 76:    LDA  3,-12(1)	Load base address of array y 
 77:    LDC  3,4(6)	Load of type int constant 
 78:    LDA  5,-12(1)	Load base address of array y into AC2 
 79:    SUB  5,5,3	Compute offset for array 
 80:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 81:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-19(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-79(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 86:     ST  1,-19(1)	Store fp in ghost frame for outnl 
* Begin call
 87:    LDA  1,-19(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-56(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 91:    LDA  3,-1(0)	Load base address of array gx 
 92:    LDC  3,5(6)	Load of type int constant 
 93:     ST  3,-19(1)	Push array index onto temp stack 
 94:    LDC  3,333(6)	Load of type int constant 
 95:     LD  4,-19(1)	Pop array index into AC1 
 96:    LDA  5,-1(0)	Load base address of array gx into AC2 
 97:    SUB  5,5,4	Compute offset for array 
 98:     LD  4,0(5)	Load lhs variable 
 99:    ADD  3,4,3	+= operation 
100:     ST  3,0(5)	Store variable gx from AC into loc from AC2 
* CALL output
101:     ST  1,-19(1)	Store fp in ghost frame for output 
102:    LDA  3,-1(0)	Load base address of array gx 
103:    LDC  3,5(6)	Load of type int constant 
104:    LDA  5,-1(0)	Load base address of array gx into AC2 
105:    SUB  5,5,3	Compute offset for array 
106:     LD  3,0(5)	Load array element gx from AC into loc from AC2 
107:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
108:    LDA  1,-19(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-105(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
112:    LDA  3,-9(0)	Load base address of array gy 
113:    LDC  3,4(6)	Load of type int constant 
114:     ST  3,-19(1)	Push array index onto temp stack 
115:    LDC  3,444(6)	Load of type int constant 
116:     LD  4,-19(1)	Pop array index into AC1 
117:    LDA  5,-9(0)	Load base address of array gy into AC2 
118:    SUB  5,5,4	Compute offset for array 
119:     LD  4,0(5)	Load lhs variable 
120:    ADD  3,4,3	+= operation 
121:     ST  3,0(5)	Store variable gy from AC into loc from AC2 
* CALL output
122:     ST  1,-19(1)	Store fp in ghost frame for output 
123:    LDA  3,-9(0)	Load base address of array gy 
124:    LDC  3,4(6)	Load of type int constant 
125:    LDA  5,-9(0)	Load base address of array gy into AC2 
126:    SUB  5,5,3	Compute offset for array 
127:     LD  3,0(5)	Load array element gy from AC into loc from AC2 
128:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
129:    LDA  1,-19(1)	Move the fp to the new frame 
130:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
131:    JMP  7,-126(7)	Call function 
132:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
133:     ST  1,-19(1)	Store fp in ghost frame for outnl 
* Begin call
134:    LDA  1,-19(1)	Move the fp to the new frame 
135:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
136:    JMP  7,-103(7)	Call function 
137:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
138:    LDA  3,-3(1)	Load base address of array x 
139:    LDC  3,5(6)	Load of type int constant 
140:     ST  3,-19(1)	Push array index onto temp stack 
141:    LDA  3,-12(1)	Load base address of array y 
142:    LDC  3,4(6)	Load of type int constant 
143:    LDA  5,-12(1)	Load base address of array y into AC2 
144:    SUB  5,5,3	Compute offset for array 
145:     LD  3,0(5)	Load array element y from AC into loc from AC2 
146:     LD  4,-19(1)	Pop array index into AC1 
147:    LDA  5,-3(1)	Load base address of array x into AC2 
148:    SUB  5,5,4	Compute offset for array 
149:     LD  4,0(5)	Load lhs variable 
150:    ADD  3,4,3	+= operation 
151:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
152:     ST  1,-19(1)	Store fp in ghost frame for output 
153:    LDA  3,-3(1)	Load base address of array x 
154:    LDC  3,5(6)	Load of type int constant 
155:    LDA  5,-3(1)	Load base address of array x into AC2 
156:    SUB  5,5,3	Compute offset for array 
157:     LD  3,0(5)	Load array element x from AC into loc from AC2 
158:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
159:    LDA  1,-19(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-156(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
163:     ST  1,-19(1)	Store fp in ghost frame for outnl 
* Begin call
164:    LDA  1,-19(1)	Move the fp to the new frame 
165:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
166:    JMP  7,-133(7)	Call function 
167:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
168:    LDA  3,-1(0)	Load base address of array gx 
169:    LDC  3,5(6)	Load of type int constant 
170:     ST  3,-19(1)	Push array index onto temp stack 
171:    LDA  3,-9(0)	Load base address of array gy 
172:    LDC  3,4(6)	Load of type int constant 
173:    LDA  5,-9(0)	Load base address of array gy into AC2 
174:    SUB  5,5,3	Compute offset for array 
175:     LD  3,0(5)	Load array element gy from AC into loc from AC2 
176:     LD  4,-19(1)	Pop array index into AC1 
177:    LDA  5,-1(0)	Load base address of array gx into AC2 
178:    SUB  5,5,4	Compute offset for array 
179:     LD  4,0(5)	Load lhs variable 
180:    ADD  3,4,3	+= operation 
181:     ST  3,0(5)	Store variable gx from AC into loc from AC2 
* CALL output
182:     ST  1,-19(1)	Store fp in ghost frame for output 
183:    LDA  3,-1(0)	Load base address of array gx 
184:    LDC  3,5(6)	Load of type int constant 
185:    LDA  5,-1(0)	Load base address of array gx into AC2 
186:    SUB  5,5,3	Compute offset for array 
187:     LD  3,0(5)	Load array element gx from AC into loc from AC2 
188:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
189:    LDA  1,-19(1)	Move the fp to the new frame 
190:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
191:    JMP  7,-186(7)	Call function 
192:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
193:     ST  1,-19(1)	Store fp in ghost frame for outnl 
* Begin call
194:    LDA  1,-19(1)	Move the fp to the new frame 
195:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
196:    JMP  7,-163(7)	Call function 
197:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
198:    LDA  3,-3(1)	Load base address of array x 
199:    LDC  3,5(6)	Load of type int constant 
200:     ST  3,-19(1)	Push array index onto temp stack 
201:    LDC  3,111(6)	Load of type int constant 
202:     LD  4,-19(1)	Pop array index into AC1 
203:    LDA  5,-3(1)	Load base address of array x into AC2 
204:    SUB  5,5,4	Compute offset for array 
205:     LD  4,0(5)	Load lhs variable 
206:    SUB  3,4,3	-= operation 
207:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
208:     ST  1,-19(1)	Store fp in ghost frame for output 
209:    LDA  3,-3(1)	Load base address of array x 
210:    LDC  3,5(6)	Load of type int constant 
211:    LDA  5,-3(1)	Load base address of array x into AC2 
212:    SUB  5,5,3	Compute offset for array 
213:     LD  3,0(5)	Load array element x from AC into loc from AC2 
214:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
215:    LDA  1,-19(1)	Move the fp to the new frame 
216:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
217:    JMP  7,-212(7)	Call function 
218:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
219:    LDA  3,-12(1)	Load base address of array y 
220:    LDC  3,4(6)	Load of type int constant 
221:     ST  3,-19(1)	Push array index onto temp stack 
222:    LDC  3,222(6)	Load of type int constant 
223:     LD  4,-19(1)	Pop array index into AC1 
224:    LDA  5,-12(1)	Load base address of array y into AC2 
225:    SUB  5,5,4	Compute offset for array 
226:     LD  4,0(5)	Load lhs variable 
227:    SUB  3,4,3	-= operation 
228:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
229:     ST  1,-19(1)	Store fp in ghost frame for output 
230:    LDA  3,-12(1)	Load base address of array y 
231:    LDC  3,4(6)	Load of type int constant 
232:    LDA  5,-12(1)	Load base address of array y into AC2 
233:    SUB  5,5,3	Compute offset for array 
234:     LD  3,0(5)	Load array element y from AC into loc from AC2 
235:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
236:    LDA  1,-19(1)	Move the fp to the new frame 
237:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
238:    JMP  7,-233(7)	Call function 
239:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
240:     ST  1,-19(1)	Store fp in ghost frame for outnl 
* Begin call
241:    LDA  1,-19(1)	Move the fp to the new frame 
242:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
243:    JMP  7,-210(7)	Call function 
244:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
245:    LDA  3,-1(0)	Load base address of array gx 
246:    LDC  3,5(6)	Load of type int constant 
247:     ST  3,-19(1)	Push array index onto temp stack 
248:    LDC  3,333(6)	Load of type int constant 
249:     LD  4,-19(1)	Pop array index into AC1 
250:    LDA  5,-1(0)	Load base address of array gx into AC2 
251:    SUB  5,5,4	Compute offset for array 
252:     LD  4,0(5)	Load lhs variable 
253:    SUB  3,4,3	-= operation 
254:     ST  3,0(5)	Store variable gx from AC into loc from AC2 
* CALL output
255:     ST  1,-19(1)	Store fp in ghost frame for output 
256:    LDA  3,-1(0)	Load base address of array gx 
257:    LDC  3,5(6)	Load of type int constant 
258:    LDA  5,-1(0)	Load base address of array gx into AC2 
259:    SUB  5,5,3	Compute offset for array 
260:     LD  3,0(5)	Load array element gx from AC into loc from AC2 
261:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
262:    LDA  1,-19(1)	Move the fp to the new frame 
263:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
264:    JMP  7,-259(7)	Call function 
265:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
266:    LDA  3,-9(0)	Load base address of array gy 
267:    LDC  3,4(6)	Load of type int constant 
268:     ST  3,-19(1)	Push array index onto temp stack 
269:    LDC  3,444(6)	Load of type int constant 
270:     LD  4,-19(1)	Pop array index into AC1 
271:    LDA  5,-9(0)	Load base address of array gy into AC2 
272:    SUB  5,5,4	Compute offset for array 
273:     LD  4,0(5)	Load lhs variable 
274:    SUB  3,4,3	-= operation 
275:     ST  3,0(5)	Store variable gy from AC into loc from AC2 
* CALL output
276:     ST  1,-19(1)	Store fp in ghost frame for output 
277:    LDA  3,-9(0)	Load base address of array gy 
278:    LDC  3,4(6)	Load of type int constant 
279:    LDA  5,-9(0)	Load base address of array gy into AC2 
280:    SUB  5,5,3	Compute offset for array 
281:     LD  3,0(5)	Load array element gy from AC into loc from AC2 
282:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
283:    LDA  1,-19(1)	Move the fp to the new frame 
284:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
285:    JMP  7,-280(7)	Call function 
286:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
287:     ST  1,-19(1)	Store fp in ghost frame for outnl 
* Begin call
288:    LDA  1,-19(1)	Move the fp to the new frame 
289:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
290:    JMP  7,-257(7)	Call function 
291:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
292:    LDA  3,-3(1)	Load base address of array x 
293:    LDC  3,5(6)	Load of type int constant 
294:     ST  3,-19(1)	Push array index onto temp stack 
295:    LDA  3,-12(1)	Load base address of array y 
296:    LDC  3,4(6)	Load of type int constant 
297:    LDA  5,-12(1)	Load base address of array y into AC2 
298:    SUB  5,5,3	Compute offset for array 
299:     LD  3,0(5)	Load array element y from AC into loc from AC2 
300:     LD  4,-19(1)	Pop array index into AC1 
301:    LDA  5,-3(1)	Load base address of array x into AC2 
302:    SUB  5,5,4	Compute offset for array 
303:     LD  4,0(5)	Load lhs variable 
304:    SUB  3,4,3	-= operation 
305:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
306:     ST  1,-19(1)	Store fp in ghost frame for output 
307:    LDA  3,-3(1)	Load base address of array x 
308:    LDC  3,5(6)	Load of type int constant 
309:    LDA  5,-3(1)	Load base address of array x into AC2 
310:    SUB  5,5,3	Compute offset for array 
311:     LD  3,0(5)	Load array element x from AC into loc from AC2 
312:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
313:    LDA  1,-19(1)	Move the fp to the new frame 
314:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
315:    JMP  7,-310(7)	Call function 
316:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
317:     ST  1,-19(1)	Store fp in ghost frame for outnl 
* Begin call
318:    LDA  1,-19(1)	Move the fp to the new frame 
319:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
320:    JMP  7,-287(7)	Call function 
321:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
322:    LDA  3,-1(0)	Load base address of array gx 
323:    LDC  3,5(6)	Load of type int constant 
324:     ST  3,-19(1)	Push array index onto temp stack 
325:    LDA  3,-9(0)	Load base address of array gy 
326:    LDC  3,4(6)	Load of type int constant 
327:    LDA  5,-9(0)	Load base address of array gy into AC2 
328:    SUB  5,5,3	Compute offset for array 
329:     LD  3,0(5)	Load array element gy from AC into loc from AC2 
330:     LD  4,-19(1)	Pop array index into AC1 
331:    LDA  5,-1(0)	Load base address of array gx into AC2 
332:    SUB  5,5,4	Compute offset for array 
333:     LD  4,0(5)	Load lhs variable 
334:    SUB  3,4,3	-= operation 
335:     ST  3,0(5)	Store variable gx from AC into loc from AC2 
* CALL output
336:     ST  1,-19(1)	Store fp in ghost frame for output 
337:    LDA  3,-1(0)	Load base address of array gx 
338:    LDC  3,5(6)	Load of type int constant 
339:    LDA  5,-1(0)	Load base address of array gx into AC2 
340:    SUB  5,5,3	Compute offset for array 
341:     LD  3,0(5)	Load array element gx from AC into loc from AC2 
342:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
343:    LDA  1,-19(1)	Move the fp to the new frame 
344:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
345:    JMP  7,-340(7)	Call function 
346:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
347:     ST  1,-19(1)	Store fp in ghost frame for outnl 
* Begin call
348:    LDA  1,-19(1)	Move the fp to the new frame 
349:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
350:    JMP  7,-317(7)	Call function 
351:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
352:    LDA  2,0(3)	Copy accumulator to return register 
353:     LD  3,-1(1)	Load return address 
354:     LD  1,0(1)	Adjust fp 
355:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
356:    LDC  2,0(6)	Set return value to 0 
357:     LD  3,-1(1)	Load return address 
358:     LD  1,0(1)	Adjust fp 
359:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,359(7)	Jump to init [backpatch] 
* INIT
360:    LDA  1,-15(0)	set first frame at end of globals 
361:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
362:    LDC  3,7(6)	Load size of gx into AC 
363:     ST  3,0(0)	Store size of gx in data memory 
364:    LDC  3,6(6)	Load size of gy into AC 
365:     ST  3,-8(0)	Store size of gy in data memory 
* END INIT GLOBALS AND STATICS
366:    LDA  3,1(7)	Return address in ac 
367:    JMP  7,-329(7)	Jump to main 
368:   HALT  0,0,0	DONE! 
* END INIT
