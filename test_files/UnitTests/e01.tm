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
 40:    LDC  3,1(6)	Load of type bool constant 
* IF JUMP TO ELSE
* CALL output
 42:     ST  1,-3(1)	Store fp in ghost frame for output 
 43:    LDC  3,13(6)	Load of type int constant 
 44:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 45:    LDA  1,-3(1)	Move the fp to the new frame 
 46:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 47:    JMP  7,-42(7)	Call function 
 48:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 41:    JZR  3,8(7)	IF JMP TO ELSE 
 49:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL output
 50:     ST  1,-3(1)	Store fp in ghost frame for output 
 51:    LDC  3,23(6)	Load of type int constant 
 52:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 53:    LDA  1,-3(1)	Move the fp to the new frame 
 54:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 55:    JMP  7,-50(7)	Call function 
 56:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 57:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 58:    LDA  1,-3(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-27(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 62:    LDC  3,0(6)	Load of type bool constant 
 63:     ST  3,-2(1)	Assigning variable x in Local 
* BEGIN IF BLOCK
 64:     LD  3,-2(1)	Load variable x into accumulator 
* IF JUMP TO ELSE
* CALL output
 66:     ST  1,-3(1)	Store fp in ghost frame for output 
 67:    LDC  3,44(6)	Load of type int constant 
 68:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-3(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-66(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 65:    JZR  3,8(7)	IF JMP TO ELSE 
 73:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 74:     LD  3,-2(1)	Load variable x into accumulator 
 75:    LDC  4,1(6)	Load 1 into AC1 for not operation 
 76:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* CALL output
 78:     ST  1,-3(1)	Store fp in ghost frame for output 
 79:    LDC  3,55(6)	Load of type int constant 
 80:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 81:    LDA  1,-3(1)	Move the fp to the new frame 
 82:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 83:    JMP  7,-78(7)	Call function 
 84:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 77:    JZR  3,8(7)	IF JMP TO ELSE 
 85:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL outnl
 86:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 87:    LDA  1,-3(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-56(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
 91:    LDC  3,3(6)	Load of type int constant 
 92:     ST  3,-3(1)	Push left side onto temp variable stack 
 93:    LDC  3,1(6)	Load of type int constant 
 94:     LD  4,-3(1)	Pop left hand side into AC1 
 95:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* CALL output
 97:     ST  1,-3(1)	Store fp in ghost frame for output 
 98:    LDC  3,987(6)	Load of type int constant 
 99:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
100:    LDA  1,-3(1)	Move the fp to the new frame 
101:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
102:    JMP  7,-97(7)	Call function 
103:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 96:    JZR  3,8(7)	IF JMP TO ELSE 
104:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
105:    LDC  3,3(6)	Load of type int constant 
106:     ST  3,-3(1)	Push left side onto temp variable stack 
107:    LDC  3,1(6)	Load of type int constant 
108:     LD  4,-3(1)	Pop left hand side into AC1 
109:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* CALL output
111:     ST  1,-3(1)	Store fp in ghost frame for output 
112:    LDC  3,211(6)	Load of type int constant 
113:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
114:    LDA  1,-3(1)	Move the fp to the new frame 
115:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
116:    JMP  7,-111(7)	Call function 
117:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
110:    JZR  3,8(7)	IF JMP TO ELSE 
118:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL outnl
119:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
120:    LDA  1,-3(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-89(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
124:    LDC  3,1(6)	Load of type bool constant 
* IF JUMP TO ELSE
* CALL output
126:     ST  1,-3(1)	Store fp in ghost frame for output 
127:    LDC  3,13(6)	Load of type int constant 
128:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
129:    LDA  1,-3(1)	Move the fp to the new frame 
130:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
131:    JMP  7,-126(7)	Call function 
132:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
125:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
134:     ST  1,-3(1)	Store fp in ghost frame for output 
135:    LDC  3,51(6)	Load of type int constant 
136:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
137:    LDA  1,-3(1)	Move the fp to the new frame 
138:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
139:    JMP  7,-134(7)	Call function 
140:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
133:    LDA  7,7(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
141:    LDC  3,0(6)	Load of type bool constant 
* IF JUMP TO ELSE
* CALL output
143:     ST  1,-3(1)	Store fp in ghost frame for output 
144:    LDC  3,23(6)	Load of type int constant 
145:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
146:    LDA  1,-3(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-143(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
142:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
151:     ST  1,-3(1)	Store fp in ghost frame for output 
152:    LDC  3,451(6)	Load of type int constant 
153:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
154:    LDA  1,-3(1)	Move the fp to the new frame 
155:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
156:    JMP  7,-151(7)	Call function 
157:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
150:    LDA  7,7(7)	JUMP TO END 
* END IF
* CALL outnl
158:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
159:    LDA  1,-3(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-128(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
163:    LDC  3,0(6)	Load of type bool constant 
164:     ST  3,-2(1)	Assigning variable x in Local 
* BEGIN IF BLOCK
165:     LD  3,-2(1)	Load variable x into accumulator 
* IF JUMP TO ELSE
* CALL output
167:     ST  1,-3(1)	Store fp in ghost frame for output 
168:    LDC  3,44(6)	Load of type int constant 
169:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
170:    LDA  1,-3(1)	Move the fp to the new frame 
171:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
172:    JMP  7,-167(7)	Call function 
173:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
166:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
175:     ST  1,-3(1)	Store fp in ghost frame for output 
176:    LDC  3,514(6)	Load of type int constant 
177:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
178:    LDA  1,-3(1)	Move the fp to the new frame 
179:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
180:    JMP  7,-175(7)	Call function 
181:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
174:    LDA  7,7(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
182:     LD  3,-2(1)	Load variable x into accumulator 
183:    LDC  4,1(6)	Load 1 into AC1 for not operation 
184:    TNE  3,4,3	Not ! operation store in AC 
* IF JUMP TO ELSE
* CALL output
186:     ST  1,-3(1)	Store fp in ghost frame for output 
187:    LDC  3,55(6)	Load of type int constant 
188:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
189:    LDA  1,-3(1)	Move the fp to the new frame 
190:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
191:    JMP  7,-186(7)	Call function 
192:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
185:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
194:     ST  1,-3(1)	Store fp in ghost frame for output 
195:    LDC  3,1514(6)	Load of type int constant 
196:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
197:    LDA  1,-3(1)	Move the fp to the new frame 
198:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
199:    JMP  7,-194(7)	Call function 
200:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
193:    LDA  7,7(7)	JUMP TO END 
* END IF
* CALL outnl
201:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
202:    LDA  1,-3(1)	Move the fp to the new frame 
203:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
204:    JMP  7,-171(7)	Call function 
205:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
206:    LDC  3,3(6)	Load of type int constant 
207:     ST  3,-3(1)	Push left side onto temp variable stack 
208:    LDC  3,1(6)	Load of type int constant 
209:     LD  4,-3(1)	Pop left hand side into AC1 
210:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* CALL output
212:     ST  1,-3(1)	Store fp in ghost frame for output 
213:    LDC  3,987(6)	Load of type int constant 
214:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
215:    LDA  1,-3(1)	Move the fp to the new frame 
216:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
217:    JMP  7,-212(7)	Call function 
218:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
211:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
220:     ST  1,-3(1)	Store fp in ghost frame for output 
221:    LDC  3,114(6)	Load of type int constant 
222:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
223:    LDA  1,-3(1)	Move the fp to the new frame 
224:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
225:    JMP  7,-220(7)	Call function 
226:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
219:    LDA  7,7(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
227:    LDC  3,3(6)	Load of type int constant 
228:     ST  3,-3(1)	Push left side onto temp variable stack 
229:    LDC  3,1(6)	Load of type int constant 
230:     LD  4,-3(1)	Pop left hand side into AC1 
231:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* CALL output
233:     ST  1,-3(1)	Store fp in ghost frame for output 
234:    LDC  3,211(6)	Load of type int constant 
235:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
236:    LDA  1,-3(1)	Move the fp to the new frame 
237:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
238:    JMP  7,-233(7)	Call function 
239:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
232:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
241:     ST  1,-3(1)	Store fp in ghost frame for output 
242:    LDC  3,1614(6)	Load of type int constant 
243:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
244:    LDA  1,-3(1)	Move the fp to the new frame 
245:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
246:    JMP  7,-241(7)	Call function 
247:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
240:    LDA  7,7(7)	JUMP TO END 
* END IF
* CALL outnl
248:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
249:    LDA  1,-3(1)	Move the fp to the new frame 
250:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
251:    JMP  7,-218(7)	Call function 
252:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
253:    LDC  2,0(6)	Set return value to 0 
254:     LD  3,-1(1)	Load return address 
255:     LD  1,0(1)	Adjust fp 
256:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,256(7)	Jump to init [backpatch] 
* INIT
257:    LDA  1,0(0)	set first frame at end of globals 
258:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
259:    LDA  3,1(7)	Return address in ac 
260:    JMP  7,-222(7)	Jump to main 
261:   HALT  0,0,0	DONE! 
* END INIT
