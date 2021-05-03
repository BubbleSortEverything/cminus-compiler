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
* FUNCTION minloc
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:     LD  3,-3(1)	Load variable low into accumulator 
 41:     ST  3,-7(1)	Assigning variable k in Local 
 42:     LD  3,-2(1)	Load base address of array a 
 43:     LD  3,-3(1)	Load variable low into accumulator 
 44:     LD  5,-2(1)	Load base address of array a into AC2 
 45:    SUB  5,5,3	Compute offset for array 
 46:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 47:     ST  3,-6(1)	Assigning variable x in Local 
 48:     LD  3,-3(1)	Load variable low into accumulator 
 49:     ST  3,-8(1)	Push left side onto temp variable stack 
 50:    LDC  3,1(6)	Load of type int constant 
 51:     LD  4,-8(1)	Pop left hand side into AC1 
 52:    ADD  3,4,3	+ Operation 
 53:     ST  3,-5(1)	Assigning variable i in Local 
* Beginning WHILE statement
 54:     LD  3,-5(1)	Load variable i into accumulator 
 55:     ST  3,-8(1)	Push left side onto temp variable stack 
 56:     LD  3,-4(1)	Load variable high into accumulator 
 57:     LD  4,-8(1)	Pop left hand side into AC1 
 58:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
 60:     LD  3,-2(1)	Load base address of array a 
 61:     LD  3,-5(1)	Load variable i into accumulator 
 62:     LD  5,-2(1)	Load base address of array a into AC2 
 63:    SUB  5,5,3	Compute offset for array 
 64:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 65:     ST  3,-8(1)	Push left side onto temp variable stack 
 66:     LD  3,-6(1)	Load variable x into accumulator 
 67:     LD  4,-8(1)	Pop left hand side into AC1 
 68:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
 70:     LD  3,-2(1)	Load base address of array a 
 71:     LD  3,-5(1)	Load variable i into accumulator 
 72:     LD  5,-2(1)	Load base address of array a into AC2 
 73:    SUB  5,5,3	Compute offset for array 
 74:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 75:     ST  3,-6(1)	Assigning variable x in Local 
 76:     LD  3,-5(1)	Load variable i into accumulator 
 77:     ST  3,-7(1)	Assigning variable k in Local 
* END COMPOUND
* IF JUMP TO END
 69:    JZR  3,9(7)	IF JMP TO ELSE 
 78:    LDA  7,0(7)	JUMP TO END 
* END IF
 79:     LD  4,-5(1)	Load lhs variable 
 80:    LDA  3,1(4)	++ Increment accumulator operation 
 81:     ST  3,-5(1)	Assigning variable i in Local 
* END COMPOUND
 82:    JMP  7,-29(7)	Go to L1 
 59:    JZR  3,23(7)	JMP if condition is false 
* End WHILE statement
 83:     LD  3,-7(1)	Load variable k into accumulator 
 84:    LDA  2,0(3)	Copy accumulator to return register 
 85:     LD  3,-1(1)	Load return address 
 86:     LD  1,0(1)	Adjust fp 
 87:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 88:    LDC  2,0(6)	Set return value to 0 
 89:     LD  3,-1(1)	Load return address 
 90:     LD  1,0(1)	Adjust fp 
 91:    JMP  7,0(3)	Return 
* END FUNCTION minloc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION sort
 92:     ST  3,-1(1)	Store return address 
* COMPOUND
 93:     LD  3,-3(1)	Load variable low into accumulator 
 94:     ST  3,-5(1)	Assigning variable i in Local 
* Beginning WHILE statement
 95:     LD  3,-5(1)	Load variable i into accumulator 
 96:     ST  3,-8(1)	Push left side onto temp variable stack 
 97:     LD  3,-4(1)	Load variable high into accumulator 
 98:     ST  3,-9(1)	Push left side onto temp variable stack 
 99:    LDC  3,1(6)	Load of type int constant 
100:     LD  4,-9(1)	Pop left hand side into AC1 
101:    SUB  3,4,3	- Subtraction Operation 
102:     LD  4,-8(1)	Pop left hand side into AC1 
103:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL minloc
105:     ST  1,-8(1)	Store fp in ghost frame for minloc 
106:     LD  3,-2(1)	Load base address of array a 
107:     ST  3,-10(1)	Push parameter onto new frame 
108:     LD  3,-5(1)	Load variable i into accumulator 
109:     ST  3,-11(1)	Push parameter onto new frame 
110:     LD  3,-4(1)	Load variable high into accumulator 
111:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
112:    LDA  1,-8(1)	Move the fp to the new frame 
113:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
114:    JMP  7,-76(7)	Call function 
115:    LDA  3,0(2)	Save return result in accumulator 
* END CALL minloc
116:     ST  3,-6(1)	Assigning variable k in Local 
117:     LD  3,-2(1)	Load base address of array a 
118:     LD  3,-6(1)	Load variable k into accumulator 
119:     LD  5,-2(1)	Load base address of array a into AC2 
120:    SUB  5,5,3	Compute offset for array 
121:     LD  3,0(5)	Load array element a from AC into loc from AC2 
122:     ST  3,-7(1)	Assigning variable t in Local 
123:     LD  3,-2(1)	Load base address of array a 
124:     LD  3,-6(1)	Load variable k into accumulator 
125:     ST  3,-8(1)	Push array index onto temp stack 
126:     LD  3,-2(1)	Load base address of array a 
127:     LD  3,-5(1)	Load variable i into accumulator 
128:     LD  5,-2(1)	Load base address of array a into AC2 
129:    SUB  5,5,3	Compute offset for array 
130:     LD  3,0(5)	Load array element a from AC into loc from AC2 
131:     LD  4,-8(1)	Pop array index into AC1 
132:     LD  5,-2(1)	Load base address of array a into AC2 
133:    SUB  5,5,4	Compute offset for array 
134:     ST  3,0(5)	Store variable a from AC into loc from AC2 
135:     LD  3,-2(1)	Load base address of array a 
136:     LD  3,-5(1)	Load variable i into accumulator 
137:     ST  3,-8(1)	Push array index onto temp stack 
138:     LD  3,-7(1)	Load variable t into accumulator 
139:     LD  4,-8(1)	Pop array index into AC1 
140:     LD  5,-2(1)	Load base address of array a into AC2 
141:    SUB  5,5,4	Compute offset for array 
142:     ST  3,0(5)	Store variable a from AC into loc from AC2 
143:     LD  4,-5(1)	Load lhs variable 
144:    LDA  3,1(4)	++ Increment accumulator operation 
145:     ST  3,-5(1)	Assigning variable i in Local 
* END COMPOUND
146:    JMP  7,-52(7)	Go to L1 
104:    JZR  3,42(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
147:    LDC  2,0(6)	Set return value to 0 
148:     LD  3,-1(1)	Load return address 
149:     LD  1,0(1)	Adjust fp 
150:    JMP  7,0(3)	Return 
* END FUNCTION sort
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
151:     ST  3,-1(1)	Store return address 
* COMPOUND
152:    LDC  3,0(6)	Load of type int constant 
153:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
154:     LD  3,-2(1)	Load variable i into accumulator 
155:     ST  3,-3(1)	Push left side onto temp variable stack 
156:    LDC  3,10(6)	Load of type int constant 
157:     LD  4,-3(1)	Pop left hand side into AC1 
158:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
160:    LDA  3,-1(0)	Load base address of array x 
161:     LD  3,-2(1)	Load variable i into accumulator 
162:     ST  3,-3(1)	Push array index onto temp stack 
* CALL input
163:     ST  1,-4(1)	Store fp in ghost frame for input 
* Begin call
164:    LDA  1,-4(1)	Move the fp to the new frame 
165:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
166:    JMP  7,-166(7)	Call function 
167:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
168:     LD  4,-3(1)	Pop array index into AC1 
169:    LDA  5,-1(0)	Load base address of array x into AC2 
170:    SUB  5,5,4	Compute offset for array 
171:     ST  3,0(5)	Store variable x from AC into loc from AC2 
172:     LD  4,-2(1)	Load lhs variable 
173:    LDA  3,1(4)	++ Increment accumulator operation 
174:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
175:    JMP  7,-22(7)	Go to L1 
159:    JZR  3,16(7)	JMP if condition is false 
* End WHILE statement
* CALL sort
176:     ST  1,-3(1)	Store fp in ghost frame for sort 
177:    LDA  3,-1(0)	Load base address of array x 
178:     ST  3,-5(1)	Push parameter onto new frame 
179:    LDC  3,0(6)	Load of type int constant 
180:     ST  3,-6(1)	Push parameter onto new frame 
181:    LDC  3,10(6)	Load of type int constant 
182:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
183:    LDA  1,-3(1)	Move the fp to the new frame 
184:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
185:    JMP  7,-94(7)	Call function 
186:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sort
187:    LDC  3,0(6)	Load of type int constant 
188:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
189:     LD  3,-2(1)	Load variable i into accumulator 
190:     ST  3,-3(1)	Push left side onto temp variable stack 
191:    LDC  3,10(6)	Load of type int constant 
192:     LD  4,-3(1)	Pop left hand side into AC1 
193:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
195:     ST  1,-3(1)	Store fp in ghost frame for output 
196:    LDA  3,-1(0)	Load base address of array x 
197:     LD  3,-2(1)	Load variable i into accumulator 
198:    LDA  5,-1(0)	Load base address of array x into AC2 
199:    SUB  5,5,3	Compute offset for array 
200:     LD  3,0(5)	Load array element x from AC into loc from AC2 
201:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
202:    LDA  1,-3(1)	Move the fp to the new frame 
203:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
204:    JMP  7,-199(7)	Call function 
205:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
206:     LD  4,-2(1)	Load lhs variable 
207:    LDA  3,1(4)	++ Increment accumulator operation 
208:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
209:    JMP  7,-21(7)	Go to L1 
194:    JZR  3,15(7)	JMP if condition is false 
* End WHILE statement
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
214:    LDA  1,-11(0)	set first frame at end of globals 
215:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
216:    LDC  3,10(6)	Load size of x into AC 
217:     ST  3,0(0)	Store size of x in data memory 
* END INIT GLOBALS AND STATICS
218:    LDA  3,1(7)	Return address in ac 
219:    JMP  7,-69(7)	Jump to main 
220:   HALT  0,0,0	DONE! 
* END INIT
