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
 40:    LDC  3,1(6)	Load type bool constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
 42:    LDC  3,0(6)	Load type bool constant 
 43:     ST  3,-3(1)	Assigning variable y in Local 
 44:    LDC  3,1(6)	Load type bool constant 
 45:     ST  3,-4(1)	Assigning variable z in Local 
* CALL outputb
 46:     ST  1,-5(1)	Store fp in ghost frame for outputb 
 47:     LD  3,-2(1)	Load variable x into accumulator 
 48:     ST  3,-8(1)	Push left side onto temp variable stack 
 49:     LD  3,-3(1)	Load variable y into accumulator 
 50:     ST  3,-9(1)	Push left side onto temp variable stack 
 51:     LD  3,-4(1)	Load variable z into accumulator 
 52:     LD  4,-9(1)	Pop left hand side into AC1 
 53:    AND  3,4,3	AND operation store in AC 
 54:     LD  4,-8(1)	Pop left hand side into AC1 
 55:     OR  3,4,3	OR operation store in AC 
 56:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 57:    LDA  1,-5(1)	Move the fp to the new frame 
 58:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 59:    JMP  7,-43(7)	Call function 
 60:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 61:     ST  1,-5(1)	Store fp in ghost frame for outputb 
 62:     LD  3,-2(1)	Load variable x into accumulator 
 63:     ST  3,-8(1)	Push left side onto temp variable stack 
 64:     LD  3,-3(1)	Load variable y into accumulator 
 65:     LD  4,-8(1)	Pop left hand side into AC1 
 66:    AND  3,4,3	AND operation store in AC 
 67:     ST  3,-8(1)	Push left side onto temp variable stack 
 68:     LD  3,-4(1)	Load variable z into accumulator 
 69:     LD  4,-8(1)	Pop left hand side into AC1 
 70:     OR  3,4,3	OR operation store in AC 
 71:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 72:    LDA  1,-5(1)	Move the fp to the new frame 
 73:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 74:    JMP  7,-58(7)	Call function 
 75:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 76:     ST  1,-5(1)	Store fp in ghost frame for outputb 
 77:     LD  3,-2(1)	Load variable x into accumulator 
 78:     ST  3,-8(1)	Push left side onto temp variable stack 
 79:     LD  3,-3(1)	Load variable y into accumulator 
 80:     LD  4,-8(1)	Pop left hand side into AC1 
 81:    AND  3,4,3	AND operation store in AC 
 82:     ST  3,-8(1)	Push left side onto temp variable stack 
 83:     LD  3,-4(1)	Load variable z into accumulator 
 84:     ST  3,-9(1)	Push left side onto temp variable stack 
 85:     LD  3,-4(1)	Load variable z into accumulator 
 86:     LD  4,-9(1)	Pop left hand side into AC1 
 87:    AND  3,4,3	AND operation store in AC 
 88:     LD  4,-8(1)	Pop left hand side into AC1 
 89:     OR  3,4,3	OR operation store in AC 
 90:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 91:    LDA  1,-5(1)	Move the fp to the new frame 
 92:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 93:    JMP  7,-77(7)	Call function 
 94:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 95:     ST  1,-5(1)	Store fp in ghost frame for outputb 
 96:     LD  3,-2(1)	Load variable x into accumulator 
 97:    LDC  4,1(6)	Load 1 into AC1 for not operation 
 98:    TNE  3,4,3	Not ! operation store in AC 
 99:     ST  3,-8(1)	Push left side onto temp variable stack 
100:     LD  3,-3(1)	Load variable y into accumulator 
101:     ST  3,-9(1)	Push left side onto temp variable stack 
102:     LD  3,-4(1)	Load variable z into accumulator 
103:     LD  4,-9(1)	Pop left hand side into AC1 
104:    AND  3,4,3	AND operation store in AC 
105:     LD  4,-8(1)	Pop left hand side into AC1 
106:     OR  3,4,3	OR operation store in AC 
107:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
108:    LDA  1,-5(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-94(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
112:     ST  1,-5(1)	Store fp in ghost frame for outputb 
113:     LD  3,-2(1)	Load variable x into accumulator 
114:    LDC  4,1(6)	Load 1 into AC1 for not operation 
115:    TNE  3,4,3	Not ! operation store in AC 
116:     ST  3,-8(1)	Push left side onto temp variable stack 
117:     LD  3,-3(1)	Load variable y into accumulator 
118:     LD  4,-8(1)	Pop left hand side into AC1 
119:    AND  3,4,3	AND operation store in AC 
120:     ST  3,-8(1)	Push left side onto temp variable stack 
121:     LD  3,-4(1)	Load variable z into accumulator 
122:     LD  4,-8(1)	Pop left hand side into AC1 
123:     OR  3,4,3	OR operation store in AC 
124:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
125:    LDA  1,-5(1)	Move the fp to the new frame 
126:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
127:    JMP  7,-111(7)	Call function 
128:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
129:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
130:    LDA  1,-5(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-99(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
134:    LDC  3,1(6)	Load type bool constant 
135:     ST  3,-2(1)	Assigning variable x in Local 
136:    LDC  3,1(6)	Load type bool constant 
137:     ST  3,-3(1)	Assigning variable y in Local 
138:    LDC  3,0(6)	Load type bool constant 
139:     ST  3,-4(1)	Assigning variable z in Local 
* CALL outputb
140:     ST  1,-5(1)	Store fp in ghost frame for outputb 
141:     LD  3,-2(1)	Load variable x into accumulator 
142:     ST  3,-8(1)	Push left side onto temp variable stack 
143:     LD  3,-3(1)	Load variable y into accumulator 
144:     ST  3,-9(1)	Push left side onto temp variable stack 
145:     LD  3,-4(1)	Load variable z into accumulator 
146:     LD  4,-9(1)	Pop left hand side into AC1 
147:    AND  3,4,3	AND operation store in AC 
148:     LD  4,-8(1)	Pop left hand side into AC1 
149:     OR  3,4,3	OR operation store in AC 
150:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
151:    LDA  1,-5(1)	Move the fp to the new frame 
152:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
153:    JMP  7,-137(7)	Call function 
154:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
155:     ST  1,-5(1)	Store fp in ghost frame for outputb 
156:     LD  3,-2(1)	Load variable x into accumulator 
157:     ST  3,-8(1)	Push left side onto temp variable stack 
158:     LD  3,-3(1)	Load variable y into accumulator 
159:     LD  4,-8(1)	Pop left hand side into AC1 
160:    AND  3,4,3	AND operation store in AC 
161:     ST  3,-8(1)	Push left side onto temp variable stack 
162:     LD  3,-4(1)	Load variable z into accumulator 
163:     LD  4,-8(1)	Pop left hand side into AC1 
164:     OR  3,4,3	OR operation store in AC 
165:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
166:    LDA  1,-5(1)	Move the fp to the new frame 
167:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
168:    JMP  7,-152(7)	Call function 
169:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
170:     ST  1,-5(1)	Store fp in ghost frame for outputb 
171:     LD  3,-2(1)	Load variable x into accumulator 
172:     ST  3,-8(1)	Push left side onto temp variable stack 
173:     LD  3,-3(1)	Load variable y into accumulator 
174:     LD  4,-8(1)	Pop left hand side into AC1 
175:    AND  3,4,3	AND operation store in AC 
176:     ST  3,-8(1)	Push left side onto temp variable stack 
177:     LD  3,-4(1)	Load variable z into accumulator 
178:     ST  3,-9(1)	Push left side onto temp variable stack 
179:     LD  3,-4(1)	Load variable z into accumulator 
180:     LD  4,-9(1)	Pop left hand side into AC1 
181:    AND  3,4,3	AND operation store in AC 
182:     LD  4,-8(1)	Pop left hand side into AC1 
183:     OR  3,4,3	OR operation store in AC 
184:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
185:    LDA  1,-5(1)	Move the fp to the new frame 
186:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
187:    JMP  7,-171(7)	Call function 
188:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
189:     ST  1,-5(1)	Store fp in ghost frame for outputb 
190:     LD  3,-2(1)	Load variable x into accumulator 
191:    LDC  4,1(6)	Load 1 into AC1 for not operation 
192:    TNE  3,4,3	Not ! operation store in AC 
193:     ST  3,-8(1)	Push left side onto temp variable stack 
194:     LD  3,-3(1)	Load variable y into accumulator 
195:     ST  3,-9(1)	Push left side onto temp variable stack 
196:     LD  3,-4(1)	Load variable z into accumulator 
197:     LD  4,-9(1)	Pop left hand side into AC1 
198:    AND  3,4,3	AND operation store in AC 
199:     LD  4,-8(1)	Pop left hand side into AC1 
200:     OR  3,4,3	OR operation store in AC 
201:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
202:    LDA  1,-5(1)	Move the fp to the new frame 
203:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
204:    JMP  7,-188(7)	Call function 
205:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
206:     ST  1,-5(1)	Store fp in ghost frame for outputb 
207:     LD  3,-2(1)	Load variable x into accumulator 
208:    LDC  4,1(6)	Load 1 into AC1 for not operation 
209:    TNE  3,4,3	Not ! operation store in AC 
210:     ST  3,-8(1)	Push left side onto temp variable stack 
211:     LD  3,-3(1)	Load variable y into accumulator 
212:     LD  4,-8(1)	Pop left hand side into AC1 
213:    AND  3,4,3	AND operation store in AC 
214:     ST  3,-8(1)	Push left side onto temp variable stack 
215:     LD  3,-4(1)	Load variable z into accumulator 
216:     LD  4,-8(1)	Pop left hand side into AC1 
217:     OR  3,4,3	OR operation store in AC 
218:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
219:    LDA  1,-5(1)	Move the fp to the new frame 
220:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
221:    JMP  7,-205(7)	Call function 
222:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
223:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
224:    LDA  1,-5(1)	Move the fp to the new frame 
225:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
226:    JMP  7,-193(7)	Call function 
227:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
228:    LDC  2,0(6)	Set return value to 0 
229:     LD  3,-1(1)	Load return address 
230:     LD  1,0(1)	Adjust fp 
231:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,231(7)	Jump to init [backpatch] 
* INIT
232:    LDA  1,0(0)	set first frame at end of globals 
233:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
234:    LDA  3,1(7)	Return address in ac 
235:    JMP  7,-197(7)	Jump to main 
236:   HALT  0,0,0	DONE! 
* END INIT
