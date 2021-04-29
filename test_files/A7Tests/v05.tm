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
* FUNCTION outputs
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
* BEGIN IF BLOCK
 50:     LD  3,-2(1)	Load base address of array s 
 51:     LD  3,-3(1)	Load variable i into accumulator 
 52:     LD  5,-2(1)	Load base address of array s into AC2 
 53:    SUB  5,5,3	Compute offset for array 
 54:     LD  3,0(5)	Load array element s from AC into loc from AC2 
 55:     ST  3,-4(1)	Push left side onto temp variable stack 
 56:    LDC  3,0(6)	Load of type char constant 
 57:     LD  4,-4(1)	Pop left hand side into AC1 
 58:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* IF JUMP TO END
 59:    JZR  3,2(7)	IF JMP TO ELSE 
 61:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL outputc
 62:     ST  1,-4(1)	Store fp in ghost frame for outputc 
 63:     LD  3,-2(1)	Load base address of array s 
 64:     LD  3,-3(1)	Load variable i into accumulator 
 65:     LD  5,-2(1)	Load base address of array s into AC2 
 66:    SUB  5,5,3	Compute offset for array 
 67:     LD  3,0(5)	Load array element s from AC into loc from AC2 
 68:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-4(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-44(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
 73:     LD  4,-3(1)	Load lhs variable 
 74:    LDA  3,1(4)	++ Increment accumulator operation 
 75:     ST  3,-3(1)	Assigning variable i in Local 
* END COMPOUND
 76:    JMP  7,-35(7)	Go to L1 
 49:    JZR  3,27(7)	JMP if condition is false 
 60:    JMP  0,16(7)	Break statement backpatch jump 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
 77:    LDC  2,0(6)	Set return value to 0 
 78:     LD  3,-1(1)	Load return address 
 79:     LD  1,0(1)	Adjust fp 
 80:    JMP  7,0(3)	Return 
* END FUNCTION outputs
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 81:     ST  3,-1(1)	Store return address 
* COMPOUND
 82:    LDC  3,0(6)	Load of type char constant 
 83:    LDC  3,10(6)	Load size of a into AC 
 84:     ST  3,-2(1)	Store size of a in data memory 
 85:     ST  3,-3(1)	Assigning variable a in Local 
 86:    LDC  3,0(6)	Load of type char constant 
 87:    LDC  3,4(6)	Load size of b into AC 
 88:     ST  3,-13(1)	Store size of b in data memory 
 89:     ST  3,-14(1)	Assigning variable b in Local 
 90:    LDC  3,0(6)	Load of type char constant 
 91:    LDC  3,6(6)	Load size of h into AC 
 92:     ST  3,-18(1)	Store size of h in data memory 
 93:     ST  3,-19(1)	Assigning variable h in Local 
 94:    LDC  3,10(6)	Load size of big into AC 
 95:     ST  3,-25(1)	Store size of big in data memory 
 96:    LDC  3,2(6)	Load size of small into AC 
 97:     ST  3,-36(1)	Store size of small in data memory 
 98:    LDA  3,-37(1)	Load base address of array small 
 99:    LDA  3,-3(1)	Load base address of array a 
100:     ST  3,-37(1)	Assigning variable small in Local 
* CALL outputs
101:     ST  1,-39(1)	Store fp in ghost frame for outputs 
102:    LDA  3,-37(1)	Load base address of array small 
103:     ST  3,-41(1)	Push parameter onto new frame 
* Begin call
104:    LDA  1,-39(1)	Move the fp to the new frame 
105:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
106:    JMP  7,-68(7)	Call function 
107:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputs
* CALL outnl
108:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
109:    LDA  1,-39(1)	Move the fp to the new frame 
110:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
111:    JMP  7,-78(7)	Call function 
112:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
113:    LDA  3,-26(1)	Load base address of array big 
114:    LDA  3,-3(1)	Load base address of array a 
115:     ST  3,-26(1)	Assigning variable big in Local 
* CALL outputs
116:     ST  1,-39(1)	Store fp in ghost frame for outputs 
117:    LDA  3,-26(1)	Load base address of array big 
118:     ST  3,-41(1)	Push parameter onto new frame 
* Begin call
119:    LDA  1,-39(1)	Move the fp to the new frame 
120:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
121:    JMP  7,-83(7)	Call function 
122:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputs
* CALL outnl
123:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
124:    LDA  1,-39(1)	Move the fp to the new frame 
125:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
126:    JMP  7,-93(7)	Call function 
127:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outnl
128:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
129:    LDA  1,-39(1)	Move the fp to the new frame 
130:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
131:    JMP  7,-98(7)	Call function 
132:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
133:    LDA  3,-37(1)	Load base address of array small 
134:    LDA  3,-14(1)	Load base address of array b 
135:     ST  3,-37(1)	Assigning variable small in Local 
* CALL outputs
136:     ST  1,-39(1)	Store fp in ghost frame for outputs 
137:    LDA  3,-37(1)	Load base address of array small 
138:     ST  3,-41(1)	Push parameter onto new frame 
* Begin call
139:    LDA  1,-39(1)	Move the fp to the new frame 
140:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
141:    JMP  7,-103(7)	Call function 
142:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputs
* CALL outnl
143:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
144:    LDA  1,-39(1)	Move the fp to the new frame 
145:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
146:    JMP  7,-113(7)	Call function 
147:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
148:    LDA  3,-26(1)	Load base address of array big 
149:    LDA  3,-14(1)	Load base address of array b 
150:     ST  3,-26(1)	Assigning variable big in Local 
* CALL outputs
151:     ST  1,-39(1)	Store fp in ghost frame for outputs 
152:    LDA  3,-26(1)	Load base address of array big 
153:     ST  3,-41(1)	Push parameter onto new frame 
* Begin call
154:    LDA  1,-39(1)	Move the fp to the new frame 
155:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
156:    JMP  7,-118(7)	Call function 
157:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputs
* CALL outnl
158:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
159:    LDA  1,-39(1)	Move the fp to the new frame 
160:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
161:    JMP  7,-128(7)	Call function 
162:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outnl
163:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
164:    LDA  1,-39(1)	Move the fp to the new frame 
165:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
166:    JMP  7,-133(7)	Call function 
167:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
168:    LDA  3,-37(1)	Load base address of array small 
169:    LDA  3,-19(1)	Load base address of array h 
170:     ST  3,-37(1)	Assigning variable small in Local 
* CALL outputs
171:     ST  1,-39(1)	Store fp in ghost frame for outputs 
172:    LDA  3,-37(1)	Load base address of array small 
173:     ST  3,-41(1)	Push parameter onto new frame 
* Begin call
174:    LDA  1,-39(1)	Move the fp to the new frame 
175:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
176:    JMP  7,-138(7)	Call function 
177:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputs
* CALL outnl
178:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
179:    LDA  1,-39(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-148(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
183:    LDA  3,-26(1)	Load base address of array big 
184:    LDA  3,-19(1)	Load base address of array h 
185:     ST  3,-26(1)	Assigning variable big in Local 
* CALL outputs
186:     ST  1,-39(1)	Store fp in ghost frame for outputs 
187:    LDA  3,-26(1)	Load base address of array big 
188:     ST  3,-41(1)	Push parameter onto new frame 
* Begin call
189:    LDA  1,-39(1)	Move the fp to the new frame 
190:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
191:    JMP  7,-153(7)	Call function 
192:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputs
* CALL outnl
193:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
194:    LDA  1,-39(1)	Move the fp to the new frame 
195:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
196:    JMP  7,-163(7)	Call function 
197:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outnl
198:     ST  1,-39(1)	Store fp in ghost frame for outnl 
* Begin call
199:    LDA  1,-39(1)	Move the fp to the new frame 
200:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
201:    JMP  7,-168(7)	Call function 
202:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
203:    LDC  2,0(6)	Set return value to 0 
204:     LD  3,-1(1)	Load return address 
205:     LD  1,0(1)	Adjust fp 
206:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,206(7)	Jump to init [backpatch] 
* INIT
207:    LDA  1,-23(0)	set first frame at end of globals 
208:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
209:    LDA  3,1(7)	Return address in ac 
210:    JMP  7,-130(7)	Jump to main 
211:   HALT  0,0,0	DONE! 
* END INIT
