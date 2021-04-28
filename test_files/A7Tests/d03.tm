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
 40:    LDC  3,755(6)	Load type int constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
 42:    LDC  3,88(6)	Load type int constant 
 43:     ST  3,-3(1)	Assigning variable y in Local 
 44:    LDC  3,3(6)	Load type int constant 
 45:     ST  3,-4(1)	Assigning variable z in Local 
* CALL output
 46:     ST  1,-5(1)	Store fp in ghost frame for output 
 47:     LD  3,-2(1)	Load variable x into accumulator 
 48:     ST  3,-8(1)	Push left side onto temp variable stack 
 49:     LD  3,-3(1)	Load variable y into accumulator 
 50:     ST  3,-9(1)	Push left side onto temp variable stack 
 51:     LD  3,-4(1)	Load variable z into accumulator 
 52:     LD  4,-9(1)	Pop left hand side into AC1 
 53:    MUL  3,4,3	* Multiplication Operation 
 54:     LD  4,-8(1)	Pop left hand side into AC1 
 55:    ADD  3,4,3	+ Operation 
 56:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 57:    LDA  1,-5(1)	Move the fp to the new frame 
 58:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 59:    JMP  7,-54(7)	Call function 
 60:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 61:     ST  1,-5(1)	Store fp in ghost frame for output 
 62:     LD  3,-2(1)	Load variable x into accumulator 
 63:     ST  3,-8(1)	Push left side onto temp variable stack 
 64:     LD  3,-3(1)	Load variable y into accumulator 
 65:     LD  4,-8(1)	Pop left hand side into AC1 
 66:    MUL  3,4,3	* Multiplication Operation 
 67:     ST  3,-8(1)	Push left side onto temp variable stack 
 68:     LD  3,-4(1)	Load variable z into accumulator 
 69:     LD  4,-8(1)	Pop left hand side into AC1 
 70:    ADD  3,4,3	+ Operation 
 71:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 72:    LDA  1,-5(1)	Move the fp to the new frame 
 73:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 74:    JMP  7,-69(7)	Call function 
 75:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 76:     ST  1,-5(1)	Store fp in ghost frame for output 
 77:     LD  3,-2(1)	Load variable x into accumulator 
 78:     ST  3,-8(1)	Push left side onto temp variable stack 
 79:     LD  3,-3(1)	Load variable y into accumulator 
 80:     LD  4,-8(1)	Pop left hand side into AC1 
 81:    SUB  3,4,3	- Subtraction Operation 
 82:     ST  3,-8(1)	Push left side onto temp variable stack 
 83:     LD  3,-4(1)	Load variable z into accumulator 
 84:     LD  4,-8(1)	Pop left hand side into AC1 
 85:    SUB  3,4,3	- Subtraction Operation 
 86:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 87:    LDA  1,-5(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-84(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 91:     ST  1,-5(1)	Store fp in ghost frame for output 
 92:     LD  3,-2(1)	Load variable x into accumulator 
 93:     ST  3,-8(1)	Push left side onto temp variable stack 
 94:     LD  3,-3(1)	Load variable y into accumulator 
 95:     LD  4,-8(1)	Pop left hand side into AC1 
 96:    DIV  3,4,3	/ Division operation 
 97:     ST  3,-8(1)	Push left side onto temp variable stack 
 98:     LD  3,-4(1)	Load variable z into accumulator 
 99:     LD  4,-8(1)	Pop left hand side into AC1 
100:    DIV  3,4,3	/ Division operation 
101:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
102:    LDA  1,-5(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-99(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
106:     ST  1,-5(1)	Store fp in ghost frame for output 
107:     LD  3,-2(1)	Load variable x into accumulator 
108:     ST  3,-8(1)	Push left side onto temp variable stack 
109:     LD  3,-3(1)	Load variable y into accumulator 
110:     LD  4,-8(1)	Pop left hand side into AC1 
111:    MUL  3,4,3	* Multiplication Operation 
112:     ST  3,-8(1)	Push left side onto temp variable stack 
113:     LD  3,-4(1)	Load variable z into accumulator 
114:     ST  3,-9(1)	Push left side onto temp variable stack 
115:     LD  3,-4(1)	Load variable z into accumulator 
116:     LD  4,-9(1)	Pop left hand side into AC1 
117:    MUL  3,4,3	* Multiplication Operation 
118:     LD  4,-8(1)	Pop left hand side into AC1 
119:    ADD  3,4,3	+ Operation 
120:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
121:    LDA  1,-5(1)	Move the fp to the new frame 
122:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
123:    JMP  7,-118(7)	Call function 
124:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
125:     ST  1,-5(1)	Store fp in ghost frame for output 
126:     LD  3,-2(1)	Load variable x into accumulator 
127:     ST  3,-8(1)	Push left side onto temp variable stack 
128:     LD  3,-3(1)	Load variable y into accumulator 
129:     LD  4,-8(1)	Pop left hand side into AC1 
130:    MOD  3,4,3	% mod operation 
131:     ST  3,-8(1)	Push left side onto temp variable stack 
132:     LD  3,-4(1)	Load variable z into accumulator 
133:     LD  4,-8(1)	Pop left hand side into AC1 
134:    MOD  3,4,3	% mod operation 
135:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
136:    LDA  1,-5(1)	Move the fp to the new frame 
137:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
138:    JMP  7,-133(7)	Call function 
139:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
140:     ST  1,-5(1)	Store fp in ghost frame for output 
141:     LD  3,-2(1)	Load variable x into accumulator 
142:    NEG  3,3,0	- Change Sign Operation 
143:     ST  3,-8(1)	Push left side onto temp variable stack 
144:     LD  3,-3(1)	Load variable y into accumulator 
145:     ST  3,-9(1)	Push left side onto temp variable stack 
146:     LD  3,-4(1)	Load variable z into accumulator 
147:     LD  4,-9(1)	Pop left hand side into AC1 
148:    MUL  3,4,3	* Multiplication Operation 
149:     LD  4,-8(1)	Pop left hand side into AC1 
150:    ADD  3,4,3	+ Operation 
151:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
152:    LDA  1,-5(1)	Move the fp to the new frame 
153:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
154:    JMP  7,-149(7)	Call function 
155:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
156:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
157:    LDA  1,-5(1)	Move the fp to the new frame 
158:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
159:    JMP  7,-126(7)	Call function 
160:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
161:    LDC  2,0(6)	Set return value to 0 
162:     LD  3,-1(1)	Load return address 
163:     LD  1,0(1)	Adjust fp 
164:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,164(7)	Jump to init [backpatch] 
* INIT
165:    LDA  1,0(0)	set first frame at end of globals 
166:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
167:    LDA  3,1(7)	Return address in ac 
168:    JMP  7,-130(7)	Jump to main 
169:   HALT  0,0,0	DONE! 
* END INIT
