* C- Compiler by Zachary Sugano
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION output
  1:     ST  3,-1(1)	Store return address 
  2:     LD  3,-2(1)	Load parameter 
  3:    OUT  3,3,3	Output integer 
  4:     LD  3,-1(1)	Load return address 
  5:     LD  1,0(1)	Adjust frame pointer 
  6:    JMP  7,0(3)	Return 
* END FUNCTION output
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputb
  7:     ST  3,-1(1)	Store return address 
  8:     LD  3,-2(1)	Load parameter 
  9:   OUTB  3,3,3	Output bool 
 10:     LD  3,-1(1)	Load return address 
 11:     LD  1,0(1)	Adjust frame pointer 
 12:    JMP  7,0(3)	Return 
* END FUNCTION outputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputc
 13:     ST  3,-1(1)	Store return address 
 14:     LD  3,-2(1)	Load parameter 
 15:   OUTC  3,3,3	Output char 
 16:     LD  3,-1(1)	Load return address 
 17:     LD  1,0(1)	Adjust frame pointer 
 18:    JMP  7,0(3)	Return 
* END FUNCTION outputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION input
 19:     ST  3,-1(1)	Store return address 
 20:     IN  2,2,2	Grab int input 
 21:     LD  3,-1(1)	Load return address 
 22:     LD  1,0(1)	Adjust frame pointer 
 23:    JMP  7,0(3)	Return 
* END FUNCTION input
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputb
 24:     ST  3,-1(1)	Store return address 
 25:    INB  2,2,2	Grab bool input 
 26:     LD  3,-1(1)	Load return address 
 27:     LD  1,0(1)	Adjust frame pointer 
 28:    JMP  7,0(3)	Return 
* END FUNCTION inputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputc
 29:     ST  3,-1(1)	Store return address 
 30:    INC  2,2,2	Grab char input 
 31:     LD  3,-1(1)	Load return address 
 32:     LD  1,0(1)	Adjust frame pointer 
 33:    JMP  7,0(3)	Return 
* END FUNCTION inputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outnl
 34:     ST  3,-1(1)	Store return address 
 35:  OUTNL  3,3,3	Output a new line 
 36:     LD  3,-1(1)	Load return address 
 37:     LD  1,0(1)	Adjust frame pointer 
 38:    JMP  7,0(3)	Return 
* END FUNCTION outnl
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION esperanza
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,10(0)	Load size of y into AC 
 41:     ST  3,-5(1)	Store size of y in data memory 
 42:    LDC  3,97(0)	Load type char constant 
 43:     ST  3,0(0)	Assigning variable gx in Global 
* CALL outputc
 44:     ST  1,-16(1)	Store frame pointer in ghost frame for outputc 
 45:     LD  3,0(0)	Load variable gx into accumulator 
 46:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-16(1)	Move the frame pointer to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-37(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
 51:    LDA  3,-2(0)	Load base address of array gy 
 52:    LDC  3,9(0)	Load type int constant 
 53:     ST  3,-16(1)	Push array index onto temp stack 
 54:    LDC  3,98(0)	Load type char constant 
 55:     LD  4,-16(1)	Pop array index into AC1 
 56:    LDA  5,-2(0)	Load base address of array gy into AC2 
 57:    SUB  5,5,4	Compute offset for array 
 58:     ST  3,0(5)	Store variable gy from AC into loc from AC2 
* CALL outputc
 59:     ST  1,-16(1)	Store frame pointer in ghost frame for outputc 
 60:    LDA  3,-2(0)	Load base address of array gy 
 61:    LDC  3,9(0)	Load type int constant 
 62:    LDA  5,-2(0)	Load base address of array gy into AC2 
 63:    SUB  5,5,3	Compute offset for array 
 64:     LD  3,0(5)	Load array element gy from AC into loc from AC2 
 65:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 66:    LDA  1,-16(1)	Move the frame pointer to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-56(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
 70:    LDC  3,99(0)	Load type char constant 
 71:     ST  3,-4(1)	Assigning variable x in Local 
* CALL outputc
 72:     ST  1,-16(1)	Store frame pointer in ghost frame for outputc 
 73:     LD  3,-4(1)	Load variable x into accumulator 
 74:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 75:    LDA  1,-16(1)	Move the frame pointer to the new frame 
 76:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 77:    JMP  7,-65(7)	Call function 
 78:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
 79:    LDA  3,-6(1)	Load base address of array y 
 80:    LDC  3,9(0)	Load type int constant 
 81:     ST  3,-16(1)	Push array index onto temp stack 
 82:    LDC  3,100(0)	Load type char constant 
 83:     LD  4,-16(1)	Pop array index into AC1 
 84:    LDA  5,-6(1)	Load base address of array y into AC2 
 85:    SUB  5,5,4	Compute offset for array 
 86:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL outputc
 87:     ST  1,-16(1)	Store frame pointer in ghost frame for outputc 
 88:    LDA  3,-6(1)	Load base address of array y 
 89:    LDC  3,9(0)	Load type int constant 
 90:    LDA  5,-6(1)	Load base address of array y into AC2 
 91:    SUB  5,5,3	Compute offset for array 
 92:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 93:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 94:    LDA  1,-16(1)	Move the frame pointer to the new frame 
 95:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 96:    JMP  7,-84(7)	Call function 
 97:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outnl
 98:     ST  1,-16(1)	Store frame pointer in ghost frame for outnl 
* Begin call
 99:    LDA  1,-16(1)	Move the frame pointer to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-68(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
103:    LDC  3,101(0)	Load type char constant 
104:     ST  3,-2(1)	Assigning variable px in Param 
* CALL outputc
105:     ST  1,-16(1)	Store frame pointer in ghost frame for outputc 
106:     LD  3,-2(1)	Load variable px into accumulator 
107:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
108:    LDA  1,-16(1)	Move the frame pointer to the new frame 
109:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
110:    JMP  7,-98(7)	Call function 
111:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
112:     LD  3,-3(1)	Load base address of array py 
113:    LDC  3,9(0)	Load type int constant 
114:     ST  3,-16(1)	Push array index onto temp stack 
115:    LDC  3,102(0)	Load type char constant 
116:     LD  4,-16(1)	Pop array index into AC1 
117:     LD  5,-3(1)	Load base address of array py into AC2 
118:    SUB  5,5,4	Compute offset for array 
119:     ST  3,0(5)	Store variable py from AC into loc from AC2 
* CALL outputc
120:     ST  1,-16(1)	Store frame pointer in ghost frame for outputc 
121:     LD  3,-3(1)	Load base address of array py 
122:    LDC  3,9(0)	Load type int constant 
123:     LD  5,-3(1)	Load base address of array py into AC2 
124:    SUB  5,5,3	Compute offset for array 
125:     LD  3,0(5)	Load array element py from AC into loc from AC2 
126:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
127:    LDA  1,-16(1)	Move the frame pointer to the new frame 
128:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
129:    JMP  7,-117(7)	Call function 
130:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
131:    LDC  3,102(0)	Load type char constant 
132:     ST  3,-12(0)	Assigning variable sx in Static 
* CALL outputc
133:     ST  1,-16(1)	Store frame pointer in ghost frame for outputc 
134:     LD  3,-12(0)	Load variable sx into accumulator 
135:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
136:    LDA  1,-16(1)	Move the frame pointer to the new frame 
137:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
138:    JMP  7,-126(7)	Call function 
139:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
140:    LDA  3,-14(0)	Load base address of array sy 
141:    LDC  3,9(0)	Load type int constant 
142:     ST  3,-16(1)	Push array index onto temp stack 
143:    LDC  3,104(0)	Load type char constant 
144:     LD  4,-16(1)	Pop array index into AC1 
145:    LDA  5,-14(0)	Load base address of array sy into AC2 
146:    SUB  5,5,4	Compute offset for array 
147:     ST  3,0(5)	Store variable sy from AC into loc from AC2 
* CALL outputc
148:     ST  1,-16(1)	Store frame pointer in ghost frame for outputc 
149:    LDA  3,-14(0)	Load base address of array sy 
150:    LDC  3,9(0)	Load type int constant 
151:    LDA  5,-14(0)	Load base address of array sy into AC2 
152:    SUB  5,5,3	Compute offset for array 
153:     LD  3,0(5)	Load array element sy from AC into loc from AC2 
154:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
155:    LDA  1,-16(1)	Move the frame pointer to the new frame 
156:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
157:    JMP  7,-145(7)	Call function 
158:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outnl
159:     ST  1,-16(1)	Store frame pointer in ghost frame for outnl 
* Begin call
160:    LDA  1,-16(1)	Move the frame pointer to the new frame 
161:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
162:    JMP  7,-129(7)	Call function 
163:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
164:    LDC  2,0(0)	Set return value to 0 
165:     LD  3,-1(1)	Load return address 
166:     LD  1,0(1)	Adjust frame pointer 
167:    JMP  7,0(3)	Return 
* END FUNCTION esperanza
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
168:     ST  3,-1(1)	Store return address 
* COMPOUND
169:    LDC  3,10(0)	Load size of zy into AC 
170:     ST  3,-3(1)	Store size of zy in data memory 
* CALL esperanza
171:     ST  1,-14(1)	Store frame pointer in ghost frame for esperanza 
172:     LD  3,-2(1)	Load variable zx into accumulator 
173:     ST  3,-16(1)	Push parameter onto new frame 
174:    LDA  3,-4(1)	Load base address of array zy 
175:     ST  3,-17(1)	Push parameter onto new frame 
* Begin call
176:    LDA  1,-14(1)	Move the frame pointer to the new frame 
177:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
178:    JMP  7,-140(7)	Call function 
179:    LDA  3,0(2)	Save return result in accumulator 
* END CALL esperanza
* END COMPOUND
* Add standard closing in case there is no return statement
180:    LDC  2,0(0)	Set return value to 0 
181:     LD  3,-1(1)	Load return address 
182:     LD  1,0(1)	Adjust frame pointer 
183:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
* INIT
  0:    JMP  7,183(7)	Jump to init backpatch 
184:     LD  0,0(0)	Set the global pointer 
185:    LDA  1,-24(0)	Set the first frame at the end of globals 
186:     ST  1,0(1)	Store old frame pointer (point to self) 
* INIT GLOBALS AND STATICS
187:    LDC  3,10(0)	Load size of gy into AC 
188:     ST  3,-1(0)	Store size of gy in data memory 
189:    LDC  3,10(0)	Load size of sy into AC 
190:     ST  3,-13(0)	Store size of sy in data memory 
* END INIT GLOBALS AND STATICS
191:    LDA  3,1(7)	Return address in ac 
192:    JMP  7,-25(7)	Jump to function main 
193:   HALT  0,0,0	DONE! 
* END INIT
