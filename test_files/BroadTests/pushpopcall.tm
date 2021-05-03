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
* BEGIN IF BLOCK
 40:     LD  3,-2(1)	Load variable x into accumulator 
 41:     ST  3,-3(1)	Push left side onto temp variable stack 
 42:    LDC  3,0(6)	Load of type int constant 
 43:     LD  4,-3(1)	Pop left hand side into AC1 
 44:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
 46:    LDC  3,1000(6)	Load of type int constant 
 47:    LDA  2,0(3)	Copy accumulator to return register 
 48:     LD  3,-1(1)	Load return address 
 49:     LD  1,0(1)	Adjust fp 
 50:    JMP  7,0(3)	Return 
* IF JUMP TO END
 45:    JZR  3,6(7)	IF JMP TO ELSE 
 51:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL output
 52:     ST  1,-3(1)	Store fp in ghost frame for output 
* CALL dog
 53:     ST  1,-6(1)	Store fp in ghost frame for dog 
 54:    LDC  3,666(6)	Load of type int constant 
 55:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 56:    LDA  1,-6(1)	Move the fp to the new frame 
 57:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 58:    JMP  7,-20(7)	Call function 
 59:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
 60:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 61:    LDA  1,-3(1)	Move the fp to the new frame 
 62:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 63:    JMP  7,-58(7)	Call function 
 64:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 65:     ST  1,-3(1)	Store fp in ghost frame for output 
 66:    LDC  3,777(6)	Load of type int constant 
 67:     ST  3,-6(1)	Push left side onto temp variable stack 
* CALL dog
 68:     ST  1,-7(1)	Store fp in ghost frame for dog 
 69:    LDC  3,888(6)	Load of type int constant 
 70:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-7(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-35(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
 75:     LD  4,-6(1)	Pop left hand side into AC1 
 76:    ADD  3,4,3	+ Operation 
 77:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 78:    LDA  1,-3(1)	Move the fp to the new frame 
 79:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 80:    JMP  7,-75(7)	Call function 
 81:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 82:     ST  1,-3(1)	Store fp in ghost frame for output 
 83:    LDC  3,111(6)	Load of type int constant 
 84:     ST  3,-6(1)	Push left side onto temp variable stack 
 85:    LDC  3,222(6)	Load of type int constant 
 86:     ST  3,-7(1)	Push left side onto temp variable stack 
* CALL dog
 87:     ST  1,-8(1)	Store fp in ghost frame for dog 
 88:    LDC  3,333(6)	Load of type int constant 
 89:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-8(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-54(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
 94:     LD  4,-7(1)	Pop left hand side into AC1 
 95:    MUL  3,4,3	* Multiplication Operation 
 96:     LD  4,-6(1)	Pop left hand side into AC1 
 97:    ADD  3,4,3	+ Operation 
 98:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 99:    LDA  1,-3(1)	Move the fp to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-96(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
103:     ST  1,-3(1)	Store fp in ghost frame for output 
* CALL dog
104:     ST  1,-6(1)	Store fp in ghost frame for dog 
* CALL dog
105:     ST  1,-9(1)	Store fp in ghost frame for dog 
106:    LDC  3,444(6)	Load of type int constant 
107:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
108:    LDA  1,-9(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-72(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
112:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
113:    LDA  1,-6(1)	Move the fp to the new frame 
114:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
115:    JMP  7,-77(7)	Call function 
116:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
117:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
118:    LDA  1,-3(1)	Move the fp to the new frame 
119:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
120:    JMP  7,-115(7)	Call function 
121:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
122:     ST  1,-3(1)	Store fp in ghost frame for output 
* CALL dog
123:     ST  1,-6(1)	Store fp in ghost frame for dog 
124:     LD  3,-2(1)	Load variable x into accumulator 
125:     ST  3,-9(1)	Push left side onto temp variable stack 
126:    LDC  3,1(6)	Load of type int constant 
127:     LD  4,-9(1)	Pop left hand side into AC1 
128:    ADD  3,4,3	+ Operation 
129:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
130:    LDA  1,-6(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-94(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
134:     ST  3,-6(1)	Push left side onto temp variable stack 
* CALL dog
135:     ST  1,-7(1)	Store fp in ghost frame for dog 
136:    LDC  3,1(6)	Load of type int constant 
137:     ST  3,-10(1)	Push left side onto temp variable stack 
138:     LD  3,-2(1)	Load variable x into accumulator 
139:     LD  4,-10(1)	Pop left hand side into AC1 
140:    ADD  3,4,3	+ Operation 
141:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
142:    LDA  1,-7(1)	Move the fp to the new frame 
143:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
144:    JMP  7,-106(7)	Call function 
145:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
146:     LD  4,-6(1)	Pop left hand side into AC1 
147:    ADD  3,4,3	+ Operation 
148:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
149:    LDA  1,-3(1)	Move the fp to the new frame 
150:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
151:    JMP  7,-146(7)	Call function 
152:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
153:     ST  1,-3(1)	Store fp in ghost frame for output 
* CALL dog
154:     ST  1,-6(1)	Store fp in ghost frame for dog 
155:    LDC  3,555(6)	Load of type int constant 
156:     ST  3,-9(1)	Push left side onto temp variable stack 
157:    LDC  3,666(6)	Load of type int constant 
158:     ST  3,-10(1)	Push left side onto temp variable stack 
159:     LD  3,-2(1)	Load variable x into accumulator 
160:     LD  4,-10(1)	Pop left hand side into AC1 
161:    MUL  3,4,3	* Multiplication Operation 
162:     LD  4,-9(1)	Pop left hand side into AC1 
163:    ADD  3,4,3	+ Operation 
164:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
165:    LDA  1,-6(1)	Move the fp to the new frame 
166:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
167:    JMP  7,-129(7)	Call function 
168:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
169:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
170:    LDA  1,-3(1)	Move the fp to the new frame 
171:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
172:    JMP  7,-167(7)	Call function 
173:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
174:    LDC  3,555(6)	Load of type int constant 
175:    LDA  2,0(3)	Copy accumulator to return register 
176:     LD  3,-1(1)	Load return address 
177:     LD  1,0(1)	Adjust fp 
178:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
179:    LDC  2,0(6)	Set return value to 0 
180:     LD  3,-1(1)	Load return address 
181:     LD  1,0(1)	Adjust fp 
182:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
183:     ST  3,-1(1)	Store return address 
* CALL output
184:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL dog
185:     ST  1,-5(1)	Store fp in ghost frame for dog 
186:    LDC  3,0(6)	Load of type int constant 
187:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
188:    LDA  1,-5(1)	Move the fp to the new frame 
189:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
190:    JMP  7,-152(7)	Call function 
191:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
192:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
193:    LDA  1,-2(1)	Move the fp to the new frame 
194:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
195:    JMP  7,-190(7)	Call function 
196:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* Add standard closing in case there is no return statement
197:    LDC  2,0(6)	Set return value to 0 
198:     LD  3,-1(1)	Load return address 
199:     LD  1,0(1)	Adjust fp 
200:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,200(7)	Jump to init [backpatch] 
* INIT
201:    LDA  1,-2(0)	set first frame at end of globals 
202:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
203:    LDA  3,1(7)	Return address in ac 
204:    JMP  7,-22(7)	Jump to main 
205:   HALT  0,0,0	DONE! 
* END INIT
