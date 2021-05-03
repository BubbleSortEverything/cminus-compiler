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
* FUNCTION comb
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 40:     LD  3,-2(1)	Load variable a into accumulator 
 41:     ST  3,-4(1)	Push left side onto temp variable stack 
 42:     LD  3,-3(1)	Load variable b into accumulator 
 43:     LD  4,-4(1)	Pop left hand side into AC1 
 44:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 46:    LDC  3,1(6)	Load of type int constant 
 47:    LDA  2,0(3)	Copy accumulator to return register 
 48:     LD  3,-1(1)	Load return address 
 49:     LD  1,0(1)	Adjust fp 
 50:    JMP  7,0(3)	Return 
* IF JUMP TO END
 45:    JZR  3,6(7)	IF JMP TO ELSE 
 51:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 52:     LD  3,-3(1)	Load variable b into accumulator 
 53:     ST  3,-4(1)	Push left side onto temp variable stack 
 54:    LDC  3,0(6)	Load of type int constant 
 55:     LD  4,-4(1)	Pop left hand side into AC1 
 56:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 58:    LDC  3,1(6)	Load of type int constant 
 59:    LDA  2,0(3)	Copy accumulator to return register 
 60:     LD  3,-1(1)	Load return address 
 61:     LD  1,0(1)	Adjust fp 
 62:    JMP  7,0(3)	Return 
* IF JUMP TO END
 57:    JZR  3,6(7)	IF JMP TO ELSE 
 63:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 64:     LD  3,-3(1)	Load variable b into accumulator 
 65:     ST  3,-4(1)	Push left side onto temp variable stack 
 66:    LDC  3,1(6)	Load of type int constant 
 67:     LD  4,-4(1)	Pop left hand side into AC1 
 68:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 70:     LD  3,-2(1)	Load variable a into accumulator 
 71:    LDA  2,0(3)	Copy accumulator to return register 
 72:     LD  3,-1(1)	Load return address 
 73:     LD  1,0(1)	Adjust fp 
 74:    JMP  7,0(3)	Return 
* IF JUMP TO END
 69:    JZR  3,6(7)	IF JMP TO ELSE 
 75:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL comb
 76:     ST  1,-4(1)	Store fp in ghost frame for comb 
 77:     LD  3,-2(1)	Load variable a into accumulator 
 78:     ST  3,-8(1)	Push left side onto temp variable stack 
 79:    LDC  3,1(6)	Load of type int constant 
 80:     LD  4,-8(1)	Pop left hand side into AC1 
 81:    SUB  3,4,3	- Subtraction Operation 
 82:     ST  3,-6(1)	Push parameter onto new frame 
 83:     LD  3,-3(1)	Load variable b into accumulator 
 84:     ST  3,-8(1)	Push left side onto temp variable stack 
 85:    LDC  3,1(6)	Load of type int constant 
 86:     LD  4,-8(1)	Pop left hand side into AC1 
 87:    SUB  3,4,3	- Subtraction Operation 
 88:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 89:    LDA  1,-4(1)	Move the fp to the new frame 
 90:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 91:    JMP  7,-53(7)	Call function 
 92:    LDA  3,0(2)	Save return result in accumulator 
* END CALL comb
 93:     ST  3,-4(1)	Push left side onto temp variable stack 
* CALL comb
 94:     ST  1,-5(1)	Store fp in ghost frame for comb 
 95:     LD  3,-2(1)	Load variable a into accumulator 
 96:     ST  3,-9(1)	Push left side onto temp variable stack 
 97:    LDC  3,1(6)	Load of type int constant 
 98:     LD  4,-9(1)	Pop left hand side into AC1 
 99:    SUB  3,4,3	- Subtraction Operation 
100:     ST  3,-7(1)	Push parameter onto new frame 
101:     LD  3,-3(1)	Load variable b into accumulator 
102:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
103:    LDA  1,-5(1)	Move the fp to the new frame 
104:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
105:    JMP  7,-67(7)	Call function 
106:    LDA  3,0(2)	Save return result in accumulator 
* END CALL comb
107:     LD  4,-4(1)	Pop left hand side into AC1 
108:    ADD  3,4,3	+ Operation 
109:    LDA  2,0(3)	Copy accumulator to return register 
110:     LD  3,-1(1)	Load return address 
111:     LD  1,0(1)	Adjust fp 
112:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
113:    LDC  2,0(6)	Set return value to 0 
114:     LD  3,-1(1)	Load return address 
115:     LD  1,0(1)	Adjust fp 
116:    JMP  7,0(3)	Return 
* END FUNCTION comb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
117:     ST  3,-1(1)	Store return address 
* COMPOUND
* Beginning WHILE statement
118:    LDC  3,1(6)	Load of type bool constant 
* COMPOUND
* BEGIN IF BLOCK
* CALL input
120:     ST  1,-5(1)	Store fp in ghost frame for input 
* Begin call
121:    LDA  1,-5(1)	Move the fp to the new frame 
122:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
123:    JMP  7,-123(7)	Call function 
124:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
125:     ST  3,-4(1)	Assigning variable n in Local 
126:     ST  3,-5(1)	Push left side onto temp variable stack 
127:    LDC  3,0(6)	Load of type int constant 
128:     LD  4,-5(1)	Pop left hand side into AC1 
129:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* IF JUMP TO END
130:    JZR  3,2(7)	IF JMP TO ELSE 
132:    LDA  7,0(7)	JUMP TO END 
* END IF
133:    LDC  3,0(6)	Load of type int constant 
134:     ST  3,-2(1)	Assigning variable a in Local 
* Beginning WHILE statement
135:     LD  3,-2(1)	Load variable a into accumulator 
136:     ST  3,-5(1)	Push left side onto temp variable stack 
137:     LD  3,-4(1)	Load variable n into accumulator 
138:     LD  4,-5(1)	Pop left hand side into AC1 
139:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
141:    LDC  3,0(6)	Load of type int constant 
142:     ST  3,-3(1)	Assigning variable b in Local 
* Beginning WHILE statement
143:     LD  3,-3(1)	Load variable b into accumulator 
144:     ST  3,-5(1)	Push left side onto temp variable stack 
145:     LD  3,-2(1)	Load variable a into accumulator 
146:     LD  4,-5(1)	Pop left hand side into AC1 
147:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* CALL output
149:     ST  1,-5(1)	Store fp in ghost frame for output 
* CALL comb
150:     ST  1,-8(1)	Store fp in ghost frame for comb 
151:     LD  3,-2(1)	Load variable a into accumulator 
152:     ST  3,-10(1)	Push parameter onto new frame 
153:     LD  3,-3(1)	Load variable b into accumulator 
154:     ST  3,-11(1)	Push parameter onto new frame 
* Begin call
155:    LDA  1,-8(1)	Move the fp to the new frame 
156:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
157:    JMP  7,-119(7)	Call function 
158:    LDA  3,0(2)	Save return result in accumulator 
* END CALL comb
159:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
160:    LDA  1,-5(1)	Move the fp to the new frame 
161:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
162:    JMP  7,-157(7)	Call function 
163:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
164:     LD  4,-3(1)	Load lhs variable 
165:    LDA  3,1(4)	++ Increment accumulator operation 
166:     ST  3,-3(1)	Assigning variable b in Local 
* END COMPOUND
167:    JMP  7,-25(7)	Go to L1 
148:    JZR  3,19(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
168:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
169:    LDA  1,-5(1)	Move the fp to the new frame 
170:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
171:    JMP  7,-138(7)	Call function 
172:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
173:     LD  4,-2(1)	Load lhs variable 
174:    LDA  3,1(4)	++ Increment accumulator operation 
175:     ST  3,-2(1)	Assigning variable a in Local 
* END COMPOUND
176:    JMP  7,-42(7)	Go to L1 
140:    JZR  3,36(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
177:    JMP  7,-60(7)	Go to L1 
119:    JZR  3,58(7)	JMP if condition is false 
131:    JMP  0,46(7)	Break statement backpatch jump 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
178:    LDC  2,0(6)	Set return value to 0 
179:     LD  3,-1(1)	Load return address 
180:     LD  1,0(1)	Adjust fp 
181:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,181(7)	Jump to init [backpatch] 
* INIT
182:    LDA  1,0(0)	set first frame at end of globals 
183:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
184:    LDA  3,1(7)	Return address in ac 
185:    JMP  7,-69(7)	Jump to main 
186:   HALT  0,0,0	DONE! 
* END INIT
