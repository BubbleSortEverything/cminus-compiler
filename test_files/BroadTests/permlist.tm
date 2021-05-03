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
* FUNCTION put
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:     LD  3,-2(1)	Load base address of array p 
 41:    LDC  3,1(6)	Load of type int constant 
 42:     LD  5,-2(1)	Load base address of array p into AC2 
 43:    SUB  5,5,3	Compute offset for array 
 44:     LD  3,0(5)	Load array element p from AC into loc from AC2 
 45:     ST  3,-4(1)	Assigning variable sum in Local 
 46:    LDC  3,2(6)	Load of type int constant 
 47:     ST  3,-3(1)	Assigning variable j in Local 
* Beginning WHILE statement
 48:     LD  3,-3(1)	Load variable j into accumulator 
 49:     ST  3,-5(1)	Push left side onto temp variable stack 
 50:     LD  3,0(0)	Load variable n into accumulator 
 51:     LD  4,-5(1)	Pop left hand side into AC1 
 52:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
 54:     LD  3,-4(1)	Load variable sum into accumulator 
 55:     ST  3,-5(1)	Push left side onto temp variable stack 
 56:    LDC  3,10(6)	Load of type int constant 
 57:     LD  4,-5(1)	Pop left hand side into AC1 
 58:    MUL  3,4,3	* Multiplication Operation 
 59:     ST  3,-5(1)	Push left side onto temp variable stack 
 60:     LD  3,-2(1)	Load base address of array p 
 61:     LD  3,-3(1)	Load variable j into accumulator 
 62:     LD  5,-2(1)	Load base address of array p into AC2 
 63:    SUB  5,5,3	Compute offset for array 
 64:     LD  3,0(5)	Load array element p from AC into loc from AC2 
 65:     LD  4,-5(1)	Pop left hand side into AC1 
 66:    ADD  3,4,3	+ Operation 
 67:     ST  3,-4(1)	Assigning variable sum in Local 
 68:     LD  3,-3(1)	Load variable j into accumulator 
 69:     ST  3,-5(1)	Push left side onto temp variable stack 
 70:    LDC  3,1(6)	Load of type int constant 
 71:     LD  4,-5(1)	Pop left hand side into AC1 
 72:    ADD  3,4,3	+ Operation 
 73:     ST  3,-3(1)	Assigning variable j in Local 
* END COMPOUND
 74:    JMP  7,-27(7)	Go to L1 
 53:    JZR  3,21(7)	JMP if condition is false 
* End WHILE statement
* CALL output
 75:     ST  1,-5(1)	Store fp in ghost frame for output 
 76:     LD  3,-4(1)	Load variable sum into accumulator 
 77:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 78:    LDA  1,-5(1)	Move the fp to the new frame 
 79:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 80:    JMP  7,-75(7)	Call function 
 81:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 82:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
 83:    LDA  1,-5(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-52(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 87:    LDC  2,0(6)	Set return value to 0 
 88:     LD  3,-1(1)	Load return address 
 89:     LD  1,0(1)	Adjust fp 
 90:    JMP  7,0(3)	Return 
* END FUNCTION put
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 91:     ST  3,-1(1)	Store return address 
* COMPOUND
 92:    LDC  3,20(6)	Load size of p into AC 
 93:     ST  3,-2(1)	Store size of p in data memory 
* CALL input
 94:     ST  1,-28(1)	Store fp in ghost frame for input 
* Begin call
 95:    LDA  1,-28(1)	Move the fp to the new frame 
 96:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 97:    JMP  7,-97(7)	Call function 
 98:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
 99:     ST  3,0(0)	Assigning variable n in Global 
100:    LDC  3,0(6)	Load of type int constant 
101:     ST  3,-24(1)	Assigning variable j in Local 
* Beginning WHILE statement
102:     LD  3,-24(1)	Load variable j into accumulator 
103:     ST  3,-28(1)	Push left side onto temp variable stack 
104:     LD  3,0(0)	Load variable n into accumulator 
105:     LD  4,-28(1)	Pop left hand side into AC1 
106:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
108:    LDA  3,-3(1)	Load base address of array p 
109:     LD  3,-24(1)	Load variable j into accumulator 
110:     ST  3,-28(1)	Push array index onto temp stack 
111:     LD  3,-24(1)	Load variable j into accumulator 
112:     LD  4,-28(1)	Pop array index into AC1 
113:    LDA  5,-3(1)	Load base address of array p into AC2 
114:    SUB  5,5,4	Compute offset for array 
115:     ST  3,0(5)	Store variable p from AC into loc from AC2 
116:     LD  3,-24(1)	Load variable j into accumulator 
117:     ST  3,-28(1)	Push left side onto temp variable stack 
118:    LDC  3,1(6)	Load of type int constant 
119:     LD  4,-28(1)	Pop left hand side into AC1 
120:    ADD  3,4,3	+ Operation 
121:     ST  3,-24(1)	Assigning variable j in Local 
* END COMPOUND
122:    JMP  7,-21(7)	Go to L1 
107:    JZR  3,15(7)	JMP if condition is false 
* End WHILE statement
123:    LDC  3,1(6)	Load of type int constant 
124:     ST  3,-23(1)	Assigning variable i in Local 
* Beginning WHILE statement
125:     LD  3,-23(1)	Load variable i into accumulator 
126:     ST  3,-28(1)	Push left side onto temp variable stack 
127:    LDC  3,0(6)	Load of type int constant 
128:     LD  4,-28(1)	Pop left hand side into AC1 
129:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
* CALL put
131:     ST  1,-28(1)	Store fp in ghost frame for put 
132:    LDA  3,-3(1)	Load base address of array p 
133:     ST  3,-30(1)	Push parameter onto new frame 
* Begin call
134:    LDA  1,-28(1)	Move the fp to the new frame 
135:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
136:    JMP  7,-98(7)	Call function 
137:    LDA  3,0(2)	Save return result in accumulator 
* END CALL put
138:     LD  3,0(0)	Load variable n into accumulator 
139:     ST  3,-28(1)	Push left side onto temp variable stack 
140:    LDC  3,1(6)	Load of type int constant 
141:     LD  4,-28(1)	Pop left hand side into AC1 
142:    SUB  3,4,3	- Subtraction Operation 
143:     ST  3,-23(1)	Assigning variable i in Local 
* Beginning WHILE statement
144:    LDA  3,-3(1)	Load base address of array p 
145:     LD  3,-23(1)	Load variable i into accumulator 
146:    LDA  5,-3(1)	Load base address of array p into AC2 
147:    SUB  5,5,3	Compute offset for array 
148:     LD  3,0(5)	Load array element p from AC into loc from AC2 
149:     ST  3,-28(1)	Push left side onto temp variable stack 
150:    LDA  3,-3(1)	Load base address of array p 
151:     LD  3,-23(1)	Load variable i into accumulator 
152:     ST  3,-29(1)	Push left side onto temp variable stack 
153:    LDC  3,1(6)	Load of type int constant 
154:     LD  4,-29(1)	Pop left hand side into AC1 
155:    ADD  3,4,3	+ Operation 
156:    LDA  5,-3(1)	Load base address of array p into AC2 
157:    SUB  5,5,3	Compute offset for array 
158:     LD  3,0(5)	Load array element p from AC into loc from AC2 
159:     LD  4,-28(1)	Pop left hand side into AC1 
160:    TGT  3,4,3	Greather than > operation store in AC 
162:     LD  3,-23(1)	Load variable i into accumulator 
163:     ST  3,-28(1)	Push left side onto temp variable stack 
164:    LDC  3,1(6)	Load of type int constant 
165:     LD  4,-28(1)	Pop left hand side into AC1 
166:    SUB  3,4,3	- Subtraction Operation 
167:     ST  3,-23(1)	Assigning variable i in Local 
168:    JMP  7,-25(7)	Go to L1 
161:    JZR  3,7(7)	JMP if condition is false 
* End WHILE statement
169:     LD  3,0(0)	Load variable n into accumulator 
170:     ST  3,-24(1)	Assigning variable j in Local 
* Beginning WHILE statement
171:    LDA  3,-3(1)	Load base address of array p 
172:     LD  3,-23(1)	Load variable i into accumulator 
173:    LDA  5,-3(1)	Load base address of array p into AC2 
174:    SUB  5,5,3	Compute offset for array 
175:     LD  3,0(5)	Load array element p from AC into loc from AC2 
176:     ST  3,-28(1)	Push left side onto temp variable stack 
177:    LDA  3,-3(1)	Load base address of array p 
178:     LD  3,-24(1)	Load variable j into accumulator 
179:    LDA  5,-3(1)	Load base address of array p into AC2 
180:    SUB  5,5,3	Compute offset for array 
181:     LD  3,0(5)	Load array element p from AC into loc from AC2 
182:     LD  4,-28(1)	Pop left hand side into AC1 
183:    TGT  3,4,3	Greather than > operation store in AC 
185:     LD  3,-24(1)	Load variable j into accumulator 
186:     ST  3,-28(1)	Push left side onto temp variable stack 
187:    LDC  3,1(6)	Load of type int constant 
188:     LD  4,-28(1)	Pop left hand side into AC1 
189:    SUB  3,4,3	- Subtraction Operation 
190:     ST  3,-24(1)	Assigning variable j in Local 
191:    JMP  7,-21(7)	Go to L1 
184:    JZR  3,7(7)	JMP if condition is false 
* End WHILE statement
192:    LDA  3,-3(1)	Load base address of array p 
193:     LD  3,-23(1)	Load variable i into accumulator 
194:    LDA  5,-3(1)	Load base address of array p into AC2 
195:    SUB  5,5,3	Compute offset for array 
196:     LD  3,0(5)	Load array element p from AC into loc from AC2 
197:     ST  3,-27(1)	Assigning variable tmp in Local 
198:    LDA  3,-3(1)	Load base address of array p 
199:     LD  3,-23(1)	Load variable i into accumulator 
200:     ST  3,-28(1)	Push array index onto temp stack 
201:    LDA  3,-3(1)	Load base address of array p 
202:     LD  3,-24(1)	Load variable j into accumulator 
203:    LDA  5,-3(1)	Load base address of array p into AC2 
204:    SUB  5,5,3	Compute offset for array 
205:     LD  3,0(5)	Load array element p from AC into loc from AC2 
206:     LD  4,-28(1)	Pop array index into AC1 
207:    LDA  5,-3(1)	Load base address of array p into AC2 
208:    SUB  5,5,4	Compute offset for array 
209:     ST  3,0(5)	Store variable p from AC into loc from AC2 
210:    LDA  3,-3(1)	Load base address of array p 
211:     LD  3,-24(1)	Load variable j into accumulator 
212:     ST  3,-28(1)	Push array index onto temp stack 
213:     LD  3,-27(1)	Load variable tmp into accumulator 
214:     LD  4,-28(1)	Pop array index into AC1 
215:    LDA  5,-3(1)	Load base address of array p into AC2 
216:    SUB  5,5,4	Compute offset for array 
217:     ST  3,0(5)	Store variable p from AC into loc from AC2 
218:     LD  3,0(0)	Load variable n into accumulator 
219:     ST  3,-25(1)	Assigning variable r in Local 
220:     LD  3,-23(1)	Load variable i into accumulator 
221:     ST  3,-28(1)	Push left side onto temp variable stack 
222:    LDC  3,1(6)	Load of type int constant 
223:     LD  4,-28(1)	Pop left hand side into AC1 
224:    ADD  3,4,3	+ Operation 
225:     ST  3,-26(1)	Assigning variable s in Local 
* Beginning WHILE statement
226:     LD  3,-25(1)	Load variable r into accumulator 
227:     ST  3,-28(1)	Push left side onto temp variable stack 
228:     LD  3,-26(1)	Load variable s into accumulator 
229:     LD  4,-28(1)	Pop left hand side into AC1 
230:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
232:    LDA  3,-3(1)	Load base address of array p 
233:     LD  3,-25(1)	Load variable r into accumulator 
234:    LDA  5,-3(1)	Load base address of array p into AC2 
235:    SUB  5,5,3	Compute offset for array 
236:     LD  3,0(5)	Load array element p from AC into loc from AC2 
237:     ST  3,-27(1)	Assigning variable tmp in Local 
238:    LDA  3,-3(1)	Load base address of array p 
239:     LD  3,-25(1)	Load variable r into accumulator 
240:     ST  3,-28(1)	Push array index onto temp stack 
241:    LDA  3,-3(1)	Load base address of array p 
242:     LD  3,-26(1)	Load variable s into accumulator 
243:    LDA  5,-3(1)	Load base address of array p into AC2 
244:    SUB  5,5,3	Compute offset for array 
245:     LD  3,0(5)	Load array element p from AC into loc from AC2 
246:     LD  4,-28(1)	Pop array index into AC1 
247:    LDA  5,-3(1)	Load base address of array p into AC2 
248:    SUB  5,5,4	Compute offset for array 
249:     ST  3,0(5)	Store variable p from AC into loc from AC2 
250:    LDA  3,-3(1)	Load base address of array p 
251:     LD  3,-26(1)	Load variable s into accumulator 
252:     ST  3,-28(1)	Push array index onto temp stack 
253:     LD  3,-27(1)	Load variable tmp into accumulator 
254:     LD  4,-28(1)	Pop array index into AC1 
255:    LDA  5,-3(1)	Load base address of array p into AC2 
256:    SUB  5,5,4	Compute offset for array 
257:     ST  3,0(5)	Store variable p from AC into loc from AC2 
258:     LD  3,-25(1)	Load variable r into accumulator 
259:     ST  3,-28(1)	Push left side onto temp variable stack 
260:    LDC  3,1(6)	Load of type int constant 
261:     LD  4,-28(1)	Pop left hand side into AC1 
262:    SUB  3,4,3	- Subtraction Operation 
263:     ST  3,-25(1)	Assigning variable r in Local 
264:     LD  3,-26(1)	Load variable s into accumulator 
265:     ST  3,-28(1)	Push left side onto temp variable stack 
266:    LDC  3,1(6)	Load of type int constant 
267:     LD  4,-28(1)	Pop left hand side into AC1 
268:    ADD  3,4,3	+ Operation 
269:     ST  3,-26(1)	Assigning variable s in Local 
* END COMPOUND
270:    JMP  7,-45(7)	Go to L1 
231:    JZR  3,39(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
271:    JMP  7,-147(7)	Go to L1 
130:    JZR  3,141(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
272:    LDC  2,0(6)	Set return value to 0 
273:     LD  3,-1(1)	Load return address 
274:     LD  1,0(1)	Adjust fp 
275:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,275(7)	Jump to init [backpatch] 
* INIT
276:    LDA  1,-1(0)	set first frame at end of globals 
277:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
278:    LDA  3,1(7)	Return address in ac 
279:    JMP  7,-189(7)	Jump to main 
280:   HALT  0,0,0	DONE! 
* END INIT
