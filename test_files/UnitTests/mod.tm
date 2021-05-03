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
* CALL output
 40:     ST  1,-2(1)	Store fp in ghost frame for output 
 41:    LDC  3,10(6)	Load of type int constant 
 42:     ST  3,-5(1)	Push left side onto temp variable stack 
 43:    LDC  3,1(6)	Load of type int constant 
 44:     LD  4,-5(1)	Pop left hand side into AC1 
 45:    MOD  3,4,3	% mod operation 
 46:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-2(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 51:     ST  1,-2(1)	Store fp in ghost frame for output 
 52:    LDC  3,10(6)	Load of type int constant 
 53:     ST  3,-5(1)	Push left side onto temp variable stack 
 54:    LDC  3,2(6)	Load of type int constant 
 55:     LD  4,-5(1)	Pop left hand side into AC1 
 56:    MOD  3,4,3	% mod operation 
 57:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-2(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-55(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 62:     ST  1,-2(1)	Store fp in ghost frame for output 
 63:    LDC  3,10(6)	Load of type int constant 
 64:     ST  3,-5(1)	Push left side onto temp variable stack 
 65:    LDC  3,3(6)	Load of type int constant 
 66:     LD  4,-5(1)	Pop left hand side into AC1 
 67:    MOD  3,4,3	% mod operation 
 68:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-2(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-66(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 73:     ST  1,-2(1)	Store fp in ghost frame for output 
 74:    LDC  3,10(6)	Load of type int constant 
 75:     ST  3,-5(1)	Push left side onto temp variable stack 
 76:    LDC  3,4(6)	Load of type int constant 
 77:     LD  4,-5(1)	Pop left hand side into AC1 
 78:    MOD  3,4,3	% mod operation 
 79:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 80:    LDA  1,-2(1)	Move the fp to the new frame 
 81:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 82:    JMP  7,-77(7)	Call function 
 83:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 84:     ST  1,-2(1)	Store fp in ghost frame for output 
 85:    LDC  3,10(6)	Load of type int constant 
 86:     ST  3,-5(1)	Push left side onto temp variable stack 
 87:    LDC  3,5(6)	Load of type int constant 
 88:     LD  4,-5(1)	Pop left hand side into AC1 
 89:    MOD  3,4,3	% mod operation 
 90:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 91:    LDA  1,-2(1)	Move the fp to the new frame 
 92:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 93:    JMP  7,-88(7)	Call function 
 94:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 95:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 96:    LDA  1,-2(1)	Move the fp to the new frame 
 97:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 98:    JMP  7,-65(7)	Call function 
 99:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
100:     ST  1,-2(1)	Store fp in ghost frame for output 
101:    LDC  3,10(6)	Load of type int constant 
102:     ST  3,-5(1)	Push left side onto temp variable stack 
103:    LDC  3,10(6)	Load of type int constant 
104:     LD  4,-5(1)	Pop left hand side into AC1 
105:    MOD  3,4,3	% mod operation 
106:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
107:    LDA  1,-2(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-104(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
111:     ST  1,-2(1)	Store fp in ghost frame for output 
112:    LDC  3,10(6)	Load of type int constant 
113:     ST  3,-5(1)	Push left side onto temp variable stack 
114:    LDC  3,11(6)	Load of type int constant 
115:     LD  4,-5(1)	Pop left hand side into AC1 
116:    MOD  3,4,3	% mod operation 
117:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
118:    LDA  1,-2(1)	Move the fp to the new frame 
119:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
120:    JMP  7,-115(7)	Call function 
121:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
122:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
123:    LDA  1,-2(1)	Move the fp to the new frame 
124:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
125:    JMP  7,-92(7)	Call function 
126:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
127:     ST  1,-2(1)	Store fp in ghost frame for output 
128:    LDC  3,0(6)	Load of type int constant 
129:     ST  3,-5(1)	Push left side onto temp variable stack 
130:    LDC  3,1(6)	Load of type int constant 
131:     LD  4,-5(1)	Pop left hand side into AC1 
132:    MOD  3,4,3	% mod operation 
133:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
134:    LDA  1,-2(1)	Move the fp to the new frame 
135:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
136:    JMP  7,-131(7)	Call function 
137:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
138:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
139:    LDA  1,-2(1)	Move the fp to the new frame 
140:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
141:    JMP  7,-108(7)	Call function 
142:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
143:     ST  1,-2(1)	Store fp in ghost frame for output 
144:    LDC  3,10(6)	Load of type int constant 
145:    NEG  3,3,0	- Change Sign Operation 
146:     ST  3,-5(1)	Push left side onto temp variable stack 
147:    LDC  3,1(6)	Load of type int constant 
148:     LD  4,-5(1)	Pop left hand side into AC1 
149:    MOD  3,4,3	% mod operation 
150:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
151:    LDA  1,-2(1)	Move the fp to the new frame 
152:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
153:    JMP  7,-148(7)	Call function 
154:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
155:     ST  1,-2(1)	Store fp in ghost frame for output 
156:    LDC  3,10(6)	Load of type int constant 
157:    NEG  3,3,0	- Change Sign Operation 
158:     ST  3,-5(1)	Push left side onto temp variable stack 
159:    LDC  3,2(6)	Load of type int constant 
160:     LD  4,-5(1)	Pop left hand side into AC1 
161:    MOD  3,4,3	% mod operation 
162:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
163:    LDA  1,-2(1)	Move the fp to the new frame 
164:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
165:    JMP  7,-160(7)	Call function 
166:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
167:     ST  1,-2(1)	Store fp in ghost frame for output 
168:    LDC  3,10(6)	Load of type int constant 
169:    NEG  3,3,0	- Change Sign Operation 
170:     ST  3,-5(1)	Push left side onto temp variable stack 
171:    LDC  3,3(6)	Load of type int constant 
172:     LD  4,-5(1)	Pop left hand side into AC1 
173:    MOD  3,4,3	% mod operation 
174:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
175:    LDA  1,-2(1)	Move the fp to the new frame 
176:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
177:    JMP  7,-172(7)	Call function 
178:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
179:     ST  1,-2(1)	Store fp in ghost frame for output 
180:    LDC  3,10(6)	Load of type int constant 
181:    NEG  3,3,0	- Change Sign Operation 
182:     ST  3,-5(1)	Push left side onto temp variable stack 
183:    LDC  3,4(6)	Load of type int constant 
184:     LD  4,-5(1)	Pop left hand side into AC1 
185:    MOD  3,4,3	% mod operation 
186:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
187:    LDA  1,-2(1)	Move the fp to the new frame 
188:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
189:    JMP  7,-184(7)	Call function 
190:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
191:     ST  1,-2(1)	Store fp in ghost frame for output 
192:    LDC  3,10(6)	Load of type int constant 
193:    NEG  3,3,0	- Change Sign Operation 
194:     ST  3,-5(1)	Push left side onto temp variable stack 
195:    LDC  3,5(6)	Load of type int constant 
196:     LD  4,-5(1)	Pop left hand side into AC1 
197:    MOD  3,4,3	% mod operation 
198:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
199:    LDA  1,-2(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-196(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
203:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
204:    LDA  1,-2(1)	Move the fp to the new frame 
205:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
206:    JMP  7,-173(7)	Call function 
207:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
208:     ST  1,-2(1)	Store fp in ghost frame for output 
209:    LDC  3,10(6)	Load of type int constant 
210:    NEG  3,3,0	- Change Sign Operation 
211:     ST  3,-5(1)	Push left side onto temp variable stack 
212:    LDC  3,10(6)	Load of type int constant 
213:     LD  4,-5(1)	Pop left hand side into AC1 
214:    MOD  3,4,3	% mod operation 
215:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
216:    LDA  1,-2(1)	Move the fp to the new frame 
217:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
218:    JMP  7,-213(7)	Call function 
219:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
220:     ST  1,-2(1)	Store fp in ghost frame for output 
221:    LDC  3,10(6)	Load of type int constant 
222:    NEG  3,3,0	- Change Sign Operation 
223:     ST  3,-5(1)	Push left side onto temp variable stack 
224:    LDC  3,11(6)	Load of type int constant 
225:     LD  4,-5(1)	Pop left hand side into AC1 
226:    MOD  3,4,3	% mod operation 
227:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
228:    LDA  1,-2(1)	Move the fp to the new frame 
229:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
230:    JMP  7,-225(7)	Call function 
231:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
232:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
233:    LDA  1,-2(1)	Move the fp to the new frame 
234:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
235:    JMP  7,-202(7)	Call function 
236:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
237:     ST  1,-2(1)	Store fp in ghost frame for output 
238:    LDC  3,331(6)	Load of type int constant 
239:     ST  3,-5(1)	Push left side onto temp variable stack 
240:    LDC  3,31(6)	Load of type int constant 
241:     LD  4,-5(1)	Pop left hand side into AC1 
242:    MOD  3,4,3	% mod operation 
243:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
244:    LDA  1,-2(1)	Move the fp to the new frame 
245:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
246:    JMP  7,-241(7)	Call function 
247:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
248:     ST  1,-2(1)	Store fp in ghost frame for output 
249:    LDC  3,331(6)	Load of type int constant 
250:     ST  3,-5(1)	Push left side onto temp variable stack 
251:    LDC  3,31(6)	Load of type int constant 
252:    NEG  3,3,0	- Change Sign Operation 
253:     LD  4,-5(1)	Pop left hand side into AC1 
254:    MOD  3,4,3	% mod operation 
255:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
256:    LDA  1,-2(1)	Move the fp to the new frame 
257:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
258:    JMP  7,-253(7)	Call function 
259:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
260:     ST  1,-2(1)	Store fp in ghost frame for output 
261:    LDC  3,331(6)	Load of type int constant 
262:    NEG  3,3,0	- Change Sign Operation 
263:     ST  3,-5(1)	Push left side onto temp variable stack 
264:    LDC  3,31(6)	Load of type int constant 
265:     LD  4,-5(1)	Pop left hand side into AC1 
266:    MOD  3,4,3	% mod operation 
267:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
268:    LDA  1,-2(1)	Move the fp to the new frame 
269:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
270:    JMP  7,-265(7)	Call function 
271:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
272:     ST  1,-2(1)	Store fp in ghost frame for output 
273:    LDC  3,331(6)	Load of type int constant 
274:    NEG  3,3,0	- Change Sign Operation 
275:     ST  3,-5(1)	Push left side onto temp variable stack 
276:    LDC  3,31(6)	Load of type int constant 
277:    NEG  3,3,0	- Change Sign Operation 
278:     LD  4,-5(1)	Pop left hand side into AC1 
279:    MOD  3,4,3	% mod operation 
280:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
281:    LDA  1,-2(1)	Move the fp to the new frame 
282:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
283:    JMP  7,-278(7)	Call function 
284:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
285:    LDC  2,0(6)	Set return value to 0 
286:     LD  3,-1(1)	Load return address 
287:     LD  1,0(1)	Adjust fp 
288:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,288(7)	Jump to init [backpatch] 
* INIT
289:    LDA  1,0(0)	set first frame at end of globals 
290:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
291:    LDA  3,1(7)	Return address in ac 
292:    JMP  7,-254(7)	Jump to main 
293:   HALT  0,0,0	DONE! 
* END INIT
