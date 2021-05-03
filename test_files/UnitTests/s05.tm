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
* FUNCTION cat
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,22(6)	Load size of b into AC 
 41:     ST  3,-3(1)	Store size of b in data memory 
* COMPOUND
 42:    LDC  3,33(6)	Load size of d into AC 
 43:     ST  3,-27(1)	Store size of d in data memory 
* CALL output
 44:     ST  1,-107(1)	Store fp in ghost frame for output 
 45:    LDA  3,-2(0)	Load base address of array h 
 46:    LDA  3,-2(0)	Load address of base array h 
 47:     LD  3,1(3)	Load array size 
 48:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
 49:    LDA  1,-107(1)	Move the fp to the new frame 
 50:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 51:    JMP  7,-46(7)	Call function 
 52:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 53:     ST  1,-107(1)	Store fp in ghost frame for output 
 54:    LDA  3,-4(1)	Load base address of array b 
 55:    LDA  3,-4(1)	Load address of base array b 
 56:     LD  3,1(3)	Load array size 
 57:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-107(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-55(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 62:     ST  1,-107(1)	Store fp in ghost frame for output 
 63:    LDA  3,-15(0)	Load base address of array bs 
 64:    LDA  3,-15(0)	Load address of base array bs 
 65:     LD  3,1(3)	Load array size 
 66:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
 67:    LDA  1,-107(1)	Move the fp to the new frame 
 68:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 69:    JMP  7,-64(7)	Call function 
 70:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 71:     ST  1,-107(1)	Store fp in ghost frame for output 
 72:    LDA  3,-28(1)	Load base address of array d 
 73:    LDA  3,-28(1)	Load address of base array d 
 74:     LD  3,1(3)	Load array size 
 75:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
 76:    LDA  1,-107(1)	Move the fp to the new frame 
 77:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 78:    JMP  7,-73(7)	Call function 
 79:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 80:     ST  1,-107(1)	Store fp in ghost frame for output 
 81:    LDA  3,-40(0)	Load base address of array ds 
 82:    LDA  3,-40(0)	Load address of base array ds 
 83:     LD  3,1(3)	Load array size 
 84:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
 85:    LDA  1,-107(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-82(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* COMPOUND
 89:    LDC  3,44(6)	Load size of d into AC 
 90:     ST  3,-27(1)	Store size of d in data memory 
* CALL output
 91:     ST  1,-107(1)	Store fp in ghost frame for output 
 92:    LDA  3,-2(0)	Load base address of array h 
 93:    LDA  3,-2(0)	Load address of base array h 
 94:     LD  3,1(3)	Load array size 
 95:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
 96:    LDA  1,-107(1)	Move the fp to the new frame 
 97:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 98:    JMP  7,-93(7)	Call function 
 99:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
100:     ST  1,-107(1)	Store fp in ghost frame for output 
101:    LDA  3,-4(1)	Load base address of array b 
102:    LDA  3,-4(1)	Load address of base array b 
103:     LD  3,1(3)	Load array size 
104:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
105:    LDA  1,-107(1)	Move the fp to the new frame 
106:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
107:    JMP  7,-102(7)	Call function 
108:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
109:     ST  1,-107(1)	Store fp in ghost frame for output 
110:    LDA  3,-15(0)	Load base address of array bs 
111:    LDA  3,-15(0)	Load address of base array bs 
112:     LD  3,1(3)	Load array size 
113:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
114:    LDA  1,-107(1)	Move the fp to the new frame 
115:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
116:    JMP  7,-111(7)	Call function 
117:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
118:     ST  1,-107(1)	Store fp in ghost frame for output 
119:    LDA  3,-28(1)	Load base address of array d 
120:    LDA  3,-28(1)	Load address of base array d 
121:     LD  3,1(3)	Load array size 
122:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
123:    LDA  1,-107(1)	Move the fp to the new frame 
124:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
125:    JMP  7,-120(7)	Call function 
126:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
127:     ST  1,-107(1)	Store fp in ghost frame for output 
128:    LDA  3,-76(0)	Load base address of array ds 
129:    LDA  3,-76(0)	Load address of base array ds 
130:     LD  3,1(3)	Load array size 
131:     ST  3,-109(1)	Push parameter onto new frame 
* Begin call
132:    LDA  1,-107(1)	Move the fp to the new frame 
133:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
134:    JMP  7,-129(7)	Call function 
135:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* END COMPOUND
* Add standard closing in case there is no return statement
136:    LDC  2,0(6)	Set return value to 0 
137:     LD  3,-1(1)	Load return address 
138:     LD  1,0(1)	Adjust fp 
139:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION dog
140:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
141:     ST  1,-2(1)	Store fp in ghost frame for output 
142:    LDA  3,-123(0)	Load base address of array j 
143:    LDA  3,-123(0)	Load address of base array j 
144:     LD  3,1(3)	Load array size 
145:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
146:    LDA  1,-2(1)	Move the fp to the new frame 
147:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
148:    JMP  7,-143(7)	Call function 
149:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
150:    LDC  2,0(6)	Set return value to 0 
151:     LD  3,-1(1)	Load return address 
152:     LD  1,0(1)	Adjust fp 
153:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
154:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL cat
155:     ST  1,-2(1)	Store fp in ghost frame for cat 
* Begin call
156:    LDA  1,-2(1)	Move the fp to the new frame 
157:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
158:    JMP  7,-120(7)	Call function 
159:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* CALL dog
160:     ST  1,-2(1)	Store fp in ghost frame for dog 
* Begin call
161:    LDA  1,-2(1)	Move the fp to the new frame 
162:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
163:    JMP  7,-24(7)	Call function 
164:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
* END COMPOUND
* Add standard closing in case there is no return statement
165:    LDC  2,0(6)	Set return value to 0 
166:     LD  3,-1(1)	Load return address 
167:     LD  1,0(1)	Adjust fp 
168:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,168(7)	Jump to init [backpatch] 
* INIT
169:    LDA  1,-178(0)	set first frame at end of globals 
170:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
171:    LDC  3,11(6)	Load size of h into AC 
172:     ST  3,-1(0)	Store size of h in data memory 
173:    LDC  3,23(6)	Load size of bs into AC 
174:     ST  3,-14(0)	Store size of bs in data memory 
175:    LDC  3,34(6)	Load size of ds into AC 
176:     ST  3,-39(0)	Store size of ds in data memory 
177:    LDC  3,45(6)	Load size of ds into AC 
178:     ST  3,-75(0)	Store size of ds in data memory 
179:    LDC  3,55(6)	Load size of j into AC 
180:     ST  3,-122(0)	Store size of j in data memory 
* END INIT GLOBALS AND STATICS
181:    LDA  3,1(7)	Return address in ac 
182:    JMP  7,-29(7)	Jump to main 
183:   HALT  0,0,0	DONE! 
* END INIT
