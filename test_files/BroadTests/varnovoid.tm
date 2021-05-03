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
* FUNCTION cat
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
 40:     ST  1,-4(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load variable x into accumulator 
 42:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 43:    LDA  1,-4(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-40(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 47:     ST  1,-4(1)	Store fp in ghost frame for output 
 48:     LD  3,-3(1)	Load base address of array xa 
 49:    LDC  3,3(6)	Load of type int constant 
 50:     LD  5,-3(1)	Load base address of array xa into AC2 
 51:    SUB  5,5,3	Compute offset for array 
 52:     LD  3,0(5)	Load array element xa from AC into loc from AC2 
 53:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 54:    LDA  1,-4(1)	Move the fp to the new frame 
 55:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 56:    JMP  7,-51(7)	Call function 
 57:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 58:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 59:    LDA  1,-4(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-28(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 63:    LDC  2,0(6)	Set return value to 0 
 64:     LD  3,-1(1)	Load return address 
 65:     LD  1,0(1)	Adjust fp 
 66:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION dog
 67:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
 68:     ST  1,-4(1)	Store fp in ghost frame for output 
 69:     LD  3,-2(1)	Load variable x into accumulator 
 70:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-4(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-68(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 75:     ST  1,-4(1)	Store fp in ghost frame for output 
 76:     LD  3,-3(1)	Load base address of array xa 
 77:    LDC  3,3(6)	Load of type int constant 
 78:     LD  5,-3(1)	Load base address of array xa into AC2 
 79:    SUB  5,5,3	Compute offset for array 
 80:     LD  3,0(5)	Load array element xa from AC into loc from AC2 
 81:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-4(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-79(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 86:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 87:    LDA  1,-4(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-56(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 91:    LDC  3,668(6)	Load of type int constant 
 92:     ST  3,-2(1)	Assigning variable x in Parameter 
 93:     LD  3,-3(1)	Load base address of array xa 
 94:    LDC  3,1(6)	Load of type int constant 
 95:     ST  3,-4(1)	Push left side onto temp variable stack 
 96:    LDC  3,2(6)	Load of type int constant 
 97:     LD  4,-4(1)	Pop left hand side into AC1 
 98:    ADD  3,4,3	+ Operation 
 99:     ST  3,-4(1)	Push array index onto temp stack 
100:    LDC  3,669(6)	Load of type int constant 
101:     LD  4,-4(1)	Pop array index into AC1 
102:     LD  5,-3(1)	Load base address of array xa into AC2 
103:    SUB  5,5,4	Compute offset for array 
104:     ST  3,0(5)	Store variable xa from AC into loc from AC2 
* CALL output
105:     ST  1,-4(1)	Store fp in ghost frame for output 
106:     LD  3,-2(1)	Load variable x into accumulator 
107:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
108:    LDA  1,-4(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-105(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
112:     ST  1,-4(1)	Store fp in ghost frame for output 
113:     LD  3,-3(1)	Load base address of array xa 
114:    LDC  3,3(6)	Load of type int constant 
115:     LD  5,-3(1)	Load base address of array xa into AC2 
116:    SUB  5,5,3	Compute offset for array 
117:     LD  3,0(5)	Load array element xa from AC into loc from AC2 
118:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
119:    LDA  1,-4(1)	Move the fp to the new frame 
120:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
121:    JMP  7,-116(7)	Call function 
122:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
123:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
124:    LDA  1,-4(1)	Move the fp to the new frame 
125:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
126:    JMP  7,-93(7)	Call function 
127:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
128:    LDC  3,670(6)	Load of type int constant 
129:     ST  3,0(0)	Assigning variable g in Global 
130:    LDA  3,-2(0)	Load base address of array ga 
131:    LDC  3,2(6)	Load of type int constant 
132:     ST  3,-4(1)	Push left side onto temp variable stack 
133:    LDC  3,1(6)	Load of type int constant 
134:     LD  4,-4(1)	Pop left hand side into AC1 
135:    ADD  3,4,3	+ Operation 
136:     ST  3,-4(1)	Push array index onto temp stack 
137:    LDC  3,671(6)	Load of type int constant 
138:     LD  4,-4(1)	Pop array index into AC1 
139:    LDA  5,-2(0)	Load base address of array ga into AC2 
140:    SUB  5,5,4	Compute offset for array 
141:     ST  3,0(5)	Store variable ga from AC into loc from AC2 
* CALL output
142:     ST  1,-4(1)	Store fp in ghost frame for output 
143:     LD  3,0(0)	Load variable g into accumulator 
144:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
145:    LDA  1,-4(1)	Move the fp to the new frame 
146:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
147:    JMP  7,-142(7)	Call function 
148:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
149:     ST  1,-4(1)	Store fp in ghost frame for output 
150:    LDA  3,-2(0)	Load base address of array ga 
151:    LDC  3,3(6)	Load of type int constant 
152:    LDA  5,-2(0)	Load base address of array ga into AC2 
153:    SUB  5,5,3	Compute offset for array 
154:     LD  3,0(5)	Load array element ga from AC into loc from AC2 
155:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
156:    LDA  1,-4(1)	Move the fp to the new frame 
157:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
158:    JMP  7,-153(7)	Call function 
159:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
160:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
161:    LDA  1,-4(1)	Move the fp to the new frame 
162:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
163:    JMP  7,-130(7)	Call function 
164:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL cat
165:     ST  1,-4(1)	Store fp in ghost frame for cat 
166:     LD  3,-2(1)	Load variable x into accumulator 
167:     ST  3,-6(1)	Push parameter onto new frame 
168:     LD  3,-3(1)	Load base address of array xa 
169:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
170:    LDA  1,-4(1)	Move the fp to the new frame 
171:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
172:    JMP  7,-134(7)	Call function 
173:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* CALL cat
174:     ST  1,-4(1)	Store fp in ghost frame for cat 
175:     LD  3,0(0)	Load variable g into accumulator 
176:     ST  3,-6(1)	Push parameter onto new frame 
177:    LDA  3,-2(0)	Load base address of array ga 
178:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
179:    LDA  1,-4(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-143(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* END COMPOUND
* Add standard closing in case there is no return statement
183:    LDC  2,0(6)	Set return value to 0 
184:     LD  3,-1(1)	Load return address 
185:     LD  1,0(1)	Adjust fp 
186:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
187:     ST  3,-1(1)	Store return address 
* COMPOUND
188:    LDC  3,10(6)	Load size of ya into AC 
189:     ST  3,-3(1)	Store size of ya in data memory 
190:    LDC  3,666(6)	Load of type int constant 
191:     ST  3,-2(1)	Assigning variable y in Local 
192:    LDA  3,-4(1)	Load base address of array ya 
193:    LDC  3,1(6)	Load of type int constant 
194:     ST  3,-14(1)	Push left side onto temp variable stack 
195:    LDC  3,2(6)	Load of type int constant 
196:     LD  4,-14(1)	Pop left hand side into AC1 
197:    ADD  3,4,3	+ Operation 
198:     ST  3,-14(1)	Push array index onto temp stack 
199:    LDC  3,667(6)	Load of type int constant 
200:     LD  4,-14(1)	Pop array index into AC1 
201:    LDA  5,-4(1)	Load base address of array ya into AC2 
202:    SUB  5,5,4	Compute offset for array 
203:     ST  3,0(5)	Store variable ya from AC into loc from AC2 
* CALL output
204:     ST  1,-14(1)	Store fp in ghost frame for output 
205:     LD  3,-2(1)	Load variable y into accumulator 
206:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
207:    LDA  1,-14(1)	Move the fp to the new frame 
208:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
209:    JMP  7,-204(7)	Call function 
210:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
211:     ST  1,-14(1)	Store fp in ghost frame for output 
212:    LDA  3,-4(1)	Load base address of array ya 
213:    LDC  3,3(6)	Load of type int constant 
214:    LDA  5,-4(1)	Load base address of array ya into AC2 
215:    SUB  5,5,3	Compute offset for array 
216:     LD  3,0(5)	Load array element ya from AC into loc from AC2 
217:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
218:    LDA  1,-14(1)	Move the fp to the new frame 
219:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
220:    JMP  7,-215(7)	Call function 
221:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
222:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
223:    LDA  1,-14(1)	Move the fp to the new frame 
224:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
225:    JMP  7,-192(7)	Call function 
226:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL dog
227:     ST  1,-14(1)	Store fp in ghost frame for dog 
228:     LD  3,-2(1)	Load variable y into accumulator 
229:     ST  3,-16(1)	Push parameter onto new frame 
230:    LDA  3,-4(1)	Load base address of array ya 
231:     ST  3,-17(1)	Push parameter onto new frame 
* Begin call
232:    LDA  1,-14(1)	Move the fp to the new frame 
233:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
234:    JMP  7,-168(7)	Call function 
235:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL output
236:     ST  1,-14(1)	Store fp in ghost frame for output 
237:     LD  3,-2(1)	Load variable y into accumulator 
238:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
239:    LDA  1,-14(1)	Move the fp to the new frame 
240:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
241:    JMP  7,-236(7)	Call function 
242:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
243:     ST  1,-14(1)	Store fp in ghost frame for output 
244:    LDA  3,-4(1)	Load base address of array ya 
245:    LDC  3,3(6)	Load of type int constant 
246:    LDA  5,-4(1)	Load base address of array ya into AC2 
247:    SUB  5,5,3	Compute offset for array 
248:     LD  3,0(5)	Load array element ya from AC into loc from AC2 
249:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
250:    LDA  1,-14(1)	Move the fp to the new frame 
251:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
252:    JMP  7,-247(7)	Call function 
253:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
254:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
255:    LDA  1,-14(1)	Move the fp to the new frame 
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
263:    LDA  1,-12(0)	set first frame at end of globals 
264:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
265:    LDC  3,10(6)	Load size of ga into AC 
266:     ST  3,-1(0)	Store size of ga in data memory 
* END INIT GLOBALS AND STATICS
267:    LDA  3,1(7)	Return address in ac 
268:    JMP  7,-82(7)	Jump to main 
269:   HALT  0,0,0	DONE! 
* END INIT
