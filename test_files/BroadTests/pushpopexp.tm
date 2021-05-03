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
 40:    LDC  3,331(6)	Load of type int constant 
 41:     ST  3,0(0)	Assigning variable g in Global 
 42:    LDC  3,2(6)	Load of type int constant 
 43:     ST  3,-2(1)	Assigning variable a in Local 
 44:    LDC  3,3(6)	Load of type int constant 
 45:     ST  3,-3(1)	Assigning variable b in Local 
 46:    LDC  3,5(6)	Load of type int constant 
 47:     ST  3,-4(1)	Assigning variable c in Local 
 48:    LDC  3,7(6)	Load of type int constant 
 49:     ST  3,-5(1)	Assigning variable d in Local 
* CALL output
 50:     ST  1,-13(1)	Store fp in ghost frame for output 
 51:     LD  3,-5(1)	Load variable d into accumulator 
 52:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 53:    LDA  1,-13(1)	Move the fp to the new frame 
 54:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 55:    JMP  7,-50(7)	Call function 
 56:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 57:     ST  1,-13(1)	Store fp in ghost frame for output 
 58:     LD  3,-2(1)	Load variable a into accumulator 
 59:     ST  3,-16(1)	Push left side onto temp variable stack 
 60:     LD  3,-3(1)	Load variable b into accumulator 
 61:     ST  3,-17(1)	Push left side onto temp variable stack 
 62:     LD  3,-4(1)	Load variable c into accumulator 
 63:     LD  4,-17(1)	Pop left hand side into AC1 
 64:    MUL  3,4,3	* Multiplication Operation 
 65:     LD  4,-16(1)	Pop left hand side into AC1 
 66:    ADD  3,4,3	+ Operation 
 67:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 68:    LDA  1,-13(1)	Move the fp to the new frame 
 69:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 70:    JMP  7,-65(7)	Call function 
 71:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outputb
 72:     ST  1,-13(1)	Store fp in ghost frame for outputb 
 73:     LD  3,-5(1)	Load variable d into accumulator 
 74:     ST  3,-16(1)	Push left side onto temp variable stack 
 75:     LD  3,-2(1)	Load variable a into accumulator 
 76:     ST  3,-17(1)	Push left side onto temp variable stack 
 77:     LD  3,-3(1)	Load variable b into accumulator 
 78:     ST  3,-18(1)	Push left side onto temp variable stack 
 79:     LD  3,-4(1)	Load variable c into accumulator 
 80:     LD  4,-18(1)	Pop left hand side into AC1 
 81:    MUL  3,4,3	* Multiplication Operation 
 82:     LD  4,-17(1)	Pop left hand side into AC1 
 83:    ADD  3,4,3	+ Operation 
 84:     LD  4,-16(1)	Pop left hand side into AC1 
 85:    TGT  3,4,3	Greather than > operation store in AC 
 86:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 87:    LDA  1,-13(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-73(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 91:     ST  1,-13(1)	Store fp in ghost frame for outputb 
 92:     LD  3,-5(1)	Load variable d into accumulator 
 93:     ST  3,-16(1)	Push left side onto temp variable stack 
 94:     LD  3,-2(1)	Load variable a into accumulator 
 95:     ST  3,-17(1)	Push left side onto temp variable stack 
 96:     LD  3,-3(1)	Load variable b into accumulator 
 97:     ST  3,-18(1)	Push left side onto temp variable stack 
 98:     LD  3,-4(1)	Load variable c into accumulator 
 99:     LD  4,-18(1)	Pop left hand side into AC1 
100:    MUL  3,4,3	* Multiplication Operation 
101:     LD  4,-17(1)	Pop left hand side into AC1 
102:    ADD  3,4,3	+ Operation 
103:     LD  4,-16(1)	Pop left hand side into AC1 
104:    TGT  3,4,3	Greather than > operation store in AC 
105:     ST  3,-16(1)	Push left side onto temp variable stack 
106:     LD  3,-3(1)	Load variable b into accumulator 
107:     ST  3,-17(1)	Push left side onto temp variable stack 
108:     LD  3,-4(1)	Load variable c into accumulator 
109:     LD  4,-17(1)	Pop left hand side into AC1 
110:    TLT  3,4,3	Less than < operation store in AC 
111:     LD  4,-16(1)	Pop left hand side into AC1 
112:     OR  3,4,3	OR operation store in AC 
113:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
114:    LDA  1,-13(1)	Move the fp to the new frame 
115:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
116:    JMP  7,-100(7)	Call function 
117:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
118:     ST  1,-13(1)	Store fp in ghost frame for outnl 
* Begin call
119:    LDA  1,-13(1)	Move the fp to the new frame 
120:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
121:    JMP  7,-88(7)	Call function 
122:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* COMPOUND
123:    LDC  3,101(6)	Load of type int constant 
124:     ST  3,-6(1)	Assigning variable a in Local 
125:    LDC  3,103(6)	Load of type int constant 
126:     ST  3,-7(1)	Assigning variable b in Local 
127:    LDC  3,107(6)	Load of type int constant 
128:     ST  3,-8(1)	Assigning variable c in Local 
* CALL outputb
129:     ST  1,-13(1)	Store fp in ghost frame for outputb 
130:     LD  3,-5(1)	Load variable d into accumulator 
131:     ST  3,-16(1)	Push left side onto temp variable stack 
132:    LDC  3,20(6)	Load of type int constant 
133:     LD  4,-16(1)	Pop left hand side into AC1 
134:    MUL  3,4,3	* Multiplication Operation 
135:     ST  3,-16(1)	Push left side onto temp variable stack 
136:     LD  3,-6(1)	Load variable a into accumulator 
137:     ST  3,-17(1)	Push left side onto temp variable stack 
138:     LD  3,-8(1)	Load variable c into accumulator 
139:     ST  3,-18(1)	Push left side onto temp variable stack 
140:     LD  3,-7(1)	Load variable b into accumulator 
141:     LD  4,-18(1)	Pop left hand side into AC1 
142:    DIV  3,4,3	/ Division operation 
143:     LD  4,-17(1)	Pop left hand side into AC1 
144:    SUB  3,4,3	- Subtraction Operation 
145:     LD  4,-16(1)	Pop left hand side into AC1 
146:    TLT  3,4,3	Less than < operation store in AC 
147:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
148:    LDA  1,-13(1)	Move the fp to the new frame 
149:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
150:    JMP  7,-134(7)	Call function 
151:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* END COMPOUND
* COMPOUND
152:    LDC  3,101(6)	Load of type int constant 
153:     ST  3,-6(1)	Assigning variable w in Local 
154:    LDC  3,103(6)	Load of type int constant 
155:     ST  3,-7(1)	Assigning variable x in Local 
156:    LDC  3,107(6)	Load of type int constant 
157:     ST  3,-8(1)	Assigning variable y in Local 
158:    LDC  3,109(6)	Load of type int constant 
159:     ST  3,-9(1)	Assigning variable z in Local 
* CALL output
160:     ST  1,-13(1)	Store fp in ghost frame for output 
161:     LD  3,-6(1)	Load variable w into accumulator 
162:     ST  3,-16(1)	Push left side onto temp variable stack 
163:     LD  3,-7(1)	Load variable x into accumulator 
164:     LD  4,-16(1)	Pop left hand side into AC1 
165:    MUL  3,4,3	* Multiplication Operation 
166:     ST  3,-16(1)	Push left side onto temp variable stack 
167:     LD  3,-8(1)	Load variable y into accumulator 
168:     ST  3,-17(1)	Push left side onto temp variable stack 
169:     LD  3,-9(1)	Load variable z into accumulator 
170:     LD  4,-17(1)	Pop left hand side into AC1 
171:    MUL  3,4,3	* Multiplication Operation 
172:     LD  4,-16(1)	Pop left hand side into AC1 
173:    ADD  3,4,3	+ Operation 
174:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
175:    LDA  1,-13(1)	Move the fp to the new frame 
176:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
177:    JMP  7,-172(7)	Call function 
178:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
179:     ST  1,-13(1)	Store fp in ghost frame for outnl 
* Begin call
180:    LDA  1,-13(1)	Move the fp to the new frame 
181:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
182:    JMP  7,-149(7)	Call function 
183:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* CALL output
184:     ST  1,-13(1)	Store fp in ghost frame for output 
185:     LD  3,-2(1)	Load variable a into accumulator 
186:     ST  3,-16(1)	Push left side onto temp variable stack 
187:     LD  3,-3(1)	Load variable b into accumulator 
188:     LD  4,-16(1)	Pop left hand side into AC1 
189:    MUL  3,4,3	* Multiplication Operation 
190:     ST  3,-16(1)	Push left side onto temp variable stack 
191:     LD  3,-4(1)	Load variable c into accumulator 
192:     ST  3,-17(1)	Push left side onto temp variable stack 
193:     LD  3,-5(1)	Load variable d into accumulator 
194:     LD  4,-17(1)	Pop left hand side into AC1 
195:    MUL  3,4,3	* Multiplication Operation 
196:     LD  4,-16(1)	Pop left hand side into AC1 
197:    ADD  3,4,3	+ Operation 
198:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
199:    LDA  1,-13(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-196(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
203:     ST  1,-13(1)	Store fp in ghost frame for output 
204:     LD  3,0(0)	Load variable g into accumulator 
205:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
206:    LDA  1,-13(1)	Move the fp to the new frame 
207:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
208:    JMP  7,-203(7)	Call function 
209:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
210:     ST  1,-13(1)	Store fp in ghost frame for outnl 
* Begin call
211:    LDA  1,-13(1)	Move the fp to the new frame 
212:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
213:    JMP  7,-180(7)	Call function 
214:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
215:    LDC  2,0(6)	Set return value to 0 
216:     LD  3,-1(1)	Load return address 
217:     LD  1,0(1)	Adjust fp 
218:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,218(7)	Jump to init [backpatch] 
* INIT
219:    LDA  1,-2(0)	set first frame at end of globals 
220:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
221:    LDA  3,1(7)	Return address in ac 
222:    JMP  7,-184(7)	Jump to main 
223:   HALT  0,0,0	DONE! 
* END INIT
