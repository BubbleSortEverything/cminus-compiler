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
 40:    LDC  3,7(6)	Load of type int constant 
 41:     ST  3,-4(1)	Assigning variable p in Local 
 42:     LD  3,-2(1)	Load variable x into accumulator 
 43:     ST  3,-5(1)	Push left side onto temp variable stack 
 44:     LD  3,-4(1)	Load variable p into accumulator 
 45:     LD  4,-5(1)	Pop left hand side into AC1 
 46:    MOD  3,4,3	% mod operation 
 47:     ST  3,-5(1)	Push left side onto temp variable stack 
 48:     LD  3,-3(1)	Load variable y into accumulator 
 49:     ST  3,-6(1)	Push left side onto temp variable stack 
 50:     LD  3,-4(1)	Load variable p into accumulator 
 51:     LD  4,-6(1)	Pop left hand side into AC1 
 52:    MOD  3,4,3	% mod operation 
 53:     LD  4,-5(1)	Pop left hand side into AC1 
 54:    ADD  3,4,3	+ Operation 
 55:    LDA  2,0(3)	Copy accumulator to return register 
 56:     LD  3,-1(1)	Load return address 
 57:     LD  1,0(1)	Adjust fp 
 58:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 59:    LDC  2,0(6)	Set return value to 0 
 60:     LD  3,-1(1)	Load return address 
 61:     LD  1,0(1)	Adjust fp 
 62:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
 63:    LDC  3,4000(6)	Load of type int constant 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 64:     ST  3,-1(1)	Store return address 
* COMPOUND
 65:    LDC  3,1000(6)	Load of type int constant 
 66:     ST  3,-2(1)	Assigning variable a in Local 
 67:    LDC  3,2000(6)	Load of type int constant 
 68:     ST  3,-3(1)	Assigning variable b in Local 
 69:    LDC  3,3000(6)	Load of type int constant 
 70:     ST  3,-4(1)	Assigning variable c in Local 
* CALL output
 71:     ST  1,-8(1)	Store fp in ghost frame for output 
* CALL dog
 72:     ST  1,-11(1)	Store fp in ghost frame for dog 
 73:     LD  3,-2(1)	Load variable a into accumulator 
 74:     ST  3,-13(1)	Push parameter onto new frame 
 75:    LDC  3,2(6)	Load of type int constant 
 76:     ST  3,-16(1)	Push left side onto temp variable stack 
 77:     LD  3,-3(1)	Load variable b into accumulator 
 78:     LD  4,-16(1)	Pop left hand side into AC1 
 79:    MUL  3,4,3	* Multiplication Operation 
 80:     ST  3,-14(1)	Push parameter onto new frame 
* Begin call
 81:    LDA  1,-11(1)	Move the fp to the new frame 
 82:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 83:    JMP  7,-45(7)	Call function 
 84:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
 85:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
 86:    LDA  1,-8(1)	Move the fp to the new frame 
 87:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 88:    JMP  7,-83(7)	Call function 
 89:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* COMPOUND
 90:     LD  3,-2(1)	Load variable a into accumulator 
 91:     ST  3,-8(1)	Push left side onto temp variable stack 
 92:     LD  3,0(0)	Load variable g into accumulator 
 93:     LD  4,-8(1)	Pop left hand side into AC1 
 94:    ADD  3,4,3	+ Operation 
 95:     ST  3,-6(1)	Assigning variable y in Local 
* CALL output
 96:     ST  1,-8(1)	Store fp in ghost frame for output 
* CALL dog
 97:     ST  1,-11(1)	Store fp in ghost frame for dog 
 98:     LD  3,0(0)	Load variable g into accumulator 
 99:     ST  3,-13(1)	Push parameter onto new frame 
100:     LD  3,-6(1)	Load variable y into accumulator 
101:     ST  3,-14(1)	Push parameter onto new frame 
* Begin call
102:    LDA  1,-11(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-66(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
106:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
107:    LDA  1,-8(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-104(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
111:     ST  1,-8(1)	Store fp in ghost frame for output 
112:     LD  3,0(0)	Load variable g into accumulator 
113:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
114:    LDA  1,-8(1)	Move the fp to the new frame 
115:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
116:    JMP  7,-111(7)	Call function 
117:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* CALL output
118:     ST  1,-8(1)	Store fp in ghost frame for output 
119:    LDC  3,999(6)	Load of type int constant 
120:     ST  3,-11(1)	Push left side onto temp variable stack 
* CALL dog
121:     ST  1,-12(1)	Store fp in ghost frame for dog 
122:    LDC  3,333(6)	Load of type int constant 
123:     ST  3,-17(1)	Push left side onto temp variable stack 
124:    LDC  3,33(6)	Load of type int constant 
125:     ST  3,-18(1)	Push left side onto temp variable stack 
126:     LD  3,0(0)	Load variable g into accumulator 
127:     LD  4,-18(1)	Pop left hand side into AC1 
128:    MUL  3,4,3	* Multiplication Operation 
129:     LD  4,-17(1)	Pop left hand side into AC1 
130:    ADD  3,4,3	+ Operation 
131:     ST  3,-14(1)	Push parameter onto new frame 
132:     LD  3,-3(1)	Load variable b into accumulator 
133:     ST  3,-17(1)	Push left side onto temp variable stack 
134:    LDC  3,17(6)	Load of type int constant 
135:     LD  4,-17(1)	Pop left hand side into AC1 
136:    MOD  3,4,3	% mod operation 
137:     ST  3,-17(1)	Push left side onto temp variable stack 
138:     LD  3,-4(1)	Load variable c into accumulator 
139:     LD  4,-17(1)	Pop left hand side into AC1 
140:    ADD  3,4,3	+ Operation 
141:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
142:    LDA  1,-12(1)	Move the fp to the new frame 
143:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
144:    JMP  7,-106(7)	Call function 
145:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
146:     LD  4,-11(1)	Pop left hand side into AC1 
147:    ADD  3,4,3	+ Operation 
148:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
149:    LDA  1,-8(1)	Move the fp to the new frame 
150:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
151:    JMP  7,-146(7)	Call function 
152:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
153:    LDC  2,0(6)	Set return value to 0 
154:     LD  3,-1(1)	Load return address 
155:     LD  1,0(1)	Adjust fp 
156:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,156(7)	Jump to init [backpatch] 
* INIT
157:    LDA  1,-1(0)	set first frame at end of globals 
158:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
159:    LDC  3,4000(6)	Load of type int constant 
160:     ST  3,0(0)	Assigning variable g in Global 
* END INIT GLOBALS AND STATICS
161:    LDA  3,1(7)	Return address in ac 
162:    JMP  7,-99(7)	Jump to main 
163:   HALT  0,0,0	DONE! 
* END INIT
