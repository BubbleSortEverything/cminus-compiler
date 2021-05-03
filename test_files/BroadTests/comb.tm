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
 40:     LD  3,-2(1)	Load variable n into accumulator 
 41:     ST  3,-7(1)	Push left side onto temp variable stack 
 42:     LD  3,-3(1)	Load variable r into accumulator 
 43:     LD  4,-7(1)	Pop left hand side into AC1 
 44:    SUB  3,4,3	- Subtraction Operation 
 45:     ST  3,-7(1)	Push left side onto temp variable stack 
 46:    LDC  3,1(6)	Load of type int constant 
 47:     LD  4,-7(1)	Pop left hand side into AC1 
 48:    ADD  3,4,3	+ Operation 
 49:     ST  3,-6(1)	Assigning variable c in Local 
 50:     LD  3,-2(1)	Load variable n into accumulator 
 51:     ST  3,-7(1)	Push left side onto temp variable stack 
 52:     LD  3,-3(1)	Load variable r into accumulator 
 53:     LD  4,-7(1)	Pop left hand side into AC1 
 54:    SUB  3,4,3	- Subtraction Operation 
 55:     ST  3,-7(1)	Push left side onto temp variable stack 
 56:    LDC  3,2(6)	Load of type int constant 
 57:     LD  4,-7(1)	Pop left hand side into AC1 
 58:    ADD  3,4,3	+ Operation 
 59:     ST  3,-4(1)	Assigning variable i in Local 
 60:    LDC  3,2(6)	Load of type int constant 
 61:     ST  3,-5(1)	Assigning variable j in Local 
* Beginning WHILE statement
 62:     LD  3,-4(1)	Load variable i into accumulator 
 63:     ST  3,-7(1)	Push left side onto temp variable stack 
 64:     LD  3,-2(1)	Load variable n into accumulator 
 65:     LD  4,-7(1)	Pop left hand side into AC1 
 66:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
 68:     LD  3,-6(1)	Load variable c into accumulator 
 69:     ST  3,-7(1)	Push left side onto temp variable stack 
 70:     LD  3,-4(1)	Load variable i into accumulator 
 71:     LD  4,-7(1)	Pop left hand side into AC1 
 72:    MUL  3,4,3	* Multiplication Operation 
 73:     ST  3,-7(1)	Push left side onto temp variable stack 
 74:     LD  3,-5(1)	Load variable j into accumulator 
 75:     LD  4,-7(1)	Pop left hand side into AC1 
 76:    DIV  3,4,3	/ Division operation 
 77:     ST  3,-6(1)	Assigning variable c in Local 
 78:     LD  4,-4(1)	Load lhs variable 
 79:    LDA  3,1(4)	++ Increment accumulator operation 
 80:     ST  3,-4(1)	Assigning variable i in Local 
 81:     LD  4,-5(1)	Load lhs variable 
 82:    LDA  3,1(4)	++ Increment accumulator operation 
 83:     ST  3,-5(1)	Assigning variable j in Local 
* END COMPOUND
 84:    JMP  7,-23(7)	Go to L1 
 67:    JZR  3,17(7)	JMP if condition is false 
* End WHILE statement
 85:     LD  3,-6(1)	Load variable c into accumulator 
 86:    LDA  2,0(3)	Copy accumulator to return register 
 87:     LD  3,-1(1)	Load return address 
 88:     LD  1,0(1)	Adjust fp 
 89:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 90:    LDC  2,0(6)	Set return value to 0 
 91:     LD  3,-1(1)	Load return address 
 92:     LD  1,0(1)	Adjust fp 
 93:    JMP  7,0(3)	Return 
* END FUNCTION comb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 94:     ST  3,-1(1)	Store return address 
* COMPOUND
 95:    LDC  3,15(6)	Load of type int constant 
 96:     ST  3,-2(1)	Assigning variable max in Local 
 97:    LDC  3,2(6)	Load of type int constant 
 98:     ST  3,-3(1)	Assigning variable n in Local 
* Beginning WHILE statement
 99:     LD  3,-3(1)	Load variable n into accumulator 
100:     ST  3,-6(1)	Push left side onto temp variable stack 
101:     LD  3,-2(1)	Load variable max into accumulator 
102:     LD  4,-6(1)	Pop left hand side into AC1 
103:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
105:    LDC  3,2(6)	Load of type int constant 
106:     ST  3,-5(1)	Assigning variable r in Local 
* Beginning WHILE statement
107:     LD  3,-5(1)	Load variable r into accumulator 
108:     ST  3,-6(1)	Push left side onto temp variable stack 
109:     LD  3,-3(1)	Load variable n into accumulator 
110:     ST  3,-7(1)	Push left side onto temp variable stack 
111:    LDC  3,2(6)	Load of type int constant 
112:     LD  4,-7(1)	Pop left hand side into AC1 
113:    DIV  3,4,3	/ Division operation 
114:     LD  4,-6(1)	Pop left hand side into AC1 
115:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* CALL output
117:     ST  1,-6(1)	Store fp in ghost frame for output 
118:     LD  3,-3(1)	Load variable n into accumulator 
119:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
120:    LDA  1,-6(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-117(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
124:     ST  1,-6(1)	Store fp in ghost frame for output 
125:     LD  3,-5(1)	Load variable r into accumulator 
126:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
127:    LDA  1,-6(1)	Move the fp to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-124(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
131:     ST  1,-6(1)	Store fp in ghost frame for output 
* CALL comb
132:     ST  1,-9(1)	Store fp in ghost frame for comb 
133:     LD  3,-3(1)	Load variable n into accumulator 
134:     ST  3,-11(1)	Push parameter onto new frame 
135:     LD  3,-5(1)	Load variable r into accumulator 
136:     ST  3,-12(1)	Push parameter onto new frame 
* Begin call
137:    LDA  1,-9(1)	Move the fp to the new frame 
138:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
139:    JMP  7,-101(7)	Call function 
140:    LDA  3,0(2)	Save return result in accumulator 
* END CALL comb
141:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
142:    LDA  1,-6(1)	Move the fp to the new frame 
143:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
144:    JMP  7,-139(7)	Call function 
145:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
146:     ST  1,-6(1)	Store fp in ghost frame for outnl 
* Begin call
147:    LDA  1,-6(1)	Move the fp to the new frame 
148:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
149:    JMP  7,-116(7)	Call function 
150:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
151:     LD  4,-5(1)	Load lhs variable 
152:    LDA  3,1(4)	++ Increment accumulator operation 
153:     ST  3,-5(1)	Assigning variable r in Local 
* END COMPOUND
154:    JMP  7,-48(7)	Go to L1 
116:    JZR  3,38(7)	JMP if condition is false 
* End WHILE statement
155:     LD  4,-3(1)	Load lhs variable 
156:    LDA  3,1(4)	++ Increment accumulator operation 
157:     ST  3,-3(1)	Assigning variable n in Local 
* END COMPOUND
158:    JMP  7,-60(7)	Go to L1 
104:    JZR  3,54(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
159:    LDC  2,0(6)	Set return value to 0 
160:     LD  3,-1(1)	Load return address 
161:     LD  1,0(1)	Adjust fp 
162:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,162(7)	Jump to init [backpatch] 
* INIT
163:    LDA  1,0(0)	set first frame at end of globals 
164:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
165:    LDA  3,1(7)	Return address in ac 
166:    JMP  7,-73(7)	Jump to main 
167:   HALT  0,0,0	DONE! 
* END INIT
