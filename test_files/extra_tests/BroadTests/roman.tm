* C- compiler version C-S21
* Built: Apr 18, 2021 (toffset telemetry)
* Author: Robert B. Heckendorn
* File compiled:  roman.c-
* 
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
* FUNCTION getstring
* TOFF set: -3
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* TOFF set: -4
* Compound Body
* EXPRESSION
 40:    LDC  3,0(6)	Load integer constant 
 41:     ST  3,-3(1)	Store variable i
* WHILE
 42:    LDC  3,1(6)	Load Boolean constant 
 43:    JNZ  3,1(7)	Jump to while part 
* DO
* COMPOUND
* TOFF set: -5
* Compound Body
* EXPRESSION
* CALL inputc
 45:     ST  1,-5(1)	Store fp in ghost frame for inputc
* TOFF dec: -6
* TOFF dec: -7
* Param end inputc
 46:    LDA  1,-5(1)	Ghost frame becomes new active frame 
 47:    LDA  3,1(7)	Return address in ac 
 48:    JMP  7,-26(7)	CALL inputc
 49:    LDA  3,0(2)	Save the result in ac 
* Call end inputc
* TOFF set: -5
 50:     ST  3,-4(1)	Store variable c
* IF
 51:     LD  3,-3(1)	Load variable i
 52:     ST  3,-5(1)	Push left side 
* TOFF dec: -6
 53:     LD  3,-2(1)	Load address of base of array s
 54:     LD  3,1(3)	Load array size 
* TOFF inc: -5
 55:     LD  4,-5(1)	Pop left into ac1 
 56:    TLT  3,4,3	Op < 
* THEN
* EXPRESSION
 58:     LD  3,-3(1)	Load variable i
 59:     ST  3,-5(1)	Push index 
* TOFF dec: -6
 60:     LD  3,-4(1)	Load variable c
* TOFF inc: -5
 61:     LD  4,-5(1)	Pop index 
 62:     LD  5,-2(1)	Load address of base of array s
 63:    SUB  5,5,4	Compute offset of value 
 64:     ST  3,0(5)	Store variable s
 57:    JZR  3,7(7)	Jump around the THEN if false [backpatch] 
* END IF
* IF
 65:     LD  3,-4(1)	Load variable c
 66:     ST  3,-5(1)	Push left side 
* TOFF dec: -6
 67:    LDC  3,10(6)	Load char constant 
* TOFF inc: -5
 68:     LD  4,-5(1)	Pop left into ac1 
 69:    TEQ  3,4,3	Op == 
* THEN
* BREAK
 71:    JMP  7,-28(7)	break 
 70:    JZR  3,1(7)	Jump around the THEN if false [backpatch] 
* END IF
* EXPRESSION
 72:     LD  3,-3(1)	load lhs variable i
 73:    LDA  3,1(3)	increment value of i
 74:     ST  3,-3(1)	Store variable i
* TOFF set: -4
* END COMPOUND
 75:    JMP  7,-34(7)	go to beginning of loop 
 44:    JMP  7,31(7)	Jump past loop [backpatch] 
* END WHILE
* TOFF set: -3
* END COMPOUND
* Add standard closing in case there is no return statement
 76:    LDC  2,0(6)	Set return value to 0 
 77:     LD  3,-1(1)	Load return address 
 78:     LD  1,0(1)	Adjust fp 
 79:    JMP  7,0(3)	Return 
* END FUNCTION getstring
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION putstring
* TOFF set: -3
 80:     ST  3,-1(1)	Store return address 
* COMPOUND
* TOFF set: -4
* Compound Body
* EXPRESSION
 81:    LDC  3,0(6)	Load integer constant 
 82:     ST  3,-3(1)	Store variable i
* WHILE
 83:     LD  3,-3(1)	Load variable i
 84:     ST  3,-4(1)	Push left side 
* TOFF dec: -5
 85:     LD  3,-2(1)	Load address of base of array s
 86:     LD  3,1(3)	Load array size 
* TOFF inc: -4
 87:     LD  4,-4(1)	Pop left into ac1 
 88:    TLT  3,4,3	Op < 
 89:    JNZ  3,1(7)	Jump to while part 
* DO
* COMPOUND
* TOFF set: -4
* Compound Body
* EXPRESSION
* CALL outputc
 91:     ST  1,-4(1)	Store fp in ghost frame for outputc
* TOFF dec: -5
* TOFF dec: -6
* Param 1
 92:     LD  3,-2(1)	Load address of base of array s
 93:     ST  3,-6(1)	Push left side 
* TOFF dec: -7
 94:     LD  3,-3(1)	Load variable i
* TOFF inc: -6
 95:     LD  4,-6(1)	Pop left into ac1 
 96:    SUB  3,4,3	compute location from index 
 97:     LD  3,0(3)	Load array element 
 98:     ST  3,-6(1)	Push parameter 
* TOFF dec: -7
* Param end outputc
 99:    LDA  1,-4(1)	Ghost frame becomes new active frame 
100:    LDA  3,1(7)	Return address in ac 
101:    JMP  7,-74(7)	CALL outputc
102:    LDA  3,0(2)	Save the result in ac 
* Call end outputc
* TOFF set: -4
* EXPRESSION
103:     LD  3,-3(1)	load lhs variable i
104:    LDA  3,1(3)	increment value of i
105:     ST  3,-3(1)	Store variable i
* TOFF set: -4
* END COMPOUND
106:    JMP  7,-24(7)	go to beginning of loop 
 90:    JMP  7,16(7)	Jump past loop [backpatch] 
* END WHILE
* TOFF set: -3
* END COMPOUND
* Add standard closing in case there is no return statement
107:    LDC  2,0(6)	Set return value to 0 
108:     LD  3,-1(1)	Load return address 
109:     LD  1,0(1)	Adjust fp 
110:    JMP  7,0(3)	Return 
* END FUNCTION putstring
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION charvalue
* TOFF set: -3
111:     ST  3,-1(1)	Store return address 
* COMPOUND
* TOFF set: -3
* Compound Body
* IF
112:     LD  3,-2(1)	Load variable c
113:     ST  3,-3(1)	Push left side 
* TOFF dec: -4
114:    LDC  3,73(6)	Load char constant 
* TOFF inc: -3
115:     LD  4,-3(1)	Pop left into ac1 
116:    TEQ  3,4,3	Op == 
* THEN
* RETURN
118:    LDC  3,1(6)	Load integer constant 
119:    LDA  2,0(3)	Copy result to return register 
120:     LD  3,-1(1)	Load return address 
121:     LD  1,0(1)	Adjust fp 
122:    JMP  7,0(3)	Return 
117:    JZR  3,6(7)	Jump around the THEN if false [backpatch] 
* ELSE
* IF
124:     LD  3,-2(1)	Load variable c
125:     ST  3,-3(1)	Push left side 
* TOFF dec: -4
126:    LDC  3,86(6)	Load char constant 
* TOFF inc: -3
127:     LD  4,-3(1)	Pop left into ac1 
128:    TEQ  3,4,3	Op == 
* THEN
* RETURN
130:    LDC  3,5(6)	Load integer constant 
131:    LDA  2,0(3)	Copy result to return register 
132:     LD  3,-1(1)	Load return address 
133:     LD  1,0(1)	Adjust fp 
134:    JMP  7,0(3)	Return 
129:    JZR  3,6(7)	Jump around the THEN if false [backpatch] 
* ELSE
* IF
136:     LD  3,-2(1)	Load variable c
137:     ST  3,-3(1)	Push left side 
* TOFF dec: -4
138:    LDC  3,88(6)	Load char constant 
* TOFF inc: -3
139:     LD  4,-3(1)	Pop left into ac1 
140:    TEQ  3,4,3	Op == 
* THEN
* RETURN
142:    LDC  3,10(6)	Load integer constant 
143:    LDA  2,0(3)	Copy result to return register 
144:     LD  3,-1(1)	Load return address 
145:     LD  1,0(1)	Adjust fp 
146:    JMP  7,0(3)	Return 
141:    JZR  3,6(7)	Jump around the THEN if false [backpatch] 
* ELSE
* IF
148:     LD  3,-2(1)	Load variable c
149:     ST  3,-3(1)	Push left side 
* TOFF dec: -4
150:    LDC  3,76(6)	Load char constant 
* TOFF inc: -3
151:     LD  4,-3(1)	Pop left into ac1 
152:    TEQ  3,4,3	Op == 
* THEN
* RETURN
154:    LDC  3,50(6)	Load integer constant 
155:    LDA  2,0(3)	Copy result to return register 
156:     LD  3,-1(1)	Load return address 
157:     LD  1,0(1)	Adjust fp 
158:    JMP  7,0(3)	Return 
153:    JZR  3,6(7)	Jump around the THEN if false [backpatch] 
* ELSE
* IF
160:     LD  3,-2(1)	Load variable c
161:     ST  3,-3(1)	Push left side 
* TOFF dec: -4
162:    LDC  3,67(6)	Load char constant 
* TOFF inc: -3
163:     LD  4,-3(1)	Pop left into ac1 
164:    TEQ  3,4,3	Op == 
* THEN
* RETURN
166:    LDC  3,100(6)	Load integer constant 
167:    LDA  2,0(3)	Copy result to return register 
168:     LD  3,-1(1)	Load return address 
169:     LD  1,0(1)	Adjust fp 
170:    JMP  7,0(3)	Return 
165:    JZR  3,6(7)	Jump around the THEN if false [backpatch] 
* ELSE
* IF
172:     LD  3,-2(1)	Load variable c
173:     ST  3,-3(1)	Push left side 
* TOFF dec: -4
174:    LDC  3,68(6)	Load char constant 
* TOFF inc: -3
175:     LD  4,-3(1)	Pop left into ac1 
176:    TEQ  3,4,3	Op == 
* THEN
* RETURN
178:    LDC  3,500(6)	Load integer constant 
179:    LDA  2,0(3)	Copy result to return register 
180:     LD  3,-1(1)	Load return address 
181:     LD  1,0(1)	Adjust fp 
182:    JMP  7,0(3)	Return 
177:    JZR  3,6(7)	Jump around the THEN if false [backpatch] 
* ELSE
* IF
184:     LD  3,-2(1)	Load variable c
185:     ST  3,-3(1)	Push left side 
* TOFF dec: -4
186:    LDC  3,77(6)	Load char constant 
* TOFF inc: -3
187:     LD  4,-3(1)	Pop left into ac1 
188:    TEQ  3,4,3	Op == 
* THEN
* RETURN
190:    LDC  3,1000(6)	Load integer constant 
191:    LDA  2,0(3)	Copy result to return register 
192:     LD  3,-1(1)	Load return address 
193:     LD  1,0(1)	Adjust fp 
194:    JMP  7,0(3)	Return 
189:    JZR  3,6(7)	Jump around the THEN if false [backpatch] 
* ELSE
* RETURN
196:    LDC  3,0(6)	Load integer constant 
197:    LDA  2,0(3)	Copy result to return register 
198:     LD  3,-1(1)	Load return address 
199:     LD  1,0(1)	Adjust fp 
200:    JMP  7,0(3)	Return 
195:    JMP  7,5(7)	Jump around the ELSE [backpatch] 
* END IF
183:    JMP  7,17(7)	Jump around the ELSE [backpatch] 
* END IF
171:    JMP  7,29(7)	Jump around the ELSE [backpatch] 
* END IF
159:    JMP  7,41(7)	Jump around the ELSE [backpatch] 
* END IF
147:    JMP  7,53(7)	Jump around the ELSE [backpatch] 
* END IF
135:    JMP  7,65(7)	Jump around the ELSE [backpatch] 
* END IF
123:    JMP  7,77(7)	Jump around the ELSE [backpatch] 
* END IF
* TOFF set: -3
* END COMPOUND
* Add standard closing in case there is no return statement
201:    LDC  2,0(6)	Set return value to 0 
202:     LD  3,-1(1)	Load return address 
203:     LD  1,0(1)	Adjust fp 
204:    JMP  7,0(3)	Return 
* END FUNCTION charvalue
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION roman2arabic
* TOFF set: -3
205:     ST  3,-1(1)	Store return address 
* COMPOUND
* TOFF set: -5
* Compound Body
* EXPRESSION
206:    LDC  3,0(6)	Load integer constant 
207:     ST  3,-4(1)	Store variable sum
* EXPRESSION
208:    LDC  3,0(6)	Load integer constant 
209:     ST  3,-3(1)	Store variable i
* WHILE
210:     LD  3,-3(1)	Load variable i
211:     ST  3,-5(1)	Push left side 
* TOFF dec: -6
212:     LD  3,-2(1)	Load address of base of array roman
213:     LD  3,1(3)	Load array size 
* TOFF inc: -5
214:     LD  4,-5(1)	Pop left into ac1 
215:    TLT  3,4,3	Op < 
216:    JNZ  3,1(7)	Jump to while part 
* DO
* COMPOUND
* TOFF set: -5
* Compound Body
* EXPRESSION
* CALL charvalue
218:     ST  1,-5(1)	Store fp in ghost frame for charvalue
* TOFF dec: -6
* TOFF dec: -7
* Param 1
219:     LD  3,-2(1)	Load address of base of array roman
220:     ST  3,-7(1)	Push left side 
* TOFF dec: -8
221:     LD  3,-3(1)	Load variable i
* TOFF inc: -7
222:     LD  4,-7(1)	Pop left into ac1 
223:    SUB  3,4,3	compute location from index 
224:     LD  3,0(3)	Load array element 
225:     ST  3,-7(1)	Push parameter 
* TOFF dec: -8
* Param end charvalue
226:    LDA  1,-5(1)	Ghost frame becomes new active frame 
227:    LDA  3,1(7)	Return address in ac 
228:    JMP  7,-118(7)	CALL charvalue
229:    LDA  3,0(2)	Save the result in ac 
* Call end charvalue
* TOFF set: -5
230:     LD  4,-4(1)	load lhs variable sum
231:    ADD  3,4,3	op += 
232:     ST  3,-4(1)	Store variable sum
* EXPRESSION
233:     LD  3,-3(1)	load lhs variable i
234:    LDA  3,1(3)	increment value of i
235:     ST  3,-3(1)	Store variable i
* TOFF set: -5
* END COMPOUND
236:    JMP  7,-27(7)	go to beginning of loop 
217:    JMP  7,19(7)	Jump past loop [backpatch] 
* END WHILE
* EXPRESSION
237:    LDC  3,0(6)	Load integer constant 
238:     ST  3,-3(1)	Store variable i
* WHILE
239:     LD  3,-3(1)	Load variable i
240:     ST  3,-5(1)	Push left side 
* TOFF dec: -6
241:     LD  3,-2(1)	Load address of base of array roman
242:     LD  3,1(3)	Load array size 
243:     ST  3,-6(1)	Push left side 
* TOFF dec: -7
244:    LDC  3,1(6)	Load integer constant 
* TOFF inc: -6
245:     LD  4,-6(1)	Pop left into ac1 
246:    SUB  3,4,3	Op - 
* TOFF inc: -5
247:     LD  4,-5(1)	Pop left into ac1 
248:    TLT  3,4,3	Op < 
249:    JNZ  3,1(7)	Jump to while part 
* DO
* COMPOUND
* TOFF set: -5
* Compound Body
* IF
* CALL charvalue
251:     ST  1,-5(1)	Store fp in ghost frame for charvalue
* TOFF dec: -6
* TOFF dec: -7
* Param 1
252:     LD  3,-2(1)	Load address of base of array roman
253:     ST  3,-7(1)	Push left side 
* TOFF dec: -8
254:     LD  3,-3(1)	Load variable i
* TOFF inc: -7
255:     LD  4,-7(1)	Pop left into ac1 
256:    SUB  3,4,3	compute location from index 
257:     LD  3,0(3)	Load array element 
258:     ST  3,-7(1)	Push parameter 
* TOFF dec: -8
* Param end charvalue
259:    LDA  1,-5(1)	Ghost frame becomes new active frame 
260:    LDA  3,1(7)	Return address in ac 
261:    JMP  7,-151(7)	CALL charvalue
262:    LDA  3,0(2)	Save the result in ac 
* Call end charvalue
* TOFF set: -5
263:     ST  3,-5(1)	Push left side 
* TOFF dec: -6
* CALL charvalue
264:     ST  1,-6(1)	Store fp in ghost frame for charvalue
* TOFF dec: -7
* TOFF dec: -8
* Param 1
265:     LD  3,-2(1)	Load address of base of array roman
266:     ST  3,-8(1)	Push left side 
* TOFF dec: -9
267:     LD  3,-3(1)	Load variable i
268:     ST  3,-9(1)	Push left side 
* TOFF dec: -10
269:    LDC  3,1(6)	Load integer constant 
* TOFF inc: -9
270:     LD  4,-9(1)	Pop left into ac1 
271:    ADD  3,4,3	Op + 
* TOFF inc: -8
272:     LD  4,-8(1)	Pop left into ac1 
273:    SUB  3,4,3	compute location from index 
274:     LD  3,0(3)	Load array element 
275:     ST  3,-8(1)	Push parameter 
* TOFF dec: -9
* Param end charvalue
276:    LDA  1,-6(1)	Ghost frame becomes new active frame 
277:    LDA  3,1(7)	Return address in ac 
278:    JMP  7,-168(7)	CALL charvalue
279:    LDA  3,0(2)	Save the result in ac 
* Call end charvalue
* TOFF set: -6
* TOFF inc: -5
280:     LD  4,-5(1)	Pop left into ac1 
281:    TLT  3,4,3	Op < 
* THEN
* EXPRESSION
283:    LDC  3,2(6)	Load integer constant 
284:     ST  3,-5(1)	Push left side 
* TOFF dec: -6
* CALL charvalue
285:     ST  1,-6(1)	Store fp in ghost frame for charvalue
* TOFF dec: -7
* TOFF dec: -8
* Param 1
286:     LD  3,-2(1)	Load address of base of array roman
287:     ST  3,-8(1)	Push left side 
* TOFF dec: -9
288:     LD  3,-3(1)	Load variable i
* TOFF inc: -8
289:     LD  4,-8(1)	Pop left into ac1 
290:    SUB  3,4,3	compute location from index 
291:     LD  3,0(3)	Load array element 
292:     ST  3,-8(1)	Push parameter 
* TOFF dec: -9
* Param end charvalue
293:    LDA  1,-6(1)	Ghost frame becomes new active frame 
294:    LDA  3,1(7)	Return address in ac 
295:    JMP  7,-185(7)	CALL charvalue
296:    LDA  3,0(2)	Save the result in ac 
* Call end charvalue
* TOFF set: -6
* TOFF inc: -5
297:     LD  4,-5(1)	Pop left into ac1 
298:    MUL  3,4,3	Op * 
299:     LD  4,-4(1)	load lhs variable sum
300:    SUB  3,4,3	op -= 
301:     ST  3,-4(1)	Store variable sum
282:    JZR  3,19(7)	Jump around the THEN if false [backpatch] 
* END IF
* EXPRESSION
302:     LD  3,-3(1)	load lhs variable i
303:    LDA  3,1(3)	increment value of i
304:     ST  3,-3(1)	Store variable i
* TOFF set: -5
* END COMPOUND
305:    JMP  7,-67(7)	go to beginning of loop 
250:    JMP  7,55(7)	Jump past loop [backpatch] 
* END WHILE
* RETURN
306:     LD  3,-4(1)	Load variable sum
307:    LDA  2,0(3)	Copy result to return register 
308:     LD  3,-1(1)	Load return address 
309:     LD  1,0(1)	Adjust fp 
310:    JMP  7,0(3)	Return 
* TOFF set: -3
* END COMPOUND
* Add standard closing in case there is no return statement
311:    LDC  2,0(6)	Set return value to 0 
312:     LD  3,-1(1)	Load return address 
313:     LD  1,0(1)	Adjust fp 
314:    JMP  7,0(3)	Return 
* END FUNCTION roman2arabic
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
* TOFF set: -2
315:     ST  3,-1(1)	Store return address 
* COMPOUND
* TOFF set: -8
316:    LDC  3,5(6)	load size of array s
317:     ST  3,-2(1)	save size of array s
* Compound Body
* WHILE
318:    LDC  3,1(6)	Load Boolean constant 
319:    JNZ  3,1(7)	Jump to while part 
* DO
* COMPOUND
* TOFF set: -8
* Compound Body
* EXPRESSION
* CALL getstring
321:     ST  1,-8(1)	Store fp in ghost frame for getstring
* TOFF dec: -9
* TOFF dec: -10
* Param 1
322:    LDA  3,-3(1)	Load address of base of array s
323:     ST  3,-10(1)	Push parameter 
* TOFF dec: -11
* Param end getstring
324:    LDA  1,-8(1)	Ghost frame becomes new active frame 
325:    LDA  3,1(7)	Return address in ac 
326:    JMP  7,-288(7)	CALL getstring
327:    LDA  3,0(2)	Save the result in ac 
* Call end getstring
* TOFF set: -8
* EXPRESSION
* CALL putstring
328:     ST  1,-8(1)	Store fp in ghost frame for putstring
* TOFF dec: -9
* TOFF dec: -10
* Param 1
329:    LDA  3,-3(1)	Load address of base of array s
330:     ST  3,-10(1)	Push parameter 
* TOFF dec: -11
* Param end putstring
331:    LDA  1,-8(1)	Ghost frame becomes new active frame 
332:    LDA  3,1(7)	Return address in ac 
333:    JMP  7,-254(7)	CALL putstring
334:    LDA  3,0(2)	Save the result in ac 
* Call end putstring
* TOFF set: -8
* EXPRESSION
* CALL output
335:     ST  1,-8(1)	Store fp in ghost frame for output
* TOFF dec: -9
* TOFF dec: -10
* Param 1
* CALL roman2arabic
336:     ST  1,-10(1)	Store fp in ghost frame for roman2arabic
* TOFF dec: -11
* TOFF dec: -12
* Param 1
337:    LDA  3,-3(1)	Load address of base of array s
338:     ST  3,-12(1)	Push parameter 
* TOFF dec: -13
* Param end roman2arabic
339:    LDA  1,-10(1)	Ghost frame becomes new active frame 
340:    LDA  3,1(7)	Return address in ac 
341:    JMP  7,-137(7)	CALL roman2arabic
342:    LDA  3,0(2)	Save the result in ac 
* Call end roman2arabic
* TOFF set: -10
343:     ST  3,-10(1)	Push parameter 
* TOFF dec: -11
* Param end output
344:    LDA  1,-8(1)	Ghost frame becomes new active frame 
345:    LDA  3,1(7)	Return address in ac 
346:    JMP  7,-341(7)	CALL output
347:    LDA  3,0(2)	Save the result in ac 
* Call end output
* TOFF set: -8
* TOFF set: -8
* END COMPOUND
348:    JMP  7,-31(7)	go to beginning of loop 
320:    JMP  7,28(7)	Jump past loop [backpatch] 
* END WHILE
* TOFF set: -2
* END COMPOUND
* Add standard closing in case there is no return statement
349:    LDC  2,0(6)	Set return value to 0 
350:     LD  3,-1(1)	Load return address 
351:     LD  1,0(1)	Adjust fp 
352:    JMP  7,0(3)	Return 
* END FUNCTION main
  0:    JMP  7,352(7)	Jump to init [backpatch] 
* INIT
353:    LDA  1,0(0)	set first frame at end of globals 
354:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
355:    LDA  3,1(7)	Return address in ac 
356:    JMP  7,-42(7)	Jump to main 
357:   HALT  0,0,0	DONE! 
* END INIT
