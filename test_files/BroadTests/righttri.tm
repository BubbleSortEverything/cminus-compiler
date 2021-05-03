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
 40:    LDC  3,1(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable a in Local 
 42:    LDC  3,1(6)	Load of type int constant 
 43:     ST  3,-4(1)	Assigning variable aa in Local 
 44:    LDC  3,0(6)	Load of type int constant 
 45:     ST  3,-6(1)	Assigning variable c in Local 
* Beginning WHILE statement
 46:     LD  3,-6(1)	Load variable c into accumulator 
 47:     ST  3,-8(1)	Push left side onto temp variable stack 
 48:    LDC  3,50(6)	Load of type int constant 
 49:     LD  4,-8(1)	Pop left hand side into AC1 
 50:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 52:    LDC  3,1(6)	Load of type int constant 
 53:     ST  3,-7(1)	Assigning variable cc in Local 
 54:     ST  3,-6(1)	Assigning variable c in Local 
 55:    LDC  3,1(6)	Load of type int constant 
 56:     ST  3,-3(1)	Assigning variable b in Local 
 57:    LDC  3,1(6)	Load of type int constant 
 58:     ST  3,-5(1)	Assigning variable bb in Local 
* Beginning WHILE statement
 59:     LD  3,-3(1)	Load variable b into accumulator 
 60:     ST  3,-8(1)	Push left side onto temp variable stack 
 61:     LD  3,-2(1)	Load variable a into accumulator 
 62:     LD  4,-8(1)	Pop left hand side into AC1 
 63:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
 65:     LD  3,-4(1)	Load variable aa into accumulator 
 66:     ST  3,-8(1)	Push left side onto temp variable stack 
 67:     LD  3,-5(1)	Load variable bb into accumulator 
 68:     LD  4,-8(1)	Pop left hand side into AC1 
 69:    ADD  3,4,3	+ Operation 
 70:     ST  3,-8(1)	Push left side onto temp variable stack 
 71:    LDC  3,2(6)	Load of type int constant 
 72:     LD  4,-8(1)	Pop left hand side into AC1 
 73:    DIV  3,4,3	/ Division operation 
 74:     ST  3,-8(1)	Push left side onto temp variable stack 
 75:    LDC  3,2(6)	Load of type int constant 
 76:     LD  4,-8(1)	Pop left hand side into AC1 
 77:    MOD  3,4,3	% mod operation 
 78:     ST  3,-8(1)	Push left side onto temp variable stack 
 79:    LDC  3,0(6)	Load of type int constant 
 80:     LD  4,-8(1)	Pop left hand side into AC1 
 81:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
* Beginning WHILE statement
 83:     LD  3,-7(1)	Load variable cc into accumulator 
 84:     ST  3,-8(1)	Push left side onto temp variable stack 
 85:     LD  3,-4(1)	Load variable aa into accumulator 
 86:     ST  3,-9(1)	Push left side onto temp variable stack 
 87:     LD  3,-5(1)	Load variable bb into accumulator 
 88:     LD  4,-9(1)	Pop left hand side into AC1 
 89:    ADD  3,4,3	+ Operation 
 90:     LD  4,-8(1)	Pop left hand side into AC1 
 91:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 93:     LD  3,-6(1)	Load variable c into accumulator 
 94:     ST  3,-8(1)	Push left side onto temp variable stack 
 95:    LDC  3,1(6)	Load of type int constant 
 96:     LD  4,-8(1)	Pop left hand side into AC1 
 97:    ADD  3,4,3	+ Operation 
 98:     ST  3,-6(1)	Assigning variable c in Local 
 99:     LD  3,-7(1)	Load variable cc into accumulator 
100:     ST  3,-8(1)	Push left side onto temp variable stack 
101:    LDC  3,2(6)	Load of type int constant 
102:     ST  3,-9(1)	Push left side onto temp variable stack 
103:     LD  3,-6(1)	Load variable c into accumulator 
104:     LD  4,-9(1)	Pop left hand side into AC1 
105:    MUL  3,4,3	* Multiplication Operation 
106:     LD  4,-8(1)	Pop left hand side into AC1 
107:    ADD  3,4,3	+ Operation 
108:     ST  3,-8(1)	Push left side onto temp variable stack 
109:    LDC  3,1(6)	Load of type int constant 
110:     LD  4,-8(1)	Pop left hand side into AC1 
111:    SUB  3,4,3	- Subtraction Operation 
112:     ST  3,-7(1)	Assigning variable cc in Local 
* END COMPOUND
113:    JMP  7,-31(7)	Go to L1 
 92:    JZR  3,21(7)	JMP if condition is false 
* End WHILE statement
* BEGIN IF BLOCK
114:     LD  3,-4(1)	Load variable aa into accumulator 
115:     ST  3,-8(1)	Push left side onto temp variable stack 
116:     LD  3,-5(1)	Load variable bb into accumulator 
117:     LD  4,-8(1)	Pop left hand side into AC1 
118:    ADD  3,4,3	+ Operation 
119:     ST  3,-8(1)	Push left side onto temp variable stack 
120:     LD  3,-7(1)	Load variable cc into accumulator 
121:     LD  4,-8(1)	Pop left hand side into AC1 
122:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* COMPOUND
* CALL output
124:     ST  1,-8(1)	Store fp in ghost frame for output 
125:     LD  3,-2(1)	Load variable a into accumulator 
126:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
127:    LDA  1,-8(1)	Move the fp to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-124(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
131:     ST  1,-8(1)	Store fp in ghost frame for output 
132:     LD  3,-3(1)	Load variable b into accumulator 
133:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
134:    LDA  1,-8(1)	Move the fp to the new frame 
135:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
136:    JMP  7,-131(7)	Call function 
137:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
138:     ST  1,-8(1)	Store fp in ghost frame for output 
139:     LD  3,-6(1)	Load variable c into accumulator 
140:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
141:    LDA  1,-8(1)	Move the fp to the new frame 
142:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
143:    JMP  7,-138(7)	Call function 
144:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
145:     ST  1,-8(1)	Store fp in ghost frame for outnl 
* Begin call
146:    LDA  1,-8(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-115(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* IF JUMP TO END
123:    JZR  3,27(7)	IF JMP TO ELSE 
150:    LDA  7,0(7)	JUMP TO END 
* END IF
* END COMPOUND
* IF JUMP TO END
 82:    JZR  3,69(7)	IF JMP TO ELSE 
151:    LDA  7,0(7)	JUMP TO END 
* END IF
152:     LD  3,-3(1)	Load variable b into accumulator 
153:     ST  3,-8(1)	Push left side onto temp variable stack 
154:    LDC  3,1(6)	Load of type int constant 
155:     LD  4,-8(1)	Pop left hand side into AC1 
156:    ADD  3,4,3	+ Operation 
157:     ST  3,-3(1)	Assigning variable b in Local 
158:     LD  3,-5(1)	Load variable bb into accumulator 
159:     ST  3,-8(1)	Push left side onto temp variable stack 
160:    LDC  3,2(6)	Load of type int constant 
161:     ST  3,-9(1)	Push left side onto temp variable stack 
162:     LD  3,-3(1)	Load variable b into accumulator 
163:     LD  4,-9(1)	Pop left hand side into AC1 
164:    MUL  3,4,3	* Multiplication Operation 
165:     LD  4,-8(1)	Pop left hand side into AC1 
166:    ADD  3,4,3	+ Operation 
167:     ST  3,-8(1)	Push left side onto temp variable stack 
168:    LDC  3,1(6)	Load of type int constant 
169:     LD  4,-8(1)	Pop left hand side into AC1 
170:    SUB  3,4,3	- Subtraction Operation 
171:     ST  3,-5(1)	Assigning variable bb in Local 
* END COMPOUND
172:    JMP  7,-114(7)	Go to L1 
 64:    JZR  3,108(7)	JMP if condition is false 
* End WHILE statement
173:     LD  3,-2(1)	Load variable a into accumulator 
174:     ST  3,-8(1)	Push left side onto temp variable stack 
175:    LDC  3,1(6)	Load of type int constant 
176:     LD  4,-8(1)	Pop left hand side into AC1 
177:    ADD  3,4,3	+ Operation 
178:     ST  3,-2(1)	Assigning variable a in Local 
179:     LD  3,-4(1)	Load variable aa into accumulator 
180:     ST  3,-8(1)	Push left side onto temp variable stack 
181:    LDC  3,2(6)	Load of type int constant 
182:     ST  3,-9(1)	Push left side onto temp variable stack 
183:     LD  3,-2(1)	Load variable a into accumulator 
184:     LD  4,-9(1)	Pop left hand side into AC1 
185:    MUL  3,4,3	* Multiplication Operation 
186:     LD  4,-8(1)	Pop left hand side into AC1 
187:    ADD  3,4,3	+ Operation 
188:     ST  3,-8(1)	Push left side onto temp variable stack 
189:    LDC  3,1(6)	Load of type int constant 
190:     LD  4,-8(1)	Pop left hand side into AC1 
191:    SUB  3,4,3	- Subtraction Operation 
192:     ST  3,-4(1)	Assigning variable aa in Local 
* END COMPOUND
193:    JMP  7,-148(7)	Go to L1 
 51:    JZR  3,142(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
194:    LDC  2,0(6)	Set return value to 0 
195:     LD  3,-1(1)	Load return address 
196:     LD  1,0(1)	Adjust fp 
197:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,197(7)	Jump to init [backpatch] 
* INIT
198:    LDA  1,0(0)	set first frame at end of globals 
199:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
200:    LDA  3,1(7)	Return address in ac 
201:    JMP  7,-163(7)	Jump to main 
202:   HALT  0,0,0	DONE! 
* END INIT
