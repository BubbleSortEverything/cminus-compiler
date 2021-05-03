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
 40:    LDC  3,7(6)	Load size of a into AC 
 41:     ST  3,-4(1)	Store size of a in data memory 
 42:    LDC  3,5(6)	Load size of b into AC 
 43:     ST  3,-12(1)	Store size of b in data memory 
 44:    LDC  3,88(6)	Load of type int constant 
 45:     ST  3,-2(1)	Assigning variable x in Local 
 46:     LD  3,-2(1)	Load variable x into accumulator 
 47:     ST  3,-20(1)	Push left side onto temp variable stack 
 48:    LDC  3,9(6)	Load of type int constant 
 49:     LD  4,-20(1)	Pop left hand side into AC1 
 50:    SUB  3,4,3	- Subtraction Operation 
 51:     ST  3,-3(1)	Assigning variable y in Local 
 52:     LD  3,-2(1)	Load variable x into accumulator 
 53:    NEG  3,3,0	- Change Sign Operation 
 54:     ST  3,-3(1)	Assigning variable y in Local 
* CALL output
 55:     ST  1,-20(1)	Store fp in ghost frame for output 
 56:     LD  3,-2(1)	Load variable x into accumulator 
 57:    NEG  3,3,0	- Change Sign Operation 
 58:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-20(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-56(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 63:     ST  1,-20(1)	Store fp in ghost frame for output 
 64:     LD  3,-3(1)	Load variable y into accumulator 
 65:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
 66:    LDA  1,-20(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-63(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 70:     ST  1,-20(1)	Store fp in ghost frame for outnl 
* Begin call
 71:    LDA  1,-20(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-40(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 75:     ST  1,-20(1)	Store fp in ghost frame for output 
 76:    LDC  3,3(6)	Load of type int constant 
 77:    NEG  3,3,0	- Change Sign Operation 
 78:    NEG  3,3,0	- Change Sign Operation 
 79:     ST  3,-23(1)	Push left side onto temp variable stack 
 80:    LDC  3,5(6)	Load of type int constant 
 81:    NEG  3,3,0	- Change Sign Operation 
 82:     LD  4,-23(1)	Pop left hand side into AC1 
 83:    MUL  3,4,3	* Multiplication Operation 
 84:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
 85:    LDA  1,-20(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-82(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 89:     ST  1,-20(1)	Store fp in ghost frame for output 
 90:    LDC  3,3(6)	Load of type int constant 
 91:    NEG  3,3,0	- Change Sign Operation 
 92:    NEG  3,3,0	- Change Sign Operation 
 93:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
 94:    LDA  1,-20(1)	Move the fp to the new frame 
 95:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 96:    JMP  7,-91(7)	Call function 
 97:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 98:     ST  1,-20(1)	Store fp in ghost frame for outnl 
* Begin call
 99:    LDA  1,-20(1)	Move the fp to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-68(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* COMPOUND
103:    LDC  3,1(6)	Load of type bool constant 
104:     ST  3,-18(1)	Assigning variable x in Local 
105:     LD  3,-18(1)	Load variable x into accumulator 
106:    LDC  4,1(6)	Load 1 into AC1 for not operation 
107:    TNE  3,4,3	Not ! operation store in AC 
108:     ST  3,-19(1)	Assigning variable y in Local 
* CALL outputb
109:     ST  1,-20(1)	Store fp in ghost frame for outputb 
110:     LD  3,-18(1)	Load variable x into accumulator 
111:    LDC  4,1(6)	Load 1 into AC1 for not operation 
112:    TNE  3,4,3	Not ! operation store in AC 
113:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
114:    LDA  1,-20(1)	Move the fp to the new frame 
115:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
116:    JMP  7,-100(7)	Call function 
117:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
118:     ST  1,-20(1)	Store fp in ghost frame for outputb 
119:     LD  3,-19(1)	Load variable y into accumulator 
120:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
121:    LDA  1,-20(1)	Move the fp to the new frame 
122:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
123:    JMP  7,-107(7)	Call function 
124:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
125:     ST  1,-20(1)	Store fp in ghost frame for outputb 
126:     LD  3,-18(1)	Load variable x into accumulator 
127:    LDC  4,1(6)	Load 1 into AC1 for not operation 
128:    TNE  3,4,3	Not ! operation store in AC 
129:    LDC  4,1(6)	Load 1 into AC1 for not operation 
130:    TNE  3,4,3	Not ! operation store in AC 
131:     ST  3,-23(1)	Push left side onto temp variable stack 
132:     LD  3,-19(1)	Load variable y into accumulator 
133:    LDC  4,1(6)	Load 1 into AC1 for not operation 
134:    TNE  3,4,3	Not ! operation store in AC 
135:     LD  4,-23(1)	Pop left hand side into AC1 
136:    AND  3,4,3	AND operation store in AC 
137:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
138:    LDA  1,-20(1)	Move the fp to the new frame 
139:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
140:    JMP  7,-124(7)	Call function 
141:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
142:     ST  1,-20(1)	Store fp in ghost frame for outputb 
143:     LD  3,-18(1)	Load variable x into accumulator 
144:    LDC  4,1(6)	Load 1 into AC1 for not operation 
145:    TNE  3,4,3	Not ! operation store in AC 
146:    LDC  4,1(6)	Load 1 into AC1 for not operation 
147:    TNE  3,4,3	Not ! operation store in AC 
148:     ST  3,-23(1)	Push left side onto temp variable stack 
149:     LD  3,-19(1)	Load variable y into accumulator 
150:    LDC  4,1(6)	Load 1 into AC1 for not operation 
151:    TNE  3,4,3	Not ! operation store in AC 
152:     LD  4,-23(1)	Pop left hand side into AC1 
153:     OR  3,4,3	OR operation store in AC 
154:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
155:    LDA  1,-20(1)	Move the fp to the new frame 
156:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
157:    JMP  7,-141(7)	Call function 
158:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
159:     ST  1,-20(1)	Store fp in ghost frame for outputb 
160:     LD  3,-19(1)	Load variable y into accumulator 
161:    LDC  4,1(6)	Load 1 into AC1 for not operation 
162:    TNE  3,4,3	Not ! operation store in AC 
163:    LDC  4,1(6)	Load 1 into AC1 for not operation 
164:    TNE  3,4,3	Not ! operation store in AC 
165:     ST  3,-23(1)	Push left side onto temp variable stack 
166:     LD  3,-18(1)	Load variable x into accumulator 
167:    LDC  4,1(6)	Load 1 into AC1 for not operation 
168:    TNE  3,4,3	Not ! operation store in AC 
169:     LD  4,-23(1)	Pop left hand side into AC1 
170:     OR  3,4,3	OR operation store in AC 
171:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
172:    LDA  1,-20(1)	Move the fp to the new frame 
173:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
174:    JMP  7,-158(7)	Call function 
175:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
176:     ST  1,-20(1)	Store fp in ghost frame for outputb 
177:     LD  3,-18(1)	Load variable x into accumulator 
178:    LDC  4,1(6)	Load 1 into AC1 for not operation 
179:    TNE  3,4,3	Not ! operation store in AC 
180:    LDC  4,1(6)	Load 1 into AC1 for not operation 
181:    TNE  3,4,3	Not ! operation store in AC 
182:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
183:    LDA  1,-20(1)	Move the fp to the new frame 
184:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
185:    JMP  7,-169(7)	Call function 
186:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
187:     ST  1,-20(1)	Store fp in ghost frame for outnl 
* Begin call
188:    LDA  1,-20(1)	Move the fp to the new frame 
189:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
190:    JMP  7,-157(7)	Call function 
191:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* CALL output
192:     ST  1,-20(1)	Store fp in ghost frame for output 
193:    LDA  3,-5(1)	Load base address of array a 
194:    LDA  3,-5(1)	Load address of base array a 
195:     LD  3,1(3)	Load array size 
196:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
197:    LDA  1,-20(1)	Move the fp to the new frame 
198:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
199:    JMP  7,-194(7)	Call function 
200:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
201:     ST  1,-20(1)	Store fp in ghost frame for output 
202:    LDA  3,-13(1)	Load base address of array b 
203:    LDA  3,-13(1)	Load address of base array b 
204:     LD  3,1(3)	Load array size 
205:     ST  3,-22(1)	Push parameter onto new frame 
* Begin call
206:    LDA  1,-20(1)	Move the fp to the new frame 
207:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
208:    JMP  7,-203(7)	Call function 
209:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
210:    LDC  2,0(6)	Set return value to 0 
211:     LD  3,-1(1)	Load return address 
212:     LD  1,0(1)	Adjust fp 
213:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,213(7)	Jump to init [backpatch] 
* INIT
214:    LDA  1,0(0)	set first frame at end of globals 
215:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
216:    LDA  3,1(7)	Return address in ac 
217:    JMP  7,-179(7)	Jump to main 
218:   HALT  0,0,0	DONE! 
* END INIT
