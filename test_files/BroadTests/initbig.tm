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
 39:    LDC  3,111(6)	Load of type int constant 
 40:    LDC  3,1(6)	Load of type bool constant 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 41:     ST  3,-1(1)	Store return address 
* COMPOUND
 42:    LDC  3,666(6)	Load of type int constant 
 43:     ST  3,-2(1)	Assigning variable i in Local 
 44:    LDC  3,97(6)	Load of type char constant 
 45:     ST  3,-3(1)	Assigning variable y in Local 
 46:    LDC  3,1(6)	Load of type bool constant 
 47:     ST  3,-4(1)	Assigning variable ba in Local 
 48:    LDC  3,1(6)	Load of type bool constant 
 49:     ST  3,-42(1)	Push left side onto temp variable stack 
 50:    LDC  3,0(6)	Load of type bool constant 
 51:    LDC  4,1(6)	Load 1 into AC1 for not operation 
 52:    TNE  3,4,3	Not ! operation store in AC 
 53:     LD  4,-42(1)	Pop left hand side into AC1 
 54:    AND  3,4,3	AND operation store in AC 
 55:     ST  3,-5(1)	Assigning variable bb in Local 
 56:    LDC  3,5(6)	Load of type int constant 
 57:     ST  3,-42(1)	Push left side onto temp variable stack 
 58:    LDC  3,4(6)	Load of type int constant 
 59:     LD  4,-42(1)	Pop left hand side into AC1 
 60:    TGT  3,4,3	Greather than > operation store in AC 
 61:     ST  3,-6(1)	Assigning variable bc in Local 
 62:    LDC  3,10(6)	Load size of x into AC 
 63:     ST  3,-7(1)	Store size of x in data memory 
 64:    LDC  3,4(6)	Load of type int constant 
 65:     ST  3,-42(1)	Push left side onto temp variable stack 
 66:    LDC  3,5(6)	Load of type int constant 
 67:     LD  4,-42(1)	Pop left hand side into AC1 
 68:    MUL  3,4,3	* Multiplication Operation 
 69:     ST  3,-42(1)	Push left side onto temp variable stack 
 70:    LDC  3,3(6)	Load of type int constant 
 71:     ST  3,-43(1)	Push left side onto temp variable stack 
 72:    LDC  3,2(6)	Load of type int constant 
 73:     LD  4,-43(1)	Pop left hand side into AC1 
 74:    MUL  3,4,3	* Multiplication Operation 
 75:     LD  4,-42(1)	Pop left hand side into AC1 
 76:    ADD  3,4,3	+ Operation 
 77:     ST  3,-18(1)	Assigning variable k in Local 
 78:    LDC  3,46(6)	Load of type int constant 
 79:    NEG  3,3,0	- Change Sign Operation 
 80:     ST  3,-19(1)	Assigning variable l in Local 
 81:    LDC  3,666(6)	Load of type int constant 
* CALL output
 82:     ST  1,-42(1)	Store fp in ghost frame for output 
 83:     LD  3,0(0)	Load variable ga into accumulator 
 84:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
 85:    LDA  1,-42(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-82(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 89:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
 90:    LDA  1,-42(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-59(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
 94:     ST  1,-42(1)	Store fp in ghost frame for outputb 
 95:     LD  3,-1(0)	Load variable gb into accumulator 
 96:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-42(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-83(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
101:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
102:    LDA  1,-42(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-71(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
106:     ST  1,-42(1)	Store fp in ghost frame for output 
107:    LDA  3,-3(0)	Load base address of array gc 
108:    LDA  3,-3(0)	Load address of base array gc 
109:     LD  3,1(3)	Load array size 
110:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
111:    LDA  1,-42(1)	Move the fp to the new frame 
112:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
113:    JMP  7,-108(7)	Call function 
114:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
115:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
116:    LDA  1,-42(1)	Move the fp to the new frame 
117:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
118:    JMP  7,-85(7)	Call function 
119:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
120:     ST  1,-42(1)	Store fp in ghost frame for output 
121:     LD  3,-2(1)	Load variable i into accumulator 
122:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
123:    LDA  1,-42(1)	Move the fp to the new frame 
124:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
125:    JMP  7,-120(7)	Call function 
126:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
127:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
128:    LDA  1,-42(1)	Move the fp to the new frame 
129:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
130:    JMP  7,-97(7)	Call function 
131:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputc
132:     ST  1,-42(1)	Store fp in ghost frame for outputc 
133:     LD  3,-3(1)	Load variable y into accumulator 
134:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
135:    LDA  1,-42(1)	Move the fp to the new frame 
136:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
137:    JMP  7,-110(7)	Call function 
138:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outnl
139:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
140:    LDA  1,-42(1)	Move the fp to the new frame 
141:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
142:    JMP  7,-109(7)	Call function 
143:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
144:     ST  1,-42(1)	Store fp in ghost frame for outputb 
145:     LD  3,-4(1)	Load variable ba into accumulator 
146:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
147:    LDA  1,-42(1)	Move the fp to the new frame 
148:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
149:    JMP  7,-133(7)	Call function 
150:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
151:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
152:    LDA  1,-42(1)	Move the fp to the new frame 
153:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
154:    JMP  7,-121(7)	Call function 
155:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
156:     ST  1,-42(1)	Store fp in ghost frame for outputb 
157:     LD  3,-5(1)	Load variable bb into accumulator 
158:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
159:    LDA  1,-42(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-145(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
163:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
164:    LDA  1,-42(1)	Move the fp to the new frame 
165:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
166:    JMP  7,-133(7)	Call function 
167:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
168:     ST  1,-42(1)	Store fp in ghost frame for outputb 
169:     LD  3,-6(1)	Load variable bc into accumulator 
170:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
171:    LDA  1,-42(1)	Move the fp to the new frame 
172:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
173:    JMP  7,-157(7)	Call function 
174:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
175:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
176:    LDA  1,-42(1)	Move the fp to the new frame 
177:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
178:    JMP  7,-145(7)	Call function 
179:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
180:     ST  1,-42(1)	Store fp in ghost frame for output 
181:    LDA  3,-8(1)	Load base address of array x 
182:    LDA  3,-8(1)	Load address of base array x 
183:     LD  3,1(3)	Load array size 
184:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
185:    LDA  1,-42(1)	Move the fp to the new frame 
186:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
187:    JMP  7,-182(7)	Call function 
188:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
189:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
190:    LDA  1,-42(1)	Move the fp to the new frame 
191:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
192:    JMP  7,-159(7)	Call function 
193:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
194:     ST  1,-42(1)	Store fp in ghost frame for output 
195:     LD  3,-18(1)	Load variable k into accumulator 
196:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
197:    LDA  1,-42(1)	Move the fp to the new frame 
198:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
199:    JMP  7,-194(7)	Call function 
200:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
201:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
202:    LDA  1,-42(1)	Move the fp to the new frame 
203:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
204:    JMP  7,-171(7)	Call function 
205:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
206:     ST  1,-42(1)	Store fp in ghost frame for output 
207:     LD  3,-19(1)	Load variable l into accumulator 
208:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
209:    LDA  1,-42(1)	Move the fp to the new frame 
210:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
211:    JMP  7,-206(7)	Call function 
212:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
213:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
214:    LDA  1,-42(1)	Move the fp to the new frame 
215:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
216:    JMP  7,-183(7)	Call function 
217:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
218:     ST  1,-42(1)	Store fp in ghost frame for output 
219:     LD  3,-16(0)	Load variable sia into accumulator 
220:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
221:    LDA  1,-42(1)	Move the fp to the new frame 
222:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
223:    JMP  7,-218(7)	Call function 
224:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
225:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
226:    LDA  1,-42(1)	Move the fp to the new frame 
227:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
228:    JMP  7,-195(7)	Call function 
229:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
230:     ST  1,-42(1)	Store fp in ghost frame for output 
231:    LDA  3,-18(0)	Load base address of array sib 
232:    LDA  3,-18(0)	Load address of base array sib 
233:     LD  3,1(3)	Load array size 
234:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
235:    LDA  1,-42(1)	Move the fp to the new frame 
236:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
237:    JMP  7,-232(7)	Call function 
238:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
239:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
240:    LDA  1,-42(1)	Move the fp to the new frame 
241:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
242:    JMP  7,-209(7)	Call function 
243:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* COMPOUND
244:    LDC  3,20(6)	Load size of y into AC 
245:     ST  3,-20(1)	Store size of y in data memory 
246:    LDC  3,1(6)	Load of type bool constant 
247:    LDC  4,1(6)	Load 1 into AC1 for not operation 
248:    TNE  3,4,3	Not ! operation store in AC 
249:     ST  3,-41(1)	Assigning variable t in Local 
* CALL output
250:     ST  1,-42(1)	Store fp in ghost frame for output 
251:    LDA  3,-21(1)	Load base address of array y 
252:    LDA  3,-21(1)	Load address of base array y 
253:     LD  3,1(3)	Load array size 
254:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
255:    LDA  1,-42(1)	Move the fp to the new frame 
256:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
257:    JMP  7,-252(7)	Call function 
258:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
259:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
260:    LDA  1,-42(1)	Move the fp to the new frame 
261:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
262:    JMP  7,-229(7)	Call function 
263:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
264:     ST  1,-42(1)	Store fp in ghost frame for outputb 
265:     LD  3,-41(1)	Load variable t into accumulator 
266:     ST  3,-44(1)	Push parameter onto new frame 
* Begin call
267:    LDA  1,-42(1)	Move the fp to the new frame 
268:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
269:    JMP  7,-253(7)	Call function 
270:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
271:     ST  1,-42(1)	Store fp in ghost frame for outnl 
* Begin call
272:    LDA  1,-42(1)	Move the fp to the new frame 
273:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
274:    JMP  7,-241(7)	Call function 
275:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* END COMPOUND
* Add standard closing in case there is no return statement
276:    LDC  2,0(6)	Set return value to 0 
277:     LD  3,-1(1)	Load return address 
278:     LD  1,0(1)	Adjust fp 
279:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,279(7)	Jump to init [backpatch] 
* INIT
280:    LDA  1,-33(0)	set first frame at end of globals 
281:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
282:    LDC  3,111(6)	Load of type int constant 
283:     ST  3,0(0)	Assigning variable ga in Global 
284:    LDC  3,1(6)	Load of type bool constant 
285:     ST  3,-1(0)	Assigning variable gb in Global 
286:    LDC  3,13(6)	Load size of gc into AC 
287:     ST  3,-2(0)	Store size of gc in data memory 
288:    LDC  3,666(6)	Load of type int constant 
289:     ST  3,-16(0)	Assigning variable sia in LocalStatic 
290:    LDC  3,15(6)	Load size of sib into AC 
291:     ST  3,-17(0)	Store size of sib in data memory 
* END INIT GLOBALS AND STATICS
292:    LDA  3,1(7)	Return address in ac 
293:    JMP  7,-253(7)	Jump to main 
294:   HALT  0,0,0	DONE! 
* END INIT
