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
* FUNCTION cat
 39:     ST  3,-1(1)	Store return address 
 40:     LD  3,-2(1)	Load base address of array x 
 41:     LD  3,-3(1)	Load variable i into accumulator 
 42:     LD  5,-2(1)	Load base address of array x into AC2 
 43:    SUB  5,5,3	Compute offset for array 
 44:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 45:    LDA  2,0(3)	Copy accumulator to return register 
 46:     LD  3,-1(1)	Load return address 
 47:     LD  1,0(1)	Adjust fp 
 48:    JMP  7,0(3)	Return 
* Add standard closing in case there is no return statement
 49:    LDC  2,0(6)	Set return value to 0 
 50:     LD  3,-1(1)	Load return address 
 51:     LD  1,0(1)	Adjust fp 
 52:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION dog
 53:     ST  3,-1(1)	Store return address 
* CALL cat
 54:     ST  1,-4(1)	Store fp in ghost frame for cat 
 55:     LD  3,-2(1)	Load base address of array x 
 56:     ST  3,-6(1)	Push parameter onto new frame 
 57:     LD  3,-3(1)	Load variable i into accumulator 
 58:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-4(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-23(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
 63:    LDA  2,0(3)	Copy accumulator to return register 
 64:     LD  3,-1(1)	Load return address 
 65:     LD  1,0(1)	Adjust fp 
 66:    JMP  7,0(3)	Return 
* Add standard closing in case there is no return statement
 67:    LDC  2,0(6)	Set return value to 0 
 68:     LD  3,-1(1)	Load return address 
 69:     LD  1,0(1)	Adjust fp 
 70:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION fox
 71:     ST  3,-1(1)	Store return address 
* CALL dog
 72:     ST  1,-4(1)	Store fp in ghost frame for dog 
 73:     LD  3,-2(1)	Load base address of array x 
 74:     ST  3,-6(1)	Push parameter onto new frame 
 75:     LD  3,-3(1)	Load variable i into accumulator 
 76:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 77:    LDA  1,-4(1)	Move the fp to the new frame 
 78:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 79:    JMP  7,-27(7)	Call function 
 80:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
 81:    LDA  2,0(3)	Copy accumulator to return register 
 82:     LD  3,-1(1)	Load return address 
 83:     LD  1,0(1)	Adjust fp 
 84:    JMP  7,0(3)	Return 
* Add standard closing in case there is no return statement
 85:    LDC  2,0(6)	Set return value to 0 
 86:     LD  3,-1(1)	Load return address 
 87:     LD  1,0(1)	Adjust fp 
 88:    JMP  7,0(3)	Return 
* END FUNCTION fox
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 89:     ST  3,-1(1)	Store return address 
* COMPOUND
 90:    LDC  3,10(6)	Load size of h into AC 
 91:     ST  3,-3(1)	Store size of h in data memory 
 92:    LDC  3,1(6)	Load type int constant 
 93:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
 94:     LD  3,-2(1)	Load variable i into accumulator 
 95:     ST  3,-14(1)	Push left side onto temp variable stack 
 96:    LDC  3,10(6)	Load type int constant 
 97:     LD  4,-14(1)	Pop left hand side into AC1 
 98:    TLT  3,4,3	Less than < operation store in AC 
100:    LDA  3,-4(1)	Load base address of array h 
101:     LD  3,-2(1)	Load variable i into accumulator 
102:     ST  3,-14(1)	Push array index onto temp stack 
103:    LDA  3,-1(0)	Load base address of array g 
104:     LD  3,-2(1)	Load variable i into accumulator 
105:     ST  3,-15(1)	Push array index onto temp stack 
106:    LDA  3,-12(0)	Load base address of array s 
107:     LD  3,-2(1)	Load variable i into accumulator 
108:     ST  3,-16(1)	Push array index onto temp stack 
109:     LD  4,-2(1)	Load lhs variable 
110:    LDA  3,1(4)	++ Increment accumulator operation 
111:     ST  3,-2(1)	Assigning variable i in Local 
112:     LD  4,-16(1)	Pop array index into AC1 
113:    LDA  5,-12(0)	Load base address of array s into AC2 
114:    SUB  5,5,4	Compute offset for array 
115:     ST  3,0(5)	Store variable s from AC into loc from AC2 
116:     LD  4,-15(1)	Pop array index into AC1 
117:    LDA  5,-1(0)	Load base address of array g into AC2 
118:    SUB  5,5,4	Compute offset for array 
119:     ST  3,0(5)	Store variable g from AC into loc from AC2 
120:     LD  4,-14(1)	Pop array index into AC1 
121:    LDA  5,-4(1)	Load base address of array h into AC2 
122:    SUB  5,5,4	Compute offset for array 
123:     ST  3,0(5)	Store variable h from AC into loc from AC2 
124:    JMP  7,-31(7)	Go to L1 
 99:    JZR  3,25(7)	JMP if condition is false 
* End WHILE statement
* CALL output
125:     ST  1,-14(1)	Store fp in ghost frame for output 
126:    LDA  3,-1(0)	Load base address of array g 
127:    LDC  3,6(6)	Load type int constant 
128:    LDA  5,-1(0)	Load base address of array g into AC2 
129:    SUB  5,5,3	Compute offset for array 
130:     LD  3,0(5)	Load array element g from AC into loc from AC2 
131:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
132:    LDA  1,-14(1)	Move the fp to the new frame 
133:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
134:    JMP  7,-129(7)	Call function 
135:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
136:     ST  1,-14(1)	Store fp in ghost frame for output 
137:    LDA  3,-4(1)	Load base address of array h 
138:    LDC  3,6(6)	Load type int constant 
139:    LDA  5,-4(1)	Load base address of array h into AC2 
140:    SUB  5,5,3	Compute offset for array 
141:     LD  3,0(5)	Load array element h from AC into loc from AC2 
142:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
143:    LDA  1,-14(1)	Move the fp to the new frame 
144:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
145:    JMP  7,-140(7)	Call function 
146:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
147:     ST  1,-14(1)	Store fp in ghost frame for output 
148:    LDA  3,-12(0)	Load base address of array s 
149:    LDC  3,6(6)	Load type int constant 
150:    LDA  5,-12(0)	Load base address of array s into AC2 
151:    SUB  5,5,3	Compute offset for array 
152:     LD  3,0(5)	Load array element s from AC into loc from AC2 
153:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
154:    LDA  1,-14(1)	Move the fp to the new frame 
155:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
156:    JMP  7,-151(7)	Call function 
157:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
158:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
159:    LDA  1,-14(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-128(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
163:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL cat
164:     ST  1,-17(1)	Store fp in ghost frame for cat 
165:    LDA  3,-1(0)	Load base address of array g 
166:     ST  3,-19(1)	Push parameter onto new frame 
167:    LDC  3,6(6)	Load type int constant 
168:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
169:    LDA  1,-17(1)	Move the fp to the new frame 
170:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
171:    JMP  7,-133(7)	Call function 
172:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
173:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
174:    LDA  1,-14(1)	Move the fp to the new frame 
175:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
176:    JMP  7,-171(7)	Call function 
177:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
178:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL cat
179:     ST  1,-17(1)	Store fp in ghost frame for cat 
180:    LDA  3,-4(1)	Load base address of array h 
181:     ST  3,-19(1)	Push parameter onto new frame 
182:    LDC  3,6(6)	Load type int constant 
183:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
184:    LDA  1,-17(1)	Move the fp to the new frame 
185:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
186:    JMP  7,-148(7)	Call function 
187:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
188:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
189:    LDA  1,-14(1)	Move the fp to the new frame 
190:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
191:    JMP  7,-186(7)	Call function 
192:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
193:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL cat
194:     ST  1,-17(1)	Store fp in ghost frame for cat 
195:    LDA  3,-12(0)	Load base address of array s 
196:     ST  3,-19(1)	Push parameter onto new frame 
197:    LDC  3,6(6)	Load type int constant 
198:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
199:    LDA  1,-17(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-163(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
203:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
204:    LDA  1,-14(1)	Move the fp to the new frame 
205:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
206:    JMP  7,-201(7)	Call function 
207:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
208:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
209:    LDA  1,-14(1)	Move the fp to the new frame 
210:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
211:    JMP  7,-178(7)	Call function 
212:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
213:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL dog
214:     ST  1,-17(1)	Store fp in ghost frame for dog 
215:    LDA  3,-1(0)	Load base address of array g 
216:     ST  3,-19(1)	Push parameter onto new frame 
217:    LDC  3,6(6)	Load type int constant 
218:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
219:    LDA  1,-17(1)	Move the fp to the new frame 
220:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
221:    JMP  7,-169(7)	Call function 
222:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
223:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
224:    LDA  1,-14(1)	Move the fp to the new frame 
225:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
226:    JMP  7,-221(7)	Call function 
227:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
228:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL dog
229:     ST  1,-17(1)	Store fp in ghost frame for dog 
230:    LDA  3,-4(1)	Load base address of array h 
231:     ST  3,-19(1)	Push parameter onto new frame 
232:    LDC  3,6(6)	Load type int constant 
233:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
234:    LDA  1,-17(1)	Move the fp to the new frame 
235:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
236:    JMP  7,-184(7)	Call function 
237:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
238:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
239:    LDA  1,-14(1)	Move the fp to the new frame 
240:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
241:    JMP  7,-236(7)	Call function 
242:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
243:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL dog
244:     ST  1,-17(1)	Store fp in ghost frame for dog 
245:    LDA  3,-12(0)	Load base address of array s 
246:     ST  3,-19(1)	Push parameter onto new frame 
247:    LDC  3,6(6)	Load type int constant 
248:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
249:    LDA  1,-17(1)	Move the fp to the new frame 
250:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
251:    JMP  7,-199(7)	Call function 
252:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
253:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
254:    LDA  1,-14(1)	Move the fp to the new frame 
255:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
256:    JMP  7,-251(7)	Call function 
257:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
258:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
259:    LDA  1,-14(1)	Move the fp to the new frame 
260:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
261:    JMP  7,-228(7)	Call function 
262:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
263:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL fox
264:     ST  1,-17(1)	Store fp in ghost frame for fox 
265:    LDA  3,-1(0)	Load base address of array g 
266:     ST  3,-19(1)	Push parameter onto new frame 
267:    LDC  3,6(6)	Load type int constant 
268:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
269:    LDA  1,-17(1)	Move the fp to the new frame 
270:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
271:    JMP  7,-201(7)	Call function 
272:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fox
273:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
274:    LDA  1,-14(1)	Move the fp to the new frame 
275:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
276:    JMP  7,-271(7)	Call function 
277:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
278:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL fox
279:     ST  1,-17(1)	Store fp in ghost frame for fox 
280:    LDA  3,-4(1)	Load base address of array h 
281:     ST  3,-19(1)	Push parameter onto new frame 
282:    LDC  3,6(6)	Load type int constant 
283:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
284:    LDA  1,-17(1)	Move the fp to the new frame 
285:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
286:    JMP  7,-216(7)	Call function 
287:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fox
288:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
289:    LDA  1,-14(1)	Move the fp to the new frame 
290:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
291:    JMP  7,-286(7)	Call function 
292:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
293:     ST  1,-14(1)	Store fp in ghost frame for output 
* CALL fox
294:     ST  1,-17(1)	Store fp in ghost frame for fox 
295:    LDA  3,-12(0)	Load base address of array s 
296:     ST  3,-19(1)	Push parameter onto new frame 
297:    LDC  3,6(6)	Load type int constant 
298:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
299:    LDA  1,-17(1)	Move the fp to the new frame 
300:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
301:    JMP  7,-231(7)	Call function 
302:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fox
303:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
304:    LDA  1,-14(1)	Move the fp to the new frame 
305:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
306:    JMP  7,-301(7)	Call function 
307:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
308:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
309:    LDA  1,-14(1)	Move the fp to the new frame 
310:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
311:    JMP  7,-278(7)	Call function 
312:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
313:    LDC  2,0(6)	Set return value to 0 
314:     LD  3,-1(1)	Load return address 
315:     LD  1,0(1)	Adjust fp 
316:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,316(7)	Jump to init [backpatch] 
* INIT
317:    LDA  1,-22(0)	set first frame at end of globals 
318:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
319:    LDC  3,10(6)	Load size of g into AC 
320:     ST  3,0(0)	Store size of g in data memory 
321:    LDC  3,10(6)	Load size of s into AC 
322:     ST  3,-11(0)	Store size of s in data memory 
* END INIT GLOBALS AND STATICS
323:    LDA  3,1(7)	Return address in ac 
324:    JMP  7,-236(7)	Jump to main 
325:   HALT  0,0,0	DONE! 
* END INIT
