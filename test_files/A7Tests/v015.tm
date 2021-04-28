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
 40:    LDC  3,0(6)	Load type char constant 
 41:    LDC  3,4(6)	Load size of a into AC 
 42:     ST  3,-2(1)	Store size of a in data memory 
 43:     ST  3,-3(1)	Assigning variable a in Local 
 44:    LDC  3,3(6)	Load size of c into AC 
 45:     ST  3,-7(1)	Store size of c in data memory 
 46:    LDC  3,0(6)	Load type char constant 
 47:    LDC  3,4(6)	Load size of b into AC 
 48:     ST  3,-11(1)	Store size of b in data memory 
 49:     ST  3,-12(1)	Assigning variable b in Local 
* CALL outputc
 50:     ST  1,-16(1)	Store fp in ghost frame for outputc 
 51:    LDA  3,-3(1)	Load base address of array a 
 52:    LDC  3,0(6)	Load type int constant 
 53:    LDA  5,-3(1)	Load base address of array a into AC2 
 54:    SUB  5,5,3	Compute offset for array 
 55:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 56:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 57:    LDA  1,-16(1)	Move the fp to the new frame 
 58:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 59:    JMP  7,-32(7)	Call function 
 60:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 61:     ST  1,-16(1)	Store fp in ghost frame for outputc 
 62:    LDA  3,-3(1)	Load base address of array a 
 63:    LDC  3,1(6)	Load type int constant 
 64:    LDA  5,-3(1)	Load base address of array a into AC2 
 65:    SUB  5,5,3	Compute offset for array 
 66:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 67:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 68:    LDA  1,-16(1)	Move the fp to the new frame 
 69:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 70:    JMP  7,-43(7)	Call function 
 71:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 72:     ST  1,-16(1)	Store fp in ghost frame for outputc 
 73:    LDA  3,-3(1)	Load base address of array a 
 74:    LDC  3,2(6)	Load type int constant 
 75:    LDA  5,-3(1)	Load base address of array a into AC2 
 76:    SUB  5,5,3	Compute offset for array 
 77:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 78:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-16(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-54(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 83:     ST  1,-16(1)	Store fp in ghost frame for outputc 
 84:    LDA  3,-3(1)	Load base address of array a 
 85:    LDC  3,3(6)	Load type int constant 
 86:    LDA  5,-3(1)	Load base address of array a into AC2 
 87:    SUB  5,5,3	Compute offset for array 
 88:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 89:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-16(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-65(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 94:     ST  1,-16(1)	Store fp in ghost frame for outputc 
 95:    LDC  3,32(6)	Load type char constant 
 96:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-16(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-72(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
101:     ST  1,-16(1)	Store fp in ghost frame for outputc 
102:    LDA  3,-12(1)	Load base address of array b 
103:    LDC  3,0(6)	Load type int constant 
104:    LDA  5,-12(1)	Load base address of array b into AC2 
105:    SUB  5,5,3	Compute offset for array 
106:     LD  3,0(5)	Load array element b from AC into loc from AC2 
107:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
108:    LDA  1,-16(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-83(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
112:     ST  1,-16(1)	Store fp in ghost frame for outputc 
113:    LDA  3,-12(1)	Load base address of array b 
114:    LDC  3,1(6)	Load type int constant 
115:    LDA  5,-12(1)	Load base address of array b into AC2 
116:    SUB  5,5,3	Compute offset for array 
117:     LD  3,0(5)	Load array element b from AC into loc from AC2 
118:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
119:    LDA  1,-16(1)	Move the fp to the new frame 
120:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
121:    JMP  7,-94(7)	Call function 
122:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
123:     ST  1,-16(1)	Store fp in ghost frame for outputc 
124:    LDA  3,-12(1)	Load base address of array b 
125:    LDC  3,2(6)	Load type int constant 
126:    LDA  5,-12(1)	Load base address of array b into AC2 
127:    SUB  5,5,3	Compute offset for array 
128:     LD  3,0(5)	Load array element b from AC into loc from AC2 
129:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
130:    LDA  1,-16(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-105(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
134:     ST  1,-16(1)	Store fp in ghost frame for outputc 
135:    LDA  3,-12(1)	Load base address of array b 
136:    LDC  3,3(6)	Load type int constant 
137:    LDA  5,-12(1)	Load base address of array b into AC2 
138:    SUB  5,5,3	Compute offset for array 
139:     LD  3,0(5)	Load array element b from AC into loc from AC2 
140:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
141:    LDA  1,-16(1)	Move the fp to the new frame 
142:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
143:    JMP  7,-116(7)	Call function 
144:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outnl
145:     ST  1,-16(1)	Store fp in ghost frame for outnl 
* Begin call
146:    LDA  1,-16(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-115(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
150:    LDA  3,-8(1)	Load base address of array c 
151:    LDA  3,-3(1)	Load base address of array a 
152:     ST  3,-8(1)	Assigning variable c in Local 
153:    LDA  3,-3(1)	Load base address of array a 
154:    LDA  3,-12(1)	Load base address of array b 
155:     ST  3,-3(1)	Assigning variable a in Local 
156:    LDA  3,-12(1)	Load base address of array b 
157:    LDA  3,-8(1)	Load base address of array c 
158:     ST  3,-12(1)	Assigning variable b in Local 
* CALL outputc
159:     ST  1,-16(1)	Store fp in ghost frame for outputc 
160:    LDA  3,-3(1)	Load base address of array a 
161:    LDC  3,0(6)	Load type int constant 
162:    LDA  5,-3(1)	Load base address of array a into AC2 
163:    SUB  5,5,3	Compute offset for array 
164:     LD  3,0(5)	Load array element a from AC into loc from AC2 
165:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
166:    LDA  1,-16(1)	Move the fp to the new frame 
167:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
168:    JMP  7,-141(7)	Call function 
169:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
170:     ST  1,-16(1)	Store fp in ghost frame for outputc 
171:    LDA  3,-3(1)	Load base address of array a 
172:    LDC  3,1(6)	Load type int constant 
173:    LDA  5,-3(1)	Load base address of array a into AC2 
174:    SUB  5,5,3	Compute offset for array 
175:     LD  3,0(5)	Load array element a from AC into loc from AC2 
176:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
177:    LDA  1,-16(1)	Move the fp to the new frame 
178:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
179:    JMP  7,-152(7)	Call function 
180:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
181:     ST  1,-16(1)	Store fp in ghost frame for outputc 
182:    LDA  3,-3(1)	Load base address of array a 
183:    LDC  3,2(6)	Load type int constant 
184:    LDA  5,-3(1)	Load base address of array a into AC2 
185:    SUB  5,5,3	Compute offset for array 
186:     LD  3,0(5)	Load array element a from AC into loc from AC2 
187:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
188:    LDA  1,-16(1)	Move the fp to the new frame 
189:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
190:    JMP  7,-163(7)	Call function 
191:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
192:     ST  1,-16(1)	Store fp in ghost frame for outputc 
193:    LDA  3,-3(1)	Load base address of array a 
194:    LDC  3,3(6)	Load type int constant 
195:    LDA  5,-3(1)	Load base address of array a into AC2 
196:    SUB  5,5,3	Compute offset for array 
197:     LD  3,0(5)	Load array element a from AC into loc from AC2 
198:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
199:    LDA  1,-16(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-174(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
203:     ST  1,-16(1)	Store fp in ghost frame for outputc 
204:    LDC  3,32(6)	Load type char constant 
205:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
206:    LDA  1,-16(1)	Move the fp to the new frame 
207:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
208:    JMP  7,-181(7)	Call function 
209:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
210:     ST  1,-16(1)	Store fp in ghost frame for outputc 
211:    LDA  3,-12(1)	Load base address of array b 
212:    LDC  3,0(6)	Load type int constant 
213:    LDA  5,-12(1)	Load base address of array b into AC2 
214:    SUB  5,5,3	Compute offset for array 
215:     LD  3,0(5)	Load array element b from AC into loc from AC2 
216:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
217:    LDA  1,-16(1)	Move the fp to the new frame 
218:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
219:    JMP  7,-192(7)	Call function 
220:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
221:     ST  1,-16(1)	Store fp in ghost frame for outputc 
222:    LDA  3,-12(1)	Load base address of array b 
223:    LDC  3,1(6)	Load type int constant 
224:    LDA  5,-12(1)	Load base address of array b into AC2 
225:    SUB  5,5,3	Compute offset for array 
226:     LD  3,0(5)	Load array element b from AC into loc from AC2 
227:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
228:    LDA  1,-16(1)	Move the fp to the new frame 
229:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
230:    JMP  7,-203(7)	Call function 
231:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
232:     ST  1,-16(1)	Store fp in ghost frame for outputc 
233:    LDA  3,-12(1)	Load base address of array b 
234:    LDC  3,2(6)	Load type int constant 
235:    LDA  5,-12(1)	Load base address of array b into AC2 
236:    SUB  5,5,3	Compute offset for array 
237:     LD  3,0(5)	Load array element b from AC into loc from AC2 
238:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
239:    LDA  1,-16(1)	Move the fp to the new frame 
240:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
241:    JMP  7,-214(7)	Call function 
242:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
243:     ST  1,-16(1)	Store fp in ghost frame for outputc 
244:    LDA  3,-12(1)	Load base address of array b 
245:    LDC  3,3(6)	Load type int constant 
246:    LDA  5,-12(1)	Load base address of array b into AC2 
247:    SUB  5,5,3	Compute offset for array 
248:     LD  3,0(5)	Load array element b from AC into loc from AC2 
249:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
250:    LDA  1,-16(1)	Move the fp to the new frame 
251:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
252:    JMP  7,-225(7)	Call function 
253:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outnl
254:     ST  1,-16(1)	Store fp in ghost frame for outnl 
* Begin call
255:    LDA  1,-16(1)	Move the fp to the new frame 
256:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
257:    JMP  7,-224(7)	Call function 
258:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
259:    LDC  2,0(6)	Set return value to 0 
260:     LD  3,-1(1)	Load return address 
261:     LD  1,0(1)	Adjust fp 
262:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,262(7)	Jump to init [backpatch] 
* INIT
263:    LDA  1,-10(0)	set first frame at end of globals 
264:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
265:    LDA  3,1(7)	Return address in ac 
266:    JMP  7,-228(7)	Jump to main 
267:   HALT  0,0,0	DONE! 
* END INIT
