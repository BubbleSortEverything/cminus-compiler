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
* CALL outputb
 40:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 41:    LDC  3,111(6)	Load of type int constant 
 42:     ST  3,-5(1)	Push left side onto temp variable stack 
 43:    LDC  3,222(6)	Load of type int constant 
 44:     LD  4,-5(1)	Pop left hand side into AC1 
 45:    TLE  3,4,3	LEQ <= operation store in AC 
 46:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-2(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-33(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 51:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 52:    LDC  3,222(6)	Load of type int constant 
 53:     ST  3,-5(1)	Push left side onto temp variable stack 
 54:    LDC  3,111(6)	Load of type int constant 
 55:     LD  4,-5(1)	Pop left hand side into AC1 
 56:    TLE  3,4,3	LEQ <= operation store in AC 
 57:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-2(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-44(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 62:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 63:    LDC  3,111(6)	Load of type int constant 
 64:     ST  3,-5(1)	Push left side onto temp variable stack 
 65:    LDC  3,111(6)	Load of type int constant 
 66:     LD  4,-5(1)	Pop left hand side into AC1 
 67:    TLE  3,4,3	LEQ <= operation store in AC 
 68:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-2(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-55(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 73:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 74:    LDA  1,-2(1)	Move the fp to the new frame 
 75:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 76:    JMP  7,-43(7)	Call function 
 77:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
 78:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 79:    LDC  3,111(6)	Load of type int constant 
 80:     ST  3,-5(1)	Push left side onto temp variable stack 
 81:    LDC  3,222(6)	Load of type int constant 
 82:     LD  4,-5(1)	Pop left hand side into AC1 
 83:    TLT  3,4,3	Less than < operation store in AC 
 84:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 85:    LDA  1,-2(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-71(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 89:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 90:    LDC  3,222(6)	Load of type int constant 
 91:     ST  3,-5(1)	Push left side onto temp variable stack 
 92:    LDC  3,111(6)	Load of type int constant 
 93:     LD  4,-5(1)	Pop left hand side into AC1 
 94:    TLT  3,4,3	Less than < operation store in AC 
 95:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 96:    LDA  1,-2(1)	Move the fp to the new frame 
 97:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 98:    JMP  7,-82(7)	Call function 
 99:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
100:     ST  1,-2(1)	Store fp in ghost frame for outputb 
101:    LDC  3,111(6)	Load of type int constant 
102:     ST  3,-5(1)	Push left side onto temp variable stack 
103:    LDC  3,111(6)	Load of type int constant 
104:     LD  4,-5(1)	Pop left hand side into AC1 
105:    TLT  3,4,3	Less than < operation store in AC 
106:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
107:    LDA  1,-2(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-93(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
111:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
112:    LDA  1,-2(1)	Move the fp to the new frame 
113:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
114:    JMP  7,-81(7)	Call function 
115:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
116:     ST  1,-2(1)	Store fp in ghost frame for outputb 
117:    LDC  3,111(6)	Load of type int constant 
118:     ST  3,-5(1)	Push left side onto temp variable stack 
119:    LDC  3,222(6)	Load of type int constant 
120:     LD  4,-5(1)	Pop left hand side into AC1 
121:    TGT  3,4,3	Greather than > operation store in AC 
122:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
123:    LDA  1,-2(1)	Move the fp to the new frame 
124:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
125:    JMP  7,-109(7)	Call function 
126:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
127:     ST  1,-2(1)	Store fp in ghost frame for outputb 
128:    LDC  3,222(6)	Load of type int constant 
129:     ST  3,-5(1)	Push left side onto temp variable stack 
130:    LDC  3,111(6)	Load of type int constant 
131:     LD  4,-5(1)	Pop left hand side into AC1 
132:    TGT  3,4,3	Greather than > operation store in AC 
133:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
134:    LDA  1,-2(1)	Move the fp to the new frame 
135:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
136:    JMP  7,-120(7)	Call function 
137:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
138:     ST  1,-2(1)	Store fp in ghost frame for outputb 
139:    LDC  3,111(6)	Load of type int constant 
140:     ST  3,-5(1)	Push left side onto temp variable stack 
141:    LDC  3,111(6)	Load of type int constant 
142:     LD  4,-5(1)	Pop left hand side into AC1 
143:    TGT  3,4,3	Greather than > operation store in AC 
144:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
145:    LDA  1,-2(1)	Move the fp to the new frame 
146:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
147:    JMP  7,-131(7)	Call function 
148:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
149:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
150:    LDA  1,-2(1)	Move the fp to the new frame 
151:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
152:    JMP  7,-119(7)	Call function 
153:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
154:     ST  1,-2(1)	Store fp in ghost frame for outputb 
155:    LDC  3,111(6)	Load of type int constant 
156:     ST  3,-5(1)	Push left side onto temp variable stack 
157:    LDC  3,222(6)	Load of type int constant 
158:     LD  4,-5(1)	Pop left hand side into AC1 
159:    TGE  3,4,3	GEQ >- operation store in AC 
160:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
161:    LDA  1,-2(1)	Move the fp to the new frame 
162:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
163:    JMP  7,-147(7)	Call function 
164:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
165:     ST  1,-2(1)	Store fp in ghost frame for outputb 
166:    LDC  3,222(6)	Load of type int constant 
167:     ST  3,-5(1)	Push left side onto temp variable stack 
168:    LDC  3,111(6)	Load of type int constant 
169:     LD  4,-5(1)	Pop left hand side into AC1 
170:    TGE  3,4,3	GEQ >- operation store in AC 
171:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
172:    LDA  1,-2(1)	Move the fp to the new frame 
173:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
174:    JMP  7,-158(7)	Call function 
175:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
176:     ST  1,-2(1)	Store fp in ghost frame for outputb 
177:    LDC  3,111(6)	Load of type int constant 
178:     ST  3,-5(1)	Push left side onto temp variable stack 
179:    LDC  3,111(6)	Load of type int constant 
180:     LD  4,-5(1)	Pop left hand side into AC1 
181:    TGE  3,4,3	GEQ >- operation store in AC 
182:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
183:    LDA  1,-2(1)	Move the fp to the new frame 
184:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
185:    JMP  7,-169(7)	Call function 
186:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
187:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
188:    LDA  1,-2(1)	Move the fp to the new frame 
189:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
190:    JMP  7,-157(7)	Call function 
191:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
192:     ST  1,-2(1)	Store fp in ghost frame for outputb 
193:    LDC  3,111(6)	Load of type int constant 
194:     ST  3,-5(1)	Push left side onto temp variable stack 
195:    LDC  3,222(6)	Load of type int constant 
196:     LD  4,-5(1)	Pop left hand side into AC1 
197:    TEQ  3,4,3	== Equality Operation 
198:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
199:    LDA  1,-2(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-185(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
203:     ST  1,-2(1)	Store fp in ghost frame for outputb 
204:    LDC  3,222(6)	Load of type int constant 
205:     ST  3,-5(1)	Push left side onto temp variable stack 
206:    LDC  3,111(6)	Load of type int constant 
207:     LD  4,-5(1)	Pop left hand side into AC1 
208:    TEQ  3,4,3	== Equality Operation 
209:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
210:    LDA  1,-2(1)	Move the fp to the new frame 
211:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
212:    JMP  7,-196(7)	Call function 
213:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
214:     ST  1,-2(1)	Store fp in ghost frame for outputb 
215:    LDC  3,111(6)	Load of type int constant 
216:     ST  3,-5(1)	Push left side onto temp variable stack 
217:    LDC  3,111(6)	Load of type int constant 
218:     LD  4,-5(1)	Pop left hand side into AC1 
219:    TEQ  3,4,3	== Equality Operation 
220:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
221:    LDA  1,-2(1)	Move the fp to the new frame 
222:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
223:    JMP  7,-207(7)	Call function 
224:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
225:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
226:    LDA  1,-2(1)	Move the fp to the new frame 
227:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
228:    JMP  7,-195(7)	Call function 
229:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
230:     ST  1,-2(1)	Store fp in ghost frame for outputb 
231:    LDC  3,111(6)	Load of type int constant 
232:     ST  3,-5(1)	Push left side onto temp variable stack 
233:    LDC  3,222(6)	Load of type int constant 
234:     LD  4,-5(1)	Pop left hand side into AC1 
235:    TNE  3,4,3	!= Equality Operation 
236:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
237:    LDA  1,-2(1)	Move the fp to the new frame 
238:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
239:    JMP  7,-223(7)	Call function 
240:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
241:     ST  1,-2(1)	Store fp in ghost frame for outputb 
242:    LDC  3,222(6)	Load of type int constant 
243:     ST  3,-5(1)	Push left side onto temp variable stack 
244:    LDC  3,111(6)	Load of type int constant 
245:     LD  4,-5(1)	Pop left hand side into AC1 
246:    TNE  3,4,3	!= Equality Operation 
247:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
248:    LDA  1,-2(1)	Move the fp to the new frame 
249:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
250:    JMP  7,-234(7)	Call function 
251:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
252:     ST  1,-2(1)	Store fp in ghost frame for outputb 
253:    LDC  3,111(6)	Load of type int constant 
254:     ST  3,-5(1)	Push left side onto temp variable stack 
255:    LDC  3,111(6)	Load of type int constant 
256:     LD  4,-5(1)	Pop left hand side into AC1 
257:    TNE  3,4,3	!= Equality Operation 
258:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
259:    LDA  1,-2(1)	Move the fp to the new frame 
260:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
261:    JMP  7,-245(7)	Call function 
262:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
263:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
264:    LDA  1,-2(1)	Move the fp to the new frame 
265:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
266:    JMP  7,-233(7)	Call function 
267:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
268:     ST  1,-2(1)	Store fp in ghost frame for outputb 
269:    LDC  3,111(6)	Load of type int constant 
270:     ST  3,-5(1)	Push left side onto temp variable stack 
271:    LDC  3,222(6)	Load of type int constant 
272:     LD  4,-5(1)	Pop left hand side into AC1 
273:    TNE  3,4,3	!= Equality Operation 
274:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
275:    LDA  1,-2(1)	Move the fp to the new frame 
276:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
277:    JMP  7,-261(7)	Call function 
278:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
279:     ST  1,-2(1)	Store fp in ghost frame for outputb 
280:    LDC  3,222(6)	Load of type int constant 
281:     ST  3,-5(1)	Push left side onto temp variable stack 
282:    LDC  3,111(6)	Load of type int constant 
283:     LD  4,-5(1)	Pop left hand side into AC1 
284:    TNE  3,4,3	!= Equality Operation 
285:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
286:    LDA  1,-2(1)	Move the fp to the new frame 
287:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
288:    JMP  7,-272(7)	Call function 
289:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
290:     ST  1,-2(1)	Store fp in ghost frame for outputb 
291:    LDC  3,111(6)	Load of type int constant 
292:     ST  3,-5(1)	Push left side onto temp variable stack 
293:    LDC  3,111(6)	Load of type int constant 
294:     LD  4,-5(1)	Pop left hand side into AC1 
295:    TNE  3,4,3	!= Equality Operation 
296:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
297:    LDA  1,-2(1)	Move the fp to the new frame 
298:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
299:    JMP  7,-283(7)	Call function 
300:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
301:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
302:    LDA  1,-2(1)	Move the fp to the new frame 
303:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
304:    JMP  7,-271(7)	Call function 
305:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
306:     ST  1,-2(1)	Store fp in ghost frame for outputb 
307:    LDC  3,0(6)	Load of type bool constant 
308:     ST  3,-5(1)	Push left side onto temp variable stack 
309:    LDC  3,0(6)	Load of type bool constant 
310:     LD  4,-5(1)	Pop left hand side into AC1 
311:    AND  3,4,3	AND operation store in AC 
312:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
313:    LDA  1,-2(1)	Move the fp to the new frame 
314:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
315:    JMP  7,-299(7)	Call function 
316:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
317:     ST  1,-2(1)	Store fp in ghost frame for outputb 
318:    LDC  3,0(6)	Load of type bool constant 
319:     ST  3,-5(1)	Push left side onto temp variable stack 
320:    LDC  3,1(6)	Load of type bool constant 
321:     LD  4,-5(1)	Pop left hand side into AC1 
322:    AND  3,4,3	AND operation store in AC 
323:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
324:    LDA  1,-2(1)	Move the fp to the new frame 
325:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
326:    JMP  7,-310(7)	Call function 
327:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
328:     ST  1,-2(1)	Store fp in ghost frame for outputb 
329:    LDC  3,1(6)	Load of type bool constant 
330:     ST  3,-5(1)	Push left side onto temp variable stack 
331:    LDC  3,0(6)	Load of type bool constant 
332:     LD  4,-5(1)	Pop left hand side into AC1 
333:    AND  3,4,3	AND operation store in AC 
334:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
335:    LDA  1,-2(1)	Move the fp to the new frame 
336:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
337:    JMP  7,-321(7)	Call function 
338:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
339:     ST  1,-2(1)	Store fp in ghost frame for outputb 
340:    LDC  3,1(6)	Load of type bool constant 
341:     ST  3,-5(1)	Push left side onto temp variable stack 
342:    LDC  3,1(6)	Load of type bool constant 
343:     LD  4,-5(1)	Pop left hand side into AC1 
344:    AND  3,4,3	AND operation store in AC 
345:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
346:    LDA  1,-2(1)	Move the fp to the new frame 
347:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
348:    JMP  7,-332(7)	Call function 
349:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
350:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
351:    LDA  1,-2(1)	Move the fp to the new frame 
352:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
353:    JMP  7,-320(7)	Call function 
354:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
355:     ST  1,-2(1)	Store fp in ghost frame for outputb 
356:    LDC  3,0(6)	Load of type bool constant 
357:     ST  3,-5(1)	Push left side onto temp variable stack 
358:    LDC  3,0(6)	Load of type bool constant 
359:     LD  4,-5(1)	Pop left hand side into AC1 
360:     OR  3,4,3	OR operation store in AC 
361:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
362:    LDA  1,-2(1)	Move the fp to the new frame 
363:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
364:    JMP  7,-348(7)	Call function 
365:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
366:     ST  1,-2(1)	Store fp in ghost frame for outputb 
367:    LDC  3,0(6)	Load of type bool constant 
368:     ST  3,-5(1)	Push left side onto temp variable stack 
369:    LDC  3,1(6)	Load of type bool constant 
370:     LD  4,-5(1)	Pop left hand side into AC1 
371:     OR  3,4,3	OR operation store in AC 
372:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
373:    LDA  1,-2(1)	Move the fp to the new frame 
374:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
375:    JMP  7,-359(7)	Call function 
376:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
377:     ST  1,-2(1)	Store fp in ghost frame for outputb 
378:    LDC  3,1(6)	Load of type bool constant 
379:     ST  3,-5(1)	Push left side onto temp variable stack 
380:    LDC  3,0(6)	Load of type bool constant 
381:     LD  4,-5(1)	Pop left hand side into AC1 
382:     OR  3,4,3	OR operation store in AC 
383:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
384:    LDA  1,-2(1)	Move the fp to the new frame 
385:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
386:    JMP  7,-370(7)	Call function 
387:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
388:     ST  1,-2(1)	Store fp in ghost frame for outputb 
389:    LDC  3,1(6)	Load of type bool constant 
390:     ST  3,-5(1)	Push left side onto temp variable stack 
391:    LDC  3,1(6)	Load of type bool constant 
392:     LD  4,-5(1)	Pop left hand side into AC1 
393:     OR  3,4,3	OR operation store in AC 
394:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
395:    LDA  1,-2(1)	Move the fp to the new frame 
396:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
397:    JMP  7,-381(7)	Call function 
398:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
399:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
400:    LDA  1,-2(1)	Move the fp to the new frame 
401:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
402:    JMP  7,-369(7)	Call function 
403:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
404:     ST  1,-2(1)	Store fp in ghost frame for outputb 
405:    LDC  3,0(6)	Load of type bool constant 
406:    LDC  4,1(6)	Load 1 into AC1 for not operation 
407:    TNE  3,4,3	Not ! operation store in AC 
408:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
409:    LDA  1,-2(1)	Move the fp to the new frame 
410:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
411:    JMP  7,-395(7)	Call function 
412:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
413:     ST  1,-2(1)	Store fp in ghost frame for outputb 
414:    LDC  3,1(6)	Load of type bool constant 
415:    LDC  4,1(6)	Load 1 into AC1 for not operation 
416:    TNE  3,4,3	Not ! operation store in AC 
417:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
418:    LDA  1,-2(1)	Move the fp to the new frame 
419:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
420:    JMP  7,-404(7)	Call function 
421:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
422:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
423:    LDA  1,-2(1)	Move the fp to the new frame 
424:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
425:    JMP  7,-392(7)	Call function 
426:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
427:     ST  1,-2(1)	Store fp in ghost frame for output 
428:    LDC  3,333(6)	Load of type int constant 
429:     ST  3,-5(1)	Push left side onto temp variable stack 
430:    LDC  3,444(6)	Load of type int constant 
431:     LD  4,-5(1)	Pop left hand side into AC1 
432:    ADD  3,4,3	+ Operation 
433:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
434:    LDA  1,-2(1)	Move the fp to the new frame 
435:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
436:    JMP  7,-431(7)	Call function 
437:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
438:     ST  1,-2(1)	Store fp in ghost frame for output 
439:    LDC  3,333(6)	Load of type int constant 
440:     ST  3,-5(1)	Push left side onto temp variable stack 
441:    LDC  3,444(6)	Load of type int constant 
442:     LD  4,-5(1)	Pop left hand side into AC1 
443:    SUB  3,4,3	- Subtraction Operation 
444:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
445:    LDA  1,-2(1)	Move the fp to the new frame 
446:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
447:    JMP  7,-442(7)	Call function 
448:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
449:     ST  1,-2(1)	Store fp in ghost frame for output 
450:    LDC  3,333(6)	Load of type int constant 
451:     ST  3,-5(1)	Push left side onto temp variable stack 
452:    LDC  3,444(6)	Load of type int constant 
453:     LD  4,-5(1)	Pop left hand side into AC1 
454:    MUL  3,4,3	* Multiplication Operation 
455:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
456:    LDA  1,-2(1)	Move the fp to the new frame 
457:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
458:    JMP  7,-453(7)	Call function 
459:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
460:     ST  1,-2(1)	Store fp in ghost frame for output 
461:    LDC  3,333(6)	Load of type int constant 
462:     ST  3,-5(1)	Push left side onto temp variable stack 
463:    LDC  3,444(6)	Load of type int constant 
464:     LD  4,-5(1)	Pop left hand side into AC1 
465:    DIV  3,4,3	/ Division operation 
466:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
467:    LDA  1,-2(1)	Move the fp to the new frame 
468:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
469:    JMP  7,-464(7)	Call function 
470:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
471:     ST  1,-2(1)	Store fp in ghost frame for output 
472:    LDC  3,3333(6)	Load of type int constant 
473:     ST  3,-5(1)	Push left side onto temp variable stack 
474:    LDC  3,444(6)	Load of type int constant 
475:     LD  4,-5(1)	Pop left hand side into AC1 
476:    MOD  3,4,3	% mod operation 
477:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
478:    LDA  1,-2(1)	Move the fp to the new frame 
479:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
480:    JMP  7,-475(7)	Call function 
481:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
482:     ST  1,-2(1)	Store fp in ghost frame for output 
483:    LDC  3,444(6)	Load of type int constant 
484:    NEG  3,3,0	- Change Sign Operation 
485:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
486:    LDA  1,-2(1)	Move the fp to the new frame 
487:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
488:    JMP  7,-483(7)	Call function 
489:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
490:    LDA  2,0(3)	Copy accumulator to return register 
491:     LD  3,-1(1)	Load return address 
492:     LD  1,0(1)	Adjust fp 
493:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
494:    LDC  2,0(6)	Set return value to 0 
495:     LD  3,-1(1)	Load return address 
496:     LD  1,0(1)	Adjust fp 
497:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,497(7)	Jump to init [backpatch] 
* INIT
498:    LDA  1,0(0)	set first frame at end of globals 
499:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
500:    LDA  3,1(7)	Return address in ac 
501:    JMP  7,-463(7)	Jump to main 
502:   HALT  0,0,0	DONE! 
* END INIT
