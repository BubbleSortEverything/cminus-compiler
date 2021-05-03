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
* FUNCTION swap
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:     LD  3,-2(1)	Load base address of array a 
 41:     LD  3,-3(1)	Load variable i into accumulator 
 42:     LD  5,-2(1)	Load base address of array a into AC2 
 43:    SUB  5,5,3	Compute offset for array 
 44:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 45:     ST  3,-5(1)	Assigning variable t in Local 
 46:     LD  3,-2(1)	Load base address of array a 
 47:     LD  3,-3(1)	Load variable i into accumulator 
 48:     ST  3,-6(1)	Push array index onto temp stack 
 49:     LD  3,-2(1)	Load base address of array a 
 50:     LD  3,-4(1)	Load variable j into accumulator 
 51:     LD  5,-2(1)	Load base address of array a into AC2 
 52:    SUB  5,5,3	Compute offset for array 
 53:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 54:     LD  4,-6(1)	Pop array index into AC1 
 55:     LD  5,-2(1)	Load base address of array a into AC2 
 56:    SUB  5,5,4	Compute offset for array 
 57:     ST  3,0(5)	Store variable a from AC into loc from AC2 
 58:     LD  3,-2(1)	Load base address of array a 
 59:     LD  3,-4(1)	Load variable j into accumulator 
 60:     ST  3,-6(1)	Push array index onto temp stack 
 61:     LD  3,-5(1)	Load variable t into accumulator 
 62:     LD  4,-6(1)	Pop array index into AC1 
 63:     LD  5,-2(1)	Load base address of array a into AC2 
 64:    SUB  5,5,4	Compute offset for array 
 65:     ST  3,0(5)	Store variable a from AC into loc from AC2 
* END COMPOUND
* Add standard closing in case there is no return statement
 66:    LDC  2,0(6)	Set return value to 0 
 67:     LD  3,-1(1)	Load return address 
 68:     LD  1,0(1)	Adjust fp 
 69:    JMP  7,0(3)	Return 
* END FUNCTION swap
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION sort
 70:     ST  3,-1(1)	Store return address 
* COMPOUND
 71:    LDC  3,0(6)	Load of type int constant 
 72:     LD  3,-2(1)	Load base address of array a 
 73:     LD  3,-2(1)	Load address of base array a 
 74:     LD  3,1(3)	Load array size 
* COMPOUND
 75:     LD  3,-3(1)	Load variable i into accumulator 
 76:     ST  3,-4(1)	Assigning variable minloc in Local 
 77:     LD  3,-3(1)	Load variable i into accumulator 
 78:     ST  3,-6(1)	Push left side onto temp variable stack 
 79:    LDC  3,1(6)	Load of type int constant 
 80:     LD  4,-6(1)	Pop left hand side into AC1 
 81:    ADD  3,4,3	+ Operation 
 82:     LD  3,-2(1)	Load base address of array a 
 83:     LD  3,-2(1)	Load address of base array a 
 84:     LD  3,1(3)	Load array size 
* BEGIN IF BLOCK
 85:     LD  3,-2(1)	Load base address of array a 
 86:     LD  3,-5(1)	Load variable j into accumulator 
 87:     LD  5,-2(1)	Load base address of array a into AC2 
 88:    SUB  5,5,3	Compute offset for array 
 89:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 90:     ST  3,-6(1)	Push left side onto temp variable stack 
 91:     LD  3,-2(1)	Load base address of array a 
 92:     LD  3,-4(1)	Load variable minloc into accumulator 
 93:     LD  5,-2(1)	Load base address of array a into AC2 
 94:    SUB  5,5,3	Compute offset for array 
 95:     LD  3,0(5)	Load array element a from AC into loc from AC2 
 96:     LD  4,-6(1)	Pop left hand side into AC1 
 97:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
 99:     LD  3,-5(1)	Load variable j into accumulator 
100:     ST  3,-4(1)	Assigning variable minloc in Local 
* IF JUMP TO END
 98:    JZR  3,3(7)	IF JMP TO ELSE 
101:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL swap
102:     ST  1,-6(1)	Store fp in ghost frame for swap 
103:     LD  3,-2(1)	Load base address of array a 
104:     ST  3,-8(1)	Push parameter onto new frame 
105:     LD  3,-3(1)	Load variable i into accumulator 
106:     ST  3,-9(1)	Push parameter onto new frame 
107:     LD  3,-4(1)	Load variable minloc into accumulator 
108:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
109:    LDA  1,-6(1)	Move the fp to the new frame 
110:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
111:    JMP  7,-73(7)	Call function 
112:    LDA  3,0(2)	Save return result in accumulator 
* END CALL swap
* END COMPOUND
* END COMPOUND
* Add standard closing in case there is no return statement
113:    LDC  2,0(6)	Set return value to 0 
114:     LD  3,-1(1)	Load return address 
115:     LD  1,0(1)	Adjust fp 
116:    JMP  7,0(3)	Return 
* END FUNCTION sort
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION print
117:     ST  3,-1(1)	Store return address 
* COMPOUND
118:    LDC  3,0(6)	Load of type int constant 
119:     LD  3,-2(1)	Load base address of array x 
120:     LD  3,-2(1)	Load address of base array x 
121:     LD  3,1(3)	Load array size 
* CALL output
122:     ST  1,-4(1)	Store fp in ghost frame for output 
123:     LD  3,-2(1)	Load base address of array x 
124:     LD  3,-3(1)	Load variable i into accumulator 
125:     LD  5,-2(1)	Load base address of array x into AC2 
126:    SUB  5,5,3	Compute offset for array 
127:     LD  3,0(5)	Load array element x from AC into loc from AC2 
128:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
129:    LDA  1,-4(1)	Move the fp to the new frame 
130:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
131:    JMP  7,-126(7)	Call function 
132:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
133:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
134:    LDA  1,-4(1)	Move the fp to the new frame 
135:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
136:    JMP  7,-103(7)	Call function 
137:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
138:    LDC  2,0(6)	Set return value to 0 
139:     LD  3,-1(1)	Load return address 
140:     LD  1,0(1)	Adjust fp 
141:    JMP  7,0(3)	Return 
* END FUNCTION print
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
142:     ST  3,-1(1)	Store return address 
* COMPOUND
143:    LDC  3,20(6)	Load size of x into AC 
144:     ST  3,-2(1)	Store size of x in data memory 
145:    LDC  3,0(6)	Load of type int constant 
146:    LDA  3,-3(1)	Load base address of array x 
147:    LDA  3,-3(1)	Load address of base array x 
148:     LD  3,1(3)	Load array size 
149:    LDA  3,-3(1)	Load base address of array x 
150:     LD  3,-23(1)	Load variable i into accumulator 
151:     ST  3,-24(1)	Push array index onto temp stack 
* CALL input
152:     ST  1,-25(1)	Store fp in ghost frame for input 
* Begin call
153:    LDA  1,-25(1)	Move the fp to the new frame 
154:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
155:    JMP  7,-155(7)	Call function 
156:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
157:     LD  4,-24(1)	Pop array index into AC1 
158:    LDA  5,-3(1)	Load base address of array x into AC2 
159:    SUB  5,5,4	Compute offset for array 
160:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL print
161:     ST  1,-24(1)	Store fp in ghost frame for print 
162:    LDA  3,-3(1)	Load base address of array x 
163:     ST  3,-26(1)	Push parameter onto new frame 
* Begin call
164:    LDA  1,-24(1)	Move the fp to the new frame 
165:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
166:    JMP  7,-50(7)	Call function 
167:    LDA  3,0(2)	Save return result in accumulator 
* END CALL print
* CALL sort
168:     ST  1,-24(1)	Store fp in ghost frame for sort 
169:    LDA  3,-3(1)	Load base address of array x 
170:     ST  3,-26(1)	Push parameter onto new frame 
* Begin call
171:    LDA  1,-24(1)	Move the fp to the new frame 
172:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
173:    JMP  7,-104(7)	Call function 
174:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sort
* CALL print
175:     ST  1,-24(1)	Store fp in ghost frame for print 
176:    LDA  3,-3(1)	Load base address of array x 
177:     ST  3,-26(1)	Push parameter onto new frame 
* Begin call
178:    LDA  1,-24(1)	Move the fp to the new frame 
179:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
180:    JMP  7,-64(7)	Call function 
181:    LDA  3,0(2)	Save return result in accumulator 
* END CALL print
* END COMPOUND
* Add standard closing in case there is no return statement
182:    LDC  2,0(6)	Set return value to 0 
183:     LD  3,-1(1)	Load return address 
184:     LD  1,0(1)	Adjust fp 
185:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,185(7)	Jump to init [backpatch] 
* INIT
186:    LDA  1,0(0)	set first frame at end of globals 
187:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
188:    LDA  3,1(7)	Return address in ac 
189:    JMP  7,-48(7)	Jump to main 
190:   HALT  0,0,0	DONE! 
* END INIT
