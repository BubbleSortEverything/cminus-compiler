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
 40:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 41:    LDC  3,0(6)	Load of type bool constant 
 42:     ST  3,-5(1)	Push left side onto temp variable stack 
 43:    LDC  3,0(6)	Load of type bool constant 
 44:     LD  4,-5(1)	Pop left hand side into AC1 
 45:     OR  3,4,3	OR operation store in AC 
 46:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-2(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-33(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 51:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 52:    LDC  3,0(6)	Load of type bool constant 
 53:     ST  3,-5(1)	Push left side onto temp variable stack 
 54:    LDC  3,1(6)	Load of type bool constant 
 55:     LD  4,-5(1)	Pop left hand side into AC1 
 56:     OR  3,4,3	OR operation store in AC 
 57:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-2(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-44(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 62:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 63:    LDC  3,1(6)	Load of type bool constant 
 64:     ST  3,-5(1)	Push left side onto temp variable stack 
 65:    LDC  3,0(6)	Load of type bool constant 
 66:     LD  4,-5(1)	Pop left hand side into AC1 
 67:     OR  3,4,3	OR operation store in AC 
 68:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-2(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-55(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 73:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 74:    LDC  3,1(6)	Load of type bool constant 
 75:     ST  3,-5(1)	Push left side onto temp variable stack 
 76:    LDC  3,1(6)	Load of type bool constant 
 77:     LD  4,-5(1)	Pop left hand side into AC1 
 78:     OR  3,4,3	OR operation store in AC 
 79:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 80:    LDA  1,-2(1)	Move the fp to the new frame 
 81:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 82:    JMP  7,-66(7)	Call function 
 83:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 84:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 85:    LDA  1,-2(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-54(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
 89:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 90:    LDC  3,0(6)	Load of type bool constant 
 91:     ST  3,-5(1)	Push left side onto temp variable stack 
 92:    LDC  3,0(6)	Load of type bool constant 
 93:     LD  4,-5(1)	Pop left hand side into AC1 
 94:    AND  3,4,3	AND operation store in AC 
 95:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 96:    LDA  1,-2(1)	Move the fp to the new frame 
 97:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 98:    JMP  7,-82(7)	Call function 
 99:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
100:     ST  1,-2(1)	Store fp in ghost frame for outputb 
101:    LDC  3,0(6)	Load of type bool constant 
102:     ST  3,-5(1)	Push left side onto temp variable stack 
103:    LDC  3,1(6)	Load of type bool constant 
104:     LD  4,-5(1)	Pop left hand side into AC1 
105:    AND  3,4,3	AND operation store in AC 
106:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
107:    LDA  1,-2(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-93(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
111:     ST  1,-2(1)	Store fp in ghost frame for outputb 
112:    LDC  3,1(6)	Load of type bool constant 
113:     ST  3,-5(1)	Push left side onto temp variable stack 
114:    LDC  3,0(6)	Load of type bool constant 
115:     LD  4,-5(1)	Pop left hand side into AC1 
116:    AND  3,4,3	AND operation store in AC 
117:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
118:    LDA  1,-2(1)	Move the fp to the new frame 
119:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
120:    JMP  7,-104(7)	Call function 
121:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
122:     ST  1,-2(1)	Store fp in ghost frame for outputb 
123:    LDC  3,1(6)	Load of type bool constant 
124:     ST  3,-5(1)	Push left side onto temp variable stack 
125:    LDC  3,1(6)	Load of type bool constant 
126:     LD  4,-5(1)	Pop left hand side into AC1 
127:    AND  3,4,3	AND operation store in AC 
128:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
129:    LDA  1,-2(1)	Move the fp to the new frame 
130:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
131:    JMP  7,-115(7)	Call function 
132:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
133:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
134:    LDA  1,-2(1)	Move the fp to the new frame 
135:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
136:    JMP  7,-103(7)	Call function 
137:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
138:     ST  1,-2(1)	Store fp in ghost frame for outputb 
139:    LDC  3,0(6)	Load of type bool constant 
140:    LDC  4,1(6)	Load 1 into AC1 for not operation 
141:    TNE  3,4,3	Not ! operation store in AC 
142:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
143:    LDA  1,-2(1)	Move the fp to the new frame 
144:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
145:    JMP  7,-129(7)	Call function 
146:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
147:     ST  1,-2(1)	Store fp in ghost frame for outputb 
148:    LDC  3,1(6)	Load of type bool constant 
149:    LDC  4,1(6)	Load 1 into AC1 for not operation 
150:    TNE  3,4,3	Not ! operation store in AC 
151:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
152:    LDA  1,-2(1)	Move the fp to the new frame 
153:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
154:    JMP  7,-138(7)	Call function 
155:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
156:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
157:    LDA  1,-2(1)	Move the fp to the new frame 
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
