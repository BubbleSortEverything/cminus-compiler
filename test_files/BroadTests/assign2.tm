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
 44:    LDC  3,6(6)	Load size of a into AC 
 45:     ST  3,-19(1)	Store size of a in data memory 
 46:    LDC  3,5(6)	Load size of b into AC 
 47:     ST  3,-26(1)	Store size of b in data memory 
 48:    LDA  3,-3(1)	Load base address of array x 
 49:    LDC  3,5(6)	Load of type int constant 
 50:     ST  3,-32(1)	Push array index onto temp stack 
 51:    LDC  3,111(6)	Load of type int constant 
 52:     LD  4,-32(1)	Pop array index into AC1 
 53:    LDA  5,-3(1)	Load base address of array x into AC2 
 54:    SUB  5,5,4	Compute offset for array 
 55:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
 56:     ST  1,-32(1)	Store fp in ghost frame for output 
 57:    LDA  3,-3(1)	Load base address of array x 
 58:    LDC  3,5(6)	Load of type int constant 
 59:    LDA  5,-3(1)	Load base address of array x into AC2 
 60:    SUB  5,5,3	Compute offset for array 
 61:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 62:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-32(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-60(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 67:    LDA  3,-12(1)	Load base address of array y 
 68:    LDC  3,4(6)	Load of type int constant 
 69:     ST  3,-32(1)	Push array index onto temp stack 
 70:    LDC  3,222(6)	Load of type int constant 
 71:     LD  4,-32(1)	Pop array index into AC1 
 72:    LDA  5,-12(1)	Load base address of array y into AC2 
 73:    SUB  5,5,4	Compute offset for array 
 74:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
 75:     ST  1,-32(1)	Store fp in ghost frame for output 
 76:    LDA  3,-12(1)	Load base address of array y 
 77:    LDC  3,4(6)	Load of type int constant 
 78:    LDA  5,-12(1)	Load base address of array y into AC2 
 79:    SUB  5,5,3	Compute offset for array 
 80:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 81:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-32(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-79(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 86:    LDA  3,-20(1)	Load base address of array a 
 87:    LDC  3,3(6)	Load of type int constant 
 88:     ST  3,-32(1)	Push array index onto temp stack 
 89:    LDC  3,1(6)	Load of type bool constant 
 90:     LD  4,-32(1)	Pop array index into AC1 
 91:    LDA  5,-20(1)	Load base address of array a into AC2 
 92:    SUB  5,5,4	Compute offset for array 
 93:     ST  3,0(5)	Store variable a from AC into loc from AC2 
* CALL outputb
 94:     ST  1,-32(1)	Store fp in ghost frame for outputb 
 95:    LDA  3,-20(1)	Load base address of array a 
 96:    LDC  3,3(6)	Load of type int constant 
 97:    LDA  5,-20(1)	Load base address of array a into AC2 
 98:    SUB  5,5,3	Compute offset for array 
 99:     LD  3,0(5)	Load array element a from AC into loc from AC2 
100:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
101:    LDA  1,-32(1)	Move the fp to the new frame 
102:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
103:    JMP  7,-87(7)	Call function 
104:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
105:    LDA  3,-27(1)	Load base address of array b 
106:    LDC  3,2(6)	Load of type int constant 
107:     ST  3,-32(1)	Push array index onto temp stack 
108:    LDC  3,0(6)	Load of type bool constant 
109:     LD  4,-32(1)	Pop array index into AC1 
110:    LDA  5,-27(1)	Load base address of array b into AC2 
111:    SUB  5,5,4	Compute offset for array 
112:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL outputb
113:     ST  1,-32(1)	Store fp in ghost frame for outputb 
114:    LDA  3,-27(1)	Load base address of array b 
115:    LDC  3,2(6)	Load of type int constant 
116:    LDA  5,-27(1)	Load base address of array b into AC2 
117:    SUB  5,5,3	Compute offset for array 
118:     LD  3,0(5)	Load array element b from AC into loc from AC2 
119:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
120:    LDA  1,-32(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-106(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
124:     ST  1,-32(1)	Store fp in ghost frame for outnl 
* Begin call
125:    LDA  1,-32(1)	Move the fp to the new frame 
126:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
127:    JMP  7,-94(7)	Call function 
128:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
129:    LDA  3,-1(0)	Load base address of array gx 
130:    LDC  3,5(6)	Load of type int constant 
131:     ST  3,-32(1)	Push array index onto temp stack 
132:    LDC  3,333(6)	Load of type int constant 
133:     LD  4,-32(1)	Pop array index into AC1 
134:    LDA  5,-1(0)	Load base address of array gx into AC2 
135:    SUB  5,5,4	Compute offset for array 
136:     ST  3,0(5)	Store variable gx from AC into loc from AC2 
* CALL output
137:     ST  1,-32(1)	Store fp in ghost frame for output 
138:    LDA  3,-1(0)	Load base address of array gx 
139:    LDC  3,5(6)	Load of type int constant 
140:    LDA  5,-1(0)	Load base address of array gx into AC2 
141:    SUB  5,5,3	Compute offset for array 
142:     LD  3,0(5)	Load array element gx from AC into loc from AC2 
143:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
144:    LDA  1,-32(1)	Move the fp to the new frame 
145:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
146:    JMP  7,-141(7)	Call function 
147:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
148:    LDA  3,-9(0)	Load base address of array gy 
149:    LDC  3,4(6)	Load of type int constant 
150:     ST  3,-32(1)	Push array index onto temp stack 
151:    LDC  3,444(6)	Load of type int constant 
152:     LD  4,-32(1)	Pop array index into AC1 
153:    LDA  5,-9(0)	Load base address of array gy into AC2 
154:    SUB  5,5,4	Compute offset for array 
155:     ST  3,0(5)	Store variable gy from AC into loc from AC2 
* CALL output
156:     ST  1,-32(1)	Store fp in ghost frame for output 
157:    LDA  3,-9(0)	Load base address of array gy 
158:    LDC  3,4(6)	Load of type int constant 
159:    LDA  5,-9(0)	Load base address of array gy into AC2 
160:    SUB  5,5,3	Compute offset for array 
161:     LD  3,0(5)	Load array element gy from AC into loc from AC2 
162:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
163:    LDA  1,-32(1)	Move the fp to the new frame 
164:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
165:    JMP  7,-160(7)	Call function 
166:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
167:    LDA  3,-16(0)	Load base address of array ga 
168:    LDC  3,3(6)	Load of type int constant 
169:     ST  3,-32(1)	Push array index onto temp stack 
170:    LDC  3,0(6)	Load of type bool constant 
171:     LD  4,-32(1)	Pop array index into AC1 
172:    LDA  5,-16(0)	Load base address of array ga into AC2 
173:    SUB  5,5,4	Compute offset for array 
174:     ST  3,0(5)	Store variable ga from AC into loc from AC2 
* CALL outputb
175:     ST  1,-32(1)	Store fp in ghost frame for outputb 
176:    LDA  3,-16(0)	Load base address of array ga 
177:    LDC  3,3(6)	Load of type int constant 
178:    LDA  5,-16(0)	Load base address of array ga into AC2 
179:    SUB  5,5,3	Compute offset for array 
180:     LD  3,0(5)	Load array element ga from AC into loc from AC2 
181:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
182:    LDA  1,-32(1)	Move the fp to the new frame 
183:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
184:    JMP  7,-168(7)	Call function 
185:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
186:    LDA  3,-22(0)	Load base address of array gb 
187:    LDC  3,2(6)	Load of type int constant 
188:     ST  3,-32(1)	Push array index onto temp stack 
189:    LDC  3,1(6)	Load of type bool constant 
190:     LD  4,-32(1)	Pop array index into AC1 
191:    LDA  5,-22(0)	Load base address of array gb into AC2 
192:    SUB  5,5,4	Compute offset for array 
193:     ST  3,0(5)	Store variable gb from AC into loc from AC2 
* CALL outputb
194:     ST  1,-32(1)	Store fp in ghost frame for outputb 
195:    LDA  3,-22(0)	Load base address of array gb 
196:    LDC  3,2(6)	Load of type int constant 
197:    LDA  5,-22(0)	Load base address of array gb into AC2 
198:    SUB  5,5,3	Compute offset for array 
199:     LD  3,0(5)	Load array element gb from AC into loc from AC2 
200:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
201:    LDA  1,-32(1)	Move the fp to the new frame 
202:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
203:    JMP  7,-187(7)	Call function 
204:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
205:     ST  1,-32(1)	Store fp in ghost frame for outnl 
* Begin call
206:    LDA  1,-32(1)	Move the fp to the new frame 
207:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
208:    JMP  7,-175(7)	Call function 
209:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
210:    LDA  3,-3(1)	Load base address of array x 
211:    LDC  3,5(6)	Load of type int constant 
212:     ST  3,-32(1)	Push array index onto temp stack 
213:    LDA  3,-12(1)	Load base address of array y 
214:    LDC  3,4(6)	Load of type int constant 
215:    LDA  5,-12(1)	Load base address of array y into AC2 
216:    SUB  5,5,3	Compute offset for array 
217:     LD  3,0(5)	Load array element y from AC into loc from AC2 
218:     LD  4,-32(1)	Pop array index into AC1 
219:    LDA  5,-3(1)	Load base address of array x into AC2 
220:    SUB  5,5,4	Compute offset for array 
221:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
222:     ST  1,-32(1)	Store fp in ghost frame for output 
223:    LDA  3,-3(1)	Load base address of array x 
224:    LDC  3,5(6)	Load of type int constant 
225:    LDA  5,-3(1)	Load base address of array x into AC2 
226:    SUB  5,5,3	Compute offset for array 
227:     LD  3,0(5)	Load array element x from AC into loc from AC2 
228:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
229:    LDA  1,-32(1)	Move the fp to the new frame 
230:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
231:    JMP  7,-226(7)	Call function 
232:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
233:    LDA  3,-20(1)	Load base address of array a 
234:    LDC  3,3(6)	Load of type int constant 
235:     ST  3,-32(1)	Push array index onto temp stack 
236:    LDA  3,-27(1)	Load base address of array b 
237:    LDC  3,2(6)	Load of type int constant 
238:    LDA  5,-27(1)	Load base address of array b into AC2 
239:    SUB  5,5,3	Compute offset for array 
240:     LD  3,0(5)	Load array element b from AC into loc from AC2 
241:     LD  4,-32(1)	Pop array index into AC1 
242:    LDA  5,-20(1)	Load base address of array a into AC2 
243:    SUB  5,5,4	Compute offset for array 
244:     ST  3,0(5)	Store variable a from AC into loc from AC2 
* CALL outputb
245:     ST  1,-32(1)	Store fp in ghost frame for outputb 
246:    LDA  3,-20(1)	Load base address of array a 
247:    LDC  3,3(6)	Load of type int constant 
248:    LDA  5,-20(1)	Load base address of array a into AC2 
249:    SUB  5,5,3	Compute offset for array 
250:     LD  3,0(5)	Load array element a from AC into loc from AC2 
251:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
252:    LDA  1,-32(1)	Move the fp to the new frame 
253:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
254:    JMP  7,-238(7)	Call function 
255:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
256:     ST  1,-32(1)	Store fp in ghost frame for outnl 
* Begin call
257:    LDA  1,-32(1)	Move the fp to the new frame 
258:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
259:    JMP  7,-226(7)	Call function 
260:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
261:    LDA  3,-1(0)	Load base address of array gx 
262:    LDC  3,5(6)	Load of type int constant 
263:     ST  3,-32(1)	Push array index onto temp stack 
264:    LDA  3,-9(0)	Load base address of array gy 
265:    LDC  3,4(6)	Load of type int constant 
266:    LDA  5,-9(0)	Load base address of array gy into AC2 
267:    SUB  5,5,3	Compute offset for array 
268:     LD  3,0(5)	Load array element gy from AC into loc from AC2 
269:     LD  4,-32(1)	Pop array index into AC1 
270:    LDA  5,-1(0)	Load base address of array gx into AC2 
271:    SUB  5,5,4	Compute offset for array 
272:     ST  3,0(5)	Store variable gx from AC into loc from AC2 
* CALL output
273:     ST  1,-32(1)	Store fp in ghost frame for output 
274:    LDA  3,-1(0)	Load base address of array gx 
275:    LDC  3,5(6)	Load of type int constant 
276:    LDA  5,-1(0)	Load base address of array gx into AC2 
277:    SUB  5,5,3	Compute offset for array 
278:     LD  3,0(5)	Load array element gx from AC into loc from AC2 
279:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
280:    LDA  1,-32(1)	Move the fp to the new frame 
281:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
282:    JMP  7,-277(7)	Call function 
283:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
284:    LDA  3,-16(0)	Load base address of array ga 
285:    LDC  3,3(6)	Load of type int constant 
286:     ST  3,-32(1)	Push array index onto temp stack 
287:    LDA  3,-22(0)	Load base address of array gb 
288:    LDC  3,2(6)	Load of type int constant 
289:    LDA  5,-22(0)	Load base address of array gb into AC2 
290:    SUB  5,5,3	Compute offset for array 
291:     LD  3,0(5)	Load array element gb from AC into loc from AC2 
292:     LD  4,-32(1)	Pop array index into AC1 
293:    LDA  5,-16(0)	Load base address of array ga into AC2 
294:    SUB  5,5,4	Compute offset for array 
295:     ST  3,0(5)	Store variable ga from AC into loc from AC2 
* CALL outputb
296:     ST  1,-32(1)	Store fp in ghost frame for outputb 
297:    LDA  3,-16(0)	Load base address of array ga 
298:    LDC  3,3(6)	Load of type int constant 
299:    LDA  5,-16(0)	Load base address of array ga into AC2 
300:    SUB  5,5,3	Compute offset for array 
301:     LD  3,0(5)	Load array element ga from AC into loc from AC2 
302:     ST  3,-34(1)	Push parameter onto new frame 
* Begin call
303:    LDA  1,-32(1)	Move the fp to the new frame 
304:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
305:    JMP  7,-289(7)	Call function 
306:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
307:     ST  1,-32(1)	Store fp in ghost frame for outnl 
* Begin call
308:    LDA  1,-32(1)	Move the fp to the new frame 
309:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
310:    JMP  7,-277(7)	Call function 
311:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
312:    LDA  2,0(3)	Copy accumulator to return register 
313:     LD  3,-1(1)	Load return address 
314:     LD  1,0(1)	Adjust fp 
315:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
316:    LDC  2,0(6)	Set return value to 0 
317:     LD  3,-1(1)	Load return address 
318:     LD  1,0(1)	Adjust fp 
319:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,319(7)	Jump to init [backpatch] 
* INIT
320:    LDA  1,-26(0)	set first frame at end of globals 
321:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
322:    LDC  3,7(6)	Load size of gx into AC 
323:     ST  3,0(0)	Store size of gx in data memory 
324:    LDC  3,6(6)	Load size of gy into AC 
325:     ST  3,-8(0)	Store size of gy in data memory 
326:    LDC  3,5(6)	Load size of ga into AC 
327:     ST  3,-15(0)	Store size of ga in data memory 
328:    LDC  3,4(6)	Load size of gb into AC 
329:     ST  3,-21(0)	Store size of gb in data memory 
* END INIT GLOBALS AND STATICS
330:    LDA  3,1(7)	Return address in ac 
331:    JMP  7,-293(7)	Jump to main 
332:   HALT  0,0,0	DONE! 
* END INIT
