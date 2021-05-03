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
 41:    LDC  3,88(6)	Load of type char constant 
 42:     ST  3,-5(1)	Push left side onto temp variable stack 
 43:    LDC  3,89(6)	Load of type char constant 
 44:     LD  4,-5(1)	Pop left hand side into AC1 
 45:    TLT  3,4,3	Less than < operation store in AC 
 46:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-2(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-33(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 51:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 52:    LDC  3,88(6)	Load of type char constant 
 53:     ST  3,-5(1)	Push left side onto temp variable stack 
 54:    LDC  3,89(6)	Load of type char constant 
 55:     LD  4,-5(1)	Pop left hand side into AC1 
 56:    TGT  3,4,3	Greather than > operation store in AC 
 57:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-2(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-44(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 62:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 63:    LDC  3,88(6)	Load of type char constant 
 64:     ST  3,-5(1)	Push left side onto temp variable stack 
 65:    LDC  3,89(6)	Load of type char constant 
 66:     LD  4,-5(1)	Pop left hand side into AC1 
 67:    TEQ  3,4,3	== Equality Operation 
 68:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-2(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-55(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 73:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 74:    LDC  3,88(6)	Load of type char constant 
 75:     ST  3,-5(1)	Push left side onto temp variable stack 
 76:    LDC  3,89(6)	Load of type char constant 
 77:     LD  4,-5(1)	Pop left hand side into AC1 
 78:    TNE  3,4,3	!= Equality Operation 
 79:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 80:    LDA  1,-2(1)	Move the fp to the new frame 
 81:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 82:    JMP  7,-66(7)	Call function 
 83:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 84:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 85:    LDC  3,88(6)	Load of type char constant 
 86:     ST  3,-5(1)	Push left side onto temp variable stack 
 87:    LDC  3,89(6)	Load of type char constant 
 88:     LD  4,-5(1)	Pop left hand side into AC1 
 89:    TGE  3,4,3	GEQ >- operation store in AC 
 90:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 91:    LDA  1,-2(1)	Move the fp to the new frame 
 92:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 93:    JMP  7,-77(7)	Call function 
 94:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 95:     ST  1,-2(1)	Store fp in ghost frame for outputb 
 96:    LDC  3,88(6)	Load of type char constant 
 97:     ST  3,-5(1)	Push left side onto temp variable stack 
 98:    LDC  3,89(6)	Load of type char constant 
 99:     LD  4,-5(1)	Pop left hand side into AC1 
100:    TLE  3,4,3	LEQ <= operation store in AC 
101:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
102:    LDA  1,-2(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-88(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
106:     ST  1,-2(1)	Store fp in ghost frame for outputb 
107:    LDC  3,89(6)	Load of type char constant 
108:     ST  3,-5(1)	Push left side onto temp variable stack 
109:    LDC  3,89(6)	Load of type char constant 
110:     LD  4,-5(1)	Pop left hand side into AC1 
111:    TEQ  3,4,3	== Equality Operation 
112:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
113:    LDA  1,-2(1)	Move the fp to the new frame 
114:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
115:    JMP  7,-99(7)	Call function 
116:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
117:     ST  1,-2(1)	Store fp in ghost frame for outputb 
118:    LDC  3,89(6)	Load of type char constant 
119:     ST  3,-5(1)	Push left side onto temp variable stack 
120:    LDC  3,89(6)	Load of type char constant 
121:     LD  4,-5(1)	Pop left hand side into AC1 
122:    TNE  3,4,3	!= Equality Operation 
123:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
124:    LDA  1,-2(1)	Move the fp to the new frame 
125:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
126:    JMP  7,-110(7)	Call function 
127:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
128:     ST  1,-2(1)	Store fp in ghost frame for outputb 
129:    LDC  3,89(6)	Load of type char constant 
130:     ST  3,-5(1)	Push left side onto temp variable stack 
131:    LDC  3,89(6)	Load of type char constant 
132:     LD  4,-5(1)	Pop left hand side into AC1 
133:    TGE  3,4,3	GEQ >- operation store in AC 
134:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
135:    LDA  1,-2(1)	Move the fp to the new frame 
136:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
137:    JMP  7,-121(7)	Call function 
138:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
139:     ST  1,-2(1)	Store fp in ghost frame for outputb 
140:    LDC  3,89(6)	Load of type char constant 
141:     ST  3,-5(1)	Push left side onto temp variable stack 
142:    LDC  3,89(6)	Load of type char constant 
143:     LD  4,-5(1)	Pop left hand side into AC1 
144:    TLE  3,4,3	LEQ <= operation store in AC 
145:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
146:    LDA  1,-2(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-132(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* END COMPOUND
* Add standard closing in case there is no return statement
150:    LDC  2,0(6)	Set return value to 0 
151:     LD  3,-1(1)	Load return address 
152:     LD  1,0(1)	Adjust fp 
153:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,153(7)	Jump to init [backpatch] 
* INIT
154:    LDA  1,0(0)	set first frame at end of globals 
155:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
156:    LDA  3,1(7)	Return address in ac 
157:    JMP  7,-119(7)	Jump to main 
158:   HALT  0,0,0	DONE! 
* END INIT
