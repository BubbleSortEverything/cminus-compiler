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
 40:    LDC  3,10(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
 42:    LDC  3,7(6)	Load of type int constant 
 43:     ST  3,-3(1)	Assigning variable y in Local 
* Beginning WHILE statement
 44:     LD  3,-2(1)	Load variable x into accumulator 
 45:     ST  3,-4(1)	Push left side onto temp variable stack 
 46:    LDC  3,0(6)	Load of type int constant 
 47:     LD  4,-4(1)	Pop left hand side into AC1 
 48:    TGT  3,4,3	Greather than > operation store in AC 
* BEGIN IF BLOCK
 50:     LD  3,-2(1)	Load variable x into accumulator 
 51:     ST  3,-4(1)	Push left side onto temp variable stack 
 52:     LD  3,-3(1)	Load variable y into accumulator 
 53:     LD  4,-4(1)	Pop left hand side into AC1 
 54:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 56:    LDC  3,666(6)	Load of type int constant 
 57:     ST  3,-3(1)	Assigning variable y in Local 
* IF JUMP TO END
 55:    JZR  3,3(7)	IF JMP TO ELSE 
 59:     LD  3,-2(1)	Load variable x into accumulator 
 60:     ST  3,-4(1)	Push left side onto temp variable stack 
 61:    LDC  3,1(6)	Load of type int constant 
 62:     LD  4,-4(1)	Pop left hand side into AC1 
 63:    SUB  3,4,3	- Subtraction Operation 
 64:     ST  3,-2(1)	Assigning variable x in Local 
 58:    LDA  7,6(7)	JUMP TO END 
* END IF
 65:    JMP  7,-22(7)	Go to L1 
 49:    JZR  3,16(7)	JMP if condition is false 
* End WHILE statement
* CALL output
 66:     ST  1,-4(1)	Store fp in ghost frame for output 
 67:     LD  3,-3(1)	Load variable y into accumulator 
 68:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-4(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-66(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 73:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 74:    LDA  1,-4(1)	Move the fp to the new frame 
 75:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 76:    JMP  7,-43(7)	Call function 
 77:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 78:    LDC  3,1(6)	Load of type int constant 
 79:     ST  3,-2(1)	Assigning variable x in Local 
 80:    LDC  3,1(6)	Load of type int constant 
 81:     ST  3,-3(1)	Assigning variable y in Local 
* Beginning WHILE statement
 82:     LD  3,-2(1)	Load variable x into accumulator 
 83:     ST  3,-4(1)	Push left side onto temp variable stack 
 84:    LDC  3,5(6)	Load of type int constant 
 85:     LD  4,-4(1)	Pop left hand side into AC1 
 86:    TLT  3,4,3	Less than < operation store in AC 
* BEGIN IF BLOCK
 88:     LD  3,-3(1)	Load variable y into accumulator 
 89:     ST  3,-4(1)	Push left side onto temp variable stack 
 90:    LDC  3,5(6)	Load of type int constant 
 91:     LD  4,-4(1)	Pop left hand side into AC1 
 92:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
* Beginning WHILE statement
 94:     LD  3,-3(1)	Load variable y into accumulator 
 95:     ST  3,-4(1)	Push left side onto temp variable stack 
 96:    LDC  3,5(6)	Load of type int constant 
 97:     LD  4,-4(1)	Pop left hand side into AC1 
 98:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
100:     ST  1,-4(1)	Store fp in ghost frame for output 
101:     LD  3,-2(1)	Load variable x into accumulator 
102:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
103:    LDA  1,-4(1)	Move the fp to the new frame 
104:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
105:    JMP  7,-100(7)	Call function 
106:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
107:     ST  1,-4(1)	Store fp in ghost frame for output 
108:     LD  3,-3(1)	Load variable y into accumulator 
109:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
110:    LDA  1,-4(1)	Move the fp to the new frame 
111:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
112:    JMP  7,-107(7)	Call function 
113:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
114:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
115:    LDA  1,-4(1)	Move the fp to the new frame 
116:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
117:    JMP  7,-84(7)	Call function 
118:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
119:     LD  4,-3(1)	Load lhs variable 
120:    LDA  3,1(4)	++ Increment accumulator operation 
121:     ST  3,-3(1)	Assigning variable y in Local 
* END COMPOUND
122:    JMP  7,-29(7)	Go to L1 
 99:    JZR  3,23(7)	JMP if condition is false 
* End WHILE statement
* IF JUMP TO END
 93:    JZR  3,30(7)	IF JMP TO ELSE 
* COMPOUND
124:    LDC  3,1(6)	Load of type int constant 
125:     ST  3,-3(1)	Assigning variable y in Local 
126:     LD  4,-2(1)	Load lhs variable 
127:    LDA  3,1(4)	++ Increment accumulator operation 
128:     ST  3,-2(1)	Assigning variable x in Local 
* END COMPOUND
123:    LDA  7,5(7)	JUMP TO END 
* END IF
129:    JMP  7,-48(7)	Go to L1 
 87:    JZR  3,42(7)	JMP if condition is false 
* End WHILE statement
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
137:    LDA  2,0(3)	Copy accumulator to return register 
138:     LD  3,-1(1)	Load return address 
139:     LD  1,0(1)	Adjust fp 
140:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
141:    LDC  2,0(6)	Set return value to 0 
142:     LD  3,-1(1)	Load return address 
143:     LD  1,0(1)	Adjust fp 
144:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,144(7)	Jump to init [backpatch] 
* INIT
145:    LDA  1,0(0)	set first frame at end of globals 
146:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
147:    LDA  3,1(7)	Return address in ac 
148:    JMP  7,-110(7)	Jump to main 
149:   HALT  0,0,0	DONE! 
* END INIT
