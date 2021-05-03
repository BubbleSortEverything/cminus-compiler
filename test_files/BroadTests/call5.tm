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
* FUNCTION dog
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,2(6)	Load of type int constant 
 41:     ST  3,-3(1)	Push left side onto temp variable stack 
 42:     LD  3,-2(1)	Load variable x into accumulator 
 43:     LD  4,-3(1)	Pop left hand side into AC1 
 44:    MUL  3,4,3	* Multiplication Operation 
 45:     ST  3,0(0)	Assigning variable g in Global 
 46:     LD  3,-2(1)	Load variable x into accumulator 
 47:    LDA  2,0(3)	Copy accumulator to return register 
 48:     LD  3,-1(1)	Load return address 
 49:     LD  1,0(1)	Adjust fp 
 50:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 51:    LDC  2,0(6)	Set return value to 0 
 52:     LD  3,-1(1)	Load return address 
 53:     LD  1,0(1)	Adjust fp 
 54:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION cat
 55:     ST  3,-1(1)	Store return address 
* COMPOUND
 56:    LDC  3,3(6)	Load of type int constant 
 57:     ST  3,-3(1)	Push left side onto temp variable stack 
 58:     LD  3,-2(1)	Load variable x into accumulator 
 59:     LD  4,-3(1)	Pop left hand side into AC1 
 60:    MUL  3,4,3	* Multiplication Operation 
 61:     ST  3,0(0)	Assigning variable g in Global 
 62:    LDA  2,0(3)	Copy accumulator to return register 
 63:     LD  3,-1(1)	Load return address 
 64:     LD  1,0(1)	Adjust fp 
 65:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 66:    LDC  2,0(6)	Set return value to 0 
 67:     LD  3,-1(1)	Load return address 
 68:     LD  1,0(1)	Adjust fp 
 69:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION elk
 70:     ST  3,-1(1)	Store return address 
* COMPOUND
 71:    LDC  3,4(6)	Load of type int constant 
 72:     ST  3,-3(1)	Push left side onto temp variable stack 
 73:     LD  3,-2(1)	Load variable x into accumulator 
 74:     LD  4,-3(1)	Pop left hand side into AC1 
 75:    MUL  3,4,3	* Multiplication Operation 
 76:     ST  3,0(0)	Assigning variable g in Global 
* END COMPOUND
* Add standard closing in case there is no return statement
 77:    LDC  2,0(6)	Set return value to 0 
 78:     LD  3,-1(1)	Load return address 
 79:     LD  1,0(1)	Adjust fp 
 80:    JMP  7,0(3)	Return 
* END FUNCTION elk
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION fox
 81:     ST  3,-1(1)	Store return address 
* COMPOUND
 82:    LDC  3,5(6)	Load of type int constant 
 83:     ST  3,-3(1)	Push left side onto temp variable stack 
 84:     LD  3,-2(1)	Load variable x into accumulator 
 85:     LD  4,-3(1)	Pop left hand side into AC1 
 86:    MUL  3,4,3	* Multiplication Operation 
 87:     ST  3,0(0)	Assigning variable g in Global 
 88:     LD  3,0(0)	Load variable g into accumulator 
 89:     ST  3,-3(1)	Push left side onto temp variable stack 
 90:    LDC  3,1(6)	Load of type int constant 
 91:     LD  4,-3(1)	Pop left hand side into AC1 
 92:    ADD  3,4,3	+ Operation 
 93:    LDA  2,0(3)	Copy accumulator to return register 
 94:     LD  3,-1(1)	Load return address 
 95:     LD  1,0(1)	Adjust fp 
 96:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 97:    LDC  2,0(6)	Set return value to 0 
 98:     LD  3,-1(1)	Load return address 
 99:     LD  1,0(1)	Adjust fp 
100:    JMP  7,0(3)	Return 
* END FUNCTION fox
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
101:     ST  3,-1(1)	Store return address 
* COMPOUND
102:    LDC  3,1279(6)	Load of type int constant 
103:     ST  3,0(0)	Assigning variable g in Global 
* CALL output
104:     ST  1,-2(1)	Store fp in ghost frame for output 
105:     LD  3,0(0)	Load variable g into accumulator 
106:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
107:    LDA  1,-2(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-104(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
111:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL dog
112:     ST  1,-5(1)	Store fp in ghost frame for dog 
113:    LDC  3,111(6)	Load of type int constant 
114:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
115:    LDA  1,-5(1)	Move the fp to the new frame 
116:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
117:    JMP  7,-79(7)	Call function 
118:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
119:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
120:    LDA  1,-2(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-117(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
124:     ST  1,-2(1)	Store fp in ghost frame for output 
125:     LD  3,0(0)	Load variable g into accumulator 
126:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
127:    LDA  1,-2(1)	Move the fp to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-124(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL cat
131:     ST  1,-2(1)	Store fp in ghost frame for cat 
132:    LDC  3,222(6)	Load of type int constant 
133:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
134:    LDA  1,-2(1)	Move the fp to the new frame 
135:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
136:    JMP  7,-82(7)	Call function 
137:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* CALL output
138:     ST  1,-2(1)	Store fp in ghost frame for output 
139:     LD  3,0(0)	Load variable g into accumulator 
140:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
141:    LDA  1,-2(1)	Move the fp to the new frame 
142:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
143:    JMP  7,-138(7)	Call function 
144:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL elk
145:     ST  1,-2(1)	Store fp in ghost frame for elk 
146:    LDC  3,333(6)	Load of type int constant 
147:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
148:    LDA  1,-2(1)	Move the fp to the new frame 
149:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
150:    JMP  7,-81(7)	Call function 
151:    LDA  3,0(2)	Save return result in accumulator 
* END CALL elk
* CALL output
152:     ST  1,-2(1)	Store fp in ghost frame for output 
153:     LD  3,0(0)	Load variable g into accumulator 
154:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
155:    LDA  1,-2(1)	Move the fp to the new frame 
156:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
157:    JMP  7,-152(7)	Call function 
158:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
159:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL fox
160:     ST  1,-5(1)	Store fp in ghost frame for fox 
161:    LDC  3,444(6)	Load of type int constant 
162:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
163:    LDA  1,-5(1)	Move the fp to the new frame 
164:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
165:    JMP  7,-85(7)	Call function 
166:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fox
167:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
168:    LDA  1,-2(1)	Move the fp to the new frame 
169:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
170:    JMP  7,-165(7)	Call function 
171:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
172:     ST  1,-2(1)	Store fp in ghost frame for output 
173:     LD  3,0(0)	Load variable g into accumulator 
174:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
175:    LDA  1,-2(1)	Move the fp to the new frame 
176:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
177:    JMP  7,-172(7)	Call function 
178:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
179:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
180:    LDA  1,-2(1)	Move the fp to the new frame 
181:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
182:    JMP  7,-149(7)	Call function 
183:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
184:    LDC  2,0(6)	Set return value to 0 
185:     LD  3,-1(1)	Load return address 
186:     LD  1,0(1)	Adjust fp 
187:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,187(7)	Jump to init [backpatch] 
* INIT
188:    LDA  1,-1(0)	set first frame at end of globals 
189:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
190:    LDA  3,1(7)	Return address in ac 
191:    JMP  7,-91(7)	Jump to main 
192:   HALT  0,0,0	DONE! 
* END INIT
