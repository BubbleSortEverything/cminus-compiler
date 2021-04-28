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
 41:    LDC  3,1(6)	Load type int constant 
 42:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
 43:     ST  3,-5(1)	Push left side onto temp variable stack 
 44:    LDC  3,0(6)	Load type int constant 
 45:     LD  4,-5(1)	Pop left hand side into AC1 
 46:    TEQ  3,4,3	== Equality Operation 
 47:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 48:    LDA  1,-2(1)	Move the fp to the new frame 
 49:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 50:    JMP  7,-34(7)	Call function 
 51:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 52:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 53:    LDA  1,-2(1)	Move the fp to the new frame 
 54:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 55:    JMP  7,-22(7)	Call function 
 56:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
 57:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 58:    LDC  3,100000(6)	Load type int constant 
 59:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
 60:     ST  3,-5(1)	Push left side onto temp variable stack 
 61:    LDC  3,0(6)	Load type int constant 
 62:     LD  4,-5(1)	Pop left hand side into AC1 
 63:    TGT  3,4,3	Greather than > operation store in AC 
 64:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 65:    LDA  1,-2(1)	Move the fp to the new frame 
 66:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 67:    JMP  7,-51(7)	Call function 
 68:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 69:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 70:    LDC  3,3(6)	Load type int constant 
 71:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
 72:     ST  3,-5(1)	Push left side onto temp variable stack 
 73:    LDC  3,0(6)	Load type int constant 
 74:     LD  4,-5(1)	Pop left hand side into AC1 
 75:    TGT  3,4,3	Greather than > operation store in AC 
 76:     ST  3,-5(1)	Push left side onto temp variable stack 
 77:    LDC  3,3(6)	Load type int constant 
 78:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
 79:     ST  3,-6(1)	Push left side onto temp variable stack 
 80:    LDC  3,0(6)	Load type int constant 
 81:     LD  4,-6(1)	Pop left hand side into AC1 
 82:    TGT  3,4,3	Greather than > operation store in AC 
 83:     LD  4,-5(1)	Pop left hand side into AC1 
 84:    AND  3,4,3	AND operation store in AC 
 85:     ST  3,-5(1)	Push left side onto temp variable stack 
 86:    LDC  3,3(6)	Load type int constant 
 87:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
 88:     ST  3,-6(1)	Push left side onto temp variable stack 
 89:    LDC  3,0(6)	Load type int constant 
 90:     LD  4,-6(1)	Pop left hand side into AC1 
 91:    TGT  3,4,3	Greather than > operation store in AC 
 92:     LD  4,-5(1)	Pop left hand side into AC1 
 93:    AND  3,4,3	AND operation store in AC 
 94:     ST  3,-5(1)	Push left side onto temp variable stack 
 95:    LDC  3,3(6)	Load type int constant 
 96:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
 97:     ST  3,-6(1)	Push left side onto temp variable stack 
 98:    LDC  3,0(6)	Load type int constant 
 99:     LD  4,-6(1)	Pop left hand side into AC1 
100:    TGT  3,4,3	Greather than > operation store in AC 
101:     LD  4,-5(1)	Pop left hand side into AC1 
102:    AND  3,4,3	AND operation store in AC 
103:     ST  3,-5(1)	Push left side onto temp variable stack 
104:    LDC  3,3(6)	Load type int constant 
105:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
106:     ST  3,-6(1)	Push left side onto temp variable stack 
107:    LDC  3,0(6)	Load type int constant 
108:     LD  4,-6(1)	Pop left hand side into AC1 
109:    TGT  3,4,3	Greather than > operation store in AC 
110:     LD  4,-5(1)	Pop left hand side into AC1 
111:    AND  3,4,3	AND operation store in AC 
112:     ST  3,-5(1)	Push left side onto temp variable stack 
113:    LDC  3,3(6)	Load type int constant 
114:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
115:     ST  3,-6(1)	Push left side onto temp variable stack 
116:    LDC  3,0(6)	Load type int constant 
117:     LD  4,-6(1)	Pop left hand side into AC1 
118:    TGT  3,4,3	Greather than > operation store in AC 
119:     LD  4,-5(1)	Pop left hand side into AC1 
120:    AND  3,4,3	AND operation store in AC 
121:     ST  3,-5(1)	Push left side onto temp variable stack 
122:    LDC  3,3(6)	Load type int constant 
123:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
124:     ST  3,-6(1)	Push left side onto temp variable stack 
125:    LDC  3,0(6)	Load type int constant 
126:     LD  4,-6(1)	Pop left hand side into AC1 
127:    TGT  3,4,3	Greather than > operation store in AC 
128:     LD  4,-5(1)	Pop left hand side into AC1 
129:    AND  3,4,3	AND operation store in AC 
130:     ST  3,-5(1)	Push left side onto temp variable stack 
131:    LDC  3,3(6)	Load type int constant 
132:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
133:     ST  3,-6(1)	Push left side onto temp variable stack 
134:    LDC  3,0(6)	Load type int constant 
135:     LD  4,-6(1)	Pop left hand side into AC1 
136:    TGT  3,4,3	Greather than > operation store in AC 
137:     LD  4,-5(1)	Pop left hand side into AC1 
138:    AND  3,4,3	AND operation store in AC 
139:     ST  3,-5(1)	Push left side onto temp variable stack 
140:    LDC  3,3(6)	Load type int constant 
141:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
142:     ST  3,-6(1)	Push left side onto temp variable stack 
143:    LDC  3,0(6)	Load type int constant 
144:     LD  4,-6(1)	Pop left hand side into AC1 
145:    TGT  3,4,3	Greather than > operation store in AC 
146:     LD  4,-5(1)	Pop left hand side into AC1 
147:    AND  3,4,3	AND operation store in AC 
148:     ST  3,-5(1)	Push left side onto temp variable stack 
149:    LDC  3,3(6)	Load type int constant 
150:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
151:     ST  3,-6(1)	Push left side onto temp variable stack 
152:    LDC  3,0(6)	Load type int constant 
153:     LD  4,-6(1)	Pop left hand side into AC1 
154:    TGT  3,4,3	Greather than > operation store in AC 
155:     LD  4,-5(1)	Pop left hand side into AC1 
156:    AND  3,4,3	AND operation store in AC 
157:     ST  3,-5(1)	Push left side onto temp variable stack 
158:    LDC  3,3(6)	Load type int constant 
159:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
160:     ST  3,-6(1)	Push left side onto temp variable stack 
161:    LDC  3,0(6)	Load type int constant 
162:     LD  4,-6(1)	Pop left hand side into AC1 
163:    TGT  3,4,3	Greather than > operation store in AC 
164:     LD  4,-5(1)	Pop left hand side into AC1 
165:    AND  3,4,3	AND operation store in AC 
166:     ST  3,-5(1)	Push left side onto temp variable stack 
167:    LDC  3,3(6)	Load type int constant 
168:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
169:     ST  3,-6(1)	Push left side onto temp variable stack 
170:    LDC  3,0(6)	Load type int constant 
171:     LD  4,-6(1)	Pop left hand side into AC1 
172:    TGT  3,4,3	Greather than > operation store in AC 
173:     LD  4,-5(1)	Pop left hand side into AC1 
174:    AND  3,4,3	AND operation store in AC 
175:     ST  3,-5(1)	Push left side onto temp variable stack 
176:    LDC  3,3(6)	Load type int constant 
177:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
178:     ST  3,-6(1)	Push left side onto temp variable stack 
179:    LDC  3,0(6)	Load type int constant 
180:     LD  4,-6(1)	Pop left hand side into AC1 
181:    TGT  3,4,3	Greather than > operation store in AC 
182:     LD  4,-5(1)	Pop left hand side into AC1 
183:    AND  3,4,3	AND operation store in AC 
184:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
185:    LDA  1,-2(1)	Move the fp to the new frame 
186:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
187:    JMP  7,-171(7)	Call function 
188:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
189:     ST  1,-2(1)	Store fp in ghost frame for outputb 
190:    LDC  3,3(6)	Load type int constant 
191:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
192:     ST  3,-5(1)	Push left side onto temp variable stack 
193:    LDC  3,0(6)	Load type int constant 
194:     LD  4,-5(1)	Pop left hand side into AC1 
195:    TGT  3,4,3	Greather than > operation store in AC 
196:     ST  3,-5(1)	Push left side onto temp variable stack 
197:    LDC  3,3(6)	Load type int constant 
198:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
199:     ST  3,-6(1)	Push left side onto temp variable stack 
200:    LDC  3,0(6)	Load type int constant 
201:     LD  4,-6(1)	Pop left hand side into AC1 
202:    TGT  3,4,3	Greather than > operation store in AC 
203:     LD  4,-5(1)	Pop left hand side into AC1 
204:     OR  3,4,3	OR operation store in AC 
205:     ST  3,-5(1)	Push left side onto temp variable stack 
206:    LDC  3,3(6)	Load type int constant 
207:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
208:     ST  3,-6(1)	Push left side onto temp variable stack 
209:    LDC  3,0(6)	Load type int constant 
210:     LD  4,-6(1)	Pop left hand side into AC1 
211:    TGT  3,4,3	Greather than > operation store in AC 
212:     LD  4,-5(1)	Pop left hand side into AC1 
213:     OR  3,4,3	OR operation store in AC 
214:     ST  3,-5(1)	Push left side onto temp variable stack 
215:    LDC  3,3(6)	Load type int constant 
216:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
217:     ST  3,-6(1)	Push left side onto temp variable stack 
218:    LDC  3,0(6)	Load type int constant 
219:     LD  4,-6(1)	Pop left hand side into AC1 
220:    TGT  3,4,3	Greather than > operation store in AC 
221:     LD  4,-5(1)	Pop left hand side into AC1 
222:     OR  3,4,3	OR operation store in AC 
223:     ST  3,-5(1)	Push left side onto temp variable stack 
224:    LDC  3,3(6)	Load type int constant 
225:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
226:     ST  3,-6(1)	Push left side onto temp variable stack 
227:    LDC  3,0(6)	Load type int constant 
228:     LD  4,-6(1)	Pop left hand side into AC1 
229:    TGT  3,4,3	Greather than > operation store in AC 
230:     LD  4,-5(1)	Pop left hand side into AC1 
231:     OR  3,4,3	OR operation store in AC 
232:     ST  3,-5(1)	Push left side onto temp variable stack 
233:    LDC  3,3(6)	Load type int constant 
234:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
235:     ST  3,-6(1)	Push left side onto temp variable stack 
236:    LDC  3,0(6)	Load type int constant 
237:     LD  4,-6(1)	Pop left hand side into AC1 
238:    TGT  3,4,3	Greather than > operation store in AC 
239:     LD  4,-5(1)	Pop left hand side into AC1 
240:     OR  3,4,3	OR operation store in AC 
241:     ST  3,-5(1)	Push left side onto temp variable stack 
242:    LDC  3,3(6)	Load type int constant 
243:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
244:     ST  3,-6(1)	Push left side onto temp variable stack 
245:    LDC  3,0(6)	Load type int constant 
246:     LD  4,-6(1)	Pop left hand side into AC1 
247:    TGT  3,4,3	Greather than > operation store in AC 
248:     LD  4,-5(1)	Pop left hand side into AC1 
249:     OR  3,4,3	OR operation store in AC 
250:     ST  3,-5(1)	Push left side onto temp variable stack 
251:    LDC  3,3(6)	Load type int constant 
252:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
253:     ST  3,-6(1)	Push left side onto temp variable stack 
254:    LDC  3,0(6)	Load type int constant 
255:     LD  4,-6(1)	Pop left hand side into AC1 
256:    TGT  3,4,3	Greather than > operation store in AC 
257:     LD  4,-5(1)	Pop left hand side into AC1 
258:     OR  3,4,3	OR operation store in AC 
259:     ST  3,-5(1)	Push left side onto temp variable stack 
260:    LDC  3,3(6)	Load type int constant 
261:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
262:     ST  3,-6(1)	Push left side onto temp variable stack 
263:    LDC  3,0(6)	Load type int constant 
264:     LD  4,-6(1)	Pop left hand side into AC1 
265:    TGT  3,4,3	Greather than > operation store in AC 
266:     LD  4,-5(1)	Pop left hand side into AC1 
267:     OR  3,4,3	OR operation store in AC 
268:     ST  3,-5(1)	Push left side onto temp variable stack 
269:    LDC  3,3(6)	Load type int constant 
270:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
271:     ST  3,-6(1)	Push left side onto temp variable stack 
272:    LDC  3,0(6)	Load type int constant 
273:     LD  4,-6(1)	Pop left hand side into AC1 
274:    TGT  3,4,3	Greather than > operation store in AC 
275:     LD  4,-5(1)	Pop left hand side into AC1 
276:     OR  3,4,3	OR operation store in AC 
277:     ST  3,-5(1)	Push left side onto temp variable stack 
278:    LDC  3,3(6)	Load type int constant 
279:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
280:     ST  3,-6(1)	Push left side onto temp variable stack 
281:    LDC  3,0(6)	Load type int constant 
282:     LD  4,-6(1)	Pop left hand side into AC1 
283:    TGT  3,4,3	Greather than > operation store in AC 
284:     LD  4,-5(1)	Pop left hand side into AC1 
285:     OR  3,4,3	OR operation store in AC 
286:     ST  3,-5(1)	Push left side onto temp variable stack 
287:    LDC  3,3(6)	Load type int constant 
288:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
289:     ST  3,-6(1)	Push left side onto temp variable stack 
290:    LDC  3,0(6)	Load type int constant 
291:     LD  4,-6(1)	Pop left hand side into AC1 
292:    TGT  3,4,3	Greather than > operation store in AC 
293:     LD  4,-5(1)	Pop left hand side into AC1 
294:     OR  3,4,3	OR operation store in AC 
295:     ST  3,-5(1)	Push left side onto temp variable stack 
296:    LDC  3,3(6)	Load type int constant 
297:    RND  3,3,0	Gen rand between 0 and value of AC1 in AC 
298:     ST  3,-6(1)	Push left side onto temp variable stack 
299:    LDC  3,0(6)	Load type int constant 
300:     LD  4,-6(1)	Pop left hand side into AC1 
301:    TGT  3,4,3	Greather than > operation store in AC 
302:     LD  4,-5(1)	Pop left hand side into AC1 
303:     OR  3,4,3	OR operation store in AC 
304:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
305:    LDA  1,-2(1)	Move the fp to the new frame 
306:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
307:    JMP  7,-291(7)	Call function 
308:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
309:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
310:    LDA  1,-2(1)	Move the fp to the new frame 
311:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
312:    JMP  7,-279(7)	Call function 
313:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
314:    LDC  2,0(6)	Set return value to 0 
315:     LD  3,-1(1)	Load return address 
316:     LD  1,0(1)	Adjust fp 
317:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,317(7)	Jump to init [backpatch] 
* INIT
318:    LDA  1,0(0)	set first frame at end of globals 
319:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
320:    LDA  3,1(7)	Return address in ac 
321:    JMP  7,-283(7)	Jump to main 
322:   HALT  0,0,0	DONE! 
* END INIT
