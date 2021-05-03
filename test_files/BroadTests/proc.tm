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
* FUNCTION square
 39:     ST  3,-1(1)	Store return address 
 40:     LD  3,-2(1)	Load variable x into accumulator 
 41:     ST  3,-3(1)	Push left side onto temp variable stack 
 42:     LD  3,-2(1)	Load variable x into accumulator 
 43:     LD  4,-3(1)	Pop left hand side into AC1 
 44:    MUL  3,4,3	* Multiplication Operation 
 45:    LDA  2,0(3)	Copy accumulator to return register 
 46:     LD  3,-1(1)	Load return address 
 47:     LD  1,0(1)	Adjust fp 
 48:    JMP  7,0(3)	Return 
* Add standard closing in case there is no return statement
 49:    LDC  2,0(6)	Set return value to 0 
 50:     LD  3,-1(1)	Load return address 
 51:     LD  1,0(1)	Adjust fp 
 52:    JMP  7,0(3)	Return 
* END FUNCTION square
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION max
 53:     ST  3,-1(1)	Store return address 
* BEGIN IF BLOCK
 54:     LD  3,-2(1)	Load variable x into accumulator 
 55:     ST  3,-4(1)	Push left side onto temp variable stack 
 56:     LD  3,-3(1)	Load variable y into accumulator 
 57:     LD  4,-4(1)	Pop left hand side into AC1 
 58:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
 60:     LD  3,-2(1)	Load variable x into accumulator 
 61:    LDA  2,0(3)	Copy accumulator to return register 
 62:     LD  3,-1(1)	Load return address 
 63:     LD  1,0(1)	Adjust fp 
 64:    JMP  7,0(3)	Return 
* IF JUMP TO END
 59:    JZR  3,6(7)	IF JMP TO ELSE 
 66:     LD  3,-3(1)	Load variable y into accumulator 
 67:    LDA  2,0(3)	Copy accumulator to return register 
 68:     LD  3,-1(1)	Load return address 
 69:     LD  1,0(1)	Adjust fp 
 70:    JMP  7,0(3)	Return 
 65:    LDA  7,5(7)	JUMP TO END 
* END IF
* Add standard closing in case there is no return statement
 71:    LDC  2,0(6)	Set return value to 0 
 72:     LD  3,-1(1)	Load return address 
 73:     LD  1,0(1)	Adjust fp 
 74:    JMP  7,0(3)	Return 
* END FUNCTION max
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION toInt
 75:     ST  3,-1(1)	Store return address 
* BEGIN IF BLOCK
 76:     LD  3,-2(1)	Load variable b into accumulator 
* IF JUMP TO ELSE
 78:    LDC  3,1(6)	Load of type int constant 
 79:    LDA  2,0(3)	Copy accumulator to return register 
 80:     LD  3,-1(1)	Load return address 
 81:     LD  1,0(1)	Adjust fp 
 82:    JMP  7,0(3)	Return 
* IF JUMP TO END
 77:    JZR  3,6(7)	IF JMP TO ELSE 
 84:    LDC  3,0(6)	Load of type int constant 
 85:    LDA  2,0(3)	Copy accumulator to return register 
 86:     LD  3,-1(1)	Load return address 
 87:     LD  1,0(1)	Adjust fp 
 88:    JMP  7,0(3)	Return 
 83:    LDA  7,5(7)	JUMP TO END 
* END IF
* Add standard closing in case there is no return statement
 89:    LDC  2,0(6)	Set return value to 0 
 90:     LD  3,-1(1)	Load return address 
 91:     LD  1,0(1)	Adjust fp 
 92:    JMP  7,0(3)	Return 
* END FUNCTION toInt
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION toBool
 93:     ST  3,-1(1)	Store return address 
* BEGIN IF BLOCK
 94:     LD  3,-2(1)	Load variable x into accumulator 
 95:     ST  3,-3(1)	Push left side onto temp variable stack 
 96:    LDC  3,0(6)	Load of type int constant 
 97:     LD  4,-3(1)	Pop left hand side into AC1 
 98:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
100:    LDC  3,0(6)	Load of type bool constant 
101:    LDA  2,0(3)	Copy accumulator to return register 
102:     LD  3,-1(1)	Load return address 
103:     LD  1,0(1)	Adjust fp 
104:    JMP  7,0(3)	Return 
* IF JUMP TO END
 99:    JZR  3,6(7)	IF JMP TO ELSE 
106:    LDC  3,1(6)	Load of type bool constant 
107:    LDA  2,0(3)	Copy accumulator to return register 
108:     LD  3,-1(1)	Load return address 
109:     LD  1,0(1)	Adjust fp 
110:    JMP  7,0(3)	Return 
105:    LDA  7,5(7)	JUMP TO END 
* END IF
* Add standard closing in case there is no return statement
111:    LDC  2,0(6)	Set return value to 0 
112:     LD  3,-1(1)	Load return address 
113:     LD  1,0(1)	Adjust fp 
114:    JMP  7,0(3)	Return 
* END FUNCTION toBool
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
115:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
116:     ST  1,-6(1)	Store fp in ghost frame for output 
* CALL square
117:     ST  1,-9(1)	Store fp in ghost frame for square 
118:    LDC  3,31(6)	Load of type int constant 
119:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
120:    LDA  1,-9(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-84(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL square
124:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
125:    LDA  1,-6(1)	Move the fp to the new frame 
126:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
127:    JMP  7,-122(7)	Call function 
128:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
129:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
130:    LDA  1,-6(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-99(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
134:     ST  1,-6(1)	Store fp in ghost frame for output 
* CALL max
135:     ST  1,-9(1)	Store fp in ghost frame for max 
136:    LDC  3,131(6)	Load of type int constant 
137:     ST  3,-11(1)	Push parameter onto new frame 
138:    LDC  3,42(6)	Load of type int constant 
139:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
140:    LDA  1,-9(1)	Move the fp to the new frame 
141:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
142:    JMP  7,-90(7)	Call function 
143:    LDA  3,0(2)	Save return result in accumulator 
* END CALL max
144:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
145:    LDA  1,-6(1)	Move the fp to the new frame 
146:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
147:    JMP  7,-142(7)	Call function 
148:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
149:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
150:    LDA  1,-6(1)	Move the fp to the new frame 
151:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
152:    JMP  7,-119(7)	Call function 
153:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL toBool
154:     ST  1,-6(1)	Store fp in ghost frame for toBool 
155:    LDC  3,42(6)	Load of type int constant 
156:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
157:    LDA  1,-6(1)	Move the fp to the new frame 
158:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
159:    JMP  7,-67(7)	Call function 
160:    LDA  3,0(2)	Save return result in accumulator 
* END CALL toBool
161:     ST  3,-2(1)	Assigning variable a in Local 
* CALL toInt
162:     ST  1,-6(1)	Store fp in ghost frame for toInt 
163:    LDC  3,1(6)	Load of type bool constant 
164:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
165:    LDA  1,-6(1)	Move the fp to the new frame 
166:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
167:    JMP  7,-93(7)	Call function 
168:    LDA  3,0(2)	Save return result in accumulator 
* END CALL toInt
169:     ST  3,-4(1)	Assigning variable x in Local 
* CALL output
170:     ST  1,-6(1)	Store fp in ghost frame for output 
171:     LD  3,-4(1)	Load variable x into accumulator 
172:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
173:    LDA  1,-6(1)	Move the fp to the new frame 
174:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
175:    JMP  7,-170(7)	Call function 
176:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outputb
177:     ST  1,-6(1)	Store fp in ghost frame for outputb 
178:     LD  3,-2(1)	Load variable a into accumulator 
179:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
180:    LDA  1,-6(1)	Move the fp to the new frame 
181:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
182:    JMP  7,-166(7)	Call function 
183:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* BEGIN IF BLOCK
184:    LDC  3,666(6)	Load of type int constant 
185:     ST  3,-6(1)	Push left side onto temp variable stack 
186:    LDC  3,1(6)	Load of type int constant 
187:     LD  4,-6(1)	Pop left hand side into AC1 
188:    ADD  3,4,3	+ Operation 
189:     ST  3,-6(1)	Push left side onto temp variable stack 
190:    LDC  3,13(6)	Load of type int constant 
191:     LD  4,-6(1)	Pop left hand side into AC1 
192:    TGT  3,4,3	Greather than > operation store in AC 
193:    LDC  4,1(6)	Load 1 into AC1 for not operation 
194:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* CALL output
196:     ST  1,-6(1)	Store fp in ghost frame for output 
197:    LDC  3,0(6)	Load of type int constant 
198:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
199:    LDA  1,-6(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-196(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
195:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
204:     ST  1,-6(1)	Store fp in ghost frame for output 
205:    LDC  3,666(6)	Load of type int constant 
206:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
207:    LDA  1,-6(1)	Move the fp to the new frame 
208:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
209:    JMP  7,-204(7)	Call function 
210:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
203:    LDA  7,7(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
211:    LDC  3,666(6)	Load of type int constant 
212:    NEG  3,3,0	- Change Sign Operation 
213:     ST  3,-6(1)	Push left side onto temp variable stack 
214:    LDC  3,1(6)	Load of type int constant 
215:     LD  4,-6(1)	Pop left hand side into AC1 
216:    ADD  3,4,3	+ Operation 
217:     ST  3,-6(1)	Push left side onto temp variable stack 
218:    LDC  3,13(6)	Load of type int constant 
219:    NEG  3,3,0	- Change Sign Operation 
220:     LD  4,-6(1)	Pop left hand side into AC1 
221:    TGT  3,4,3	Greather than > operation store in AC 
222:    LDC  4,1(6)	Load 1 into AC1 for not operation 
223:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* CALL output
225:     ST  1,-6(1)	Store fp in ghost frame for output 
226:    LDC  3,0(6)	Load of type int constant 
227:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
228:    LDA  1,-6(1)	Move the fp to the new frame 
229:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
230:    JMP  7,-225(7)	Call function 
231:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
224:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
233:     ST  1,-6(1)	Store fp in ghost frame for output 
234:    LDC  3,666(6)	Load of type int constant 
235:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
236:    LDA  1,-6(1)	Move the fp to the new frame 
237:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
238:    JMP  7,-233(7)	Call function 
239:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
232:    LDA  7,7(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
240:    LDC  3,666(6)	Load of type int constant 
241:    NEG  3,3,0	- Change Sign Operation 
242:     ST  3,-6(1)	Push left side onto temp variable stack 
243:    LDC  3,1(6)	Load of type int constant 
244:     LD  4,-6(1)	Pop left hand side into AC1 
245:    ADD  3,4,3	+ Operation 
246:     ST  3,-6(1)	Push left side onto temp variable stack 
247:    LDC  3,13(6)	Load of type int constant 
248:    NEG  3,3,0	- Change Sign Operation 
249:     LD  4,-6(1)	Pop left hand side into AC1 
250:    TGT  3,4,3	Greather than > operation store in AC 
251:    LDC  4,1(6)	Load 1 into AC1 for not operation 
252:    TNE  3,4,3	Not ! operation store in AC 
253:    LDC  4,1(6)	Load 1 into AC1 for not operation 
254:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* CALL output
256:     ST  1,-6(1)	Store fp in ghost frame for output 
257:    LDC  3,0(6)	Load of type int constant 
258:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
259:    LDA  1,-6(1)	Move the fp to the new frame 
260:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
261:    JMP  7,-256(7)	Call function 
262:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
255:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
264:     ST  1,-6(1)	Store fp in ghost frame for output 
265:    LDC  3,666(6)	Load of type int constant 
266:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
267:    LDA  1,-6(1)	Move the fp to the new frame 
268:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
269:    JMP  7,-264(7)	Call function 
270:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
263:    LDA  7,7(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
271:    LDC  3,0(6)	Load of type bool constant 
272:    LDC  4,1(6)	Load 1 into AC1 for not operation 
273:    TNE  3,4,3	Not ! operation store in AC 
274:     ST  3,-6(1)	Push left side onto temp variable stack 
275:    LDC  3,1(6)	Load of type bool constant 
276:     LD  4,-6(1)	Pop left hand side into AC1 
277:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* CALL output
279:     ST  1,-6(1)	Store fp in ghost frame for output 
280:    LDC  3,7(6)	Load of type int constant 
281:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
282:    LDA  1,-6(1)	Move the fp to the new frame 
283:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
284:    JMP  7,-279(7)	Call function 
285:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
278:    JZR  3,8(7)	IF JMP TO ELSE 
286:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
287:    LDC  3,4(6)	Load of type int constant 
288:     ST  3,-6(1)	Push left side onto temp variable stack 
289:    LDC  3,6(6)	Load of type int constant 
290:     LD  4,-6(1)	Pop left hand side into AC1 
291:    TGT  3,4,3	Greather than > operation store in AC 
292:    LDC  4,1(6)	Load 1 into AC1 for not operation 
293:    TNE  3,4,3	Not ! operation store in AC 
294:     ST  3,-6(1)	Push left side onto temp variable stack 
295:    LDC  3,6(6)	Load of type int constant 
296:     ST  3,-7(1)	Push left side onto temp variable stack 
297:    LDC  3,4(6)	Load of type int constant 
298:     LD  4,-7(1)	Pop left hand side into AC1 
299:    TGT  3,4,3	Greather than > operation store in AC 
300:     LD  4,-6(1)	Pop left hand side into AC1 
301:    AND  3,4,3	AND operation store in AC 
* IF JUMP TO ELSE
* CALL output
303:     ST  1,-6(1)	Store fp in ghost frame for output 
304:    LDC  3,7(6)	Load of type int constant 
305:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
306:    LDA  1,-6(1)	Move the fp to the new frame 
307:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
308:    JMP  7,-303(7)	Call function 
309:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
302:    JZR  3,8(7)	IF JMP TO ELSE 
310:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL outnl
311:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
312:    LDA  1,-6(1)	Move the fp to the new frame 
313:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
314:    JMP  7,-281(7)	Call function 
315:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
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
320:    LDA  1,0(0)	set first frame at end of globals 
321:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
322:    LDA  3,1(7)	Return address in ac 
323:    JMP  7,-209(7)	Jump to main 
324:   HALT  0,0,0	DONE! 
* END INIT
