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
* FUNCTION ant
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,111(6)	Load of type int constant 
 41:     ST  3,-4(1)	Assigning variable b in Local 
 42:    LDC  3,222(6)	Load of type int constant 
 43:     ST  3,-2(1)	Assigning variable x in Parameter 
 44:    LDC  3,333(6)	Load of type int constant 
 45:     ST  3,0(0)	Assigning variable g in Global 
* COMPOUND
 46:    LDC  3,444(6)	Load of type int constant 
 47:     ST  3,-3(1)	Assigning variable a in Local 
 48:    LDC  3,555(6)	Load of type int constant 
 49:     ST  3,-6(1)	Assigning variable b in Local 
 50:    LDC  3,666(6)	Load of type int constant 
 51:     ST  3,-5(1)	Assigning variable c in Local 
 52:    LDC  3,777(6)	Load of type int constant 
 53:     ST  3,0(0)	Assigning variable g in Global 
 54:    LDC  3,888(6)	Load of type int constant 
 55:     ST  3,-2(1)	Assigning variable x in Parameter 
* CALL output
 56:     ST  1,-7(1)	Store fp in ghost frame for output 
 57:     LD  3,-3(1)	Load variable a into accumulator 
 58:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-7(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-56(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 63:     ST  1,-7(1)	Store fp in ghost frame for output 
 64:     LD  3,-6(1)	Load variable b into accumulator 
 65:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 66:    LDA  1,-7(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-63(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 70:     ST  1,-7(1)	Store fp in ghost frame for output 
 71:     LD  3,-5(1)	Load variable c into accumulator 
 72:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 73:    LDA  1,-7(1)	Move the fp to the new frame 
 74:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 75:    JMP  7,-70(7)	Call function 
 76:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 77:     ST  1,-7(1)	Store fp in ghost frame for output 
 78:     LD  3,0(0)	Load variable g into accumulator 
 79:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 80:    LDA  1,-7(1)	Move the fp to the new frame 
 81:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 82:    JMP  7,-77(7)	Call function 
 83:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 84:     ST  1,-7(1)	Store fp in ghost frame for output 
 85:     LD  3,-2(1)	Load variable x into accumulator 
 86:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 87:    LDA  1,-7(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-84(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 91:     ST  1,-7(1)	Store fp in ghost frame for outnl 
* Begin call
 92:    LDA  1,-7(1)	Move the fp to the new frame 
 93:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 94:    JMP  7,-61(7)	Call function 
 95:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* CALL output
 96:     ST  1,-7(1)	Store fp in ghost frame for output 
 97:     LD  3,-3(1)	Load variable a into accumulator 
 98:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 99:    LDA  1,-7(1)	Move the fp to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-96(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
103:     ST  1,-7(1)	Store fp in ghost frame for output 
104:     LD  3,-4(1)	Load variable b into accumulator 
105:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
106:    LDA  1,-7(1)	Move the fp to the new frame 
107:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
108:    JMP  7,-103(7)	Call function 
109:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
110:     ST  1,-7(1)	Store fp in ghost frame for output 
111:     LD  3,0(0)	Load variable g into accumulator 
112:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
113:    LDA  1,-7(1)	Move the fp to the new frame 
114:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
115:    JMP  7,-110(7)	Call function 
116:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
117:     ST  1,-7(1)	Store fp in ghost frame for output 
118:     LD  3,-2(1)	Load variable x into accumulator 
119:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
120:    LDA  1,-7(1)	Move the fp to the new frame 
121:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
122:    JMP  7,-117(7)	Call function 
123:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
124:     ST  1,-7(1)	Store fp in ghost frame for outnl 
* Begin call
125:    LDA  1,-7(1)	Move the fp to the new frame 
126:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
127:    JMP  7,-94(7)	Call function 
128:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
129:    LDC  3,11(6)	Load of type int constant 
130:     ST  3,-3(1)	Assigning variable a in Local 
131:    LDC  3,12(6)	Load of type int constant 
132:     ST  3,-4(1)	Assigning variable b in Local 
133:    LDC  3,14(6)	Load of type int constant 
134:     ST  3,-2(1)	Assigning variable x in Parameter 
* COMPOUND
135:    LDC  3,15(6)	Load of type int constant 
136:     ST  3,-2(1)	Assigning variable x in Parameter 
* END COMPOUND
* CALL output
137:     ST  1,-7(1)	Store fp in ghost frame for output 
138:     LD  3,-3(1)	Load variable a into accumulator 
139:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
140:    LDA  1,-7(1)	Move the fp to the new frame 
141:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
142:    JMP  7,-137(7)	Call function 
143:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
144:     ST  1,-7(1)	Store fp in ghost frame for output 
145:     LD  3,-4(1)	Load variable b into accumulator 
146:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
147:    LDA  1,-7(1)	Move the fp to the new frame 
148:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
149:    JMP  7,-144(7)	Call function 
150:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
151:     ST  1,-7(1)	Store fp in ghost frame for output 
152:     LD  3,0(0)	Load variable g into accumulator 
153:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
154:    LDA  1,-7(1)	Move the fp to the new frame 
155:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
156:    JMP  7,-151(7)	Call function 
157:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
158:     ST  1,-7(1)	Store fp in ghost frame for output 
159:     LD  3,-2(1)	Load variable x into accumulator 
160:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
161:    LDA  1,-7(1)	Move the fp to the new frame 
162:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
163:    JMP  7,-158(7)	Call function 
164:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
165:     ST  1,-7(1)	Store fp in ghost frame for outnl 
* Begin call
166:    LDA  1,-7(1)	Move the fp to the new frame 
167:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
168:    JMP  7,-135(7)	Call function 
169:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
170:     LD  3,-3(1)	Load variable a into accumulator 
171:     ST  3,-7(1)	Push left side onto temp variable stack 
172:     LD  3,-4(1)	Load variable b into accumulator 
173:     LD  4,-7(1)	Pop left hand side into AC1 
174:    ADD  3,4,3	+ Operation 
175:     ST  3,-7(1)	Push left side onto temp variable stack 
176:     LD  3,0(0)	Load variable g into accumulator 
177:     LD  4,-7(1)	Pop left hand side into AC1 
178:    ADD  3,4,3	+ Operation 
179:     ST  3,-7(1)	Push left side onto temp variable stack 
180:     LD  3,-2(1)	Load variable x into accumulator 
181:     LD  4,-7(1)	Pop left hand side into AC1 
182:    ADD  3,4,3	+ Operation 
183:    LDA  2,0(3)	Copy accumulator to return register 
184:     LD  3,-1(1)	Load return address 
185:     LD  1,0(1)	Adjust fp 
186:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
187:    LDC  2,0(6)	Set return value to 0 
188:     LD  3,-1(1)	Load return address 
189:     LD  1,0(1)	Adjust fp 
190:    JMP  7,0(3)	Return 
* END FUNCTION ant
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
191:     ST  3,-1(1)	Store return address 
* COMPOUND
192:    LDC  3,16(6)	Load of type int constant 
193:     ST  3,-2(1)	Assigning variable a in Local 
194:    LDC  3,1(6)	Load of type int constant 
195:     ST  3,0(0)	Assigning variable g in Global 
* CALL output
196:     ST  1,-3(1)	Store fp in ghost frame for output 
* CALL ant
197:     ST  1,-6(1)	Store fp in ghost frame for ant 
198:    LDC  3,2(6)	Load of type int constant 
199:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
200:    LDA  1,-6(1)	Move the fp to the new frame 
201:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
202:    JMP  7,-164(7)	Call function 
203:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ant
204:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
205:    LDA  1,-3(1)	Move the fp to the new frame 
206:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
207:    JMP  7,-202(7)	Call function 
208:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
209:     ST  1,-3(1)	Store fp in ghost frame for output 
210:     LD  3,0(0)	Load variable g into accumulator 
211:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
212:    LDA  1,-3(1)	Move the fp to the new frame 
213:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
214:    JMP  7,-209(7)	Call function 
215:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
216:     ST  1,-3(1)	Store fp in ghost frame for output 
217:     LD  3,-2(1)	Load variable a into accumulator 
218:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
219:    LDA  1,-3(1)	Move the fp to the new frame 
220:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
221:    JMP  7,-216(7)	Call function 
222:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
223:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
224:    LDA  1,-3(1)	Move the fp to the new frame 
225:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
226:    JMP  7,-193(7)	Call function 
227:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
228:    LDC  2,0(6)	Set return value to 0 
229:     LD  3,-1(1)	Load return address 
230:     LD  1,0(1)	Adjust fp 
231:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,231(7)	Jump to init [backpatch] 
* INIT
232:    LDA  1,-1(0)	set first frame at end of globals 
233:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
234:    LDA  3,1(7)	Return address in ac 
235:    JMP  7,-45(7)	Jump to main 
236:   HALT  0,0,0	DONE! 
* END INIT
