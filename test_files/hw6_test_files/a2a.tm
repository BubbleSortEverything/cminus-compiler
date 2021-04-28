* C- Compiler by Zachary Sugano
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION output
  1:     ST  3,-1(1)	Store return address 
  2:     LD  3,-2(1)	Load parameter 
  3:    OUT  3,3,3	Output integer 
  4:     LD  3,-1(1)	Load return address 
  5:     LD  1,0(1)	Adjust frame pointer 
  6:    JMP  7,0(3)	Return 
* END FUNCTION output
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputb
  7:     ST  3,-1(1)	Store return address 
  8:     LD  3,-2(1)	Load parameter 
  9:   OUTB  3,3,3	Output bool 
 10:     LD  3,-1(1)	Load return address 
 11:     LD  1,0(1)	Adjust frame pointer 
 12:    JMP  7,0(3)	Return 
* END FUNCTION outputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputc
 13:     ST  3,-1(1)	Store return address 
 14:     LD  3,-2(1)	Load parameter 
 15:   OUTC  3,3,3	Output char 
 16:     LD  3,-1(1)	Load return address 
 17:     LD  1,0(1)	Adjust frame pointer 
 18:    JMP  7,0(3)	Return 
* END FUNCTION outputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION input
 19:     ST  3,-1(1)	Store return address 
 20:     IN  2,2,2	Grab int input 
 21:     LD  3,-1(1)	Load return address 
 22:     LD  1,0(1)	Adjust frame pointer 
 23:    JMP  7,0(3)	Return 
* END FUNCTION input
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputb
 24:     ST  3,-1(1)	Store return address 
 25:    INB  2,2,2	Grab bool input 
 26:     LD  3,-1(1)	Load return address 
 27:     LD  1,0(1)	Adjust frame pointer 
 28:    JMP  7,0(3)	Return 
* END FUNCTION inputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputc
 29:     ST  3,-1(1)	Store return address 
 30:    INC  2,2,2	Grab char input 
 31:     LD  3,-1(1)	Load return address 
 32:     LD  1,0(1)	Adjust frame pointer 
 33:    JMP  7,0(3)	Return 
* END FUNCTION inputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outnl
 34:     ST  3,-1(1)	Store return address 
 35:  OUTNL  3,3,3	Output a new line 
 36:     LD  3,-1(1)	Load return address 
 37:     LD  1,0(1)	Adjust frame pointer 
 38:    JMP  7,0(3)	Return 
* END FUNCTION outnl
* 
 39:    LDC  3,0(0)	Load type char constant 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 40:     ST  3,-1(1)	Store return address 
* COMPOUND
 41:    LDC  3,10(0)	Load size of a into AC 
 42:     ST  3,-2(1)	Store size of a in data memory 
 43:    LDC  3,10(0)	Load size of b into AC 
 44:     ST  3,-13(1)	Store size of b in data memory 
 45:    LDA  3,-3(1)	Load base address of array a 
 46:    LDC  3,0(0)	Load type char constant 
 47:     ST  3,-3(1)	Assigning variable a in Local 
 48:    LDA  3,-14(1)	Load base address of array b 
 49:    LDA  3,-12(0)	Load base address of array g 
 50:     ST  3,-14(1)	Assigning variable b in Local 
 51:    LDA  3,-14(1)	Load base address of array b 
 52:    LDA  3,-3(1)	Load base address of array a 
 53:     ST  3,-14(1)	Assigning variable b in Local 
 54:    LDA  3,-14(1)	Load base address of array b 
 55:     ST  3,-24(1)	Push left side onto temp variable stack 
 56:    LDA  3,-3(1)	Load base address of array a 
 57:     LD  4,-24(1)	Pop left hand side into AC1 
 58:    TEQ  3,4,3	== Equality Operation 
 59:    LDC  3,0(0)	Load type char constant 
 60:     ST  3,-24(1)	Push left side onto temp variable stack 
 61:    LDC  3,0(0)	Load type char constant 
 62:     LD  4,-24(1)	Pop left hand side into AC1 
 63:    TGT  3,4,3	Greather than > operation store in AC 
* END COMPOUND
* Add standard closing in case there is no return statement
 64:    LDC  2,0(0)	Set return value to 0 
 65:     LD  3,-1(1)	Load return address 
 66:     LD  1,0(1)	Adjust frame pointer 
 67:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
* INIT
  0:    JMP  7,67(7)	Jump to init backpatch 
 68:     LD  0,0(0)	Set the global pointer 
 69:    LDA  1,-64(0)	Set the first frame at the end of globals 
 70:     ST  1,0(1)	Store old frame pointer (point to self) 
* INIT GLOBALS AND STATICS
 71:    LDC  3,10(0)	Load size of g into AC 
 72:     ST  3,-11(0)	Store size of g in data memory 
* END INIT GLOBALS AND STATICS
 73:    LDA  3,1(7)	Return address in ac 
 74:    JMP  7,-35(7)	Jump to function main 
 75:   HALT  0,0,0	DONE! 
* END INIT
