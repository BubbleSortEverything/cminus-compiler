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
* FUNCTION outputarray
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,0(6)	Load of type int constant 
 41:     ST  3,-3(1)	Assigning variable i in Local 
* Beginning WHILE statement
 42:     LD  3,-3(1)	Load variable i into accumulator 
 43:     ST  3,-4(1)	Push left side onto temp variable stack 
 44:     LD  3,-2(1)	Load base address of array s 
 45:     LD  3,-2(1)	Load address of base array s 
 46:     LD  3,1(3)	Load array size 
 47:     LD  4,-4(1)	Pop left hand side into AC1 
 48:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 50:     ST  1,-4(1)	Store fp in ghost frame for output 
 51:     LD  3,-2(1)	Load base address of array s 
 52:     LD  3,-3(1)	Load variable i into accumulator 
 53:     LD  5,-2(1)	Load base address of array s into AC2 
 54:    SUB  5,5,3	Compute offset for array 
 55:     LD  3,0(5)	Load array element s from AC into loc from AC2 
 56:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 57:    LDA  1,-4(1)	Move the fp to the new frame 
 58:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 59:    JMP  7,-54(7)	Call function 
 60:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 61:     LD  4,-3(1)	Load lhs variable 
 62:    LDA  3,1(4)	++ Increment accumulator operation 
 63:     ST  3,-3(1)	Assigning variable i in Local 
* END COMPOUND
 64:    JMP  7,-23(7)	Go to L1 
 49:    JZR  3,15(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
 65:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 66:    LDA  1,-4(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-35(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 70:    LDC  2,0(6)	Set return value to 0 
 71:     LD  3,-1(1)	Load return address 
 72:     LD  1,0(1)	Adjust fp 
 73:    JMP  7,0(3)	Return 
* END FUNCTION outputarray
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 74:     ST  3,-1(1)	Store return address 
* COMPOUND
 75:    LDC  3,9(6)	Load size of a into AC 
 76:     ST  3,-2(1)	Store size of a in data memory 
 77:    LDC  3,4(6)	Load size of b into AC 
 78:     ST  3,-12(1)	Store size of b in data memory 
 79:    LDC  3,6(6)	Load size of h into AC 
 80:     ST  3,-17(1)	Store size of h in data memory 
 81:    LDC  3,2(6)	Load size of small into AC 
 82:     ST  3,-24(1)	Store size of small in data memory 
 83:    LDC  3,10(6)	Load size of big into AC 
 84:     ST  3,-27(1)	Store size of big in data memory 
 85:    LDC  3,0(6)	Load of type int constant 
 86:    LDC  3,9(6)	Load of type int constant 
 87:    LDA  3,-3(1)	Load base address of array a 
 88:     LD  3,-38(1)	Load variable i into accumulator 
 89:     ST  3,-41(1)	Push array index onto temp stack 
 90:     LD  3,-38(1)	Load variable i into accumulator 
 91:     ST  3,-42(1)	Push left side onto temp variable stack 
 92:    LDC  3,10(6)	Load of type int constant 
 93:     LD  4,-42(1)	Pop left hand side into AC1 
 94:    ADD  3,4,3	+ Operation 
 95:     LD  4,-41(1)	Pop array index into AC1 
 96:    LDA  5,-3(1)	Load base address of array a into AC2 
 97:    SUB  5,5,4	Compute offset for array 
 98:     ST  3,0(5)	Store variable a from AC into loc from AC2 
 99:    LDC  3,0(6)	Load of type int constant 
100:    LDC  3,4(6)	Load of type int constant 
101:    LDA  3,-13(1)	Load base address of array b 
102:     LD  3,-38(1)	Load variable i into accumulator 
103:     ST  3,-41(1)	Push array index onto temp stack 
104:     LD  3,-38(1)	Load variable i into accumulator 
105:     ST  3,-42(1)	Push left side onto temp variable stack 
106:    LDC  3,200(6)	Load of type int constant 
107:     LD  4,-42(1)	Pop left hand side into AC1 
108:    ADD  3,4,3	+ Operation 
109:     LD  4,-41(1)	Pop array index into AC1 
110:    LDA  5,-13(1)	Load base address of array b into AC2 
111:    SUB  5,5,4	Compute offset for array 
112:     ST  3,0(5)	Store variable b from AC into loc from AC2 
113:    LDC  3,0(6)	Load of type int constant 
114:    LDC  3,6(6)	Load of type int constant 
115:    LDA  3,-18(1)	Load base address of array h 
116:     LD  3,-38(1)	Load variable i into accumulator 
117:     ST  3,-41(1)	Push array index onto temp stack 
118:     LD  3,-38(1)	Load variable i into accumulator 
119:     ST  3,-42(1)	Push left side onto temp variable stack 
120:    LDC  3,3000(6)	Load of type int constant 
121:     LD  4,-42(1)	Pop left hand side into AC1 
122:    ADD  3,4,3	+ Operation 
123:     LD  4,-41(1)	Pop array index into AC1 
124:    LDA  5,-18(1)	Load base address of array h into AC2 
125:    SUB  5,5,4	Compute offset for array 
126:     ST  3,0(5)	Store variable h from AC into loc from AC2 
127:    LDA  3,-28(1)	Load base address of array big 
128:    LDC  3,9(6)	Load of type int constant 
129:     ST  3,-41(1)	Push array index onto temp stack 
130:    LDC  3,2048(6)	Load of type int constant 
131:     LD  4,-41(1)	Pop array index into AC1 
132:    LDA  5,-28(1)	Load base address of array big into AC2 
133:    SUB  5,5,4	Compute offset for array 
134:     ST  3,0(5)	Store variable big from AC into loc from AC2 
135:    LDA  3,-25(1)	Load base address of array small 
136:    LDA  3,-3(1)	Load base address of array a 
137:     ST  3,-25(1)	Assigning variable small in Local 
* CALL outputarray
138:     ST  1,-41(1)	Store fp in ghost frame for outputarray 
139:    LDA  3,-25(1)	Load base address of array small 
140:     ST  3,-43(1)	Push parameter onto new frame 
* Begin call
141:    LDA  1,-41(1)	Move the fp to the new frame 
142:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
143:    JMP  7,-105(7)	Call function 
144:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputarray
145:    LDA  3,-28(1)	Load base address of array big 
146:    LDA  3,-3(1)	Load base address of array a 
147:     ST  3,-28(1)	Assigning variable big in Local 
* CALL outputarray
148:     ST  1,-41(1)	Store fp in ghost frame for outputarray 
149:    LDA  3,-28(1)	Load base address of array big 
150:     ST  3,-43(1)	Push parameter onto new frame 
* Begin call
151:    LDA  1,-41(1)	Move the fp to the new frame 
152:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
153:    JMP  7,-115(7)	Call function 
154:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputarray
* CALL outnl
155:     ST  1,-41(1)	Store fp in ghost frame for outnl 
* Begin call
156:    LDA  1,-41(1)	Move the fp to the new frame 
157:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
158:    JMP  7,-125(7)	Call function 
159:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
160:    LDA  3,-25(1)	Load base address of array small 
161:    LDA  3,-13(1)	Load base address of array b 
162:     ST  3,-25(1)	Assigning variable small in Local 
* CALL outputarray
163:     ST  1,-41(1)	Store fp in ghost frame for outputarray 
164:    LDA  3,-25(1)	Load base address of array small 
165:     ST  3,-43(1)	Push parameter onto new frame 
* Begin call
166:    LDA  1,-41(1)	Move the fp to the new frame 
167:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
168:    JMP  7,-130(7)	Call function 
169:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputarray
170:    LDA  3,-28(1)	Load base address of array big 
171:    LDA  3,-13(1)	Load base address of array b 
172:     ST  3,-28(1)	Assigning variable big in Local 
* CALL outputarray
173:     ST  1,-41(1)	Store fp in ghost frame for outputarray 
174:    LDA  3,-28(1)	Load base address of array big 
175:     ST  3,-43(1)	Push parameter onto new frame 
* Begin call
176:    LDA  1,-41(1)	Move the fp to the new frame 
177:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
178:    JMP  7,-140(7)	Call function 
179:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputarray
* CALL outnl
180:     ST  1,-41(1)	Store fp in ghost frame for outnl 
* Begin call
181:    LDA  1,-41(1)	Move the fp to the new frame 
182:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
183:    JMP  7,-150(7)	Call function 
184:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
185:    LDA  3,-25(1)	Load base address of array small 
186:    LDA  3,-18(1)	Load base address of array h 
187:     ST  3,-25(1)	Assigning variable small in Local 
* CALL outputarray
188:     ST  1,-41(1)	Store fp in ghost frame for outputarray 
189:    LDA  3,-25(1)	Load base address of array small 
190:     ST  3,-43(1)	Push parameter onto new frame 
* Begin call
191:    LDA  1,-41(1)	Move the fp to the new frame 
192:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
193:    JMP  7,-155(7)	Call function 
194:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputarray
195:    LDA  3,-28(1)	Load base address of array big 
196:    LDA  3,-18(1)	Load base address of array h 
197:     ST  3,-28(1)	Assigning variable big in Local 
* CALL outputarray
198:     ST  1,-41(1)	Store fp in ghost frame for outputarray 
199:    LDA  3,-28(1)	Load base address of array big 
200:     ST  3,-43(1)	Push parameter onto new frame 
* Begin call
201:    LDA  1,-41(1)	Move the fp to the new frame 
202:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
203:    JMP  7,-165(7)	Call function 
204:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputarray
* CALL outnl
205:     ST  1,-41(1)	Store fp in ghost frame for outnl 
* Begin call
206:    LDA  1,-41(1)	Move the fp to the new frame 
207:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
208:    JMP  7,-175(7)	Call function 
209:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
210:    LDC  2,0(6)	Set return value to 0 
211:     LD  3,-1(1)	Load return address 
212:     LD  1,0(1)	Adjust fp 
213:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,213(7)	Jump to init [backpatch] 
* INIT
214:    LDA  1,0(0)	set first frame at end of globals 
215:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
216:    LDA  3,1(7)	Return address in ac 
217:    JMP  7,-144(7)	Jump to main 
218:   HALT  0,0,0	DONE! 
* END INIT
