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
 40:    LDC  3,300(6)	Load size of x into AC 
 41:     ST  3,-2(1)	Store size of x in data memory 
 42:    LDC  3,5(6)	Load of type int constant 
 43:     ST  3,-303(1)	Assigning variable z in Local 
 44:    LDA  3,-3(1)	Load base address of array x 
 45:     LD  3,-303(1)	Load variable z into accumulator 
 46:     ST  3,-304(1)	Push array index onto temp stack 
 47:    LDC  3,73(6)	Load of type int constant 
 48:     LD  4,-304(1)	Pop array index into AC1 
 49:    LDA  5,-3(1)	Load base address of array x into AC2 
 50:    SUB  5,5,4	Compute offset for array 
 51:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
 52:     ST  1,-304(1)	Store fp in ghost frame for output 
 53:    LDA  3,-3(1)	Load base address of array x 
 54:     LD  3,-303(1)	Load variable z into accumulator 
 55:    LDA  5,-3(1)	Load base address of array x into AC2 
 56:    SUB  5,5,3	Compute offset for array 
 57:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 58:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-304(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-56(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 63:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
 64:    LDA  1,-304(1)	Move the fp to the new frame 
 65:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 66:    JMP  7,-33(7)	Call function 
 67:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 68:    LDC  3,5(6)	Load of type int constant 
 69:     ST  3,-303(1)	Assigning variable z in Local 
 70:    LDA  3,-3(1)	Load base address of array x 
 71:     LD  3,-303(1)	Load variable z into accumulator 
 72:     ST  3,-304(1)	Push array index onto temp stack 
 73:    LDC  3,17(6)	Load of type int constant 
 74:     LD  4,-304(1)	Pop array index into AC1 
 75:    LDA  5,-3(1)	Load base address of array x into AC2 
 76:    SUB  5,5,4	Compute offset for array 
 77:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 78:    LDC  3,17(6)	Load of type int constant 
 79:     ST  3,-303(1)	Assigning variable z in Local 
 80:    LDA  3,-3(1)	Load base address of array x 
 81:     LD  3,-303(1)	Load variable z into accumulator 
 82:     ST  3,-304(1)	Push array index onto temp stack 
 83:    LDC  3,5(6)	Load of type int constant 
 84:     LD  4,-304(1)	Pop array index into AC1 
 85:    LDA  5,-3(1)	Load base address of array x into AC2 
 86:    SUB  5,5,4	Compute offset for array 
 87:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
 88:     ST  1,-304(1)	Store fp in ghost frame for output 
 89:    LDA  3,-3(1)	Load base address of array x 
 90:     LD  3,-303(1)	Load variable z into accumulator 
 91:    LDA  5,-3(1)	Load base address of array x into AC2 
 92:    SUB  5,5,3	Compute offset for array 
 93:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 94:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
 95:    LDA  1,-304(1)	Move the fp to the new frame 
 96:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 97:    JMP  7,-92(7)	Call function 
 98:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 99:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
100:    LDA  1,-304(1)	Move the fp to the new frame 
101:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
102:    JMP  7,-69(7)	Call function 
103:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
104:     ST  1,-304(1)	Store fp in ghost frame for output 
105:    LDA  3,-3(1)	Load base address of array x 
106:    LDA  3,-3(1)	Load base address of array x 
107:     LD  3,-303(1)	Load variable z into accumulator 
108:    LDA  5,-3(1)	Load base address of array x into AC2 
109:    SUB  5,5,3	Compute offset for array 
110:     LD  3,0(5)	Load array element x from AC into loc from AC2 
111:    LDA  5,-3(1)	Load base address of array x into AC2 
112:    SUB  5,5,3	Compute offset for array 
113:     LD  3,0(5)	Load array element x from AC into loc from AC2 
114:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
115:    LDA  1,-304(1)	Move the fp to the new frame 
116:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
117:    JMP  7,-112(7)	Call function 
118:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
119:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
120:    LDA  1,-304(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-89(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
124:     ST  1,-304(1)	Store fp in ghost frame for output 
125:    LDA  3,-3(1)	Load base address of array x 
126:    LDA  3,-3(1)	Load base address of array x 
127:    LDA  3,-3(1)	Load base address of array x 
128:     LD  3,-303(1)	Load variable z into accumulator 
129:    LDA  5,-3(1)	Load base address of array x into AC2 
130:    SUB  5,5,3	Compute offset for array 
131:     LD  3,0(5)	Load array element x from AC into loc from AC2 
132:    LDA  5,-3(1)	Load base address of array x into AC2 
133:    SUB  5,5,3	Compute offset for array 
134:     LD  3,0(5)	Load array element x from AC into loc from AC2 
135:    LDA  5,-3(1)	Load base address of array x into AC2 
136:    SUB  5,5,3	Compute offset for array 
137:     LD  3,0(5)	Load array element x from AC into loc from AC2 
138:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
139:    LDA  1,-304(1)	Move the fp to the new frame 
140:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
141:    JMP  7,-136(7)	Call function 
142:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
143:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
144:    LDA  1,-304(1)	Move the fp to the new frame 
145:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
146:    JMP  7,-113(7)	Call function 
147:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
148:     ST  1,-304(1)	Store fp in ghost frame for output 
149:    LDA  3,-3(1)	Load base address of array x 
150:    LDA  3,-3(1)	Load base address of array x 
151:    LDA  3,-3(1)	Load base address of array x 
152:    LDA  3,-3(1)	Load base address of array x 
153:     LD  3,-303(1)	Load variable z into accumulator 
154:    LDA  5,-3(1)	Load base address of array x into AC2 
155:    SUB  5,5,3	Compute offset for array 
156:     LD  3,0(5)	Load array element x from AC into loc from AC2 
157:    LDA  5,-3(1)	Load base address of array x into AC2 
158:    SUB  5,5,3	Compute offset for array 
159:     LD  3,0(5)	Load array element x from AC into loc from AC2 
160:    LDA  5,-3(1)	Load base address of array x into AC2 
161:    SUB  5,5,3	Compute offset for array 
162:     LD  3,0(5)	Load array element x from AC into loc from AC2 
163:    LDA  5,-3(1)	Load base address of array x into AC2 
164:    SUB  5,5,3	Compute offset for array 
165:     LD  3,0(5)	Load array element x from AC into loc from AC2 
166:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
167:    LDA  1,-304(1)	Move the fp to the new frame 
168:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
169:    JMP  7,-164(7)	Call function 
170:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
171:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
172:    LDA  1,-304(1)	Move the fp to the new frame 
173:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
174:    JMP  7,-141(7)	Call function 
175:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
176:     ST  1,-304(1)	Store fp in ghost frame for output 
177:    LDA  3,-3(1)	Load base address of array x 
178:    LDA  3,-3(1)	Load base address of array x 
179:    LDA  3,-3(1)	Load base address of array x 
180:    LDA  3,-3(1)	Load base address of array x 
181:    LDA  3,-3(1)	Load base address of array x 
182:     LD  3,-303(1)	Load variable z into accumulator 
183:    LDA  5,-3(1)	Load base address of array x into AC2 
184:    SUB  5,5,3	Compute offset for array 
185:     LD  3,0(5)	Load array element x from AC into loc from AC2 
186:    LDA  5,-3(1)	Load base address of array x into AC2 
187:    SUB  5,5,3	Compute offset for array 
188:     LD  3,0(5)	Load array element x from AC into loc from AC2 
189:    LDA  5,-3(1)	Load base address of array x into AC2 
190:    SUB  5,5,3	Compute offset for array 
191:     LD  3,0(5)	Load array element x from AC into loc from AC2 
192:    LDA  5,-3(1)	Load base address of array x into AC2 
193:    SUB  5,5,3	Compute offset for array 
194:     LD  3,0(5)	Load array element x from AC into loc from AC2 
195:    LDA  5,-3(1)	Load base address of array x into AC2 
196:    SUB  5,5,3	Compute offset for array 
197:     LD  3,0(5)	Load array element x from AC into loc from AC2 
198:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
199:    LDA  1,-304(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-196(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
203:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
204:    LDA  1,-304(1)	Move the fp to the new frame 
205:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
206:    JMP  7,-173(7)	Call function 
207:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
208:     ST  1,-304(1)	Store fp in ghost frame for output 
209:    LDA  3,-3(1)	Load base address of array x 
210:    LDA  3,-3(1)	Load base address of array x 
211:    LDA  3,-3(1)	Load base address of array x 
212:    LDA  3,-3(1)	Load base address of array x 
213:    LDA  3,-3(1)	Load base address of array x 
214:    LDA  3,-3(1)	Load base address of array x 
215:     LD  3,-303(1)	Load variable z into accumulator 
216:    LDA  5,-3(1)	Load base address of array x into AC2 
217:    SUB  5,5,3	Compute offset for array 
218:     LD  3,0(5)	Load array element x from AC into loc from AC2 
219:    LDA  5,-3(1)	Load base address of array x into AC2 
220:    SUB  5,5,3	Compute offset for array 
221:     LD  3,0(5)	Load array element x from AC into loc from AC2 
222:    LDA  5,-3(1)	Load base address of array x into AC2 
223:    SUB  5,5,3	Compute offset for array 
224:     LD  3,0(5)	Load array element x from AC into loc from AC2 
225:    LDA  5,-3(1)	Load base address of array x into AC2 
226:    SUB  5,5,3	Compute offset for array 
227:     LD  3,0(5)	Load array element x from AC into loc from AC2 
228:    LDA  5,-3(1)	Load base address of array x into AC2 
229:    SUB  5,5,3	Compute offset for array 
230:     LD  3,0(5)	Load array element x from AC into loc from AC2 
231:    LDA  5,-3(1)	Load base address of array x into AC2 
232:    SUB  5,5,3	Compute offset for array 
233:     LD  3,0(5)	Load array element x from AC into loc from AC2 
234:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
235:    LDA  1,-304(1)	Move the fp to the new frame 
236:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
237:    JMP  7,-232(7)	Call function 
238:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
239:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
240:    LDA  1,-304(1)	Move the fp to the new frame 
241:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
242:    JMP  7,-209(7)	Call function 
243:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
244:     ST  1,-304(1)	Store fp in ghost frame for output 
245:    LDA  3,-3(1)	Load base address of array x 
246:    LDA  3,-3(1)	Load base address of array x 
247:    LDA  3,-3(1)	Load base address of array x 
248:    LDA  3,-3(1)	Load base address of array x 
249:    LDA  3,-3(1)	Load base address of array x 
250:    LDA  3,-3(1)	Load base address of array x 
251:    LDA  3,-3(1)	Load base address of array x 
252:     LD  3,-303(1)	Load variable z into accumulator 
253:    LDA  5,-3(1)	Load base address of array x into AC2 
254:    SUB  5,5,3	Compute offset for array 
255:     LD  3,0(5)	Load array element x from AC into loc from AC2 
256:    LDA  5,-3(1)	Load base address of array x into AC2 
257:    SUB  5,5,3	Compute offset for array 
258:     LD  3,0(5)	Load array element x from AC into loc from AC2 
259:    LDA  5,-3(1)	Load base address of array x into AC2 
260:    SUB  5,5,3	Compute offset for array 
261:     LD  3,0(5)	Load array element x from AC into loc from AC2 
262:    LDA  5,-3(1)	Load base address of array x into AC2 
263:    SUB  5,5,3	Compute offset for array 
264:     LD  3,0(5)	Load array element x from AC into loc from AC2 
265:    LDA  5,-3(1)	Load base address of array x into AC2 
266:    SUB  5,5,3	Compute offset for array 
267:     LD  3,0(5)	Load array element x from AC into loc from AC2 
268:    LDA  5,-3(1)	Load base address of array x into AC2 
269:    SUB  5,5,3	Compute offset for array 
270:     LD  3,0(5)	Load array element x from AC into loc from AC2 
271:    LDA  5,-3(1)	Load base address of array x into AC2 
272:    SUB  5,5,3	Compute offset for array 
273:     LD  3,0(5)	Load array element x from AC into loc from AC2 
274:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
275:    LDA  1,-304(1)	Move the fp to the new frame 
276:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
277:    JMP  7,-272(7)	Call function 
278:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
279:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
280:    LDA  1,-304(1)	Move the fp to the new frame 
281:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
282:    JMP  7,-249(7)	Call function 
283:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
284:     ST  1,-304(1)	Store fp in ghost frame for output 
285:    LDA  3,-3(1)	Load base address of array x 
286:    LDA  3,-3(1)	Load base address of array x 
287:    LDA  3,-3(1)	Load base address of array x 
288:    LDA  3,-3(1)	Load base address of array x 
289:    LDA  3,-3(1)	Load base address of array x 
290:    LDA  3,-3(1)	Load base address of array x 
291:    LDA  3,-3(1)	Load base address of array x 
292:    LDA  3,-3(1)	Load base address of array x 
293:     LD  3,-303(1)	Load variable z into accumulator 
294:    LDA  5,-3(1)	Load base address of array x into AC2 
295:    SUB  5,5,3	Compute offset for array 
296:     LD  3,0(5)	Load array element x from AC into loc from AC2 
297:    LDA  5,-3(1)	Load base address of array x into AC2 
298:    SUB  5,5,3	Compute offset for array 
299:     LD  3,0(5)	Load array element x from AC into loc from AC2 
300:    LDA  5,-3(1)	Load base address of array x into AC2 
301:    SUB  5,5,3	Compute offset for array 
302:     LD  3,0(5)	Load array element x from AC into loc from AC2 
303:    LDA  5,-3(1)	Load base address of array x into AC2 
304:    SUB  5,5,3	Compute offset for array 
305:     LD  3,0(5)	Load array element x from AC into loc from AC2 
306:    LDA  5,-3(1)	Load base address of array x into AC2 
307:    SUB  5,5,3	Compute offset for array 
308:     LD  3,0(5)	Load array element x from AC into loc from AC2 
309:    LDA  5,-3(1)	Load base address of array x into AC2 
310:    SUB  5,5,3	Compute offset for array 
311:     LD  3,0(5)	Load array element x from AC into loc from AC2 
312:    LDA  5,-3(1)	Load base address of array x into AC2 
313:    SUB  5,5,3	Compute offset for array 
314:     LD  3,0(5)	Load array element x from AC into loc from AC2 
315:    LDA  5,-3(1)	Load base address of array x into AC2 
316:    SUB  5,5,3	Compute offset for array 
317:     LD  3,0(5)	Load array element x from AC into loc from AC2 
318:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
319:    LDA  1,-304(1)	Move the fp to the new frame 
320:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
321:    JMP  7,-316(7)	Call function 
322:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
323:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
324:    LDA  1,-304(1)	Move the fp to the new frame 
325:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
326:    JMP  7,-293(7)	Call function 
327:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
328:     ST  1,-304(1)	Store fp in ghost frame for output 
329:    LDA  3,-3(1)	Load base address of array x 
330:    LDA  3,-3(1)	Load base address of array x 
331:    LDA  3,-3(1)	Load base address of array x 
332:    LDA  3,-3(1)	Load base address of array x 
333:    LDA  3,-3(1)	Load base address of array x 
334:    LDA  3,-3(1)	Load base address of array x 
335:    LDA  3,-3(1)	Load base address of array x 
336:    LDA  3,-3(1)	Load base address of array x 
337:    LDA  3,-3(1)	Load base address of array x 
338:     LD  3,-303(1)	Load variable z into accumulator 
339:    LDA  5,-3(1)	Load base address of array x into AC2 
340:    SUB  5,5,3	Compute offset for array 
341:     LD  3,0(5)	Load array element x from AC into loc from AC2 
342:    LDA  5,-3(1)	Load base address of array x into AC2 
343:    SUB  5,5,3	Compute offset for array 
344:     LD  3,0(5)	Load array element x from AC into loc from AC2 
345:    LDA  5,-3(1)	Load base address of array x into AC2 
346:    SUB  5,5,3	Compute offset for array 
347:     LD  3,0(5)	Load array element x from AC into loc from AC2 
348:    LDA  5,-3(1)	Load base address of array x into AC2 
349:    SUB  5,5,3	Compute offset for array 
350:     LD  3,0(5)	Load array element x from AC into loc from AC2 
351:    LDA  5,-3(1)	Load base address of array x into AC2 
352:    SUB  5,5,3	Compute offset for array 
353:     LD  3,0(5)	Load array element x from AC into loc from AC2 
354:    LDA  5,-3(1)	Load base address of array x into AC2 
355:    SUB  5,5,3	Compute offset for array 
356:     LD  3,0(5)	Load array element x from AC into loc from AC2 
357:    LDA  5,-3(1)	Load base address of array x into AC2 
358:    SUB  5,5,3	Compute offset for array 
359:     LD  3,0(5)	Load array element x from AC into loc from AC2 
360:    LDA  5,-3(1)	Load base address of array x into AC2 
361:    SUB  5,5,3	Compute offset for array 
362:     LD  3,0(5)	Load array element x from AC into loc from AC2 
363:    LDA  5,-3(1)	Load base address of array x into AC2 
364:    SUB  5,5,3	Compute offset for array 
365:     LD  3,0(5)	Load array element x from AC into loc from AC2 
366:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
367:    LDA  1,-304(1)	Move the fp to the new frame 
368:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
369:    JMP  7,-364(7)	Call function 
370:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
371:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
372:    LDA  1,-304(1)	Move the fp to the new frame 
373:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
374:    JMP  7,-341(7)	Call function 
375:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
376:     ST  1,-304(1)	Store fp in ghost frame for output 
377:    LDA  3,-3(1)	Load base address of array x 
378:    LDA  3,-3(1)	Load base address of array x 
379:    LDA  3,-3(1)	Load base address of array x 
380:    LDA  3,-3(1)	Load base address of array x 
381:    LDA  3,-3(1)	Load base address of array x 
382:    LDA  3,-3(1)	Load base address of array x 
383:    LDA  3,-3(1)	Load base address of array x 
384:    LDA  3,-3(1)	Load base address of array x 
385:    LDA  3,-3(1)	Load base address of array x 
386:    LDA  3,-3(1)	Load base address of array x 
387:     LD  3,-303(1)	Load variable z into accumulator 
388:    LDA  5,-3(1)	Load base address of array x into AC2 
389:    SUB  5,5,3	Compute offset for array 
390:     LD  3,0(5)	Load array element x from AC into loc from AC2 
391:    LDA  5,-3(1)	Load base address of array x into AC2 
392:    SUB  5,5,3	Compute offset for array 
393:     LD  3,0(5)	Load array element x from AC into loc from AC2 
394:    LDA  5,-3(1)	Load base address of array x into AC2 
395:    SUB  5,5,3	Compute offset for array 
396:     LD  3,0(5)	Load array element x from AC into loc from AC2 
397:    LDA  5,-3(1)	Load base address of array x into AC2 
398:    SUB  5,5,3	Compute offset for array 
399:     LD  3,0(5)	Load array element x from AC into loc from AC2 
400:    LDA  5,-3(1)	Load base address of array x into AC2 
401:    SUB  5,5,3	Compute offset for array 
402:     LD  3,0(5)	Load array element x from AC into loc from AC2 
403:    LDA  5,-3(1)	Load base address of array x into AC2 
404:    SUB  5,5,3	Compute offset for array 
405:     LD  3,0(5)	Load array element x from AC into loc from AC2 
406:    LDA  5,-3(1)	Load base address of array x into AC2 
407:    SUB  5,5,3	Compute offset for array 
408:     LD  3,0(5)	Load array element x from AC into loc from AC2 
409:    LDA  5,-3(1)	Load base address of array x into AC2 
410:    SUB  5,5,3	Compute offset for array 
411:     LD  3,0(5)	Load array element x from AC into loc from AC2 
412:    LDA  5,-3(1)	Load base address of array x into AC2 
413:    SUB  5,5,3	Compute offset for array 
414:     LD  3,0(5)	Load array element x from AC into loc from AC2 
415:    LDA  5,-3(1)	Load base address of array x into AC2 
416:    SUB  5,5,3	Compute offset for array 
417:     LD  3,0(5)	Load array element x from AC into loc from AC2 
418:     ST  3,-306(1)	Push parameter onto new frame 
* Begin call
419:    LDA  1,-304(1)	Move the fp to the new frame 
420:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
421:    JMP  7,-416(7)	Call function 
422:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
423:     ST  1,-304(1)	Store fp in ghost frame for outnl 
* Begin call
424:    LDA  1,-304(1)	Move the fp to the new frame 
425:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
426:    JMP  7,-393(7)	Call function 
427:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
428:    LDC  2,0(6)	Set return value to 0 
429:     LD  3,-1(1)	Load return address 
430:     LD  1,0(1)	Adjust fp 
431:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,431(7)	Jump to init [backpatch] 
* INIT
432:    LDA  1,0(0)	set first frame at end of globals 
433:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
434:    LDA  3,1(7)	Return address in ac 
435:    JMP  7,-397(7)	Jump to main 
436:   HALT  0,0,0	DONE! 
* END INIT
