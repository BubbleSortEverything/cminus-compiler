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
* CALL output
 40:     ST  1,-4(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load variable a into accumulator 
 42:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 43:    LDA  1,-4(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-40(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 47:     ST  1,-4(1)	Store fp in ghost frame for output 
 48:     LD  3,-3(1)	Load base address of array b 
 49:    LDC  3,3(6)	Load of type int constant 
 50:     LD  5,-3(1)	Load base address of array b into AC2 
 51:    SUB  5,5,3	Compute offset for array 
 52:     LD  3,0(5)	Load array element b from AC into loc from AC2 
 53:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 54:    LDA  1,-4(1)	Move the fp to the new frame 
 55:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 56:    JMP  7,-51(7)	Call function 
 57:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 58:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 59:    LDA  1,-4(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-28(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 63:     LD  3,-2(1)	Load variable a into accumulator 
 64:     ST  3,-4(1)	Push left side onto temp variable stack 
 65:     LD  3,-3(1)	Load base address of array b 
 66:    LDC  3,3(6)	Load of type int constant 
 67:     LD  5,-3(1)	Load base address of array b into AC2 
 68:    SUB  5,5,3	Compute offset for array 
 69:     LD  3,0(5)	Load array element b from AC into loc from AC2 
 70:     LD  4,-4(1)	Pop left hand side into AC1 
 71:    ADD  3,4,3	+ Operation 
 72:     ST  3,-4(1)	Push left side onto temp variable stack 
 73:    LDA  3,-2(0)	Load base address of array h 
 74:    LDC  3,0(6)	Load of type int constant 
 75:    LDA  5,-2(0)	Load base address of array h into AC2 
 76:    SUB  5,5,3	Compute offset for array 
 77:     LD  3,0(5)	Load array element h from AC into loc from AC2 
 78:     LD  4,-4(1)	Pop left hand side into AC1 
 79:    ADD  3,4,3	+ Operation 
 80:    LDA  2,0(3)	Copy accumulator to return register 
 81:     LD  3,-1(1)	Load return address 
 82:     LD  1,0(1)	Adjust fp 
 83:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 84:    LDC  2,0(6)	Set return value to 0 
 85:     LD  3,-1(1)	Load return address 
 86:     LD  1,0(1)	Adjust fp 
 87:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 88:     ST  3,-1(1)	Store return address 
* COMPOUND
 89:    LDC  3,8(6)	Load size of q into AC 
 90:     ST  3,-3(1)	Store size of q in data memory 
 91:    LDC  3,100(6)	Load of type int constant 
 92:     ST  3,-2(1)	Assigning variable p in Local 
 93:    LDA  3,-4(1)	Load base address of array q 
 94:    LDC  3,3(6)	Load of type int constant 
 95:     ST  3,-12(1)	Push array index onto temp stack 
 96:    LDC  3,1000(6)	Load of type int constant 
 97:     LD  4,-12(1)	Pop array index into AC1 
 98:    LDA  5,-4(1)	Load base address of array q into AC2 
 99:    SUB  5,5,4	Compute offset for array 
100:     ST  3,0(5)	Store variable q from AC into loc from AC2 
101:    LDC  3,200(6)	Load of type int constant 
102:     ST  3,0(0)	Assigning variable g in Global 
103:    LDA  3,-2(0)	Load base address of array h 
104:    LDC  3,3(6)	Load of type int constant 
105:     ST  3,-12(1)	Push array index onto temp stack 
106:    LDC  3,2000(6)	Load of type int constant 
107:     LD  4,-12(1)	Pop array index into AC1 
108:    LDA  5,-2(0)	Load base address of array h into AC2 
109:    SUB  5,5,4	Compute offset for array 
110:     ST  3,0(5)	Store variable h from AC into loc from AC2 
111:    LDA  3,-2(0)	Load base address of array h 
112:    LDC  3,0(6)	Load of type int constant 
113:     ST  3,-12(1)	Push array index onto temp stack 
114:    LDC  3,8(6)	Load of type int constant 
115:     LD  4,-12(1)	Pop array index into AC1 
116:    LDA  5,-2(0)	Load base address of array h into AC2 
117:    SUB  5,5,4	Compute offset for array 
118:     ST  3,0(5)	Store variable h from AC into loc from AC2 
* CALL output
119:     ST  1,-12(1)	Store fp in ghost frame for output 
* CALL dog
120:     ST  1,-15(1)	Store fp in ghost frame for dog 
121:     LD  3,-2(1)	Load variable p into accumulator 
122:     ST  3,-17(1)	Push parameter onto new frame 
123:    LDA  3,-4(1)	Load base address of array q 
124:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
125:    LDA  1,-15(1)	Move the fp to the new frame 
126:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
127:    JMP  7,-89(7)	Call function 
128:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
129:     ST  3,-14(1)	Push parameter onto new frame 
* Begin call
130:    LDA  1,-12(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-127(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
134:     ST  1,-12(1)	Store fp in ghost frame for outnl 
* Begin call
135:    LDA  1,-12(1)	Move the fp to the new frame 
136:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
137:    JMP  7,-104(7)	Call function 
138:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
139:     ST  1,-12(1)	Store fp in ghost frame for output 
* CALL dog
140:     ST  1,-15(1)	Store fp in ghost frame for dog 
141:     LD  3,0(0)	Load variable g into accumulator 
142:     ST  3,-17(1)	Push parameter onto new frame 
143:    LDA  3,-2(0)	Load base address of array h 
144:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
145:    LDA  1,-15(1)	Move the fp to the new frame 
146:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
147:    JMP  7,-109(7)	Call function 
148:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
149:     ST  3,-14(1)	Push parameter onto new frame 
* Begin call
150:    LDA  1,-12(1)	Move the fp to the new frame 
151:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
152:    JMP  7,-147(7)	Call function 
153:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
154:     ST  1,-12(1)	Store fp in ghost frame for outnl 
* Begin call
155:    LDA  1,-12(1)	Move the fp to the new frame 
156:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
157:    JMP  7,-124(7)	Call function 
158:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
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
163:    LDA  1,-12(0)	set first frame at end of globals 
164:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
165:    LDC  3,10(6)	Load size of h into AC 
166:     ST  3,-1(0)	Store size of h in data memory 
* END INIT GLOBALS AND STATICS
167:    LDA  3,1(7)	Return address in ac 
168:    JMP  7,-81(7)	Jump to main 
169:   HALT  0,0,0	DONE! 
* END INIT
