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
* CALL output
 40:     ST  1,-2(1)	Store fp in ghost frame for output 
 41:    LDC  3,111(6)	Load of type int constant 
 42:     ST  3,-5(1)	Push left side onto temp variable stack 
 43:    LDC  3,222(6)	Load of type int constant 
 44:     ST  3,-6(1)	Push left side onto temp variable stack 
 45:    LDC  3,333(6)	Load of type int constant 
 46:     ST  3,-7(1)	Push left side onto temp variable stack 
 47:    LDC  3,444(6)	Load of type int constant 
 48:     LD  4,-7(1)	Pop left hand side into AC1 
 49:    ADD  3,4,3	+ Operation 
 50:     LD  4,-6(1)	Pop left hand side into AC1 
 51:    ADD  3,4,3	+ Operation 
 52:     LD  4,-5(1)	Pop left hand side into AC1 
 53:    ADD  3,4,3	+ Operation 
 54:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 55:    LDA  1,-2(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-52(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 59:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 60:    LDA  1,-2(1)	Move the fp to the new frame 
 61:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 62:    JMP  7,-29(7)	Call function 
 63:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 64:     ST  1,-2(1)	Store fp in ghost frame for output 
 65:    LDC  3,111(6)	Load of type int constant 
 66:     ST  3,-5(1)	Push left side onto temp variable stack 
 67:    LDC  3,222(6)	Load of type int constant 
 68:     LD  4,-5(1)	Pop left hand side into AC1 
 69:    ADD  3,4,3	+ Operation 
 70:     ST  3,-5(1)	Push left side onto temp variable stack 
 71:    LDC  3,333(6)	Load of type int constant 
 72:     LD  4,-5(1)	Pop left hand side into AC1 
 73:    ADD  3,4,3	+ Operation 
 74:     ST  3,-5(1)	Push left side onto temp variable stack 
 75:    LDC  3,444(6)	Load of type int constant 
 76:     LD  4,-5(1)	Pop left hand side into AC1 
 77:    ADD  3,4,3	+ Operation 
 78:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-2(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-76(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 83:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 84:    LDA  1,-2(1)	Move the fp to the new frame 
 85:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 86:    JMP  7,-53(7)	Call function 
 87:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 88:     ST  1,-2(1)	Store fp in ghost frame for output 
 89:    LDC  3,111(6)	Load of type int constant 
 90:     ST  3,-5(1)	Push left side onto temp variable stack 
 91:    LDC  3,222(6)	Load of type int constant 
 92:     ST  3,-6(1)	Push left side onto temp variable stack 
 93:    LDC  3,333(6)	Load of type int constant 
 94:     ST  3,-7(1)	Push left side onto temp variable stack 
 95:    LDC  3,444(6)	Load of type int constant 
 96:     LD  4,-7(1)	Pop left hand side into AC1 
 97:    SUB  3,4,3	- Subtraction Operation 
 98:     LD  4,-6(1)	Pop left hand side into AC1 
 99:    SUB  3,4,3	- Subtraction Operation 
100:     LD  4,-5(1)	Pop left hand side into AC1 
101:    SUB  3,4,3	- Subtraction Operation 
102:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
103:    LDA  1,-2(1)	Move the fp to the new frame 
104:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
105:    JMP  7,-100(7)	Call function 
106:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
107:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
108:    LDA  1,-2(1)	Move the fp to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-77(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
112:     ST  1,-2(1)	Store fp in ghost frame for output 
113:    LDC  3,111(6)	Load of type int constant 
114:     ST  3,-5(1)	Push left side onto temp variable stack 
115:    LDC  3,222(6)	Load of type int constant 
116:     LD  4,-5(1)	Pop left hand side into AC1 
117:    SUB  3,4,3	- Subtraction Operation 
118:     ST  3,-5(1)	Push left side onto temp variable stack 
119:    LDC  3,333(6)	Load of type int constant 
120:     LD  4,-5(1)	Pop left hand side into AC1 
121:    SUB  3,4,3	- Subtraction Operation 
122:     ST  3,-5(1)	Push left side onto temp variable stack 
123:    LDC  3,444(6)	Load of type int constant 
124:     LD  4,-5(1)	Pop left hand side into AC1 
125:    SUB  3,4,3	- Subtraction Operation 
126:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
127:    LDA  1,-2(1)	Move the fp to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-124(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
131:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
132:    LDA  1,-2(1)	Move the fp to the new frame 
133:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
134:    JMP  7,-101(7)	Call function 
135:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
136:     ST  1,-2(1)	Store fp in ghost frame for output 
137:    LDC  3,111(6)	Load of type int constant 
138:     ST  3,-5(1)	Push left side onto temp variable stack 
139:    LDC  3,222(6)	Load of type int constant 
140:     LD  4,-5(1)	Pop left hand side into AC1 
141:    SUB  3,4,3	- Subtraction Operation 
142:     ST  3,-5(1)	Push left side onto temp variable stack 
143:    LDC  3,333(6)	Load of type int constant 
144:     LD  4,-5(1)	Pop left hand side into AC1 
145:    SUB  3,4,3	- Subtraction Operation 
146:     ST  3,-5(1)	Push left side onto temp variable stack 
147:    LDC  3,444(6)	Load of type int constant 
148:     LD  4,-5(1)	Pop left hand side into AC1 
149:    SUB  3,4,3	- Subtraction Operation 
150:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
151:    LDA  1,-2(1)	Move the fp to the new frame 
152:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
153:    JMP  7,-148(7)	Call function 
154:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
155:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
156:    LDA  1,-2(1)	Move the fp to the new frame 
157:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
158:    JMP  7,-125(7)	Call function 
159:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
160:    LDC  2,0(6)	Set return value to 0 
161:     LD  3,-1(1)	Load return address 
162:     LD  1,0(1)	Adjust fp 
163:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,163(7)	Jump to init [backpatch] 
* INIT
164:    LDA  1,0(0)	set first frame at end of globals 
165:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
166:    LDA  3,1(7)	Return address in ac 
167:    JMP  7,-129(7)	Jump to main 
168:   HALT  0,0,0	DONE! 
* END INIT
