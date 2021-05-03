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
 39:    LDC  3,111(6)	Load of type int constant 
 40:     ST  3,0(1)	Push left side onto temp variable stack 
 41:    LDC  3,22(6)	Load of type int constant 
 42:     ST  3,-1(1)	Push left side onto temp variable stack 
 43:    LDC  3,33(6)	Load of type int constant 
 44:     LD  4,-1(1)	Pop left hand side into AC1 
 45:    MUL  3,4,3	* Multiplication Operation 
 46:     LD  4,0(1)	Pop left hand side into AC1 
 47:    ADD  3,4,3	+ Operation 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION dog
 48:     ST  3,-1(1)	Store return address 
* COMPOUND
 49:    LDC  3,222(6)	Load of type int constant 
 50:     ST  3,-3(1)	Assigning variable y in Local 
 51:    LDC  3,333(6)	Load of type int constant 
* CALL output
 52:     ST  1,-4(1)	Store fp in ghost frame for output 
 53:     LD  3,-2(1)	Load variable x into accumulator 
 54:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 55:    LDA  1,-4(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-52(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 59:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 60:    LDA  1,-4(1)	Move the fp to the new frame 
 61:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 62:    JMP  7,-29(7)	Call function 
 63:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 64:     ST  1,-4(1)	Store fp in ghost frame for output 
 65:     LD  3,-10(0)	Load variable z into accumulator 
 66:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 67:    LDA  1,-4(1)	Move the fp to the new frame 
 68:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 69:    JMP  7,-64(7)	Call function 
 70:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 71:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 72:    LDA  1,-4(1)	Move the fp to the new frame 
 73:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 74:    JMP  7,-41(7)	Call function 
 75:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 76:     LD  3,-3(1)	Load variable y into accumulator 
 77:     ST  3,-2(1)	Assigning variable x in Parameter 
 78:     LD  3,0(0)	Load variable g into accumulator 
 79:     ST  3,-10(0)	Assigning variable z in LocalStatic 
* CALL output
 80:     ST  1,-4(1)	Store fp in ghost frame for output 
 81:     LD  3,-2(1)	Load variable x into accumulator 
 82:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 83:    LDA  1,-4(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-80(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 87:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 88:    LDA  1,-4(1)	Move the fp to the new frame 
 89:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 90:    JMP  7,-57(7)	Call function 
 91:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 92:     ST  1,-4(1)	Store fp in ghost frame for output 
 93:     LD  3,-10(0)	Load variable z into accumulator 
 94:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 95:    LDA  1,-4(1)	Move the fp to the new frame 
 96:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 97:    JMP  7,-92(7)	Call function 
 98:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 99:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
100:    LDA  1,-4(1)	Move the fp to the new frame 
101:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
102:    JMP  7,-69(7)	Call function 
103:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
104:     LD  3,-10(0)	Load variable z into accumulator 
105:    LDA  2,0(3)	Copy accumulator to return register 
106:     LD  3,-1(1)	Load return address 
107:     LD  1,0(1)	Adjust fp 
108:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
109:    LDC  2,0(6)	Set return value to 0 
110:     LD  3,-1(1)	Load return address 
111:     LD  1,0(1)	Adjust fp 
112:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
113:     ST  3,-1(1)	Store return address 
* COMPOUND
114:    LDC  3,444(6)	Load of type int constant 
115:     ST  3,-2(1)	Assigning variable m in Local 
116:    LDC  3,555(6)	Load of type int constant 
* CALL output
117:     ST  1,-3(1)	Store fp in ghost frame for output 
118:    LDA  3,-2(0)	Load base address of array h 
119:    LDA  3,-2(0)	Load address of base array h 
120:     LD  3,1(3)	Load array size 
121:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
122:    LDA  1,-3(1)	Move the fp to the new frame 
123:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
124:    JMP  7,-119(7)	Call function 
125:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
126:     ST  1,-3(1)	Store fp in ghost frame for output 
127:     LD  3,0(0)	Load variable g into accumulator 
128:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
129:    LDA  1,-3(1)	Move the fp to the new frame 
130:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
131:    JMP  7,-126(7)	Call function 
132:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
133:     ST  1,-3(1)	Store fp in ghost frame for output 
134:     LD  3,-2(1)	Load variable m into accumulator 
135:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
136:    LDA  1,-3(1)	Move the fp to the new frame 
137:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
138:    JMP  7,-133(7)	Call function 
139:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
140:     ST  1,-3(1)	Store fp in ghost frame for output 
141:     LD  3,-11(0)	Load variable z into accumulator 
142:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
143:    LDA  1,-3(1)	Move the fp to the new frame 
144:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
145:    JMP  7,-140(7)	Call function 
146:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
147:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
148:    LDA  1,-3(1)	Move the fp to the new frame 
149:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
150:    JMP  7,-117(7)	Call function 
151:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL dog
152:     ST  1,-3(1)	Store fp in ghost frame for dog 
153:     LD  3,-2(1)	Load variable m into accumulator 
154:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
155:    LDA  1,-3(1)	Move the fp to the new frame 
156:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
157:    JMP  7,-110(7)	Call function 
158:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* CALL output
159:     ST  1,-3(1)	Store fp in ghost frame for output 
160:     LD  3,-11(0)	Load variable z into accumulator 
161:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
162:    LDA  1,-3(1)	Move the fp to the new frame 
163:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
164:    JMP  7,-159(7)	Call function 
165:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
166:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
167:    LDA  1,-3(1)	Move the fp to the new frame 
168:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
169:    JMP  7,-136(7)	Call function 
170:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
171:    LDC  2,0(6)	Set return value to 0 
172:     LD  3,-1(1)	Load return address 
173:     LD  1,0(1)	Adjust fp 
174:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,174(7)	Jump to init [backpatch] 
* INIT
175:    LDA  1,-12(0)	set first frame at end of globals 
176:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
177:    LDC  3,111(6)	Load of type int constant 
178:     ST  3,-3(1)	Push left side onto temp variable stack 
179:    LDC  3,22(6)	Load of type int constant 
180:     ST  3,-4(1)	Push left side onto temp variable stack 
181:    LDC  3,33(6)	Load of type int constant 
182:     LD  4,-4(1)	Pop left hand side into AC1 
183:    MUL  3,4,3	* Multiplication Operation 
184:     LD  4,-3(1)	Pop left hand side into AC1 
185:    ADD  3,4,3	+ Operation 
186:     ST  3,0(0)	Assigning variable g in Global 
187:    LDC  3,8(6)	Load size of h into AC 
188:     ST  3,-1(0)	Store size of h in data memory 
189:    LDC  3,333(6)	Load of type int constant 
190:     ST  3,-10(0)	Assigning variable z in LocalStatic 
191:    LDC  3,555(6)	Load of type int constant 
192:     ST  3,-11(0)	Assigning variable z in LocalStatic 
* END INIT GLOBALS AND STATICS
193:    LDA  3,1(7)	Return address in ac 
194:    JMP  7,-82(7)	Jump to main 
195:   HALT  0,0,0	DONE! 
* END INIT
