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
* BEGIN IF BLOCK
 40:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
 42:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
 44:     ST  1,-3(1)	Store fp in ghost frame for output 
 45:    LDC  3,13(6)	Load type int constant 
 46:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-3(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 43:    JZR  3,8(7)	IF JMP TO ELSE 
 51:    LDA  7,0(7)	JUMP TO END 
* END IF
* IF JUMP TO END
 41:    JZR  3,11(7)	IF JMP TO ELSE 
 52:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 53:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
 55:    LDC  3,0(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
 57:     ST  1,-3(1)	Store fp in ghost frame for output 
 58:    LDC  3,23(6)	Load type int constant 
 59:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 60:    LDA  1,-3(1)	Move the fp to the new frame 
 61:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 62:    JMP  7,-57(7)	Call function 
 63:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 56:    JZR  3,8(7)	IF JMP TO ELSE 
 64:    LDA  7,0(7)	JUMP TO END 
* END IF
* IF JUMP TO END
 54:    JZR  3,11(7)	IF JMP TO ELSE 
 65:    LDA  7,0(7)	JUMP TO END 
* END IF
 66:    LDC  3,0(6)	Load type bool constant 
 67:     ST  3,-2(1)	Assigning variable x in Local 
* BEGIN IF BLOCK
 68:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
 70:     LD  3,-2(1)	Load variable x into accumulator 
* IF JUMP TO ELSE
* CALL output
 72:     ST  1,-3(1)	Store fp in ghost frame for output 
 73:    LDC  3,44(6)	Load type int constant 
 74:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 75:    LDA  1,-3(1)	Move the fp to the new frame 
 76:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 77:    JMP  7,-72(7)	Call function 
 78:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 71:    JZR  3,8(7)	IF JMP TO ELSE 
 79:    LDA  7,0(7)	JUMP TO END 
* END IF
* IF JUMP TO END
 69:    JZR  3,11(7)	IF JMP TO ELSE 
 80:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 81:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
 83:     LD  3,-2(1)	Load variable x into accumulator 
 84:    LDC  4,1(6)	Load 1 into AC1 for not operation 
 85:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* CALL output
 87:     ST  1,-3(1)	Store fp in ghost frame for output 
 88:    LDC  3,55(6)	Load type int constant 
 89:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-3(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-87(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 86:    JZR  3,8(7)	IF JMP TO ELSE 
 94:    LDA  7,0(7)	JUMP TO END 
* END IF
* IF JUMP TO END
 82:    JZR  3,13(7)	IF JMP TO ELSE 
 95:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 96:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
 98:    LDC  3,3(6)	Load type int constant 
 99:     ST  3,-3(1)	Push left side onto temp variable stack 
100:    LDC  3,1(6)	Load type int constant 
101:     LD  4,-3(1)	Pop left hand side into AC1 
102:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* CALL output
104:     ST  1,-3(1)	Store fp in ghost frame for output 
105:    LDC  3,987(6)	Load type int constant 
106:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
107:    LDA  1,-3(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-104(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
103:    JZR  3,8(7)	IF JMP TO ELSE 
111:    LDA  7,0(7)	JUMP TO END 
* END IF
* IF JUMP TO END
 97:    JZR  3,15(7)	IF JMP TO ELSE 
112:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
113:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
115:    LDC  3,3(6)	Load type int constant 
116:     ST  3,-3(1)	Push left side onto temp variable stack 
117:    LDC  3,1(6)	Load type int constant 
118:     LD  4,-3(1)	Pop left hand side into AC1 
119:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* CALL output
121:     ST  1,-3(1)	Store fp in ghost frame for output 
122:    LDC  3,211(6)	Load type int constant 
123:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
124:    LDA  1,-3(1)	Move the fp to the new frame 
125:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
126:    JMP  7,-121(7)	Call function 
127:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
120:    JZR  3,8(7)	IF JMP TO ELSE 
128:    LDA  7,0(7)	JUMP TO END 
* END IF
* IF JUMP TO END
114:    JZR  3,15(7)	IF JMP TO ELSE 
129:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
130:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
132:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
134:     ST  1,-3(1)	Store fp in ghost frame for output 
135:    LDC  3,13(6)	Load type int constant 
136:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
137:    LDA  1,-3(1)	Move the fp to the new frame 
138:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
139:    JMP  7,-134(7)	Call function 
140:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
133:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
142:     ST  1,-3(1)	Store fp in ghost frame for output 
143:    LDC  3,51(6)	Load type int constant 
144:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
145:    LDA  1,-3(1)	Move the fp to the new frame 
146:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
147:    JMP  7,-142(7)	Call function 
148:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
141:    LDA  7,7(7)	JUMP TO END 
* END IF
* IF JUMP TO END
131:    JZR  3,18(7)	IF JMP TO ELSE 
149:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
150:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
152:    LDC  3,0(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
154:     ST  1,-3(1)	Store fp in ghost frame for output 
155:    LDC  3,23(6)	Load type int constant 
156:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
157:    LDA  1,-3(1)	Move the fp to the new frame 
158:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
159:    JMP  7,-154(7)	Call function 
160:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
153:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
162:     ST  1,-3(1)	Store fp in ghost frame for output 
163:    LDC  3,451(6)	Load type int constant 
164:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
165:    LDA  1,-3(1)	Move the fp to the new frame 
166:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
167:    JMP  7,-162(7)	Call function 
168:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
161:    LDA  7,7(7)	JUMP TO END 
* END IF
* IF JUMP TO END
151:    JZR  3,18(7)	IF JMP TO ELSE 
169:    LDA  7,0(7)	JUMP TO END 
* END IF
170:    LDC  3,0(6)	Load type bool constant 
171:     ST  3,-2(1)	Assigning variable x in Local 
* BEGIN IF BLOCK
172:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
174:     LD  3,-2(1)	Load variable x into accumulator 
* IF JUMP TO ELSE
* CALL output
176:     ST  1,-3(1)	Store fp in ghost frame for output 
177:    LDC  3,44(6)	Load type int constant 
178:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
179:    LDA  1,-3(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-176(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
175:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
184:     ST  1,-3(1)	Store fp in ghost frame for output 
185:    LDC  3,514(6)	Load type int constant 
186:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
187:    LDA  1,-3(1)	Move the fp to the new frame 
188:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
189:    JMP  7,-184(7)	Call function 
190:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
183:    LDA  7,7(7)	JUMP TO END 
* END IF
* IF JUMP TO END
173:    JZR  3,18(7)	IF JMP TO ELSE 
191:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
192:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
194:     LD  3,-2(1)	Load variable x into accumulator 
195:    LDC  4,1(6)	Load 1 into AC1 for not operation 
196:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* CALL output
198:     ST  1,-3(1)	Store fp in ghost frame for output 
199:    LDC  3,55(6)	Load type int constant 
200:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
201:    LDA  1,-3(1)	Move the fp to the new frame 
202:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
203:    JMP  7,-198(7)	Call function 
204:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
197:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
206:     ST  1,-3(1)	Store fp in ghost frame for output 
207:    LDC  3,1514(6)	Load type int constant 
208:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
209:    LDA  1,-3(1)	Move the fp to the new frame 
210:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
211:    JMP  7,-206(7)	Call function 
212:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
205:    LDA  7,7(7)	JUMP TO END 
* END IF
* IF JUMP TO END
193:    JZR  3,20(7)	IF JMP TO ELSE 
213:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
214:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
216:    LDC  3,3(6)	Load type int constant 
217:     ST  3,-3(1)	Push left side onto temp variable stack 
218:    LDC  3,1(6)	Load type int constant 
219:     LD  4,-3(1)	Pop left hand side into AC1 
220:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* CALL output
222:     ST  1,-3(1)	Store fp in ghost frame for output 
223:    LDC  3,987(6)	Load type int constant 
224:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
225:    LDA  1,-3(1)	Move the fp to the new frame 
226:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
227:    JMP  7,-222(7)	Call function 
228:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
221:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
230:     ST  1,-3(1)	Store fp in ghost frame for output 
231:    LDC  3,114(6)	Load type int constant 
232:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
233:    LDA  1,-3(1)	Move the fp to the new frame 
234:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
235:    JMP  7,-230(7)	Call function 
236:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
229:    LDA  7,7(7)	JUMP TO END 
* END IF
* IF JUMP TO END
215:    JZR  3,22(7)	IF JMP TO ELSE 
237:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
238:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* BEGIN IF BLOCK
240:    LDC  3,3(6)	Load type int constant 
241:     ST  3,-3(1)	Push left side onto temp variable stack 
242:    LDC  3,1(6)	Load type int constant 
243:     LD  4,-3(1)	Pop left hand side into AC1 
244:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* CALL output
246:     ST  1,-3(1)	Store fp in ghost frame for output 
247:    LDC  3,211(6)	Load type int constant 
248:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
249:    LDA  1,-3(1)	Move the fp to the new frame 
250:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
251:    JMP  7,-246(7)	Call function 
252:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
245:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
254:     ST  1,-3(1)	Store fp in ghost frame for output 
255:    LDC  3,1614(6)	Load type int constant 
256:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
257:    LDA  1,-3(1)	Move the fp to the new frame 
258:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
259:    JMP  7,-254(7)	Call function 
260:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
253:    LDA  7,7(7)	JUMP TO END 
* END IF
* IF JUMP TO END
239:    JZR  3,22(7)	IF JMP TO ELSE 
261:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
262:    LDC  2,0(6)	Set return value to 0 
263:     LD  3,-1(1)	Load return address 
264:     LD  1,0(1)	Adjust fp 
265:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,265(7)	Jump to init [backpatch] 
* INIT
266:    LDA  1,0(0)	set first frame at end of globals 
267:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
268:    LDA  3,1(7)	Return address in ac 
269:    JMP  7,-231(7)	Jump to main 
270:   HALT  0,0,0	DONE! 
* END INIT
