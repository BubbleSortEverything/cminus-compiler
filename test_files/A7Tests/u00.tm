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
* BEGIN IF BLOCK
 40:    LDC  3,0(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
 42:     ST  1,-2(1)	Store fp in ghost frame for output 
 43:    LDC  3,101(6)	Load type int constant 
 44:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 45:    LDA  1,-2(1)	Move the fp to the new frame 
 46:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 47:    JMP  7,-42(7)	Call function 
 48:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 41:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
 50:    LDC  3,0(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
 52:     ST  1,-2(1)	Store fp in ghost frame for output 
 53:    LDC  3,103(6)	Load type int constant 
 54:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 55:    LDA  1,-2(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-52(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 51:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
 60:     ST  1,-2(1)	Store fp in ghost frame for output 
 61:    LDC  3,105(6)	Load type int constant 
 62:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-2(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-60(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 59:    LDA  7,7(7)	JUMP TO END 
* END IF
 49:    LDA  7,17(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 67:    LDC  3,0(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
 69:     ST  1,-2(1)	Store fp in ghost frame for output 
 70:    LDC  3,101(6)	Load type int constant 
 71:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 72:    LDA  1,-2(1)	Move the fp to the new frame 
 73:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 74:    JMP  7,-69(7)	Call function 
 75:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 68:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
 77:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
 79:     ST  1,-2(1)	Store fp in ghost frame for output 
 80:    LDC  3,103(6)	Load type int constant 
 81:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-2(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-79(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 78:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
 87:     ST  1,-2(1)	Store fp in ghost frame for output 
 88:    LDC  3,105(6)	Load type int constant 
 89:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-2(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-87(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 86:    LDA  7,7(7)	JUMP TO END 
* END IF
 76:    LDA  7,17(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 94:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
 96:     ST  1,-2(1)	Store fp in ghost frame for output 
 97:    LDC  3,101(6)	Load type int constant 
 98:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 99:    LDA  1,-2(1)	Move the fp to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-96(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 95:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
104:    LDC  3,0(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
106:     ST  1,-2(1)	Store fp in ghost frame for output 
107:    LDC  3,103(6)	Load type int constant 
108:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
109:    LDA  1,-2(1)	Move the fp to the new frame 
110:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
111:    JMP  7,-106(7)	Call function 
112:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
105:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
114:     ST  1,-2(1)	Store fp in ghost frame for output 
115:    LDC  3,105(6)	Load type int constant 
116:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
117:    LDA  1,-2(1)	Move the fp to the new frame 
118:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
119:    JMP  7,-114(7)	Call function 
120:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
113:    LDA  7,7(7)	JUMP TO END 
* END IF
103:    LDA  7,17(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
121:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
123:     ST  1,-2(1)	Store fp in ghost frame for output 
124:    LDC  3,101(6)	Load type int constant 
125:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
126:    LDA  1,-2(1)	Move the fp to the new frame 
127:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
128:    JMP  7,-123(7)	Call function 
129:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
122:    JZR  3,8(7)	IF JMP TO ELSE 
* BEGIN IF BLOCK
131:    LDC  3,1(6)	Load type bool constant 
* IF JUMP TO ELSE
* CALL output
133:     ST  1,-2(1)	Store fp in ghost frame for output 
134:    LDC  3,103(6)	Load type int constant 
135:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
136:    LDA  1,-2(1)	Move the fp to the new frame 
137:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
138:    JMP  7,-133(7)	Call function 
139:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
132:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL output
141:     ST  1,-2(1)	Store fp in ghost frame for output 
142:    LDC  3,105(6)	Load type int constant 
143:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
144:    LDA  1,-2(1)	Move the fp to the new frame 
145:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
146:    JMP  7,-141(7)	Call function 
147:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
140:    LDA  7,7(7)	JUMP TO END 
* END IF
130:    LDA  7,17(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
148:    LDC  2,0(6)	Set return value to 0 
149:     LD  3,-1(1)	Load return address 
150:     LD  1,0(1)	Adjust fp 
151:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,151(7)	Jump to init [backpatch] 
* INIT
152:    LDA  1,0(0)	set first frame at end of globals 
153:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
154:    LDA  3,1(7)	Return address in ac 
155:    JMP  7,-117(7)	Jump to main 
156:   HALT  0,0,0	DONE! 
* END INIT
