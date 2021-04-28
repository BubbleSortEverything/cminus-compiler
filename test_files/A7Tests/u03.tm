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
 40:    LDC  3,0(6)	Load type int constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
* Beginning WHILE statement
 42:     LD  3,-2(1)	Load variable x into accumulator 
 43:     ST  3,-3(1)	Push left side onto temp variable stack 
 44:    LDC  3,8(6)	Load type int constant 
 45:     LD  4,-3(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 48:     ST  1,-3(1)	Store fp in ghost frame for output 
 49:     LD  3,-2(1)	Load variable x into accumulator 
 50:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 51:    LDA  1,-3(1)	Move the fp to the new frame 
 52:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 53:    JMP  7,-48(7)	Call function 
 54:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* BEGIN IF BLOCK
 55:     LD  3,-2(1)	Load variable x into accumulator 
 56:     ST  3,-3(1)	Push left side onto temp variable stack 
 57:    LDC  3,1(6)	Load type int constant 
 58:     LD  4,-3(1)	Pop left hand side into AC1 
 59:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* CALL outputc
 61:     ST  1,-3(1)	Store fp in ghost frame for outputc 
 62:    LDC  3,65(6)	Load type char constant 
 63:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 64:    LDA  1,-3(1)	Move the fp to the new frame 
 65:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 66:    JMP  7,-39(7)	Call function 
 67:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
 60:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
 69:     LD  3,-2(1)	Load variable x into accumulator 
 70:     ST  3,-3(1)	Push left side onto temp variable stack 
 71:    LDC  3,2(6)	Load type int constant 
 72:     LD  4,-3(1)	Pop left hand side into AC1 
 73:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* CALL outputc
 75:     ST  1,-3(1)	Store fp in ghost frame for outputc 
 76:    LDC  3,66(6)	Load type char constant 
 77:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 78:    LDA  1,-3(1)	Move the fp to the new frame 
 79:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 80:    JMP  7,-53(7)	Call function 
 81:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
 74:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
 83:     LD  3,-2(1)	Load variable x into accumulator 
 84:     ST  3,-3(1)	Push left side onto temp variable stack 
 85:    LDC  3,3(6)	Load type int constant 
 86:     LD  4,-3(1)	Pop left hand side into AC1 
 87:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* CALL outputc
 89:     ST  1,-3(1)	Store fp in ghost frame for outputc 
 90:    LDC  3,67(6)	Load type char constant 
 91:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 92:    LDA  1,-3(1)	Move the fp to the new frame 
 93:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 94:    JMP  7,-67(7)	Call function 
 95:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
 88:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
 97:     LD  3,-2(1)	Load variable x into accumulator 
 98:     ST  3,-3(1)	Push left side onto temp variable stack 
 99:    LDC  3,4(6)	Load type int constant 
100:     LD  4,-3(1)	Pop left hand side into AC1 
101:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* CALL outputc
103:     ST  1,-3(1)	Store fp in ghost frame for outputc 
104:    LDC  3,68(6)	Load type char constant 
105:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
106:    LDA  1,-3(1)	Move the fp to the new frame 
107:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
108:    JMP  7,-81(7)	Call function 
109:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
102:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL outputc
111:     ST  1,-3(1)	Store fp in ghost frame for outputc 
112:    LDC  3,69(6)	Load type char constant 
113:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
114:    LDA  1,-3(1)	Move the fp to the new frame 
115:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
116:    JMP  7,-89(7)	Call function 
117:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
110:    LDA  7,7(7)	JUMP TO END 
* END IF
 96:    LDA  7,21(7)	JUMP TO END 
* END IF
 82:    LDA  7,35(7)	JUMP TO END 
* END IF
 68:    LDA  7,49(7)	JUMP TO END 
* END IF
* CALL outnl
118:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
119:    LDA  1,-3(1)	Move the fp to the new frame 
120:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
121:    JMP  7,-88(7)	Call function 
122:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
123:     ST  1,-3(1)	Store fp in ghost frame for output 
124:     LD  3,-2(1)	Load variable x into accumulator 
125:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
126:    LDA  1,-3(1)	Move the fp to the new frame 
127:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
128:    JMP  7,-123(7)	Call function 
129:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* BEGIN IF BLOCK
130:     LD  3,-2(1)	Load variable x into accumulator 
131:     ST  3,-3(1)	Push left side onto temp variable stack 
132:    LDC  3,1(6)	Load type int constant 
133:     LD  4,-3(1)	Pop left hand side into AC1 
134:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* CALL outputc
136:     ST  1,-3(1)	Store fp in ghost frame for outputc 
137:    LDC  3,65(6)	Load type char constant 
138:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
139:    LDA  1,-3(1)	Move the fp to the new frame 
140:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
141:    JMP  7,-114(7)	Call function 
142:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
135:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
144:     LD  3,-2(1)	Load variable x into accumulator 
145:     ST  3,-3(1)	Push left side onto temp variable stack 
146:    LDC  3,2(6)	Load type int constant 
147:     LD  4,-3(1)	Pop left hand side into AC1 
148:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* CALL outputc
150:     ST  1,-3(1)	Store fp in ghost frame for outputc 
151:    LDC  3,66(6)	Load type char constant 
152:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
153:    LDA  1,-3(1)	Move the fp to the new frame 
154:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
155:    JMP  7,-128(7)	Call function 
156:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
149:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
158:     LD  3,-2(1)	Load variable x into accumulator 
159:     ST  3,-3(1)	Push left side onto temp variable stack 
160:    LDC  3,3(6)	Load type int constant 
161:     LD  4,-3(1)	Pop left hand side into AC1 
162:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* CALL outputc
164:     ST  1,-3(1)	Store fp in ghost frame for outputc 
165:    LDC  3,67(6)	Load type char constant 
166:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
167:    LDA  1,-3(1)	Move the fp to the new frame 
168:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
169:    JMP  7,-142(7)	Call function 
170:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
163:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
172:     LD  3,-2(1)	Load variable x into accumulator 
173:     ST  3,-3(1)	Push left side onto temp variable stack 
174:    LDC  3,4(6)	Load type int constant 
175:     LD  4,-3(1)	Pop left hand side into AC1 
176:    TLE  3,4,3	LEQ <= operation store in AC 
* IF JUMP TO ELSE
* CALL outputc
178:     ST  1,-3(1)	Store fp in ghost frame for outputc 
179:    LDC  3,68(6)	Load type char constant 
180:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
181:    LDA  1,-3(1)	Move the fp to the new frame 
182:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
183:    JMP  7,-156(7)	Call function 
184:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
177:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL outputc
186:     ST  1,-3(1)	Store fp in ghost frame for outputc 
187:    LDC  3,69(6)	Load type char constant 
188:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
189:    LDA  1,-3(1)	Move the fp to the new frame 
190:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
191:    JMP  7,-164(7)	Call function 
192:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
185:    LDA  7,7(7)	JUMP TO END 
* END IF
171:    LDA  7,21(7)	JUMP TO END 
* END IF
157:    LDA  7,35(7)	JUMP TO END 
* END IF
143:    LDA  7,49(7)	JUMP TO END 
* END IF
* CALL outnl
193:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
194:    LDA  1,-3(1)	Move the fp to the new frame 
195:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
196:    JMP  7,-163(7)	Call function 
197:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
198:     LD  4,-2(1)	Load lhs variable 
199:    LDA  3,1(4)	++ Increment accumulator operation 
200:     ST  3,-2(1)	Assigning variable x in Local 
* END COMPOUND
201:    JMP  7,-160(7)	Go to L1 
 47:    JZR  3,154(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
202:    LDC  2,0(6)	Set return value to 0 
203:     LD  3,-1(1)	Load return address 
204:     LD  1,0(1)	Adjust fp 
205:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,205(7)	Jump to init [backpatch] 
* INIT
206:    LDA  1,0(0)	set first frame at end of globals 
207:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
208:    LDA  3,1(7)	Return address in ac 
209:    JMP  7,-171(7)	Jump to main 
210:   HALT  0,0,0	DONE! 
* END INIT
