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
* FUNCTION ford
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,13(6)	Load size of y into AC 
 41:     ST  3,-4(1)	Store size of y in data memory 
 42:    LDA  3,-5(1)	Load base address of array y 
 43:    LDC  3,0(6)	Load of type int constant 
 44:     ST  3,-18(1)	Push array index onto temp stack 
 45:    LDC  3,666(6)	Load of type int constant 
 46:     LD  4,-18(1)	Pop array index into AC1 
 47:    LDA  5,-5(1)	Load base address of array y into AC2 
 48:    SUB  5,5,4	Compute offset for array 
 49:     ST  3,0(5)	Store variable y from AC into loc from AC2 
 50:    LDA  3,-1(0)	Load base address of array g 
 51:    LDC  3,0(6)	Load of type int constant 
 52:     ST  3,-18(1)	Push array index onto temp stack 
 53:    LDC  3,888(6)	Load of type int constant 
 54:     LD  4,-18(1)	Pop array index into AC1 
 55:    LDA  5,-1(0)	Load base address of array g into AC2 
 56:    SUB  5,5,4	Compute offset for array 
 57:     ST  3,0(5)	Store variable g from AC into loc from AC2 
* CALL output
 58:     ST  1,-18(1)	Store fp in ghost frame for output 
 59:     LD  3,-2(1)	Load base address of array x 
 60:    LDC  3,0(6)	Load of type int constant 
 61:     LD  5,-2(1)	Load base address of array x into AC2 
 62:    SUB  5,5,3	Compute offset for array 
 63:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 64:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
 65:    LDA  1,-18(1)	Move the fp to the new frame 
 66:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 67:    JMP  7,-62(7)	Call function 
 68:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 69:     ST  1,-18(1)	Store fp in ghost frame for output 
 70:     LD  3,-2(1)	Load base address of array x 
 71:     LD  3,-2(1)	Load address of base array x 
 72:     LD  3,1(3)	Load array size 
 73:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
 74:    LDA  1,-18(1)	Move the fp to the new frame 
 75:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 76:    JMP  7,-71(7)	Call function 
 77:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 78:     ST  1,-18(1)	Store fp in ghost frame for output 
 79:    LDA  3,-1(0)	Load base address of array g 
 80:    LDC  3,0(6)	Load of type int constant 
 81:    LDA  5,-1(0)	Load base address of array g into AC2 
 82:    SUB  5,5,3	Compute offset for array 
 83:     LD  3,0(5)	Load array element g from AC into loc from AC2 
 84:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
 85:    LDA  1,-18(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-82(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 89:     ST  1,-18(1)	Store fp in ghost frame for output 
 90:    LDA  3,-1(0)	Load base address of array g 
 91:    LDC  3,1(6)	Load of type int constant 
 92:    NEG  3,3,0	- Change Sign Operation 
 93:    LDA  5,-1(0)	Load base address of array g into AC2 
 94:    SUB  5,5,3	Compute offset for array 
 95:     LD  3,0(5)	Load array element g from AC into loc from AC2 
 96:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-18(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-94(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
101:     ST  1,-18(1)	Store fp in ghost frame for outnl 
* Begin call
102:    LDA  1,-18(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-71(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
106:     ST  1,-18(1)	Store fp in ghost frame for output 
107:    LDA  3,-5(1)	Load base address of array y 
108:    LDC  3,0(6)	Load of type int constant 
109:    LDA  5,-5(1)	Load base address of array y into AC2 
110:    SUB  5,5,3	Compute offset for array 
111:     LD  3,0(5)	Load array element y from AC into loc from AC2 
112:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
113:    LDA  1,-18(1)	Move the fp to the new frame 
114:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
115:    JMP  7,-110(7)	Call function 
116:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
117:     ST  1,-18(1)	Store fp in ghost frame for output 
118:    LDA  3,-5(1)	Load base address of array y 
119:    LDA  3,-5(1)	Load address of base array y 
120:     LD  3,1(3)	Load array size 
121:     ST  3,-20(1)	Push parameter onto new frame 
* Begin call
122:    LDA  1,-18(1)	Move the fp to the new frame 
123:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
124:    JMP  7,-119(7)	Call function 
125:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
126:     ST  1,-18(1)	Store fp in ghost frame for outnl 
* Begin call
127:    LDA  1,-18(1)	Move the fp to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-96(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
131:    LDC  2,0(6)	Set return value to 0 
132:     LD  3,-1(1)	Load return address 
133:     LD  1,0(1)	Adjust fp 
134:    JMP  7,0(3)	Return 
* END FUNCTION ford
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
135:     ST  3,-1(1)	Store return address 
* COMPOUND
136:    LDC  3,11(6)	Load size of m into AC 
137:     ST  3,-2(1)	Store size of m in data memory 
138:    LDA  3,-3(1)	Load base address of array m 
139:    LDC  3,0(6)	Load of type int constant 
140:     ST  3,-14(1)	Push array index onto temp stack 
141:    LDC  3,777(6)	Load of type int constant 
142:     LD  4,-14(1)	Pop array index into AC1 
143:    LDA  5,-3(1)	Load base address of array m into AC2 
144:    SUB  5,5,4	Compute offset for array 
145:     ST  3,0(5)	Store variable m from AC into loc from AC2 
* CALL output
146:     ST  1,-14(1)	Store fp in ghost frame for output 
147:    LDA  3,-3(1)	Load base address of array m 
148:    LDC  3,0(6)	Load of type int constant 
149:    LDA  5,-3(1)	Load base address of array m into AC2 
150:    SUB  5,5,3	Compute offset for array 
151:     LD  3,0(5)	Load array element m from AC into loc from AC2 
152:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
153:    LDA  1,-14(1)	Move the fp to the new frame 
154:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
155:    JMP  7,-150(7)	Call function 
156:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
157:     ST  1,-14(1)	Store fp in ghost frame for output 
158:    LDA  3,-3(1)	Load base address of array m 
159:    LDA  3,-3(1)	Load address of base array m 
160:     LD  3,1(3)	Load array size 
161:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
162:    LDA  1,-14(1)	Move the fp to the new frame 
163:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
164:    JMP  7,-159(7)	Call function 
165:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
166:     ST  1,-14(1)	Store fp in ghost frame for output 
167:    LDA  3,-1(0)	Load base address of array g 
168:    LDC  3,0(6)	Load of type int constant 
169:    LDA  5,-1(0)	Load base address of array g into AC2 
170:    SUB  5,5,3	Compute offset for array 
171:     LD  3,0(5)	Load array element g from AC into loc from AC2 
172:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
173:    LDA  1,-14(1)	Move the fp to the new frame 
174:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
175:    JMP  7,-170(7)	Call function 
176:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
177:     ST  1,-14(1)	Store fp in ghost frame for output 
178:    LDA  3,-1(0)	Load base address of array g 
179:    LDA  3,-1(0)	Load address of base array g 
180:     LD  3,1(3)	Load array size 
181:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
182:    LDA  1,-14(1)	Move the fp to the new frame 
183:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
184:    JMP  7,-179(7)	Call function 
185:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
186:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
187:    LDA  1,-14(1)	Move the fp to the new frame 
188:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
189:    JMP  7,-156(7)	Call function 
190:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL ford
191:     ST  1,-14(1)	Store fp in ghost frame for ford 
192:    LDA  3,-3(1)	Load base address of array m 
193:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
194:    LDA  1,-14(1)	Move the fp to the new frame 
195:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
196:    JMP  7,-158(7)	Call function 
197:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ford
* CALL ford
198:     ST  1,-14(1)	Store fp in ghost frame for ford 
199:    LDA  3,-1(0)	Load base address of array g 
200:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
201:    LDA  1,-14(1)	Move the fp to the new frame 
202:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
203:    JMP  7,-165(7)	Call function 
204:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ford
* CALL output
205:     ST  1,-14(1)	Store fp in ghost frame for output 
206:    LDA  3,-3(1)	Load base address of array m 
207:    LDA  3,-3(1)	Load address of base array m 
208:     LD  3,1(3)	Load array size 
209:     ST  3,-17(1)	Push left side onto temp variable stack 
210:    LDA  3,-1(0)	Load base address of array g 
211:    LDA  3,-1(0)	Load address of base array g 
212:     LD  3,1(3)	Load array size 
213:     LD  4,-17(1)	Pop left hand side into AC1 
214:    MUL  3,4,3	* Multiplication Operation 
215:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
216:    LDA  1,-14(1)	Move the fp to the new frame 
217:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
218:    JMP  7,-213(7)	Call function 
219:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
220:     ST  1,-14(1)	Store fp in ghost frame for outnl 
* Begin call
221:    LDA  1,-14(1)	Move the fp to the new frame 
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
229:    LDA  1,-37(0)	set first frame at end of globals 
230:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
231:    LDC  3,12(6)	Load size of g into AC 
232:     ST  3,0(0)	Store size of g in data memory 
233:    LDC  3,23(6)	Load size of h into AC 
234:     ST  3,-13(0)	Store size of h in data memory 
* END INIT GLOBALS AND STATICS
235:    LDA  3,1(7)	Return address in ac 
236:    JMP  7,-102(7)	Jump to main 
237:   HALT  0,0,0	DONE! 
* END INIT
