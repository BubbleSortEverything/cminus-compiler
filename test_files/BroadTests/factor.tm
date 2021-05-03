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
* FUNCTION sqrt
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 40:     LD  3,-2(1)	Load variable x into accumulator 
 41:     ST  3,-5(1)	Push left side onto temp variable stack 
 42:    LDC  3,1(6)	Load of type int constant 
 43:     LD  4,-5(1)	Pop left hand side into AC1 
 44:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 46:    LDC  3,1(6)	Load of type int constant 
 47:    LDA  2,0(3)	Copy accumulator to return register 
 48:     LD  3,-1(1)	Load return address 
 49:     LD  1,0(1)	Adjust fp 
 50:    JMP  7,0(3)	Return 
* IF JUMP TO END
 45:    JZR  3,6(7)	IF JMP TO ELSE 
 51:    LDA  7,0(7)	JUMP TO END 
* END IF
 52:     LD  3,-2(1)	Load variable x into accumulator 
 53:     ST  3,-5(1)	Push left side onto temp variable stack 
 54:    LDC  3,2(6)	Load of type int constant 
 55:     LD  4,-5(1)	Pop left hand side into AC1 
 56:    DIV  3,4,3	/ Division operation 
 57:     ST  3,-3(1)	Assigning variable guess in Local 
 58:     LD  3,-2(1)	Load variable x into accumulator 
 59:     ST  3,-5(1)	Push left side onto temp variable stack 
 60:     LD  3,-3(1)	Load variable guess into accumulator 
 61:     LD  4,-5(1)	Pop left hand side into AC1 
 62:    DIV  3,4,3	/ Division operation 
 63:     ST  3,-5(1)	Push left side onto temp variable stack 
 64:     LD  3,-3(1)	Load variable guess into accumulator 
 65:     LD  4,-5(1)	Pop left hand side into AC1 
 66:    ADD  3,4,3	+ Operation 
 67:     ST  3,-5(1)	Push left side onto temp variable stack 
 68:    LDC  3,2(6)	Load of type int constant 
 69:     LD  4,-5(1)	Pop left hand side into AC1 
 70:    DIV  3,4,3	/ Division operation 
 71:     ST  3,-4(1)	Assigning variable newguess in Local 
* Beginning WHILE statement
 72:     LD  3,-3(1)	Load variable guess into accumulator 
 73:     ST  3,-5(1)	Push left side onto temp variable stack 
 74:     LD  3,-4(1)	Load variable newguess into accumulator 
 75:     LD  4,-5(1)	Pop left hand side into AC1 
 76:    SUB  3,4,3	- Subtraction Operation 
 77:     ST  3,-5(1)	Push left side onto temp variable stack 
 78:    LDC  3,1(6)	Load of type int constant 
 79:     LD  4,-5(1)	Pop left hand side into AC1 
 80:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
 82:     LD  3,-4(1)	Load variable newguess into accumulator 
 83:     ST  3,-3(1)	Assigning variable guess in Local 
 84:     LD  3,-2(1)	Load variable x into accumulator 
 85:     ST  3,-5(1)	Push left side onto temp variable stack 
 86:     LD  3,-3(1)	Load variable guess into accumulator 
 87:     LD  4,-5(1)	Pop left hand side into AC1 
 88:    DIV  3,4,3	/ Division operation 
 89:     ST  3,-5(1)	Push left side onto temp variable stack 
 90:     LD  3,-3(1)	Load variable guess into accumulator 
 91:     LD  4,-5(1)	Pop left hand side into AC1 
 92:    ADD  3,4,3	+ Operation 
 93:     ST  3,-5(1)	Push left side onto temp variable stack 
 94:    LDC  3,2(6)	Load of type int constant 
 95:     LD  4,-5(1)	Pop left hand side into AC1 
 96:    DIV  3,4,3	/ Division operation 
 97:     ST  3,-4(1)	Assigning variable newguess in Local 
* END COMPOUND
 98:    JMP  7,-27(7)	Go to L1 
 81:    JZR  3,17(7)	JMP if condition is false 
* End WHILE statement
* BEGIN IF BLOCK
 99:     LD  3,-4(1)	Load variable newguess into accumulator 
100:     ST  3,-5(1)	Push left side onto temp variable stack 
101:     LD  3,-4(1)	Load variable newguess into accumulator 
102:     LD  4,-5(1)	Pop left hand side into AC1 
103:    MUL  3,4,3	* Multiplication Operation 
104:     ST  3,-5(1)	Push left side onto temp variable stack 
105:     LD  3,-2(1)	Load variable x into accumulator 
106:     LD  4,-5(1)	Pop left hand side into AC1 
107:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
109:     LD  3,-4(1)	Load variable newguess into accumulator 
110:     ST  3,-5(1)	Push left side onto temp variable stack 
111:    LDC  3,1(6)	Load of type int constant 
112:     LD  4,-5(1)	Pop left hand side into AC1 
113:    SUB  3,4,3	- Subtraction Operation 
114:     ST  3,-4(1)	Assigning variable newguess in Local 
* IF JUMP TO END
108:    JZR  3,7(7)	IF JMP TO ELSE 
115:    LDA  7,0(7)	JUMP TO END 
* END IF
116:     LD  3,-4(1)	Load variable newguess into accumulator 
117:    LDA  2,0(3)	Copy accumulator to return register 
118:     LD  3,-1(1)	Load return address 
119:     LD  1,0(1)	Adjust fp 
120:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
121:    LDC  2,0(6)	Set return value to 0 
122:     LD  3,-1(1)	Load return address 
123:     LD  1,0(1)	Adjust fp 
124:    JMP  7,0(3)	Return 
* END FUNCTION sqrt
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
125:     ST  3,-1(1)	Store return address 
* COMPOUND
* Beginning WHILE statement
* CALL input
126:     ST  1,-5(1)	Store fp in ghost frame for input 
* Begin call
127:    LDA  1,-5(1)	Move the fp to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-129(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
131:     ST  3,-2(1)	Assigning variable n in Local 
132:     ST  3,-5(1)	Push left side onto temp variable stack 
133:    LDC  3,1(6)	Load of type int constant 
134:     LD  4,-5(1)	Pop left hand side into AC1 
135:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
* CALL sqrt
137:     ST  1,-5(1)	Store fp in ghost frame for sqrt 
138:     LD  3,-2(1)	Load variable n into accumulator 
139:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
140:    LDA  1,-5(1)	Move the fp to the new frame 
141:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
142:    JMP  7,-104(7)	Call function 
143:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sqrt
144:     ST  3,-4(1)	Assigning variable limit in Local 
* Beginning WHILE statement
145:     LD  3,-2(1)	Load variable n into accumulator 
146:     ST  3,-5(1)	Push left side onto temp variable stack 
147:    LDC  3,2(6)	Load of type int constant 
148:     LD  4,-5(1)	Pop left hand side into AC1 
149:    MOD  3,4,3	% mod operation 
150:     ST  3,-5(1)	Push left side onto temp variable stack 
151:    LDC  3,0(6)	Load of type int constant 
152:     LD  4,-5(1)	Pop left hand side into AC1 
153:    TEQ  3,4,3	== Equality Operation 
* COMPOUND
* CALL output
155:     ST  1,-5(1)	Store fp in ghost frame for output 
156:    LDC  3,2(6)	Load of type int constant 
157:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
158:    LDA  1,-5(1)	Move the fp to the new frame 
159:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
160:    JMP  7,-155(7)	Call function 
161:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
162:     LD  3,-2(1)	Load variable n into accumulator 
163:     ST  3,-5(1)	Push left side onto temp variable stack 
164:    LDC  3,2(6)	Load of type int constant 
165:     LD  4,-5(1)	Pop left hand side into AC1 
166:    DIV  3,4,3	/ Division operation 
167:     ST  3,-2(1)	Assigning variable n in Local 
* END COMPOUND
168:    JMP  7,-24(7)	Go to L1 
154:    JZR  3,14(7)	JMP if condition is false 
* End WHILE statement
169:    LDC  3,3(6)	Load of type int constant 
170:     ST  3,-3(1)	Assigning variable i in Local 
* Beginning WHILE statement
171:     LD  3,-3(1)	Load variable i into accumulator 
172:     ST  3,-5(1)	Push left side onto temp variable stack 
173:     LD  3,-4(1)	Load variable limit into accumulator 
174:     LD  4,-5(1)	Pop left hand side into AC1 
175:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* Beginning WHILE statement
177:     LD  3,-2(1)	Load variable n into accumulator 
178:     ST  3,-5(1)	Push left side onto temp variable stack 
179:     LD  3,-3(1)	Load variable i into accumulator 
180:     LD  4,-5(1)	Pop left hand side into AC1 
181:    MOD  3,4,3	% mod operation 
182:     ST  3,-5(1)	Push left side onto temp variable stack 
183:    LDC  3,0(6)	Load of type int constant 
184:     LD  4,-5(1)	Pop left hand side into AC1 
185:    TEQ  3,4,3	== Equality Operation 
* COMPOUND
* CALL output
187:     ST  1,-5(1)	Store fp in ghost frame for output 
188:     LD  3,-3(1)	Load variable i into accumulator 
189:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
190:    LDA  1,-5(1)	Move the fp to the new frame 
191:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
192:    JMP  7,-187(7)	Call function 
193:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
194:     LD  3,-2(1)	Load variable n into accumulator 
195:     ST  3,-5(1)	Push left side onto temp variable stack 
196:     LD  3,-3(1)	Load variable i into accumulator 
197:     LD  4,-5(1)	Pop left hand side into AC1 
198:    DIV  3,4,3	/ Division operation 
199:     ST  3,-2(1)	Assigning variable n in Local 
* CALL sqrt
200:     ST  1,-5(1)	Store fp in ghost frame for sqrt 
201:     LD  3,-2(1)	Load variable n into accumulator 
202:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
203:    LDA  1,-5(1)	Move the fp to the new frame 
204:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
205:    JMP  7,-167(7)	Call function 
206:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sqrt
207:     ST  3,-4(1)	Assigning variable limit in Local 
* END COMPOUND
208:    JMP  7,-32(7)	Go to L1 
186:    JZR  3,22(7)	JMP if condition is false 
* End WHILE statement
209:     LD  3,-3(1)	Load variable i into accumulator 
210:     ST  3,-5(1)	Push left side onto temp variable stack 
211:    LDC  3,2(6)	Load of type int constant 
212:     LD  4,-5(1)	Pop left hand side into AC1 
213:    ADD  3,4,3	+ Operation 
214:     ST  3,-3(1)	Assigning variable i in Local 
* END COMPOUND
215:    JMP  7,-45(7)	Go to L1 
176:    JZR  3,39(7)	JMP if condition is false 
* End WHILE statement
* BEGIN IF BLOCK
216:     LD  3,-2(1)	Load variable n into accumulator 
217:     ST  3,-5(1)	Push left side onto temp variable stack 
218:    LDC  3,1(6)	Load of type int constant 
219:     LD  4,-5(1)	Pop left hand side into AC1 
220:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* CALL output
222:     ST  1,-5(1)	Store fp in ghost frame for output 
223:     LD  3,-2(1)	Load variable n into accumulator 
224:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
225:    LDA  1,-5(1)	Move the fp to the new frame 
226:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
227:    JMP  7,-222(7)	Call function 
228:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
221:    JZR  3,8(7)	IF JMP TO ELSE 
229:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL outnl
230:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
231:    LDA  1,-5(1)	Move the fp to the new frame 
232:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
233:    JMP  7,-200(7)	Call function 
234:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
235:    JMP  7,-110(7)	Go to L1 
136:    JZR  3,99(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
236:    LDC  2,0(6)	Set return value to 0 
237:     LD  3,-1(1)	Load return address 
238:     LD  1,0(1)	Adjust fp 
239:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,239(7)	Jump to init [backpatch] 
* INIT
240:    LDA  1,0(0)	set first frame at end of globals 
241:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
242:    LDA  3,1(7)	Return address in ac 
243:    JMP  7,-119(7)	Jump to main 
244:   HALT  0,0,0	DONE! 
* END INIT
