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
 40:    LDC  3,0(6)	Load type char constant 
 41:    LDC  3,3(6)	Load size of a into AC 
 42:     ST  3,-2(1)	Store size of a in data memory 
 43:     ST  3,-3(1)	Assigning variable a in Local 
 44:    LDC  3,0(6)	Load type char constant 
 45:    LDC  3,4(6)	Load size of b into AC 
 46:     ST  3,-6(1)	Store size of b in data memory 
 47:     ST  3,-7(1)	Assigning variable b in Local 
* CALL outputb
 48:     ST  1,-11(1)	Store fp in ghost frame for outputb 
 49:    LDA  3,-3(1)	Load base address of array a 
 50:     ST  3,-14(1)	Push left side onto temp variable stack 
 51:    LDA  3,-7(1)	Load base address of array b 
 52:     LD  4,-14(1)	Pop left hand side into AC1 
 53:    TEQ  3,4,3	== Equality Operation 
 54:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
 55:    LDA  1,-11(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-41(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 59:     ST  1,-11(1)	Store fp in ghost frame for outputb 
 60:    LDA  3,-7(1)	Load base address of array b 
 61:     ST  3,-14(1)	Push left side onto temp variable stack 
 62:    LDA  3,-3(1)	Load base address of array a 
 63:     LD  4,-14(1)	Pop left hand side into AC1 
 64:    TEQ  3,4,3	== Equality Operation 
 65:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
 66:    LDA  1,-11(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-52(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 70:     ST  1,-11(1)	Store fp in ghost frame for outnl 
* Begin call
 71:    LDA  1,-11(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-40(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
 75:     ST  1,-11(1)	Store fp in ghost frame for outputb 
 76:    LDA  3,-3(1)	Load base address of array a 
 77:     ST  3,-14(1)	Push left side onto temp variable stack 
 78:    LDA  3,-7(1)	Load base address of array b 
 79:     LD  4,-14(1)	Pop left hand side into AC1 
 80:    TNE  3,4,3	!= Equality Operation 
 81:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-11(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-68(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
 86:     ST  1,-11(1)	Store fp in ghost frame for outputb 
 87:    LDA  3,-7(1)	Load base address of array b 
 88:     ST  3,-14(1)	Push left side onto temp variable stack 
 89:    LDA  3,-3(1)	Load base address of array a 
 90:     LD  4,-14(1)	Pop left hand side into AC1 
 91:    TNE  3,4,3	!= Equality Operation 
 92:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
 93:    LDA  1,-11(1)	Move the fp to the new frame 
 94:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 95:    JMP  7,-79(7)	Call function 
 96:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
 97:     ST  1,-11(1)	Store fp in ghost frame for outnl 
* Begin call
 98:    LDA  1,-11(1)	Move the fp to the new frame 
 99:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
100:    JMP  7,-67(7)	Call function 
101:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
102:     ST  1,-11(1)	Store fp in ghost frame for outputb 
103:    LDA  3,-3(1)	Load base address of array a 
104:     ST  3,-14(1)	Push left side onto temp variable stack 
105:    LDA  3,-7(1)	Load base address of array b 
106:     LD  4,-14(1)	Pop left hand side into AC1 
107:    TGT  3,4,3	Greather than > operation store in AC 
108:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
109:    LDA  1,-11(1)	Move the fp to the new frame 
110:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
111:    JMP  7,-95(7)	Call function 
112:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
113:     ST  1,-11(1)	Store fp in ghost frame for outputb 
114:    LDA  3,-7(1)	Load base address of array b 
115:     ST  3,-14(1)	Push left side onto temp variable stack 
116:    LDA  3,-3(1)	Load base address of array a 
117:     LD  4,-14(1)	Pop left hand side into AC1 
118:    TGT  3,4,3	Greather than > operation store in AC 
119:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
120:    LDA  1,-11(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-106(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
124:     ST  1,-11(1)	Store fp in ghost frame for outnl 
* Begin call
125:    LDA  1,-11(1)	Move the fp to the new frame 
126:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
127:    JMP  7,-94(7)	Call function 
128:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
129:     ST  1,-11(1)	Store fp in ghost frame for outputb 
130:    LDA  3,-3(1)	Load base address of array a 
131:     ST  3,-14(1)	Push left side onto temp variable stack 
132:    LDA  3,-7(1)	Load base address of array b 
133:     LD  4,-14(1)	Pop left hand side into AC1 
134:    TGE  3,4,3	GEQ >- operation store in AC 
135:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
136:    LDA  1,-11(1)	Move the fp to the new frame 
137:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
138:    JMP  7,-122(7)	Call function 
139:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
140:     ST  1,-11(1)	Store fp in ghost frame for outputb 
141:    LDA  3,-7(1)	Load base address of array b 
142:     ST  3,-14(1)	Push left side onto temp variable stack 
143:    LDA  3,-3(1)	Load base address of array a 
144:     LD  4,-14(1)	Pop left hand side into AC1 
145:    TGE  3,4,3	GEQ >- operation store in AC 
146:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
147:    LDA  1,-11(1)	Move the fp to the new frame 
148:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
149:    JMP  7,-133(7)	Call function 
150:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
151:     ST  1,-11(1)	Store fp in ghost frame for outnl 
* Begin call
152:    LDA  1,-11(1)	Move the fp to the new frame 
153:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
154:    JMP  7,-121(7)	Call function 
155:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
156:     ST  1,-11(1)	Store fp in ghost frame for outputb 
157:    LDA  3,-3(1)	Load base address of array a 
158:     ST  3,-14(1)	Push left side onto temp variable stack 
159:    LDA  3,-7(1)	Load base address of array b 
160:     LD  4,-14(1)	Pop left hand side into AC1 
161:    TLT  3,4,3	Less than < operation store in AC 
162:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
163:    LDA  1,-11(1)	Move the fp to the new frame 
164:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
165:    JMP  7,-149(7)	Call function 
166:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
167:     ST  1,-11(1)	Store fp in ghost frame for outputb 
168:    LDA  3,-7(1)	Load base address of array b 
169:     ST  3,-14(1)	Push left side onto temp variable stack 
170:    LDA  3,-3(1)	Load base address of array a 
171:     LD  4,-14(1)	Pop left hand side into AC1 
172:    TLT  3,4,3	Less than < operation store in AC 
173:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
174:    LDA  1,-11(1)	Move the fp to the new frame 
175:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
176:    JMP  7,-160(7)	Call function 
177:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
178:     ST  1,-11(1)	Store fp in ghost frame for outnl 
* Begin call
179:    LDA  1,-11(1)	Move the fp to the new frame 
180:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
181:    JMP  7,-148(7)	Call function 
182:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputb
183:     ST  1,-11(1)	Store fp in ghost frame for outputb 
184:    LDA  3,-3(1)	Load base address of array a 
185:     ST  3,-14(1)	Push left side onto temp variable stack 
186:    LDA  3,-7(1)	Load base address of array b 
187:     LD  4,-14(1)	Pop left hand side into AC1 
188:    TLE  3,4,3	LEQ <= operation store in AC 
189:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
190:    LDA  1,-11(1)	Move the fp to the new frame 
191:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
192:    JMP  7,-176(7)	Call function 
193:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outputb
194:     ST  1,-11(1)	Store fp in ghost frame for outputb 
195:    LDA  3,-7(1)	Load base address of array b 
196:     ST  3,-14(1)	Push left side onto temp variable stack 
197:    LDA  3,-3(1)	Load base address of array a 
198:     LD  4,-14(1)	Pop left hand side into AC1 
199:    TLE  3,4,3	LEQ <= operation store in AC 
200:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
201:    LDA  1,-11(1)	Move the fp to the new frame 
202:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
203:    JMP  7,-187(7)	Call function 
204:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
* CALL outnl
205:     ST  1,-11(1)	Store fp in ghost frame for outnl 
* Begin call
206:    LDA  1,-11(1)	Move the fp to the new frame 
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
214:    LDA  1,-9(0)	set first frame at end of globals 
215:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
216:    LDA  3,1(7)	Return address in ac 
217:    JMP  7,-179(7)	Jump to main 
218:   HALT  0,0,0	DONE! 
* END INIT
