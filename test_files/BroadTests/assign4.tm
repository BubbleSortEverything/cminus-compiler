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
 40:    LDC  3,111(6)	Load of type int constant 
 41:     LD  4,-2(1)	Load lhs variable 
 42:    ADD  3,4,3	+= operation 
 43:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
 44:     ST  1,-4(1)	Store fp in ghost frame for output 
 45:     LD  3,-2(1)	Load variable x into accumulator 
 46:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-4(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 51:    LDC  3,222(6)	Load of type int constant 
 52:     LD  4,-3(1)	Load lhs variable 
 53:    ADD  3,4,3	+= operation 
 54:     ST  3,-3(1)	Assigning variable y in Local 
* CALL output
 55:     ST  1,-4(1)	Store fp in ghost frame for output 
 56:     LD  3,-3(1)	Load variable y into accumulator 
 57:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-4(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-55(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 62:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 63:    LDA  1,-4(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-32(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 67:    LDC  3,333(6)	Load of type int constant 
 68:     LD  4,0(0)	Load lhs variable 
 69:    ADD  3,4,3	+= operation 
 70:     ST  3,0(0)	Assigning variable gx in Global 
* CALL output
 71:     ST  1,-4(1)	Store fp in ghost frame for output 
 72:     LD  3,0(0)	Load variable gx into accumulator 
 73:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 74:    LDA  1,-4(1)	Move the fp to the new frame 
 75:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 76:    JMP  7,-71(7)	Call function 
 77:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 78:    LDC  3,444(6)	Load of type int constant 
 79:     LD  4,-1(0)	Load lhs variable 
 80:    ADD  3,4,3	+= operation 
 81:     ST  3,-1(0)	Assigning variable gy in Global 
* CALL output
 82:     ST  1,-4(1)	Store fp in ghost frame for output 
 83:     LD  3,-1(0)	Load variable gy into accumulator 
 84:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 85:    LDA  1,-4(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-82(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 89:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 90:    LDA  1,-4(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-59(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 94:     LD  3,-3(1)	Load variable y into accumulator 
 95:     LD  4,-2(1)	Load lhs variable 
 96:    ADD  3,4,3	+= operation 
 97:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
 98:     ST  1,-4(1)	Store fp in ghost frame for output 
 99:     LD  3,-2(1)	Load variable x into accumulator 
100:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
101:    LDA  1,-4(1)	Move the fp to the new frame 
102:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
103:    JMP  7,-98(7)	Call function 
104:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
105:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
106:    LDA  1,-4(1)	Move the fp to the new frame 
107:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
108:    JMP  7,-75(7)	Call function 
109:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
110:     LD  3,-1(0)	Load variable gy into accumulator 
111:     LD  4,0(0)	Load lhs variable 
112:    ADD  3,4,3	+= operation 
113:     ST  3,0(0)	Assigning variable gx in Global 
* CALL output
114:     ST  1,-4(1)	Store fp in ghost frame for output 
115:     LD  3,0(0)	Load variable gx into accumulator 
116:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
117:    LDA  1,-4(1)	Move the fp to the new frame 
118:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
119:    JMP  7,-114(7)	Call function 
120:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
121:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
122:    LDA  1,-4(1)	Move the fp to the new frame 
123:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
124:    JMP  7,-91(7)	Call function 
125:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
126:    LDC  3,111(6)	Load of type int constant 
127:     LD  4,-2(1)	Load lhs variable 
128:    SUB  3,4,3	-= operation 
129:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
130:     ST  1,-4(1)	Store fp in ghost frame for output 
131:     LD  3,-2(1)	Load variable x into accumulator 
132:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
133:    LDA  1,-4(1)	Move the fp to the new frame 
134:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
135:    JMP  7,-130(7)	Call function 
136:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
137:    LDC  3,222(6)	Load of type int constant 
138:     LD  4,-3(1)	Load lhs variable 
139:    SUB  3,4,3	-= operation 
140:     ST  3,-3(1)	Assigning variable y in Local 
* CALL output
141:     ST  1,-4(1)	Store fp in ghost frame for output 
142:     LD  3,-3(1)	Load variable y into accumulator 
143:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
144:    LDA  1,-4(1)	Move the fp to the new frame 
145:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
146:    JMP  7,-141(7)	Call function 
147:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
148:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
149:    LDA  1,-4(1)	Move the fp to the new frame 
150:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
151:    JMP  7,-118(7)	Call function 
152:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
153:    LDC  3,333(6)	Load of type int constant 
154:     LD  4,0(0)	Load lhs variable 
155:    SUB  3,4,3	-= operation 
156:     ST  3,0(0)	Assigning variable gx in Global 
* CALL output
157:     ST  1,-4(1)	Store fp in ghost frame for output 
158:     LD  3,0(0)	Load variable gx into accumulator 
159:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
160:    LDA  1,-4(1)	Move the fp to the new frame 
161:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
162:    JMP  7,-157(7)	Call function 
163:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
164:    LDC  3,444(6)	Load of type int constant 
165:     LD  4,-1(0)	Load lhs variable 
166:    SUB  3,4,3	-= operation 
167:     ST  3,-1(0)	Assigning variable gy in Global 
* CALL output
168:     ST  1,-4(1)	Store fp in ghost frame for output 
169:     LD  3,-1(0)	Load variable gy into accumulator 
170:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
171:    LDA  1,-4(1)	Move the fp to the new frame 
172:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
173:    JMP  7,-168(7)	Call function 
174:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
175:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
176:    LDA  1,-4(1)	Move the fp to the new frame 
177:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
178:    JMP  7,-145(7)	Call function 
179:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
180:     LD  3,-3(1)	Load variable y into accumulator 
181:     LD  4,-2(1)	Load lhs variable 
182:    SUB  3,4,3	-= operation 
183:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
184:     ST  1,-4(1)	Store fp in ghost frame for output 
185:     LD  3,-2(1)	Load variable x into accumulator 
186:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
187:    LDA  1,-4(1)	Move the fp to the new frame 
188:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
189:    JMP  7,-184(7)	Call function 
190:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
191:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
192:    LDA  1,-4(1)	Move the fp to the new frame 
193:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
194:    JMP  7,-161(7)	Call function 
195:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
196:     LD  3,-1(0)	Load variable gy into accumulator 
197:     LD  4,0(0)	Load lhs variable 
198:    SUB  3,4,3	-= operation 
199:     ST  3,0(0)	Assigning variable gx in Global 
* CALL output
200:     ST  1,-4(1)	Store fp in ghost frame for output 
201:     LD  3,0(0)	Load variable gx into accumulator 
202:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
203:    LDA  1,-4(1)	Move the fp to the new frame 
204:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
205:    JMP  7,-200(7)	Call function 
206:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
207:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
208:    LDA  1,-4(1)	Move the fp to the new frame 
209:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
210:    JMP  7,-177(7)	Call function 
211:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
212:    LDA  2,0(3)	Copy accumulator to return register 
213:     LD  3,-1(1)	Load return address 
214:     LD  1,0(1)	Adjust fp 
215:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
216:    LDC  2,0(6)	Set return value to 0 
217:     LD  3,-1(1)	Load return address 
218:     LD  1,0(1)	Adjust fp 
219:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,219(7)	Jump to init [backpatch] 
* INIT
220:    LDA  1,-2(0)	set first frame at end of globals 
221:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
222:    LDA  3,1(7)	Return address in ac 
223:    JMP  7,-185(7)	Jump to main 
224:   HALT  0,0,0	DONE! 
* END INIT
