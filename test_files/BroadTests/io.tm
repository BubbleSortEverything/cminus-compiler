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
* CALL output
 40:     ST  1,-4(1)	Store fp in ghost frame for output 
 41:    LDC  3,777(6)	Load of type int constant 
 42:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 43:    LDA  1,-4(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-40(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outputb
 47:     ST  1,-4(1)	Store fp in ghost frame for outputb 
 48:    LDC  3,0(6)	Load of type bool constant 
 49:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 50:    LDA  1,-4(1)	Move the fp to the new frame 
 51:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 52:    JMP  7,-36(7)	Call function 
 53:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 54:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 55:    LDA  1,-4(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-24(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 59:    LDC  3,666(6)	Load of type int constant 
 60:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
 61:     ST  1,-4(1)	Store fp in ghost frame for output 
 62:     LD  3,-2(1)	Load variable x into accumulator 
 63:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 64:    LDA  1,-4(1)	Move the fp to the new frame 
 65:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 66:    JMP  7,-61(7)	Call function 
 67:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 68:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 69:    LDA  1,-4(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-38(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 73:     ST  1,-4(1)	Store fp in ghost frame for output 
 74:     LD  3,-2(1)	Load variable x into accumulator 
 75:    NEG  3,3,0	- Change Sign Operation 
 76:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 77:    LDA  1,-4(1)	Move the fp to the new frame 
 78:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 79:    JMP  7,-74(7)	Call function 
 80:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 81:     ST  1,-4(1)	Store fp in ghost frame for output 
 82:    LDC  3,1(6)	Load of type int constant 
 83:    NEG  3,3,0	- Change Sign Operation 
 84:     ST  3,-7(1)	Push left side onto temp variable stack 
 85:     LD  3,-2(1)	Load variable x into accumulator 
 86:     LD  4,-7(1)	Pop left hand side into AC1 
 87:    MUL  3,4,3	* Multiplication Operation 
 88:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 89:    LDA  1,-4(1)	Move the fp to the new frame 
 90:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 91:    JMP  7,-86(7)	Call function 
 92:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 93:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 94:    LDA  1,-4(1)	Move the fp to the new frame 
 95:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 96:    JMP  7,-63(7)	Call function 
 97:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 98:     ST  1,-4(1)	Store fp in ghost frame for output 
 99:    LDC  3,111(6)	Load of type int constant 
100:     ST  3,-7(1)	Push left side onto temp variable stack 
101:    LDC  3,222(6)	Load of type int constant 
102:     LD  4,-7(1)	Pop left hand side into AC1 
103:    ADD  3,4,3	+ Operation 
104:     ST  3,-7(1)	Push left side onto temp variable stack 
105:    LDC  3,333(6)	Load of type int constant 
106:     LD  4,-7(1)	Pop left hand side into AC1 
107:    ADD  3,4,3	+ Operation 
108:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
109:    LDA  1,-4(1)	Move the fp to the new frame 
110:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
111:    JMP  7,-106(7)	Call function 
112:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
113:     ST  1,-4(1)	Store fp in ghost frame for output 
114:    LDC  3,3(6)	Load of type int constant 
115:     ST  3,-7(1)	Push left side onto temp variable stack 
116:    LDC  3,6(6)	Load of type int constant 
117:     LD  4,-7(1)	Pop left hand side into AC1 
118:    MUL  3,4,3	* Multiplication Operation 
119:     ST  3,-7(1)	Push left side onto temp variable stack 
120:    LDC  3,6(6)	Load of type int constant 
121:     ST  3,-8(1)	Push left side onto temp variable stack 
122:    LDC  3,6(6)	Load of type int constant 
123:     LD  4,-8(1)	Pop left hand side into AC1 
124:    MUL  3,4,3	* Multiplication Operation 
125:     ST  3,-8(1)	Push left side onto temp variable stack 
126:    LDC  3,1(6)	Load of type int constant 
127:     LD  4,-8(1)	Pop left hand side into AC1 
128:    ADD  3,4,3	+ Operation 
129:     LD  4,-7(1)	Pop left hand side into AC1 
130:    MUL  3,4,3	* Multiplication Operation 
131:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
132:    LDA  1,-4(1)	Move the fp to the new frame 
133:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
134:    JMP  7,-129(7)	Call function 
135:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
136:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
137:    LDA  1,-4(1)	Move the fp to the new frame 
138:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
139:    JMP  7,-106(7)	Call function 
140:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL input
141:     ST  1,-4(1)	Store fp in ghost frame for input 
* Begin call
142:    LDA  1,-4(1)	Move the fp to the new frame 
143:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
144:    JMP  7,-144(7)	Call function 
145:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
146:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
147:     ST  1,-4(1)	Store fp in ghost frame for output 
148:     LD  3,-2(1)	Load variable x into accumulator 
149:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
150:    LDA  1,-4(1)	Move the fp to the new frame 
151:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
152:    JMP  7,-147(7)	Call function 
153:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
154:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
155:    LDA  1,-4(1)	Move the fp to the new frame 
156:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
157:    JMP  7,-124(7)	Call function 
158:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL inputb
159:     ST  1,-4(1)	Store fp in ghost frame for inputb 
* Begin call
160:    LDA  1,-4(1)	Move the fp to the new frame 
161:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
162:    JMP  7,-151(7)	Call function 
163:    LDA  3,0(2)	Save return result in accumulator 
* END CALL inputb
164:     ST  3,-3(1)	Assigning variable b in Local 
* CALL outputb
165:     ST  1,-4(1)	Store fp in ghost frame for outputb 
166:     LD  3,-3(1)	Load variable b into accumulator 
167:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
168:    LDA  1,-4(1)	Move the fp to the new frame 
169:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
170:    JMP  7,-154(7)	Call function 
171:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
172:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
173:    LDA  1,-4(1)	Move the fp to the new frame 
174:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
175:    JMP  7,-142(7)	Call function 
176:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
177:     ST  1,-4(1)	Store fp in ghost frame for output 
* CALL input
178:     ST  1,-7(1)	Store fp in ghost frame for input 
* Begin call
179:    LDA  1,-7(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-181(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
183:     ST  3,-7(1)	Push left side onto temp variable stack 
* CALL input
184:     ST  1,-8(1)	Store fp in ghost frame for input 
* Begin call
185:    LDA  1,-8(1)	Move the fp to the new frame 
186:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
187:    JMP  7,-187(7)	Call function 
188:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
189:     LD  4,-7(1)	Pop left hand side into AC1 
190:    MUL  3,4,3	* Multiplication Operation 
191:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
192:    LDA  1,-4(1)	Move the fp to the new frame 
193:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
194:    JMP  7,-189(7)	Call function 
195:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
196:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
197:    LDA  1,-4(1)	Move the fp to the new frame 
198:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
199:    JMP  7,-166(7)	Call function 
200:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
201:     ST  1,-4(1)	Store fp in ghost frame for outputb 
* CALL inputb
202:     ST  1,-7(1)	Store fp in ghost frame for inputb 
* Begin call
203:    LDA  1,-7(1)	Move the fp to the new frame 
204:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
205:    JMP  7,-194(7)	Call function 
206:    LDA  3,0(2)	Save return result in accumulator 
* END CALL inputb
207:     ST  3,-7(1)	Push left side onto temp variable stack 
* CALL inputb
208:     ST  1,-8(1)	Store fp in ghost frame for inputb 
* Begin call
209:    LDA  1,-8(1)	Move the fp to the new frame 
210:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
211:    JMP  7,-200(7)	Call function 
212:    LDA  3,0(2)	Save return result in accumulator 
* END CALL inputb
213:     LD  4,-7(1)	Pop left hand side into AC1 
214:    AND  3,4,3	AND operation store in AC 
215:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
216:    LDA  1,-4(1)	Move the fp to the new frame 
217:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
218:    JMP  7,-202(7)	Call function 
219:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
220:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
221:    LDA  1,-4(1)	Move the fp to the new frame 
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
