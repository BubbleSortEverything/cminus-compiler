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
* CALL outputb
 40:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 41:    LDC  3,1(6)	Load of type int constant 
 42:     ST  3,-5(1)	Push left side onto temp variable stack 
 43:    LDC  3,2(6)	Load of type int constant 
 44:     LD  4,-5(1)	Pop left hand side into AC1 
 45:    TLT  3,4,3	Less than < operation store in AC 
 46:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-2(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-33(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 51:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 52:    LDC  3,2(6)	Load of type int constant 
 53:     ST  3,-5(1)	Push left side onto temp variable stack 
 54:    LDC  3,2(6)	Load of type int constant 
 55:     LD  4,-5(1)	Pop left hand side into AC1 
 56:    TLT  3,4,3	Less than < operation store in AC 
 57:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-2(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-44(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 62:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 63:    LDC  3,3(6)	Load of type int constant 
 64:     ST  3,-5(1)	Push left side onto temp variable stack 
 65:    LDC  3,2(6)	Load of type int constant 
 66:     LD  4,-5(1)	Pop left hand side into AC1 
 67:    TLT  3,4,3	Less than < operation store in AC 
 68:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-2(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-55(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 73:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 74:    LDC  3,1(6)	Load of type int constant 
 75:     ST  3,-5(1)	Push left side onto temp variable stack 
 76:    LDC  3,2(6)	Load of type int constant 
 77:     LD  4,-5(1)	Pop left hand side into AC1 
 78:    TEQ  3,4,3	== Equality Operation 
 79:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 80:    LDA  1,-2(1)	Move the fp to the new frame 
 81:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 82:    JMP  7,-66(7)	Call function 
 83:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 84:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 85:    LDC  3,2(6)	Load of type int constant 
 86:     ST  3,-5(1)	Push left side onto temp variable stack 
 87:    LDC  3,2(6)	Load of type int constant 
 88:     LD  4,-5(1)	Pop left hand side into AC1 
 89:    TEQ  3,4,3	== Equality Operation 
 90:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 91:    LDA  1,-2(1)	Move the fp to the new frame 
 92:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 93:    JMP  7,-77(7)	Call function 
 94:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 95:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 96:    LDC  3,3(6)	Load of type int constant 
 97:     ST  3,-5(1)	Push left side onto temp variable stack 
 98:    LDC  3,2(6)	Load of type int constant 
 99:     LD  4,-5(1)	Pop left hand side into AC1 
100:    TEQ  3,4,3	== Equality Operation 
101:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
102:    LDA  1,-2(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-88(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
106:     ST  1,-2(1)	Store fp in ghost frame for outputb 
107:    LDC  3,1(6)	Load of type int constant 
108:     ST  3,-5(1)	Push left side onto temp variable stack 
109:    LDC  3,2(6)	Load of type int constant 
110:     LD  4,-5(1)	Pop left hand side into AC1 
111:    TGT  3,4,3	Greather than > operation store in AC 
112:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
113:    LDA  1,-2(1)	Move the fp to the new frame 
114:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
115:    JMP  7,-99(7)	Call function 
116:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
117:     ST  1,-2(1)	Store fp in ghost frame for outputb 
118:    LDC  3,2(6)	Load of type int constant 
119:     ST  3,-5(1)	Push left side onto temp variable stack 
120:    LDC  3,2(6)	Load of type int constant 
121:     LD  4,-5(1)	Pop left hand side into AC1 
122:    TGT  3,4,3	Greather than > operation store in AC 
123:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
124:    LDA  1,-2(1)	Move the fp to the new frame 
125:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
126:    JMP  7,-110(7)	Call function 
127:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
128:     ST  1,-2(1)	Store fp in ghost frame for outputb 
129:    LDC  3,3(6)	Load of type int constant 
130:     ST  3,-5(1)	Push left side onto temp variable stack 
131:    LDC  3,2(6)	Load of type int constant 
132:     LD  4,-5(1)	Pop left hand side into AC1 
133:    TGT  3,4,3	Greather than > operation store in AC 
134:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
135:    LDA  1,-2(1)	Move the fp to the new frame 
136:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
137:    JMP  7,-121(7)	Call function 
138:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
139:     ST  1,-2(1)	Store fp in ghost frame for outputb 
140:    LDC  3,1(6)	Load of type int constant 
141:     ST  3,-5(1)	Push left side onto temp variable stack 
142:    LDC  3,2(6)	Load of type int constant 
143:     LD  4,-5(1)	Pop left hand side into AC1 
144:    TLE  3,4,3	LEQ <= operation store in AC 
145:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
146:    LDA  1,-2(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-132(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
150:     ST  1,-2(1)	Store fp in ghost frame for outputb 
151:    LDC  3,2(6)	Load of type int constant 
152:     ST  3,-5(1)	Push left side onto temp variable stack 
153:    LDC  3,2(6)	Load of type int constant 
154:     LD  4,-5(1)	Pop left hand side into AC1 
155:    TLE  3,4,3	LEQ <= operation store in AC 
156:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
157:    LDA  1,-2(1)	Move the fp to the new frame 
158:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
159:    JMP  7,-143(7)	Call function 
160:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
161:     ST  1,-2(1)	Store fp in ghost frame for outputb 
162:    LDC  3,3(6)	Load of type int constant 
163:     ST  3,-5(1)	Push left side onto temp variable stack 
164:    LDC  3,2(6)	Load of type int constant 
165:     LD  4,-5(1)	Pop left hand side into AC1 
166:    TLE  3,4,3	LEQ <= operation store in AC 
167:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
168:    LDA  1,-2(1)	Move the fp to the new frame 
169:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
170:    JMP  7,-154(7)	Call function 
171:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
172:     ST  1,-2(1)	Store fp in ghost frame for outputb 
173:    LDC  3,1(6)	Load of type int constant 
174:     ST  3,-5(1)	Push left side onto temp variable stack 
175:    LDC  3,2(6)	Load of type int constant 
176:     LD  4,-5(1)	Pop left hand side into AC1 
177:    TGE  3,4,3	GEQ >- operation store in AC 
178:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
179:    LDA  1,-2(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-165(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
183:     ST  1,-2(1)	Store fp in ghost frame for outputb 
184:    LDC  3,2(6)	Load of type int constant 
185:     ST  3,-5(1)	Push left side onto temp variable stack 
186:    LDC  3,2(6)	Load of type int constant 
187:     LD  4,-5(1)	Pop left hand side into AC1 
188:    TGE  3,4,3	GEQ >- operation store in AC 
189:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
190:    LDA  1,-2(1)	Move the fp to the new frame 
191:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
192:    JMP  7,-176(7)	Call function 
193:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
194:     ST  1,-2(1)	Store fp in ghost frame for outputb 
195:    LDC  3,3(6)	Load of type int constant 
196:     ST  3,-5(1)	Push left side onto temp variable stack 
197:    LDC  3,2(6)	Load of type int constant 
198:     LD  4,-5(1)	Pop left hand side into AC1 
199:    TGE  3,4,3	GEQ >- operation store in AC 
200:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
201:    LDA  1,-2(1)	Move the fp to the new frame 
202:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
203:    JMP  7,-187(7)	Call function 
204:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
205:     ST  1,-2(1)	Store fp in ghost frame for outputb 
206:    LDC  3,1(6)	Load of type int constant 
207:     ST  3,-5(1)	Push left side onto temp variable stack 
208:    LDC  3,2(6)	Load of type int constant 
209:     LD  4,-5(1)	Pop left hand side into AC1 
210:    TNE  3,4,3	!= Equality Operation 
211:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
212:    LDA  1,-2(1)	Move the fp to the new frame 
213:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
214:    JMP  7,-198(7)	Call function 
215:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
216:     ST  1,-2(1)	Store fp in ghost frame for outputb 
217:    LDC  3,2(6)	Load of type int constant 
218:     ST  3,-5(1)	Push left side onto temp variable stack 
219:    LDC  3,2(6)	Load of type int constant 
220:     LD  4,-5(1)	Pop left hand side into AC1 
221:    TNE  3,4,3	!= Equality Operation 
222:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
223:    LDA  1,-2(1)	Move the fp to the new frame 
224:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
225:    JMP  7,-209(7)	Call function 
226:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
227:     ST  1,-2(1)	Store fp in ghost frame for outputb 
228:    LDC  3,3(6)	Load of type int constant 
229:     ST  3,-5(1)	Push left side onto temp variable stack 
230:    LDC  3,2(6)	Load of type int constant 
231:     LD  4,-5(1)	Pop left hand side into AC1 
232:    TNE  3,4,3	!= Equality Operation 
233:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
234:    LDA  1,-2(1)	Move the fp to the new frame 
235:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
236:    JMP  7,-220(7)	Call function 
237:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* END COMPOUND
* Add standard closing in case there is no return statement
238:    LDC  2,0(6)	Set return value to 0 
239:     LD  3,-1(1)	Load return address 
240:     LD  1,0(1)	Adjust fp 
241:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,241(7)	Jump to init [backpatch] 
* INIT
242:    LDA  1,0(0)	set first frame at end of globals 
243:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
244:    LDA  3,1(7)	Return address in ac 
245:    JMP  7,-207(7)	Jump to main 
246:   HALT  0,0,0	DONE! 
* END INIT
