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
* CALL output
 40:     ST  1,-3(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load base address of array q 
 42:    LDC  3,10(6)	Load of type int constant 
 43:     LD  5,-2(1)	Load base address of array q into AC2 
 44:    SUB  5,5,3	Compute offset for array 
 45:     LD  3,0(5)	Load array element q from AC into loc from AC2 
 46:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-3(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* Add standard closing in case there is no return statement
 51:    LDC  2,0(6)	Set return value to 0 
 52:     LD  3,-1(1)	Load return address 
 53:     LD  1,0(1)	Adjust fp 
 54:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION dog
 55:     ST  3,-1(1)	Store return address 
* COMPOUND
 56:    LDC  3,9(6)	Load size of y into AC 
 57:     ST  3,-3(1)	Store size of y in data memory 
* CALL output
 58:     ST  1,-13(1)	Store fp in ghost frame for output 
 59:     LD  3,-2(1)	Load base address of array x 
 60:     LD  3,-2(1)	Load address of base array x 
 61:     LD  3,1(3)	Load array size 
 62:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-13(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-60(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 67:     ST  1,-13(1)	Store fp in ghost frame for outnl 
* Begin call
 68:    LDA  1,-13(1)	Move the fp to the new frame 
 69:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 70:    JMP  7,-37(7)	Call function 
 71:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 72:     ST  1,-13(1)	Store fp in ghost frame for output 
 73:     LD  3,-2(1)	Load base address of array x 
 74:    LDC  3,10(6)	Load of type int constant 
 75:     LD  5,-2(1)	Load base address of array x into AC2 
 76:    SUB  5,5,3	Compute offset for array 
 77:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 78:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-13(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-76(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL cat
 83:     ST  1,-13(1)	Store fp in ghost frame for cat 
 84:     LD  3,-2(1)	Load base address of array x 
 85:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 86:    LDA  1,-13(1)	Move the fp to the new frame 
 87:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 88:    JMP  7,-50(7)	Call function 
 89:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* CALL outnl
 90:     ST  1,-13(1)	Store fp in ghost frame for outnl 
* Begin call
 91:    LDA  1,-13(1)	Move the fp to the new frame 
 92:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 93:    JMP  7,-60(7)	Call function 
 94:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 95:     LD  3,-2(1)	Load base address of array x 
 96:    LDC  3,5(6)	Load of type int constant 
 97:     ST  3,-13(1)	Push array index onto temp stack 
 98:    LDA  3,-4(1)	Load base address of array y 
 99:    LDC  3,5(6)	Load of type int constant 
100:    LDA  5,-4(1)	Load base address of array y into AC2 
101:    SUB  5,5,3	Compute offset for array 
102:     LD  3,0(5)	Load array element y from AC into loc from AC2 
103:     LD  4,-13(1)	Pop array index into AC1 
104:     LD  5,-2(1)	Load base address of array x into AC2 
105:    SUB  5,5,4	Compute offset for array 
106:     ST  3,0(5)	Store variable x from AC into loc from AC2 
107:    LDA  3,-14(0)	Load base address of array z 
108:    LDC  3,6(6)	Load of type int constant 
109:     ST  3,-13(1)	Push array index onto temp stack 
110:    LDA  3,-1(0)	Load base address of array g 
111:    LDC  3,6(6)	Load of type int constant 
112:    LDA  5,-1(0)	Load base address of array g into AC2 
113:    SUB  5,5,3	Compute offset for array 
114:     LD  3,0(5)	Load array element g from AC into loc from AC2 
115:     LD  4,-13(1)	Pop array index into AC1 
116:    LDA  5,-14(0)	Load base address of array z into AC2 
117:    SUB  5,5,4	Compute offset for array 
118:     ST  3,0(5)	Store variable z from AC into loc from AC2 
119:    LDA  3,-14(0)	Load base address of array z 
120:    LDC  3,4(6)	Load of type int constant 
121:    LDA  5,-14(0)	Load base address of array z into AC2 
122:    SUB  5,5,3	Compute offset for array 
123:     LD  3,0(5)	Load array element z from AC into loc from AC2 
124:    LDA  2,0(3)	Copy accumulator to return register 
125:     LD  3,-1(1)	Load return address 
126:     LD  1,0(1)	Adjust fp 
127:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
128:    LDC  2,0(6)	Set return value to 0 
129:     LD  3,-1(1)	Load return address 
130:     LD  1,0(1)	Adjust fp 
131:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
132:     ST  3,-1(1)	Store return address 
* COMPOUND
133:    LDC  3,11(6)	Load size of m into AC 
134:     ST  3,-2(1)	Store size of m in data memory 
135:    LDA  3,-3(1)	Load base address of array m 
136:    LDC  3,10(6)	Load of type int constant 
137:     ST  3,-14(1)	Push array index onto temp stack 
138:    LDC  3,111(6)	Load of type int constant 
139:     LD  4,-14(1)	Pop array index into AC1 
140:    LDA  5,-3(1)	Load base address of array m into AC2 
141:    SUB  5,5,4	Compute offset for array 
142:     ST  3,0(5)	Store variable m from AC into loc from AC2 
* CALL dog
143:     ST  1,-14(1)	Store fp in ghost frame for dog 
144:    LDA  3,-3(1)	Load base address of array m 
145:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
146:    LDA  1,-14(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-94(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL output
150:     ST  1,-14(1)	Store fp in ghost frame for output 
151:    LDA  3,-3(1)	Load base address of array m 
152:    LDC  3,10(6)	Load of type int constant 
153:    LDA  5,-3(1)	Load base address of array m into AC2 
154:    SUB  5,5,3	Compute offset for array 
155:     LD  3,0(5)	Load array element m from AC into loc from AC2 
156:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
157:    LDA  1,-14(1)	Move the fp to the new frame 
158:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
159:    JMP  7,-154(7)	Call function 
160:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
161:    LDA  3,-1(0)	Load base address of array g 
162:    LDC  3,10(6)	Load of type int constant 
163:     ST  3,-14(1)	Push array index onto temp stack 
164:    LDC  3,222(6)	Load of type int constant 
165:     LD  4,-14(1)	Pop array index into AC1 
166:    LDA  5,-1(0)	Load base address of array g into AC2 
167:    SUB  5,5,4	Compute offset for array 
168:     ST  3,0(5)	Store variable g from AC into loc from AC2 
* CALL dog
169:     ST  1,-14(1)	Store fp in ghost frame for dog 
170:    LDA  3,-1(0)	Load base address of array g 
171:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
172:    LDA  1,-14(1)	Move the fp to the new frame 
173:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
174:    JMP  7,-120(7)	Call function 
175:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL output
176:     ST  1,-14(1)	Store fp in ghost frame for output 
177:    LDA  3,-1(0)	Load base address of array g 
178:    LDC  3,10(6)	Load of type int constant 
179:    LDA  5,-1(0)	Load base address of array g into AC2 
180:    SUB  5,5,3	Compute offset for array 
181:     LD  3,0(5)	Load array element g from AC into loc from AC2 
182:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
183:    LDA  1,-14(1)	Move the fp to the new frame 
184:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
185:    JMP  7,-180(7)	Call function 
186:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
187:    LDA  3,-25(0)	Load base address of array z 
188:    LDC  3,10(6)	Load of type int constant 
189:     ST  3,-14(1)	Push array index onto temp stack 
190:    LDC  3,333(6)	Load of type int constant 
191:     LD  4,-14(1)	Pop array index into AC1 
192:    LDA  5,-25(0)	Load base address of array z into AC2 
193:    SUB  5,5,4	Compute offset for array 
194:     ST  3,0(5)	Store variable z from AC into loc from AC2 
* CALL dog
195:     ST  1,-14(1)	Store fp in ghost frame for dog 
196:    LDA  3,-25(0)	Load base address of array z 
197:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
198:    LDA  1,-14(1)	Move the fp to the new frame 
199:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
200:    JMP  7,-146(7)	Call function 
201:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL output
202:     ST  1,-14(1)	Store fp in ghost frame for output 
203:    LDA  3,-25(0)	Load base address of array z 
204:    LDC  3,10(6)	Load of type int constant 
205:    LDA  5,-25(0)	Load base address of array z into AC2 
206:    SUB  5,5,3	Compute offset for array 
207:     LD  3,0(5)	Load array element z from AC into loc from AC2 
208:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
209:    LDA  1,-14(1)	Move the fp to the new frame 
210:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
211:    JMP  7,-206(7)	Call function 
212:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
213:    LDC  2,0(6)	Set return value to 0 
214:     LD  3,-1(1)	Load return address 
215:     LD  1,0(1)	Adjust fp 
216:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,216(7)	Jump to init [backpatch] 
* INIT
217:    LDA  1,-38(0)	set first frame at end of globals 
218:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
219:    LDC  3,12(6)	Load size of g into AC 
220:     ST  3,0(0)	Store size of g in data memory 
221:    LDC  3,10(6)	Load size of z into AC 
222:     ST  3,-13(0)	Store size of z in data memory 
223:    LDC  3,13(6)	Load size of z into AC 
224:     ST  3,-24(0)	Store size of z in data memory 
* END INIT GLOBALS AND STATICS
225:    LDA  3,1(7)	Return address in ac 
226:    JMP  7,-95(7)	Jump to main 
227:   HALT  0,0,0	DONE! 
* END INIT
