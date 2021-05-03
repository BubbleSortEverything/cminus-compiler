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
 41:     ST  3,-3(1)	Assigning variable bilbo in Local 
 42:    LDC  3,10(6)	Load of type int constant 
 43:     ST  3,-2(1)	Assigning variable frodo in Local 
 44:    LDC  3,100(6)	Load of type int constant 
 45:     ST  3,-4(1)	Assigning variable sam in Local 
 46:    LDC  3,1000(6)	Load of type int constant 
 47:     ST  3,-5(1)	Assigning variable merry in Local 
 48:    LDC  3,10000(6)	Load of type int constant 
 49:     ST  3,-6(1)	Assigning variable pippin in Local 
 50:     LD  3,-3(1)	Load variable bilbo into accumulator 
 51:     ST  3,-3(1)	Assigning variable bilbo in Local 
* CALL output
 52:     ST  1,-8(1)	Store fp in ghost frame for output 
 53:     LD  3,-3(1)	Load variable bilbo into accumulator 
 54:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
 55:    LDA  1,-8(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-52(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 59:     ST  1,-8(1)	Store fp in ghost frame for outnl 
* Begin call
 60:    LDA  1,-8(1)	Move the fp to the new frame 
 61:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 62:    JMP  7,-29(7)	Call function 
 63:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 64:     LD  3,-3(1)	Load variable bilbo into accumulator 
 65:     ST  3,-8(1)	Push left side onto temp variable stack 
 66:    LDC  3,1(6)	Load of type int constant 
 67:     LD  4,-8(1)	Pop left hand side into AC1 
 68:    ADD  3,4,3	+ Operation 
 69:     ST  3,-3(1)	Assigning variable bilbo in Local 
* CALL output
 70:     ST  1,-8(1)	Store fp in ghost frame for output 
 71:     LD  3,-3(1)	Load variable bilbo into accumulator 
 72:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
 73:    LDA  1,-8(1)	Move the fp to the new frame 
 74:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 75:    JMP  7,-70(7)	Call function 
 76:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 77:     ST  1,-8(1)	Store fp in ghost frame for outnl 
* Begin call
 78:    LDA  1,-8(1)	Move the fp to the new frame 
 79:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 80:    JMP  7,-47(7)	Call function 
 81:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 82:     LD  3,-2(1)	Load variable frodo into accumulator 
 83:     ST  3,-8(1)	Push left side onto temp variable stack 
 84:     LD  3,-3(1)	Load variable bilbo into accumulator 
 85:     ST  3,-9(1)	Push left side onto temp variable stack 
 86:     LD  3,-4(1)	Load variable sam into accumulator 
 87:     ST  3,-10(1)	Push left side onto temp variable stack 
 88:     LD  3,-5(1)	Load variable merry into accumulator 
 89:     ST  3,-11(1)	Push left side onto temp variable stack 
 90:     LD  3,-6(1)	Load variable pippin into accumulator 
 91:     LD  4,-11(1)	Pop left hand side into AC1 
 92:    MUL  3,4,3	* Multiplication Operation 
 93:     LD  4,-10(1)	Pop left hand side into AC1 
 94:    ADD  3,4,3	+ Operation 
 95:     LD  4,-9(1)	Pop left hand side into AC1 
 96:    MUL  3,4,3	* Multiplication Operation 
 97:     LD  4,-8(1)	Pop left hand side into AC1 
 98:    ADD  3,4,3	+ Operation 
 99:     ST  3,-3(1)	Assigning variable bilbo in Local 
* CALL output
100:     ST  1,-8(1)	Store fp in ghost frame for output 
101:     LD  3,-3(1)	Load variable bilbo into accumulator 
102:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
103:    LDA  1,-8(1)	Move the fp to the new frame 
104:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
105:    JMP  7,-100(7)	Call function 
106:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
107:     ST  1,-8(1)	Store fp in ghost frame for outnl 
* Begin call
108:    LDA  1,-8(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-77(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
112:     LD  3,-5(1)	Load variable merry into accumulator 
113:     ST  3,-8(1)	Push left side onto temp variable stack 
114:     LD  3,-6(1)	Load variable pippin into accumulator 
115:     LD  4,-8(1)	Pop left hand side into AC1 
116:    MUL  3,4,3	* Multiplication Operation 
117:     ST  3,-8(1)	Push left side onto temp variable stack 
118:     LD  3,-4(1)	Load variable sam into accumulator 
119:     LD  4,-8(1)	Pop left hand side into AC1 
120:    ADD  3,4,3	+ Operation 
121:     ST  3,-8(1)	Push left side onto temp variable stack 
122:     LD  3,-3(1)	Load variable bilbo into accumulator 
123:     LD  4,-8(1)	Pop left hand side into AC1 
124:    MUL  3,4,3	* Multiplication Operation 
125:     ST  3,-8(1)	Push left side onto temp variable stack 
126:     LD  3,-2(1)	Load variable frodo into accumulator 
127:     LD  4,-8(1)	Pop left hand side into AC1 
128:    ADD  3,4,3	+ Operation 
129:     ST  3,-3(1)	Assigning variable bilbo in Local 
* CALL output
130:     ST  1,-8(1)	Store fp in ghost frame for output 
131:     LD  3,-3(1)	Load variable bilbo into accumulator 
132:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
133:    LDA  1,-8(1)	Move the fp to the new frame 
134:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
135:    JMP  7,-130(7)	Call function 
136:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
137:     ST  1,-8(1)	Store fp in ghost frame for outnl 
* Begin call
138:    LDA  1,-8(1)	Move the fp to the new frame 
139:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
140:    JMP  7,-107(7)	Call function 
141:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
142:     LD  3,-3(1)	Load variable bilbo into accumulator 
143:     ST  3,-8(1)	Push left side onto temp variable stack 
144:     LD  3,-3(1)	Load variable bilbo into accumulator 
145:     ST  3,-9(1)	Push left side onto temp variable stack 
146:     LD  3,-3(1)	Load variable bilbo into accumulator 
147:     ST  3,-10(1)	Push left side onto temp variable stack 
148:     LD  3,-3(1)	Load variable bilbo into accumulator 
149:     ST  3,-11(1)	Push left side onto temp variable stack 
150:     LD  3,-3(1)	Load variable bilbo into accumulator 
151:     ST  3,-12(1)	Push left side onto temp variable stack 
152:     LD  3,-3(1)	Load variable bilbo into accumulator 
153:     LD  4,-12(1)	Pop left hand side into AC1 
154:    ADD  3,4,3	+ Operation 
155:     LD  4,-11(1)	Pop left hand side into AC1 
156:    SUB  3,4,3	- Subtraction Operation 
157:     LD  4,-10(1)	Pop left hand side into AC1 
158:    ADD  3,4,3	+ Operation 
159:     LD  4,-9(1)	Pop left hand side into AC1 
160:    SUB  3,4,3	- Subtraction Operation 
161:     LD  4,-8(1)	Pop left hand side into AC1 
162:    ADD  3,4,3	+ Operation 
163:     ST  3,-3(1)	Assigning variable bilbo in Local 
* CALL output
164:     ST  1,-8(1)	Store fp in ghost frame for output 
165:     LD  3,-3(1)	Load variable bilbo into accumulator 
166:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
167:    LDA  1,-8(1)	Move the fp to the new frame 
168:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
169:    JMP  7,-164(7)	Call function 
170:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
171:     ST  1,-8(1)	Store fp in ghost frame for outnl 
* Begin call
172:    LDA  1,-8(1)	Move the fp to the new frame 
173:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
174:    JMP  7,-141(7)	Call function 
175:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
176:    LDC  3,1(6)	Load of type bool constant 
177:     ST  3,-7(1)	Assigning variable arwen in Local 
178:    LDC  3,0(6)	Load of type bool constant 
179:     ST  3,-8(1)	Push left side onto temp variable stack 
180:     LD  3,-7(1)	Load variable arwen into accumulator 
181:     ST  3,-9(1)	Push left side onto temp variable stack 
182:     LD  3,-5(1)	Load variable merry into accumulator 
183:    NEG  3,3,0	- Change Sign Operation 
184:     ST  3,-10(1)	Push left side onto temp variable stack 
185:     LD  3,-4(1)	Load variable sam into accumulator 
186:    NEG  3,3,0	- Change Sign Operation 
187:     LD  4,-10(1)	Pop left hand side into AC1 
188:    MUL  3,4,3	* Multiplication Operation 
189:     ST  3,-10(1)	Push left side onto temp variable stack 
190:     LD  3,-6(1)	Load variable pippin into accumulator 
191:     LD  4,-10(1)	Pop left hand side into AC1 
192:    ADD  3,4,3	+ Operation 
193:     ST  3,-10(1)	Push left side onto temp variable stack 
194:     LD  3,-3(1)	Load variable bilbo into accumulator 
195:     ST  3,-11(1)	Push left side onto temp variable stack 
196:     LD  3,-2(1)	Load variable frodo into accumulator 
197:     ST  3,-12(1)	Push left side onto temp variable stack 
198:     LD  3,-2(1)	Load variable frodo into accumulator 
199:    NEG  3,3,0	- Change Sign Operation 
200:     LD  4,-12(1)	Pop left hand side into AC1 
201:    MUL  3,4,3	* Multiplication Operation 
202:     LD  4,-11(1)	Pop left hand side into AC1 
203:    ADD  3,4,3	+ Operation 
204:     LD  4,-10(1)	Pop left hand side into AC1 
205:    TGE  3,4,3	GEQ >- operation store in AC 
206:    LDC  4,1(6)	Load 1 into AC1 for not operation 
207:    TNE  3,4,3	Not ! operation store in AC 
208:     LD  4,-9(1)	Pop left hand side into AC1 
209:    AND  3,4,3	AND operation store in AC 
210:     LD  4,-8(1)	Pop left hand side into AC1 
211:     OR  3,4,3	OR operation store in AC 
212:     ST  3,-7(1)	Assigning variable arwen in Local 
* CALL outputb
213:     ST  1,-8(1)	Store fp in ghost frame for outputb 
214:     LD  3,-7(1)	Load variable arwen into accumulator 
215:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
216:    LDA  1,-8(1)	Move the fp to the new frame 
217:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
218:    JMP  7,-202(7)	Call function 
219:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
220:     ST  1,-8(1)	Store fp in ghost frame for outnl 
* Begin call
221:    LDA  1,-8(1)	Move the fp to the new frame 
222:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
223:    JMP  7,-190(7)	Call function 
224:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
225:    LDC  2,0(6)	Set return value to 0 
226:     LD  3,-1(1)	Load return address 
227:     LD  1,0(1)	Adjust fp 
228:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,228(7)	Jump to init [backpatch] 
* INIT
229:    LDA  1,0(0)	set first frame at end of globals 
230:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
231:    LDA  3,1(7)	Return address in ac 
232:    JMP  7,-194(7)	Jump to main 
233:   HALT  0,0,0	DONE! 
* END INIT
