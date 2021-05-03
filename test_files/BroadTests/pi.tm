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
 40:    LDC  3,340(6)	Load size of a into AC 
 41:     ST  3,-11(1)	Store size of a in data memory 
 42:    LDC  3,100(6)	Load of type int constant 
 43:     ST  3,-2(1)	Assigning variable N in Local 
 44:     LD  3,-2(1)	Load variable N into accumulator 
 45:     ST  3,-352(1)	Push left side onto temp variable stack 
 46:    LDC  3,10(6)	Load of type int constant 
 47:     LD  4,-352(1)	Pop left hand side into AC1 
 48:    MUL  3,4,3	* Multiplication Operation 
 49:     ST  3,-352(1)	Push left side onto temp variable stack 
 50:    LDC  3,3(6)	Load of type int constant 
 51:     LD  4,-352(1)	Pop left hand side into AC1 
 52:    DIV  3,4,3	/ Division operation 
 53:     ST  3,-3(1)	Assigning variable LEN in Local 
 54:    LDC  3,0(6)	Load of type int constant 
 55:     ST  3,-5(1)	Assigning variable j in Local 
* Beginning WHILE statement
 56:     LD  3,-5(1)	Load variable j into accumulator 
 57:     ST  3,-352(1)	Push left side onto temp variable stack 
 58:     LD  3,-3(1)	Load variable LEN into accumulator 
 59:     LD  4,-352(1)	Pop left hand side into AC1 
 60:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 62:    LDA  3,-12(1)	Load base address of array a 
 63:     LD  3,-5(1)	Load variable j into accumulator 
 64:     ST  3,-352(1)	Push array index onto temp stack 
 65:    LDC  3,2(6)	Load of type int constant 
 66:     LD  4,-352(1)	Pop array index into AC1 
 67:    LDA  5,-12(1)	Load base address of array a into AC2 
 68:    SUB  5,5,4	Compute offset for array 
 69:     ST  3,0(5)	Store variable a from AC into loc from AC2 
 70:     LD  4,-5(1)	Load lhs variable 
 71:    LDA  3,1(4)	++ Increment accumulator operation 
 72:     ST  3,-5(1)	Assigning variable j in Local 
* END COMPOUND
 73:    JMP  7,-18(7)	Go to L1 
 61:    JZR  3,12(7)	JMP if condition is false 
* End WHILE statement
 74:    LDC  3,0(6)	Load of type int constant 
 75:     ST  3,-9(1)	Assigning variable nines in Local 
 76:    LDC  3,0(6)	Load of type int constant 
 77:     ST  3,-10(1)	Assigning variable predigit in Local 
 78:    LDC  3,0(6)	Load of type int constant 
 79:     ST  3,-5(1)	Assigning variable j in Local 
* Beginning WHILE statement
 80:     LD  3,-5(1)	Load variable j into accumulator 
 81:     ST  3,-352(1)	Push left side onto temp variable stack 
 82:     LD  3,-2(1)	Load variable N into accumulator 
 83:     LD  4,-352(1)	Pop left hand side into AC1 
 84:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 86:    LDC  3,0(6)	Load of type int constant 
 87:     ST  3,-7(1)	Assigning variable q in Local 
 88:     LD  3,-3(1)	Load variable LEN into accumulator 
 89:     ST  3,-4(1)	Assigning variable i in Local 
* Beginning WHILE statement
 90:     LD  3,-4(1)	Load variable i into accumulator 
 91:     ST  3,-352(1)	Push left side onto temp variable stack 
 92:    LDC  3,0(6)	Load of type int constant 
 93:     LD  4,-352(1)	Pop left hand side into AC1 
 94:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
 96:    LDC  3,10(6)	Load of type int constant 
 97:     ST  3,-352(1)	Push left side onto temp variable stack 
 98:    LDA  3,-12(1)	Load base address of array a 
 99:     LD  3,-4(1)	Load variable i into accumulator 
100:     ST  3,-353(1)	Push left side onto temp variable stack 
101:    LDC  3,1(6)	Load of type int constant 
102:     LD  4,-353(1)	Pop left hand side into AC1 
103:    SUB  3,4,3	- Subtraction Operation 
104:    LDA  5,-12(1)	Load base address of array a into AC2 
105:    SUB  5,5,3	Compute offset for array 
106:     LD  3,0(5)	Load array element a from AC into loc from AC2 
107:     LD  4,-352(1)	Pop left hand side into AC1 
108:    MUL  3,4,3	* Multiplication Operation 
109:     ST  3,-352(1)	Push left side onto temp variable stack 
110:     LD  3,-7(1)	Load variable q into accumulator 
111:     ST  3,-353(1)	Push left side onto temp variable stack 
112:     LD  3,-4(1)	Load variable i into accumulator 
113:     LD  4,-353(1)	Pop left hand side into AC1 
114:    MUL  3,4,3	* Multiplication Operation 
115:     LD  4,-352(1)	Pop left hand side into AC1 
116:    ADD  3,4,3	+ Operation 
117:     ST  3,-8(1)	Assigning variable x in Local 
118:    LDA  3,-12(1)	Load base address of array a 
119:     LD  3,-4(1)	Load variable i into accumulator 
120:     ST  3,-352(1)	Push left side onto temp variable stack 
121:    LDC  3,1(6)	Load of type int constant 
122:     LD  4,-352(1)	Pop left hand side into AC1 
123:    SUB  3,4,3	- Subtraction Operation 
124:     ST  3,-352(1)	Push array index onto temp stack 
125:     LD  3,-8(1)	Load variable x into accumulator 
126:     ST  3,-353(1)	Push left side onto temp variable stack 
127:    LDC  3,2(6)	Load of type int constant 
128:     ST  3,-354(1)	Push left side onto temp variable stack 
129:     LD  3,-4(1)	Load variable i into accumulator 
130:     LD  4,-354(1)	Pop left hand side into AC1 
131:    MUL  3,4,3	* Multiplication Operation 
132:     ST  3,-354(1)	Push left side onto temp variable stack 
133:    LDC  3,1(6)	Load of type int constant 
134:     LD  4,-354(1)	Pop left hand side into AC1 
135:    SUB  3,4,3	- Subtraction Operation 
136:     LD  4,-353(1)	Pop left hand side into AC1 
137:    MOD  3,4,3	% mod operation 
138:     LD  4,-352(1)	Pop array index into AC1 
139:    LDA  5,-12(1)	Load base address of array a into AC2 
140:    SUB  5,5,4	Compute offset for array 
141:     ST  3,0(5)	Store variable a from AC into loc from AC2 
142:     LD  3,-8(1)	Load variable x into accumulator 
143:     ST  3,-352(1)	Push left side onto temp variable stack 
144:    LDC  3,2(6)	Load of type int constant 
145:     ST  3,-353(1)	Push left side onto temp variable stack 
146:     LD  3,-4(1)	Load variable i into accumulator 
147:     LD  4,-353(1)	Pop left hand side into AC1 
148:    MUL  3,4,3	* Multiplication Operation 
149:     ST  3,-353(1)	Push left side onto temp variable stack 
150:    LDC  3,1(6)	Load of type int constant 
151:     LD  4,-353(1)	Pop left hand side into AC1 
152:    SUB  3,4,3	- Subtraction Operation 
153:     LD  4,-352(1)	Pop left hand side into AC1 
154:    DIV  3,4,3	/ Division operation 
155:     ST  3,-7(1)	Assigning variable q in Local 
156:    LDC  3,1(6)	Load of type int constant 
157:     LD  4,-4(1)	Load lhs variable 
158:    SUB  3,4,3	-= operation 
159:     ST  3,-4(1)	Assigning variable i in Local 
* END COMPOUND
160:    JMP  7,-71(7)	Go to L1 
 95:    JZR  3,65(7)	JMP if condition is false 
* End WHILE statement
161:    LDA  3,-12(1)	Load base address of array a 
162:    LDC  3,0(6)	Load of type int constant 
163:     ST  3,-352(1)	Push array index onto temp stack 
164:     LD  3,-7(1)	Load variable q into accumulator 
165:     ST  3,-353(1)	Push left side onto temp variable stack 
166:    LDC  3,10(6)	Load of type int constant 
167:     LD  4,-353(1)	Pop left hand side into AC1 
168:    MOD  3,4,3	% mod operation 
169:     LD  4,-352(1)	Pop array index into AC1 
170:    LDA  5,-12(1)	Load base address of array a into AC2 
171:    SUB  5,5,4	Compute offset for array 
172:     ST  3,0(5)	Store variable a from AC into loc from AC2 
173:     LD  3,-7(1)	Load variable q into accumulator 
174:     ST  3,-352(1)	Push left side onto temp variable stack 
175:    LDC  3,10(6)	Load of type int constant 
176:     LD  4,-352(1)	Pop left hand side into AC1 
177:    DIV  3,4,3	/ Division operation 
178:     ST  3,-7(1)	Assigning variable q in Local 
* BEGIN IF BLOCK
179:     LD  3,-7(1)	Load variable q into accumulator 
180:     ST  3,-352(1)	Push left side onto temp variable stack 
181:    LDC  3,9(6)	Load of type int constant 
182:     LD  4,-352(1)	Pop left hand side into AC1 
183:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
185:     LD  4,-9(1)	Load lhs variable 
186:    LDA  3,1(4)	++ Increment accumulator operation 
187:     ST  3,-9(1)	Assigning variable nines in Local 
* END COMPOUND
* IF JUMP TO END
184:    JZR  3,4(7)	IF JMP TO ELSE 
* COMPOUND
* BEGIN IF BLOCK
189:     LD  3,-7(1)	Load variable q into accumulator 
190:     ST  3,-352(1)	Push left side onto temp variable stack 
191:    LDC  3,10(6)	Load of type int constant 
192:     LD  4,-352(1)	Pop left hand side into AC1 
193:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
* CALL output
195:     ST  1,-352(1)	Store fp in ghost frame for output 
196:     LD  3,-10(1)	Load variable predigit into accumulator 
197:     ST  3,-355(1)	Push left side onto temp variable stack 
198:    LDC  3,1(6)	Load of type int constant 
199:     LD  4,-355(1)	Pop left hand side into AC1 
200:    ADD  3,4,3	+ Operation 
201:     ST  3,-354(1)	Push parameter onto new frame 
* Begin call
202:    LDA  1,-352(1)	Move the fp to the new frame 
203:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
204:    JMP  7,-199(7)	Call function 
205:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
206:     ST  1,-352(1)	Store fp in ghost frame for outnl 
* Begin call
207:    LDA  1,-352(1)	Move the fp to the new frame 
208:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
209:    JMP  7,-176(7)	Call function 
210:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
211:    LDC  3,0(6)	Load of type int constant 
212:     ST  3,-10(1)	Assigning variable predigit in Local 
* Beginning WHILE statement
213:     LD  3,-9(1)	Load variable nines into accumulator 
214:     ST  3,-352(1)	Push left side onto temp variable stack 
215:    LDC  3,0(6)	Load of type int constant 
216:     LD  4,-352(1)	Pop left hand side into AC1 
217:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
* CALL output
219:     ST  1,-352(1)	Store fp in ghost frame for output 
220:    LDC  3,0(6)	Load of type int constant 
221:     ST  3,-354(1)	Push parameter onto new frame 
* Begin call
222:    LDA  1,-352(1)	Move the fp to the new frame 
223:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
224:    JMP  7,-219(7)	Call function 
225:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
226:     ST  1,-352(1)	Store fp in ghost frame for outnl 
* Begin call
227:    LDA  1,-352(1)	Move the fp to the new frame 
228:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
229:    JMP  7,-196(7)	Call function 
230:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
231:     LD  4,-9(1)	Load lhs variable 
232:    LDA  3,-1(4)	-- Decrement accumulator operation 
233:     ST  3,-9(1)	Assigning variable nines in Local 
* END COMPOUND
234:    JMP  7,-22(7)	Go to L1 
218:    JZR  3,16(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* IF JUMP TO END
194:    JZR  3,41(7)	IF JMP TO ELSE 
* COMPOUND
* CALL output
236:     ST  1,-352(1)	Store fp in ghost frame for output 
237:     LD  3,-10(1)	Load variable predigit into accumulator 
238:     ST  3,-354(1)	Push parameter onto new frame 
* Begin call
239:    LDA  1,-352(1)	Move the fp to the new frame 
240:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
241:    JMP  7,-236(7)	Call function 
242:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
243:     ST  1,-352(1)	Store fp in ghost frame for outnl 
* Begin call
244:    LDA  1,-352(1)	Move the fp to the new frame 
245:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
246:    JMP  7,-213(7)	Call function 
247:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
248:     LD  3,-7(1)	Load variable q into accumulator 
249:     ST  3,-10(1)	Assigning variable predigit in Local 
* Beginning WHILE statement
250:     LD  3,-9(1)	Load variable nines into accumulator 
251:     ST  3,-352(1)	Push left side onto temp variable stack 
252:    LDC  3,0(6)	Load of type int constant 
253:     LD  4,-352(1)	Pop left hand side into AC1 
254:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
* CALL output
256:     ST  1,-352(1)	Store fp in ghost frame for output 
257:    LDC  3,9(6)	Load of type int constant 
258:     ST  3,-354(1)	Push parameter onto new frame 
* Begin call
259:    LDA  1,-352(1)	Move the fp to the new frame 
260:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
261:    JMP  7,-256(7)	Call function 
262:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
263:     ST  1,-352(1)	Store fp in ghost frame for outnl 
* Begin call
264:    LDA  1,-352(1)	Move the fp to the new frame 
265:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
266:    JMP  7,-233(7)	Call function 
267:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
268:     LD  4,-9(1)	Load lhs variable 
269:    LDA  3,-1(4)	-- Decrement accumulator operation 
270:     ST  3,-9(1)	Assigning variable nines in Local 
* END COMPOUND
271:    JMP  7,-22(7)	Go to L1 
255:    JZR  3,16(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
235:    LDA  7,36(7)	JUMP TO END 
* END IF
* END COMPOUND
188:    LDA  7,83(7)	JUMP TO END 
* END IF
272:     LD  4,-5(1)	Load lhs variable 
273:    LDA  3,1(4)	++ Increment accumulator operation 
274:     ST  3,-5(1)	Assigning variable j in Local 
* END COMPOUND
275:    JMP  7,-196(7)	Go to L1 
 85:    JZR  3,190(7)	JMP if condition is false 
* End WHILE statement
* CALL output
276:     ST  1,-352(1)	Store fp in ghost frame for output 
277:     LD  3,-10(1)	Load variable predigit into accumulator 
278:     ST  3,-354(1)	Push parameter onto new frame 
* Begin call
279:    LDA  1,-352(1)	Move the fp to the new frame 
280:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
281:    JMP  7,-276(7)	Call function 
282:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
283:     ST  1,-352(1)	Store fp in ghost frame for outnl 
* Begin call
284:    LDA  1,-352(1)	Move the fp to the new frame 
285:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
286:    JMP  7,-253(7)	Call function 
287:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
288:    LDC  2,0(6)	Set return value to 0 
289:     LD  3,-1(1)	Load return address 
290:     LD  1,0(1)	Adjust fp 
291:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,291(7)	Jump to init [backpatch] 
* INIT
292:    LDA  1,0(0)	set first frame at end of globals 
293:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
294:    LDA  3,1(7)	Return address in ac 
295:    JMP  7,-257(7)	Jump to main 
296:   HALT  0,0,0	DONE! 
* END INIT
