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
 40:    LDC  3,333(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
 42:    LDC  3,444(6)	Load of type int constant 
 43:     ST  3,-3(1)	Assigning variable y in Local 
 44:    LDC  3,666(6)	Load of type int constant 
 45:     ST  3,-4(1)	Assigning variable z in Local 
 46:     LD  3,-4(1)	Load variable z into accumulator 
 47:     ST  3,-3(1)	Assigning variable y in Local 
 48:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
 49:     ST  1,-5(1)	Store fp in ghost frame for output 
 50:     LD  3,-2(1)	Load variable x into accumulator 
 51:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 52:    LDA  1,-5(1)	Move the fp to the new frame 
 53:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 54:    JMP  7,-49(7)	Call function 
 55:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 56:     ST  1,-5(1)	Store fp in ghost frame for output 
 57:     LD  3,-3(1)	Load variable y into accumulator 
 58:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-5(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-56(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 63:     ST  1,-5(1)	Store fp in ghost frame for output 
 64:     LD  3,-4(1)	Load variable z into accumulator 
 65:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 66:    LDA  1,-5(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-63(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 70:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
 71:    LDA  1,-5(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-40(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 75:     LD  3,-4(1)	Load variable z into accumulator 
 76:     ST  3,-3(1)	Assigning variable y in Local 
 77:     LD  4,-2(1)	Load lhs variable 
 78:    ADD  3,4,3	+= operation 
 79:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
 80:     ST  1,-5(1)	Store fp in ghost frame for output 
 81:     LD  3,-2(1)	Load variable x into accumulator 
 82:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 83:    LDA  1,-5(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-80(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 87:     ST  1,-5(1)	Store fp in ghost frame for output 
 88:     LD  3,-3(1)	Load variable y into accumulator 
 89:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-5(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-87(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 94:     ST  1,-5(1)	Store fp in ghost frame for output 
 95:     LD  3,-4(1)	Load variable z into accumulator 
 96:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-5(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-94(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
101:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
102:    LDA  1,-5(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-71(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
106:     LD  3,-4(1)	Load variable z into accumulator 
107:     LD  4,-3(1)	Load lhs variable 
108:    ADD  3,4,3	+= operation 
109:     ST  3,-3(1)	Assigning variable y in Local 
110:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
111:     ST  1,-5(1)	Store fp in ghost frame for output 
112:     LD  3,-2(1)	Load variable x into accumulator 
113:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
114:    LDA  1,-5(1)	Move the fp to the new frame 
115:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
116:    JMP  7,-111(7)	Call function 
117:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
118:     ST  1,-5(1)	Store fp in ghost frame for output 
119:     LD  3,-3(1)	Load variable y into accumulator 
120:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
121:    LDA  1,-5(1)	Move the fp to the new frame 
122:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
123:    JMP  7,-118(7)	Call function 
124:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
125:     ST  1,-5(1)	Store fp in ghost frame for output 
126:     LD  3,-4(1)	Load variable z into accumulator 
127:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
128:    LDA  1,-5(1)	Move the fp to the new frame 
129:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
130:    JMP  7,-125(7)	Call function 
131:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
132:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
133:    LDA  1,-5(1)	Move the fp to the new frame 
134:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
135:    JMP  7,-102(7)	Call function 
136:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
137:     LD  3,-4(1)	Load variable z into accumulator 
138:     LD  4,-3(1)	Load lhs variable 
139:    ADD  3,4,3	+= operation 
140:     ST  3,-3(1)	Assigning variable y in Local 
141:     LD  4,-2(1)	Load lhs variable 
142:    ADD  3,4,3	+= operation 
143:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
144:     ST  1,-5(1)	Store fp in ghost frame for output 
145:     LD  3,-2(1)	Load variable x into accumulator 
146:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
147:    LDA  1,-5(1)	Move the fp to the new frame 
148:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
149:    JMP  7,-144(7)	Call function 
150:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
151:     ST  1,-5(1)	Store fp in ghost frame for output 
152:     LD  3,-3(1)	Load variable y into accumulator 
153:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
154:    LDA  1,-5(1)	Move the fp to the new frame 
155:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
156:    JMP  7,-151(7)	Call function 
157:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
158:     ST  1,-5(1)	Store fp in ghost frame for output 
159:     LD  3,-4(1)	Load variable z into accumulator 
160:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
161:    LDA  1,-5(1)	Move the fp to the new frame 
162:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
163:    JMP  7,-158(7)	Call function 
164:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
165:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
166:    LDA  1,-5(1)	Move the fp to the new frame 
167:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
168:    JMP  7,-135(7)	Call function 
169:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
170:     LD  3,-4(1)	Load variable z into accumulator 
171:     ST  3,-3(1)	Assigning variable y in Local 
172:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
173:     ST  1,-5(1)	Store fp in ghost frame for output 
174:     LD  3,-2(1)	Load variable x into accumulator 
175:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
176:    LDA  1,-5(1)	Move the fp to the new frame 
177:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
178:    JMP  7,-173(7)	Call function 
179:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
180:     ST  1,-5(1)	Store fp in ghost frame for output 
181:     LD  3,-3(1)	Load variable y into accumulator 
182:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
183:    LDA  1,-5(1)	Move the fp to the new frame 
184:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
185:    JMP  7,-180(7)	Call function 
186:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
187:     ST  1,-5(1)	Store fp in ghost frame for output 
188:     LD  3,-4(1)	Load variable z into accumulator 
189:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
190:    LDA  1,-5(1)	Move the fp to the new frame 
191:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
192:    JMP  7,-187(7)	Call function 
193:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
194:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
195:    LDA  1,-5(1)	Move the fp to the new frame 
196:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
197:    JMP  7,-164(7)	Call function 
198:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
199:     LD  3,-4(1)	Load variable z into accumulator 
200:     ST  3,-3(1)	Assigning variable y in Local 
201:     LD  4,-2(1)	Load lhs variable 
202:    SUB  3,4,3	-= operation 
203:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
204:     ST  1,-5(1)	Store fp in ghost frame for output 
205:     LD  3,-2(1)	Load variable x into accumulator 
206:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
207:    LDA  1,-5(1)	Move the fp to the new frame 
208:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
209:    JMP  7,-204(7)	Call function 
210:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
211:     ST  1,-5(1)	Store fp in ghost frame for output 
212:     LD  3,-3(1)	Load variable y into accumulator 
213:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
214:    LDA  1,-5(1)	Move the fp to the new frame 
215:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
216:    JMP  7,-211(7)	Call function 
217:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
218:     ST  1,-5(1)	Store fp in ghost frame for output 
219:     LD  3,-4(1)	Load variable z into accumulator 
220:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
221:    LDA  1,-5(1)	Move the fp to the new frame 
222:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
223:    JMP  7,-218(7)	Call function 
224:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
225:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
226:    LDA  1,-5(1)	Move the fp to the new frame 
227:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
228:    JMP  7,-195(7)	Call function 
229:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
230:     LD  3,-4(1)	Load variable z into accumulator 
231:     LD  4,-3(1)	Load lhs variable 
232:    SUB  3,4,3	-= operation 
233:     ST  3,-3(1)	Assigning variable y in Local 
234:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
235:     ST  1,-5(1)	Store fp in ghost frame for output 
236:     LD  3,-2(1)	Load variable x into accumulator 
237:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
238:    LDA  1,-5(1)	Move the fp to the new frame 
239:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
240:    JMP  7,-235(7)	Call function 
241:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
242:     ST  1,-5(1)	Store fp in ghost frame for output 
243:     LD  3,-3(1)	Load variable y into accumulator 
244:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
245:    LDA  1,-5(1)	Move the fp to the new frame 
246:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
247:    JMP  7,-242(7)	Call function 
248:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
249:     ST  1,-5(1)	Store fp in ghost frame for output 
250:     LD  3,-4(1)	Load variable z into accumulator 
251:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
252:    LDA  1,-5(1)	Move the fp to the new frame 
253:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
254:    JMP  7,-249(7)	Call function 
255:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
256:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
257:    LDA  1,-5(1)	Move the fp to the new frame 
258:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
259:    JMP  7,-226(7)	Call function 
260:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
261:     LD  3,-4(1)	Load variable z into accumulator 
262:     LD  4,-3(1)	Load lhs variable 
263:    SUB  3,4,3	-= operation 
264:     ST  3,-3(1)	Assigning variable y in Local 
265:     LD  4,-2(1)	Load lhs variable 
266:    SUB  3,4,3	-= operation 
267:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
268:     ST  1,-5(1)	Store fp in ghost frame for output 
269:     LD  3,-2(1)	Load variable x into accumulator 
270:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
271:    LDA  1,-5(1)	Move the fp to the new frame 
272:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
273:    JMP  7,-268(7)	Call function 
274:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
275:     ST  1,-5(1)	Store fp in ghost frame for output 
276:     LD  3,-3(1)	Load variable y into accumulator 
277:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
278:    LDA  1,-5(1)	Move the fp to the new frame 
279:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
280:    JMP  7,-275(7)	Call function 
281:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
282:     ST  1,-5(1)	Store fp in ghost frame for output 
283:     LD  3,-4(1)	Load variable z into accumulator 
284:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
285:    LDA  1,-5(1)	Move the fp to the new frame 
286:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
287:    JMP  7,-282(7)	Call function 
288:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
289:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
290:    LDA  1,-5(1)	Move the fp to the new frame 
291:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
292:    JMP  7,-259(7)	Call function 
293:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
294:    LDA  2,0(3)	Copy accumulator to return register 
295:     LD  3,-1(1)	Load return address 
296:     LD  1,0(1)	Adjust fp 
297:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
298:    LDC  2,0(6)	Set return value to 0 
299:     LD  3,-1(1)	Load return address 
300:     LD  1,0(1)	Adjust fp 
301:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,301(7)	Jump to init [backpatch] 
* INIT
302:    LDA  1,0(0)	set first frame at end of globals 
303:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
304:    LDA  3,1(7)	Return address in ac 
305:    JMP  7,-267(7)	Jump to main 
306:   HALT  0,0,0	DONE! 
* END INIT
