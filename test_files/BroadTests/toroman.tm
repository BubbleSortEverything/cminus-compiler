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
* FUNCTION roman
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,13(6)	Load size of value into AC 
 41:     ST  3,-6(1)	Store size of value in data memory 
 42:    LDC  3,0(6)	Load of type char constant 
 43:    LDC  3,26(6)	Load size of letters into AC 
 44:     ST  3,-20(1)	Store size of letters in data memory 
 45:     ST  3,-21(1)	Assigning variable letters in Local 
 46:    LDC  3,100(6)	Load size of s into AC 
 47:     ST  3,-47(1)	Store size of s in data memory 
 48:    LDC  3,100(6)	Load of type int constant 
 49:     ST  3,-3(1)	Assigning variable b in Local 
 50:    LDA  3,-7(1)	Load base address of array value 
 51:    LDC  3,0(6)	Load of type int constant 
 52:     ST  3,-4(1)	Assigning variable j in Local 
 53:     ST  3,-151(1)	Push array index onto temp stack 
 54:    LDC  3,1000(6)	Load of type int constant 
 55:     LD  4,-151(1)	Pop array index into AC1 
 56:    LDA  5,-7(1)	Load base address of array value into AC2 
 57:    SUB  5,5,4	Compute offset for array 
 58:     ST  3,0(5)	Store variable value from AC into loc from AC2 
 59:    LDC  3,0(6)	Load of type int constant 
 60:    LDC  3,3(6)	Load of type int constant 
* COMPOUND
 61:    LDA  3,-7(1)	Load base address of array value 
 62:     LD  4,-4(1)	Load lhs variable 
 63:    LDA  3,1(4)	++ Increment accumulator operation 
 64:     ST  3,-4(1)	Assigning variable j in Local 
 65:     ST  3,-151(1)	Push array index onto temp stack 
 66:    LDC  3,9(6)	Load of type int constant 
 67:     ST  3,-152(1)	Push left side onto temp variable stack 
 68:     LD  3,-3(1)	Load variable b into accumulator 
 69:     LD  4,-152(1)	Pop left hand side into AC1 
 70:    MUL  3,4,3	* Multiplication Operation 
 71:     LD  4,-151(1)	Pop array index into AC1 
 72:    LDA  5,-7(1)	Load base address of array value into AC2 
 73:    SUB  5,5,4	Compute offset for array 
 74:     ST  3,0(5)	Store variable value from AC into loc from AC2 
 75:    LDA  3,-7(1)	Load base address of array value 
 76:     LD  4,-4(1)	Load lhs variable 
 77:    LDA  3,1(4)	++ Increment accumulator operation 
 78:     ST  3,-4(1)	Assigning variable j in Local 
 79:     ST  3,-151(1)	Push array index onto temp stack 
 80:    LDC  3,5(6)	Load of type int constant 
 81:     ST  3,-152(1)	Push left side onto temp variable stack 
 82:     LD  3,-3(1)	Load variable b into accumulator 
 83:     LD  4,-152(1)	Pop left hand side into AC1 
 84:    MUL  3,4,3	* Multiplication Operation 
 85:     LD  4,-151(1)	Pop array index into AC1 
 86:    LDA  5,-7(1)	Load base address of array value into AC2 
 87:    SUB  5,5,4	Compute offset for array 
 88:     ST  3,0(5)	Store variable value from AC into loc from AC2 
 89:    LDA  3,-7(1)	Load base address of array value 
 90:     LD  4,-4(1)	Load lhs variable 
 91:    LDA  3,1(4)	++ Increment accumulator operation 
 92:     ST  3,-4(1)	Assigning variable j in Local 
 93:     ST  3,-151(1)	Push array index onto temp stack 
 94:    LDC  3,4(6)	Load of type int constant 
 95:     ST  3,-152(1)	Push left side onto temp variable stack 
 96:     LD  3,-3(1)	Load variable b into accumulator 
 97:     LD  4,-152(1)	Pop left hand side into AC1 
 98:    MUL  3,4,3	* Multiplication Operation 
 99:     LD  4,-151(1)	Pop array index into AC1 
100:    LDA  5,-7(1)	Load base address of array value into AC2 
101:    SUB  5,5,4	Compute offset for array 
102:     ST  3,0(5)	Store variable value from AC into loc from AC2 
103:    LDA  3,-7(1)	Load base address of array value 
104:     LD  4,-4(1)	Load lhs variable 
105:    LDA  3,1(4)	++ Increment accumulator operation 
106:     ST  3,-4(1)	Assigning variable j in Local 
107:     ST  3,-151(1)	Push array index onto temp stack 
108:     LD  3,-3(1)	Load variable b into accumulator 
109:     LD  4,-151(1)	Pop array index into AC1 
110:    LDA  5,-7(1)	Load base address of array value into AC2 
111:    SUB  5,5,4	Compute offset for array 
112:     ST  3,0(5)	Store variable value from AC into loc from AC2 
113:    LDC  3,10(6)	Load of type int constant 
114:     LD  4,-3(1)	Load lhs variable 
115:    DIV  3,4,3	+= operation 
116:     ST  3,-3(1)	Assigning variable b in Local 
* END COMPOUND
117:    LDC  3,0(6)	Load of type int constant 
118:     ST  3,-5(1)	Assigning variable i in Local 
119:    LDC  3,0(6)	Load of type int constant 
120:     ST  3,-148(1)	Assigning variable sloc in Local 
* Beginning WHILE statement
121:    LDA  3,-7(1)	Load base address of array value 
122:     LD  3,-5(1)	Load variable i into accumulator 
123:    LDA  5,-7(1)	Load base address of array value into AC2 
124:    SUB  5,5,3	Compute offset for array 
125:     LD  3,0(5)	Load array element value from AC into loc from AC2 
126:     ST  3,-151(1)	Push left side onto temp variable stack 
127:    LDC  3,0(6)	Load of type int constant 
128:     LD  4,-151(1)	Pop left hand side into AC1 
129:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
* Beginning WHILE statement
131:     LD  3,-2(1)	Load variable n into accumulator 
132:     ST  3,-151(1)	Push left side onto temp variable stack 
133:    LDA  3,-7(1)	Load base address of array value 
134:     LD  3,-5(1)	Load variable i into accumulator 
135:    LDA  5,-7(1)	Load base address of array value into AC2 
136:    SUB  5,5,3	Compute offset for array 
137:     LD  3,0(5)	Load array element value from AC into loc from AC2 
138:     LD  4,-151(1)	Pop left hand side into AC1 
139:    TGE  3,4,3	GEQ >- operation store in AC 
* COMPOUND
141:    LDA  3,-7(1)	Load base address of array value 
142:     LD  3,-5(1)	Load variable i into accumulator 
143:    LDA  5,-7(1)	Load base address of array value into AC2 
144:    SUB  5,5,3	Compute offset for array 
145:     LD  3,0(5)	Load array element value from AC into loc from AC2 
146:     LD  4,-2(1)	Load lhs variable 
147:    SUB  3,4,3	-= operation 
148:     ST  3,-2(1)	Assigning variable n in Parameter 
149:    LDA  3,-48(1)	Load base address of array s 
150:     LD  3,-148(1)	Load variable sloc into accumulator 
151:     ST  3,-151(1)	Push array index onto temp stack 
152:    LDA  3,-21(1)	Load base address of array letters 
153:    LDC  3,2(6)	Load of type int constant 
154:     ST  3,-152(1)	Push left side onto temp variable stack 
155:     LD  3,-5(1)	Load variable i into accumulator 
156:     LD  4,-152(1)	Pop left hand side into AC1 
157:    MUL  3,4,3	* Multiplication Operation 
158:    LDA  5,-21(1)	Load base address of array letters into AC2 
159:    SUB  5,5,3	Compute offset for array 
160:     LD  3,0(5)	Load array element letters from AC into loc from AC2 
161:     LD  4,-151(1)	Pop array index into AC1 
162:    LDA  5,-48(1)	Load base address of array s into AC2 
163:    SUB  5,5,4	Compute offset for array 
164:     ST  3,0(5)	Store variable s from AC into loc from AC2 
165:     LD  4,-148(1)	Load lhs variable 
166:    LDA  3,1(4)	++ Increment accumulator operation 
167:     ST  3,-148(1)	Assigning variable sloc in Local 
* BEGIN IF BLOCK
168:    LDA  3,-21(1)	Load base address of array letters 
169:    LDC  3,2(6)	Load of type int constant 
170:     ST  3,-151(1)	Push left side onto temp variable stack 
171:     LD  3,-5(1)	Load variable i into accumulator 
172:     LD  4,-151(1)	Pop left hand side into AC1 
173:    MUL  3,4,3	* Multiplication Operation 
174:     ST  3,-151(1)	Push left side onto temp variable stack 
175:    LDC  3,1(6)	Load of type int constant 
176:     LD  4,-151(1)	Pop left hand side into AC1 
177:    ADD  3,4,3	+ Operation 
178:    LDA  5,-21(1)	Load base address of array letters into AC2 
179:    SUB  5,5,3	Compute offset for array 
180:     LD  3,0(5)	Load array element letters from AC into loc from AC2 
181:     ST  3,-151(1)	Push left side onto temp variable stack 
182:    LDC  3,32(6)	Load of type char constant 
183:     LD  4,-151(1)	Pop left hand side into AC1 
184:    TNE  3,4,3	!= Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
186:    LDA  3,-48(1)	Load base address of array s 
187:     LD  3,-148(1)	Load variable sloc into accumulator 
188:     ST  3,-151(1)	Push array index onto temp stack 
189:    LDA  3,-21(1)	Load base address of array letters 
190:    LDC  3,2(6)	Load of type int constant 
191:     ST  3,-152(1)	Push left side onto temp variable stack 
192:     LD  3,-5(1)	Load variable i into accumulator 
193:     LD  4,-152(1)	Pop left hand side into AC1 
194:    MUL  3,4,3	* Multiplication Operation 
195:     ST  3,-152(1)	Push left side onto temp variable stack 
196:    LDC  3,1(6)	Load of type int constant 
197:     LD  4,-152(1)	Pop left hand side into AC1 
198:    ADD  3,4,3	+ Operation 
199:    LDA  5,-21(1)	Load base address of array letters into AC2 
200:    SUB  5,5,3	Compute offset for array 
201:     LD  3,0(5)	Load array element letters from AC into loc from AC2 
202:     LD  4,-151(1)	Pop array index into AC1 
203:    LDA  5,-48(1)	Load base address of array s into AC2 
204:    SUB  5,5,4	Compute offset for array 
205:     ST  3,0(5)	Store variable s from AC into loc from AC2 
206:     LD  4,-148(1)	Load lhs variable 
207:    LDA  3,1(4)	++ Increment accumulator operation 
208:     ST  3,-148(1)	Assigning variable sloc in Local 
* END COMPOUND
* IF JUMP TO END
185:    JZR  3,24(7)	IF JMP TO ELSE 
209:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
210:    JMP  7,-80(7)	Go to L1 
140:    JZR  3,70(7)	JMP if condition is false 
* End WHILE statement
211:     LD  4,-5(1)	Load lhs variable 
212:    LDA  3,1(4)	++ Increment accumulator operation 
213:     ST  3,-5(1)	Assigning variable i in Local 
* END COMPOUND
214:    JMP  7,-94(7)	Go to L1 
130:    JZR  3,84(7)	JMP if condition is false 
* End WHILE statement
215:    LDC  3,0(6)	Load of type int constant 
216:     LD  3,-148(1)	Load variable sloc into accumulator 
* CALL outputc
217:     ST  1,-151(1)	Store fp in ghost frame for outputc 
218:    LDA  3,-48(1)	Load base address of array s 
219:     LD  3,-149(1)	Load variable i into accumulator 
220:    LDA  5,-48(1)	Load base address of array s into AC2 
221:    SUB  5,5,3	Compute offset for array 
222:     LD  3,0(5)	Load array element s from AC into loc from AC2 
223:     ST  3,-153(1)	Push parameter onto new frame 
* Begin call
224:    LDA  1,-151(1)	Move the fp to the new frame 
225:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
226:    JMP  7,-199(7)	Call function 
227:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* END COMPOUND
* Add standard closing in case there is no return statement
228:    LDC  2,0(6)	Set return value to 0 
229:     LD  3,-1(1)	Load return address 
230:     LD  1,0(1)	Adjust fp 
231:    JMP  7,0(3)	Return 
* END FUNCTION roman
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
232:     ST  3,-1(1)	Store return address 
* COMPOUND
* Beginning WHILE statement
233:    LDC  3,1(6)	Load of type bool constant 
* COMPOUND
* CALL input
235:     ST  1,-3(1)	Store fp in ghost frame for input 
* Begin call
236:    LDA  1,-3(1)	Move the fp to the new frame 
237:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
238:    JMP  7,-238(7)	Call function 
239:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
240:     ST  3,-2(1)	Assigning variable n in Local 
* BEGIN IF BLOCK
241:     LD  3,-2(1)	Load variable n into accumulator 
242:     ST  3,-3(1)	Push left side onto temp variable stack 
243:    LDC  3,0(6)	Load of type int constant 
244:     LD  4,-3(1)	Pop left hand side into AC1 
245:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* IF JUMP TO END
246:    JZR  3,2(7)	IF JMP TO ELSE 
248:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL roman
249:     ST  1,-3(1)	Store fp in ghost frame for roman 
250:     LD  3,-2(1)	Load variable n into accumulator 
251:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
252:    LDA  1,-3(1)	Move the fp to the new frame 
253:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
254:    JMP  7,-216(7)	Call function 
255:    LDA  3,0(2)	Save return result in accumulator 
* END CALL roman
* CALL outnl
256:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
257:    LDA  1,-3(1)	Move the fp to the new frame 
258:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
259:    JMP  7,-226(7)	Call function 
260:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
261:    JMP  7,-29(7)	Go to L1 
234:    JZR  3,27(7)	JMP if condition is false 
247:    JMP  0,14(7)	Break statement backpatch jump 
* End WHILE statement
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
266:    LDA  1,-27(0)	set first frame at end of globals 
267:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
268:    LDA  3,1(7)	Return address in ac 
269:    JMP  7,-38(7)	Jump to main 
270:   HALT  0,0,0	DONE! 
* END INIT
