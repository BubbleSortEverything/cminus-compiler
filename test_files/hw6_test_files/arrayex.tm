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
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,10(0)	Load size of a into AC 
 41:     ST  3,-2(1)	Store size of a in data memory 
 42:    LDC  3,15(0)	Load size of b into AC 
 43:     ST  3,-13(1)	Store size of b in data memory 
 44:    LDA  3,-3(1)	Load base address of array a 
 45:    LDA  3,-14(1)	Load base address of array b 
 46:     ST  3,-3(1)	Assigning variable a in Local 
 47:    LDA  3,-14(1)	Load base address of array b 
 48:    LDA  3,-3(1)	Load base address of array a 
 49:     ST  3,-14(1)	Assigning variable b in Local 
 50:    LDA  3,-14(1)	Load base address of array b 
 51:     ST  3,-29(1)	Push left side onto temp variable stack 
 52:    LDA  3,-3(1)	Load base address of array a 
 53:     LD  4,-29(1)	Pop left hand side into AC1 
 54:    TEQ  3,4,3	== Equality Operation 
 55:    LDA  3,-14(1)	Load base address of array b 
 56:     ST  3,-29(1)	Push left side onto temp variable stack 
 57:    LDA  3,-3(1)	Load base address of array a 
 58:     LD  4,-29(1)	Pop left hand side into AC1 
 59:    TGE  3,4,3	GEQ >- operation store in AC 
* END COMPOUND
* Add standard closing in case there is no return statement
 60:    LDC  2,0(0)	Set return value to 0 
 61:     LD  3,-1(1)	Load return address 
 62:     LD  1,0(1)	Adjust frame pointer 
 63:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
* INIT
  0:    JMP  7,63(7)	Jump to init backpatch 
 64:     LD  0,0(0)	Set the global pointer 
 65:    LDA  1,0(0)	Set the first frame at the end of globals 
 66:     ST  1,0(1)	Store old frame pointer (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 67:    LDA  3,1(7)	Return address in ac 
 68:    JMP  7,-30(7)	Jump to function main 
 69:   HALT  0,0,0	DONE! 
* END INIT
