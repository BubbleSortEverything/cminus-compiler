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
 40:    LDC  3,201(6)	Load size of n into AC 
 41:     ST  3,-4(1)	Store size of n in data memory 
 42:    LDC  3,200(6)	Load of type int constant 
 43:     ST  3,-2(1)	Assigning variable max in Local 
 44:    LDC  3,2(6)	Load of type int constant 
 45:     ST  3,-3(1)	Assigning variable k in Local 
* Beginning WHILE statement
 46:     LD  3,-3(1)	Load variable k into accumulator 
 47:     ST  3,-207(1)	Push left side onto temp variable stack 
 48:     LD  3,-2(1)	Load variable max into accumulator 
 49:     LD  4,-207(1)	Pop left hand side into AC1 
 50:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
 52:    LDA  3,-5(1)	Load base address of array n 
 53:     LD  3,-3(1)	Load variable k into accumulator 
 54:     ST  3,-207(1)	Push array index onto temp stack 
 55:    LDC  3,1(6)	Load of type bool constant 
 56:     LD  4,-207(1)	Pop array index into AC1 
 57:    LDA  5,-5(1)	Load base address of array n into AC2 
 58:    SUB  5,5,4	Compute offset for array 
 59:     ST  3,0(5)	Store variable n from AC into loc from AC2 
 60:     LD  3,-3(1)	Load variable k into accumulator 
 61:     ST  3,-207(1)	Push left side onto temp variable stack 
 62:    LDC  3,1(6)	Load of type int constant 
 63:     LD  4,-207(1)	Pop left hand side into AC1 
 64:    ADD  3,4,3	+ Operation 
 65:     ST  3,-3(1)	Assigning variable k in Local 
* END COMPOUND
 66:    JMP  7,-21(7)	Go to L1 
 51:    JZR  3,15(7)	JMP if condition is false 
* End WHILE statement
 67:    LDC  3,2(6)	Load of type int constant 
 68:     ST  3,-3(1)	Assigning variable k in Local 
* Beginning WHILE statement
 69:     LD  3,-3(1)	Load variable k into accumulator 
 70:     ST  3,-207(1)	Push left side onto temp variable stack 
 71:     LD  3,-3(1)	Load variable k into accumulator 
 72:     LD  4,-207(1)	Pop left hand side into AC1 
 73:    MUL  3,4,3	* Multiplication Operation 
 74:     ST  3,-207(1)	Push left side onto temp variable stack 
 75:     LD  3,-2(1)	Load variable max into accumulator 
 76:     LD  4,-207(1)	Pop left hand side into AC1 
 77:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
 79:     LD  3,-3(1)	Load variable k into accumulator 
 80:     ST  3,-207(1)	Push left side onto temp variable stack 
 81:     LD  3,-3(1)	Load variable k into accumulator 
 82:     LD  4,-207(1)	Pop left hand side into AC1 
 83:    MUL  3,4,3	* Multiplication Operation 
 84:     ST  3,-206(1)	Assigning variable j in Local 
* Beginning WHILE statement
 85:     LD  3,-206(1)	Load variable j into accumulator 
 86:     ST  3,-207(1)	Push left side onto temp variable stack 
 87:     LD  3,-2(1)	Load variable max into accumulator 
 88:     LD  4,-207(1)	Pop left hand side into AC1 
 89:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
 91:    LDA  3,-5(1)	Load base address of array n 
 92:     LD  3,-206(1)	Load variable j into accumulator 
 93:     ST  3,-207(1)	Push array index onto temp stack 
 94:    LDC  3,0(6)	Load of type bool constant 
 95:     LD  4,-207(1)	Pop array index into AC1 
 96:    LDA  5,-5(1)	Load base address of array n into AC2 
 97:    SUB  5,5,4	Compute offset for array 
 98:     ST  3,0(5)	Store variable n from AC into loc from AC2 
 99:     LD  3,-206(1)	Load variable j into accumulator 
100:     ST  3,-207(1)	Push left side onto temp variable stack 
101:     LD  3,-3(1)	Load variable k into accumulator 
102:     LD  4,-207(1)	Pop left hand side into AC1 
103:    ADD  3,4,3	+ Operation 
104:     ST  3,-206(1)	Assigning variable j in Local 
* END COMPOUND
105:    JMP  7,-21(7)	Go to L1 
 90:    JZR  3,15(7)	JMP if condition is false 
* End WHILE statement
106:     LD  3,-3(1)	Load variable k into accumulator 
107:     ST  3,-207(1)	Push left side onto temp variable stack 
108:    LDC  3,1(6)	Load of type int constant 
109:     LD  4,-207(1)	Pop left hand side into AC1 
110:    ADD  3,4,3	+ Operation 
111:     ST  3,-3(1)	Assigning variable k in Local 
* Beginning WHILE statement
112:     LD  3,-3(1)	Load variable k into accumulator 
113:     ST  3,-207(1)	Push left side onto temp variable stack 
114:     LD  3,-2(1)	Load variable max into accumulator 
115:     LD  4,-207(1)	Pop left hand side into AC1 
116:    TLE  3,4,3	LEQ <= operation store in AC 
117:     ST  3,-207(1)	Push left side onto temp variable stack 
118:    LDA  3,-5(1)	Load base address of array n 
119:     LD  3,-3(1)	Load variable k into accumulator 
120:    LDA  5,-5(1)	Load base address of array n into AC2 
121:    SUB  5,5,3	Compute offset for array 
122:     LD  3,0(5)	Load array element n from AC into loc from AC2 
123:    LDC  4,1(6)	Load 1 into AC1 for not operation 
124:    TNE  3,4,3	Not ! operation store in AC 
125:     LD  4,-207(1)	Pop left hand side into AC1 
126:    AND  3,4,3	AND operation store in AC 
128:     LD  3,-3(1)	Load variable k into accumulator 
129:     ST  3,-207(1)	Push left side onto temp variable stack 
130:    LDC  3,1(6)	Load of type int constant 
131:     LD  4,-207(1)	Pop left hand side into AC1 
132:    ADD  3,4,3	+ Operation 
133:     ST  3,-3(1)	Assigning variable k in Local 
134:    JMP  7,-23(7)	Go to L1 
127:    JZR  3,7(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
135:    JMP  7,-67(7)	Go to L1 
 78:    JZR  3,57(7)	JMP if condition is false 
* End WHILE statement
136:    LDC  3,2(6)	Load of type int constant 
137:     ST  3,-3(1)	Assigning variable k in Local 
* Beginning WHILE statement
138:     LD  3,-3(1)	Load variable k into accumulator 
139:     ST  3,-207(1)	Push left side onto temp variable stack 
140:     LD  3,-2(1)	Load variable max into accumulator 
141:     LD  4,-207(1)	Pop left hand side into AC1 
142:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
144:    LDA  3,-5(1)	Load base address of array n 
145:     LD  3,-3(1)	Load variable k into accumulator 
146:    LDA  5,-5(1)	Load base address of array n into AC2 
147:    SUB  5,5,3	Compute offset for array 
148:     LD  3,0(5)	Load array element n from AC into loc from AC2 
* IF JUMP TO ELSE
* COMPOUND
* CALL output
150:     ST  1,-207(1)	Store fp in ghost frame for output 
151:     LD  3,-3(1)	Load variable k into accumulator 
152:     ST  3,-209(1)	Push parameter onto new frame 
* Begin call
153:    LDA  1,-207(1)	Move the fp to the new frame 
154:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
155:    JMP  7,-150(7)	Call function 
156:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
157:     ST  1,-207(1)	Store fp in ghost frame for outnl 
* Begin call
158:    LDA  1,-207(1)	Move the fp to the new frame 
159:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
160:    JMP  7,-127(7)	Call function 
161:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* IF JUMP TO END
149:    JZR  3,13(7)	IF JMP TO ELSE 
162:    LDA  7,0(7)	JUMP TO END 
* END IF
163:     LD  3,-3(1)	Load variable k into accumulator 
164:     ST  3,-207(1)	Push left side onto temp variable stack 
165:    LDC  3,1(6)	Load of type int constant 
166:     LD  4,-207(1)	Pop left hand side into AC1 
167:    ADD  3,4,3	+ Operation 
168:     ST  3,-3(1)	Assigning variable k in Local 
* END COMPOUND
169:    JMP  7,-32(7)	Go to L1 
143:    JZR  3,26(7)	JMP if condition is false 
* End WHILE statement
170:    LDC  3,0(6)	Load of type int constant 
171:    LDA  2,0(3)	Copy accumulator to return register 
172:     LD  3,-1(1)	Load return address 
173:     LD  1,0(1)	Adjust fp 
174:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
175:    LDC  2,0(6)	Set return value to 0 
176:     LD  3,-1(1)	Load return address 
177:     LD  1,0(1)	Adjust fp 
178:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,178(7)	Jump to init [backpatch] 
* INIT
179:    LDA  1,0(0)	set first frame at end of globals 
180:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
181:    LDA  3,1(7)	Return address in ac 
182:    JMP  7,-144(7)	Jump to main 
183:   HALT  0,0,0	DONE! 
* END INIT
