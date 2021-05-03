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
 40:    LDC  3,1(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable i in Local 
 42:    LDC  3,1(6)	Load of type int constant 
 43:     ST  3,-8(1)	Assigning variable min in Local 
* Beginning WHILE statement
 44:     LD  3,-2(1)	Load variable i into accumulator 
 45:     ST  3,-11(1)	Push left side onto temp variable stack 
 46:    LDC  3,2000(6)	Load of type int constant 
 47:     LD  4,-11(1)	Pop left hand side into AC1 
 48:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 50:    LDC  3,2(6)	Load of type int constant 
 51:     ST  3,-3(1)	Assigning variable m in Local 
 52:     LD  3,-3(1)	Load variable m into accumulator 
 53:     ST  3,-11(1)	Push left side onto temp variable stack 
 54:     LD  3,-3(1)	Load variable m into accumulator 
 55:     ST  3,-12(1)	Push left side onto temp variable stack 
 56:    LDC  3,1(6)	Load of type int constant 
 57:     LD  4,-12(1)	Pop left hand side into AC1 
 58:    ADD  3,4,3	+ Operation 
 59:     LD  4,-11(1)	Pop left hand side into AC1 
 60:    MUL  3,4,3	* Multiplication Operation 
 61:     ST  3,-11(1)	Push left side onto temp variable stack 
 62:    LDC  3,2(6)	Load of type int constant 
 63:     LD  4,-11(1)	Pop left hand side into AC1 
 64:    DIV  3,4,3	/ Division operation 
 65:     ST  3,-6(1)	Assigning variable tm in Local 
 66:     LD  3,-2(1)	Load variable i into accumulator 
 67:     ST  3,-11(1)	Push left side onto temp variable stack 
 68:     LD  3,-3(1)	Load variable m into accumulator 
 69:     ST  3,-12(1)	Push left side onto temp variable stack 
 70:    LDC  3,1(6)	Load of type int constant 
 71:     LD  4,-12(1)	Pop left hand side into AC1 
 72:    ADD  3,4,3	+ Operation 
 73:     LD  4,-11(1)	Pop left hand side into AC1 
 74:    SUB  3,4,3	- Subtraction Operation 
 75:     ST  3,-5(1)	Assigning variable x in Local 
 76:     LD  3,-5(1)	Load variable x into accumulator 
 77:     ST  3,-11(1)	Push left side onto temp variable stack 
 78:     LD  3,-6(1)	Load variable tm into accumulator 
 79:     LD  4,-11(1)	Pop left hand side into AC1 
 80:    DIV  3,4,3	/ Division operation 
 81:     ST  3,-4(1)	Assigning variable t in Local 
 82:    LDC  3,0(6)	Load of type int constant 
 83:     ST  3,-7(1)	Assigning variable num in Local 
* Beginning WHILE statement
 84:     LD  3,-4(1)	Load variable t into accumulator 
 85:     ST  3,-11(1)	Push left side onto temp variable stack 
 86:    LDC  3,0(6)	Load of type int constant 
 87:     LD  4,-11(1)	Pop left hand side into AC1 
 88:    TGT  3,4,3	Greather than > operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
 90:     LD  3,-4(1)	Load variable t into accumulator 
 91:     ST  3,-11(1)	Push left side onto temp variable stack 
 92:     LD  3,-6(1)	Load variable tm into accumulator 
 93:     LD  4,-11(1)	Pop left hand side into AC1 
 94:    MUL  3,4,3	* Multiplication Operation 
 95:     ST  3,-11(1)	Push left side onto temp variable stack 
 96:     LD  3,-5(1)	Load variable x into accumulator 
 97:     LD  4,-11(1)	Pop left hand side into AC1 
 98:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
100:     LD  3,-7(1)	Load variable num into accumulator 
101:     ST  3,-11(1)	Push left side onto temp variable stack 
102:    LDC  3,1(6)	Load of type int constant 
103:     LD  4,-11(1)	Pop left hand side into AC1 
104:    ADD  3,4,3	+ Operation 
105:     ST  3,-7(1)	Assigning variable num in Local 
* IF JUMP TO END
 99:    JZR  3,7(7)	IF JMP TO ELSE 
106:    LDA  7,0(7)	JUMP TO END 
* END IF
107:     LD  3,-3(1)	Load variable m into accumulator 
108:     ST  3,-11(1)	Push left side onto temp variable stack 
109:    LDC  3,1(6)	Load of type int constant 
110:     LD  4,-11(1)	Pop left hand side into AC1 
111:    ADD  3,4,3	+ Operation 
112:     ST  3,-3(1)	Assigning variable m in Local 
113:     LD  3,-3(1)	Load variable m into accumulator 
114:     ST  3,-11(1)	Push left side onto temp variable stack 
115:    LDC  3,1(6)	Load of type int constant 
116:     LD  4,-11(1)	Pop left hand side into AC1 
117:    ADD  3,4,3	+ Operation 
118:     ST  3,-9(1)	Assigning variable a in Local 
119:     LD  3,-3(1)	Load variable m into accumulator 
120:     ST  3,-11(1)	Push left side onto temp variable stack 
121:     LD  3,-3(1)	Load variable m into accumulator 
122:     ST  3,-12(1)	Push left side onto temp variable stack 
123:    LDC  3,1(6)	Load of type int constant 
124:     LD  4,-12(1)	Pop left hand side into AC1 
125:    ADD  3,4,3	+ Operation 
126:     LD  4,-11(1)	Pop left hand side into AC1 
127:    MUL  3,4,3	* Multiplication Operation 
128:     ST  3,-10(1)	Assigning variable b in Local 
129:     LD  3,-3(1)	Load variable m into accumulator 
130:     ST  3,-11(1)	Push left side onto temp variable stack 
131:     LD  3,-3(1)	Load variable m into accumulator 
132:     ST  3,-12(1)	Push left side onto temp variable stack 
133:    LDC  3,1(6)	Load of type int constant 
134:     LD  4,-12(1)	Pop left hand side into AC1 
135:    ADD  3,4,3	+ Operation 
136:     LD  4,-11(1)	Pop left hand side into AC1 
137:    MUL  3,4,3	* Multiplication Operation 
138:     ST  3,-11(1)	Push left side onto temp variable stack 
139:    LDC  3,1(6)	Load of type int constant 
140:     ST  3,-12(1)	Push left side onto temp variable stack 
141:    LDC  3,1(6)	Load of type int constant 
142:     LD  4,-12(1)	Pop left hand side into AC1 
143:    ADD  3,4,3	+ Operation 
144:     LD  4,-11(1)	Pop left hand side into AC1 
145:    DIV  3,4,3	/ Division operation 
146:     ST  3,-6(1)	Assigning variable tm in Local 
147:     LD  3,-2(1)	Load variable i into accumulator 
148:     ST  3,-11(1)	Push left side onto temp variable stack 
149:     LD  3,-3(1)	Load variable m into accumulator 
150:     ST  3,-12(1)	Push left side onto temp variable stack 
151:    LDC  3,1(6)	Load of type int constant 
152:     LD  4,-12(1)	Pop left hand side into AC1 
153:    ADD  3,4,3	+ Operation 
154:     LD  4,-11(1)	Pop left hand side into AC1 
155:    SUB  3,4,3	- Subtraction Operation 
156:     ST  3,-11(1)	Push left side onto temp variable stack 
157:    LDC  3,0(6)	Load of type int constant 
158:     LD  4,-11(1)	Pop left hand side into AC1 
159:    ADD  3,4,3	+ Operation 
160:     ST  3,-5(1)	Assigning variable x in Local 
161:     LD  3,-5(1)	Load variable x into accumulator 
162:     ST  3,-11(1)	Push left side onto temp variable stack 
163:     LD  3,-6(1)	Load variable tm into accumulator 
164:     LD  4,-11(1)	Pop left hand side into AC1 
165:    DIV  3,4,3	/ Division operation 
166:     ST  3,-11(1)	Push left side onto temp variable stack 
167:    LDC  3,1(6)	Load of type int constant 
168:     LD  4,-11(1)	Pop left hand side into AC1 
169:    MUL  3,4,3	* Multiplication Operation 
170:     ST  3,-4(1)	Assigning variable t in Local 
* END COMPOUND
171:    JMP  7,-88(7)	Go to L1 
 89:    JZR  3,82(7)	JMP if condition is false 
* End WHILE statement
* BEGIN IF BLOCK
172:     LD  3,-7(1)	Load variable num into accumulator 
173:     ST  3,-11(1)	Push left side onto temp variable stack 
174:     LD  3,-8(1)	Load variable min into accumulator 
175:     LD  4,-11(1)	Pop left hand side into AC1 
176:    TGE  3,4,3	GEQ >- operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
* CALL output
178:     ST  1,-11(1)	Store fp in ghost frame for output 
179:     LD  3,-7(1)	Load variable num into accumulator 
180:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
181:    LDA  1,-11(1)	Move the fp to the new frame 
182:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
183:    JMP  7,-178(7)	Call function 
184:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
185:     ST  1,-11(1)	Store fp in ghost frame for output 
186:     LD  3,-2(1)	Load variable i into accumulator 
187:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
188:    LDA  1,-11(1)	Move the fp to the new frame 
189:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
190:    JMP  7,-185(7)	Call function 
191:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
192:     ST  1,-11(1)	Store fp in ghost frame for output 
193:    LDC  3,11111111(6)	Load of type int constant 
194:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
195:    LDA  1,-11(1)	Move the fp to the new frame 
196:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
197:    JMP  7,-192(7)	Call function 
198:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
199:     LD  3,-7(1)	Load variable num into accumulator 
200:     ST  3,-11(1)	Push left side onto temp variable stack 
201:    LDC  3,1(6)	Load of type int constant 
202:     LD  4,-11(1)	Pop left hand side into AC1 
203:    ADD  3,4,3	+ Operation 
204:     ST  3,-8(1)	Assigning variable min in Local 
* END COMPOUND
* IF JUMP TO END
177:    JZR  3,28(7)	IF JMP TO ELSE 
205:    LDA  7,0(7)	JUMP TO END 
* END IF
206:     LD  3,-2(1)	Load variable i into accumulator 
207:     ST  3,-11(1)	Push left side onto temp variable stack 
208:    LDC  3,1(6)	Load of type int constant 
209:     LD  4,-11(1)	Pop left hand side into AC1 
210:    ADD  3,4,3	+ Operation 
211:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
212:    JMP  7,-169(7)	Go to L1 
 49:    JZR  3,163(7)	JMP if condition is false 
* End WHILE statement
213:    LDC  3,0(6)	Load of type int constant 
214:    LDA  2,0(3)	Copy accumulator to return register 
215:     LD  3,-1(1)	Load return address 
216:     LD  1,0(1)	Adjust fp 
217:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
218:    LDC  2,0(6)	Set return value to 0 
219:     LD  3,-1(1)	Load return address 
220:     LD  1,0(1)	Adjust fp 
221:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,221(7)	Jump to init [backpatch] 
* INIT
222:    LDA  1,0(0)	set first frame at end of globals 
223:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
224:    LDA  3,1(7)	Return address in ac 
225:    JMP  7,-187(7)	Jump to main 
226:   HALT  0,0,0	DONE! 
* END INIT
