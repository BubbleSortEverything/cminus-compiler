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
* CALL outputb
 40:     ST  1,-4(1)	Store fp in ghost frame for outputb 
 41:    LDC  3,1(6)	Load of type bool constant 
 42:     ST  3,-2(1)	Assigning variable a in Local 
 43:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 44:    LDA  1,-4(1)	Move the fp to the new frame 
 45:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 46:    JMP  7,-30(7)	Call function 
 47:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 48:     ST  1,-4(1)	Store fp in ghost frame for outputb 
 49:    LDC  3,0(6)	Load of type bool constant 
 50:     ST  3,-3(1)	Assigning variable b in Local 
 51:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 52:    LDA  1,-4(1)	Move the fp to the new frame 
 53:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 54:    JMP  7,-38(7)	Call function 
 55:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 56:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 57:    LDA  1,-4(1)	Move the fp to the new frame 
 58:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 59:    JMP  7,-26(7)	Call function 
 60:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
 61:     ST  1,-4(1)	Store fp in ghost frame for outputb 
 62:     LD  3,-2(1)	Load variable a into accumulator 
 63:     ST  3,-7(1)	Push left side onto temp variable stack 
 64:     LD  3,-3(1)	Load variable b into accumulator 
 65:     LD  4,-7(1)	Pop left hand side into AC1 
 66:    AND  3,4,3	AND operation store in AC 
 67:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 68:    LDA  1,-4(1)	Move the fp to the new frame 
 69:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 70:    JMP  7,-54(7)	Call function 
 71:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 72:     ST  1,-4(1)	Store fp in ghost frame for outputb 
 73:     LD  3,-2(1)	Load variable a into accumulator 
 74:     ST  3,-7(1)	Push left side onto temp variable stack 
 75:     LD  3,-3(1)	Load variable b into accumulator 
 76:     LD  4,-7(1)	Pop left hand side into AC1 
 77:     OR  3,4,3	OR operation store in AC 
 78:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-4(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-65(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 83:     ST  1,-4(1)	Store fp in ghost frame for outputb 
 84:     LD  3,-2(1)	Load variable a into accumulator 
 85:    LDC  4,1(6)	Load 1 into AC1 for not operation 
 86:    TNE  3,4,3	Not ! operation store in AC 
 87:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 88:    LDA  1,-4(1)	Move the fp to the new frame 
 89:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 90:    JMP  7,-74(7)	Call function 
 91:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 92:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 93:    LDA  1,-4(1)	Move the fp to the new frame 
 94:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 95:    JMP  7,-62(7)	Call function 
 96:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
 97:     ST  1,-4(1)	Store fp in ghost frame for outputb 
 98:    LDC  3,111(6)	Load of type int constant 
 99:     ST  3,-7(1)	Push left side onto temp variable stack 
100:    LDC  3,222(6)	Load of type int constant 
101:     LD  4,-7(1)	Pop left hand side into AC1 
102:    TGT  3,4,3	Greather than > operation store in AC 
103:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
104:    LDA  1,-4(1)	Move the fp to the new frame 
105:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
106:    JMP  7,-90(7)	Call function 
107:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
108:     ST  1,-4(1)	Store fp in ghost frame for outputb 
109:    LDC  3,111(6)	Load of type int constant 
110:     ST  3,-7(1)	Push left side onto temp variable stack 
111:    LDC  3,222(6)	Load of type int constant 
112:     LD  4,-7(1)	Pop left hand side into AC1 
113:    TLT  3,4,3	Less than < operation store in AC 
114:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
115:    LDA  1,-4(1)	Move the fp to the new frame 
116:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
117:    JMP  7,-101(7)	Call function 
118:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
119:     ST  1,-4(1)	Store fp in ghost frame for outputb 
120:    LDC  3,111(6)	Load of type int constant 
121:     ST  3,-7(1)	Push left side onto temp variable stack 
122:    LDC  3,222(6)	Load of type int constant 
123:     LD  4,-7(1)	Pop left hand side into AC1 
124:    TEQ  3,4,3	== Equality Operation 
125:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
126:    LDA  1,-4(1)	Move the fp to the new frame 
127:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
128:    JMP  7,-112(7)	Call function 
129:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
130:     ST  1,-4(1)	Store fp in ghost frame for outputb 
131:    LDC  3,111(6)	Load of type int constant 
132:     ST  3,-7(1)	Push left side onto temp variable stack 
133:    LDC  3,222(6)	Load of type int constant 
134:     LD  4,-7(1)	Pop left hand side into AC1 
135:    TGE  3,4,3	GEQ >- operation store in AC 
136:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
137:    LDA  1,-4(1)	Move the fp to the new frame 
138:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
139:    JMP  7,-123(7)	Call function 
140:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
141:     ST  1,-4(1)	Store fp in ghost frame for outputb 
142:    LDC  3,111(6)	Load of type int constant 
143:     ST  3,-7(1)	Push left side onto temp variable stack 
144:    LDC  3,222(6)	Load of type int constant 
145:     LD  4,-7(1)	Pop left hand side into AC1 
146:    TLE  3,4,3	LEQ <= operation store in AC 
147:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
148:    LDA  1,-4(1)	Move the fp to the new frame 
149:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
150:    JMP  7,-134(7)	Call function 
151:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
152:     ST  1,-4(1)	Store fp in ghost frame for outputb 
153:    LDC  3,111(6)	Load of type int constant 
154:     ST  3,-7(1)	Push left side onto temp variable stack 
155:    LDC  3,222(6)	Load of type int constant 
156:     LD  4,-7(1)	Pop left hand side into AC1 
157:    TNE  3,4,3	!= Equality Operation 
158:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
159:    LDA  1,-4(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-145(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
163:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
164:    LDA  1,-4(1)	Move the fp to the new frame 
165:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
166:    JMP  7,-133(7)	Call function 
167:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
168:    LDC  2,0(6)	Set return value to 0 
169:     LD  3,-1(1)	Load return address 
170:     LD  1,0(1)	Adjust fp 
171:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,171(7)	Jump to init [backpatch] 
* INIT
172:    LDA  1,0(0)	set first frame at end of globals 
173:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
174:    LDA  3,1(7)	Return address in ac 
175:    JMP  7,-137(7)	Jump to main 
176:   HALT  0,0,0	DONE! 
* END INIT
