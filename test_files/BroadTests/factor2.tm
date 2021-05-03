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
* Beginning WHILE statement
 40:    LDC  3,1(6)	Load of type bool constant 
* COMPOUND
* CALL input
 42:     ST  1,-4(1)	Store fp in ghost frame for input 
* Begin call
 43:    LDA  1,-4(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-45(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
 47:     ST  3,-2(1)	Assigning variable n in Local 
* BEGIN IF BLOCK
 48:     LD  3,-2(1)	Load variable n into accumulator 
 49:     ST  3,-4(1)	Push left side onto temp variable stack 
 50:    LDC  3,2(6)	Load of type int constant 
 51:     LD  4,-4(1)	Pop left hand side into AC1 
 52:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* IF JUMP TO END
 53:    JZR  3,2(7)	IF JMP TO ELSE 
 55:    LDA  7,0(7)	JUMP TO END 
* END IF
* Beginning WHILE statement
 56:     LD  3,-2(1)	Load variable n into accumulator 
 57:     ST  3,-4(1)	Push left side onto temp variable stack 
 58:    LDC  3,2(6)	Load of type int constant 
 59:     LD  4,-4(1)	Pop left hand side into AC1 
 60:    MOD  3,4,3	% mod operation 
 61:     ST  3,-4(1)	Push left side onto temp variable stack 
 62:    LDC  3,0(6)	Load of type int constant 
 63:     LD  4,-4(1)	Pop left hand side into AC1 
 64:    TEQ  3,4,3	== Equality Operation 
* COMPOUND
* CALL output
 66:     ST  1,-4(1)	Store fp in ghost frame for output 
 67:    LDC  3,2(6)	Load of type int constant 
 68:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-4(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-66(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 73:    LDC  3,2(6)	Load of type int constant 
 74:     LD  4,-2(1)	Load lhs variable 
 75:    DIV  3,4,3	+= operation 
 76:     ST  3,-2(1)	Assigning variable n in Local 
* END COMPOUND
 77:    JMP  7,-22(7)	Go to L1 
 65:    JZR  3,12(7)	JMP if condition is false 
* End WHILE statement
 78:    LDC  3,3(6)	Load of type int constant 
 79:     LD  3,-2(1)	Load variable n into accumulator 
 80:    LDC  3,2(6)	Load of type int constant 
* COMPOUND
* BEGIN IF BLOCK
 81:     LD  3,-3(1)	Load variable i into accumulator 
 82:     ST  3,-4(1)	Push left side onto temp variable stack 
 83:     LD  3,-3(1)	Load variable i into accumulator 
 84:     LD  4,-4(1)	Pop left hand side into AC1 
 85:    MUL  3,4,3	* Multiplication Operation 
 86:     ST  3,-4(1)	Push left side onto temp variable stack 
 87:     LD  3,-2(1)	Load variable n into accumulator 
 88:     LD  4,-4(1)	Pop left hand side into AC1 
 89:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* IF JUMP TO END
 90:    JZR  3,2(7)	IF JMP TO ELSE 
 92:    LDA  7,0(7)	JUMP TO END 
* END IF
* Beginning WHILE statement
 93:     LD  3,-2(1)	Load variable n into accumulator 
 94:     ST  3,-4(1)	Push left side onto temp variable stack 
 95:     LD  3,-3(1)	Load variable i into accumulator 
 96:     LD  4,-4(1)	Pop left hand side into AC1 
 97:    MOD  3,4,3	% mod operation 
 98:     ST  3,-4(1)	Push left side onto temp variable stack 
 99:    LDC  3,0(6)	Load of type int constant 
100:     LD  4,-4(1)	Pop left hand side into AC1 
101:    TEQ  3,4,3	== Equality Operation 
* COMPOUND
* CALL output
103:     ST  1,-4(1)	Store fp in ghost frame for output 
104:     LD  3,-3(1)	Load variable i into accumulator 
105:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
106:    LDA  1,-4(1)	Move the fp to the new frame 
107:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
108:    JMP  7,-103(7)	Call function 
109:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
110:     LD  3,-3(1)	Load variable i into accumulator 
111:     LD  4,-2(1)	Load lhs variable 
112:    DIV  3,4,3	+= operation 
113:     ST  3,-2(1)	Assigning variable n in Local 
* END COMPOUND
114:    JMP  7,-22(7)	Go to L1 
102:    JZR  3,12(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* BEGIN IF BLOCK
115:     LD  3,-2(1)	Load variable n into accumulator 
116:     ST  3,-4(1)	Push left side onto temp variable stack 
117:    LDC  3,1(6)	Load of type int constant 
118:     LD  4,-4(1)	Pop left hand side into AC1 
119:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* CALL output
121:     ST  1,-4(1)	Store fp in ghost frame for output 
122:     LD  3,-2(1)	Load variable n into accumulator 
123:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
124:    LDA  1,-4(1)	Move the fp to the new frame 
125:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
126:    JMP  7,-121(7)	Call function 
127:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
120:    JZR  3,8(7)	IF JMP TO ELSE 
128:    LDA  7,0(7)	JUMP TO END 
* END IF
* CALL outnl
129:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
130:    LDA  1,-4(1)	Move the fp to the new frame 
131:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
132:    JMP  7,-99(7)	Call function 
133:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
134:    JMP  7,-95(7)	Go to L1 
 41:    JZR  3,93(7)	JMP if condition is false 
 54:    JMP  0,80(7)	Break statement backpatch jump 
 91:    JMP  0,43(7)	Break statement backpatch jump 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
135:    LDC  2,0(6)	Set return value to 0 
136:     LD  3,-1(1)	Load return address 
137:     LD  1,0(1)	Adjust fp 
138:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,138(7)	Jump to init [backpatch] 
* INIT
139:    LDA  1,0(0)	set first frame at end of globals 
140:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
141:    LDA  3,1(7)	Return address in ac 
142:    JMP  7,-104(7)	Jump to main 
143:   HALT  0,0,0	DONE! 
* END INIT
