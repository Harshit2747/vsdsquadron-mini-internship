# TASK-2

 ABOUT RISC-V SPECIFICATION
 
   * It is 32-bit instruction set.it has various instruction some of the basic instruction are R,I,S,B,J.

 Identify the istruction types and formats for each RISC-V instruction provided:
   1. R-Type Instructions(Register/register):-These are instructions use only registers as source and destiantions. This instruction type is mostly used for arithmetic and logic operations involving the ALU. (e.g., ADD, SUB, AND, OR, XOR, SLT, SRL, SLL)

   *  Format: funct7 rs2 rs1 funct3 rd opcode
   *  Length: 32 bits
   *  Example: ADD r6, r2, r1

    *funct7  = 0000000
    *rs2     = 00010 (2)
    *rs1     = 00001 (1)
    *funct3  = 000
    *rd      = 00110 (6)
    *opcode  = 0110011

  

  2. I-type Instruction(Immediate):-These are instructions has one of the two source operands specified within the 32-bit instruction word as a 12-bit constant (or immediate). This constant is regards as 12-bit signed 2’s complement number, which is always sign extended to form a 32-bit operand  (e.g.,ADDI,LW)
     
     * Format: imm[11:0] rs1 funct3 rd opcode
     * Example: ADDI r12, r4, 5


    *imm     = 000000000101 (5)
    *rs1     = 00100 (4)
    *funct3  = 000
    *rd      = 01100 (12)
    *opcode  = 0010011

 3. S-Type Instructions:-These instructions are exclusively used for storing contents of a register to data memory. (e.g., SW)

 *  Format: imm[11:5] rs2 rs1 funct3 imm[4:0] opcode
 *  Example: SW r3, r1, 2

        imm     = 0000000 00010 (2)
        rs2     = 00011 (3)
        rs1     = 00001 (1)
        funct3  = 010
        imm     = 00010 (2)
        opcode  = 0100011
  4. B-Type Instructions:-These instructions are used to control program flow. It compares two operands stored in registers and branch to a destination address relative to the current Program Counter value. (e.g., BNE, BEQ)

   * Format: imm[12|10:5] rs2 rs1 funct3 imm[4:1|11] opcode
   * Example: BNE r0, r1, 20

    imm     = 0000000 0010 (20 in binary split into 0000000 and 0010)
    rs2     = 00001 (1)
    rs1     = 00000 (0)
    funct3  = 001
    imm     = 00101 (20 in binary split into 0010 and 1)
    opcode  = 1100011  

32-bit Instruction Codes


1.ADD r6, r2, r1

 * R-Type
 * 0000000 00010 00001 000 00110 0110011
 * 0x000102B3
   
2.SUB r7, r1, r2

  *  R-Type
  *  0100000 00010 00001 000 00111 0110011
  *  0x400102B3


 3.AND r8, r1, r3

   * R-Type
   * 0000000 00011 00001 111 01000 0110011
   * 0x003102B3


 4.OR r9, r2, r5

   * R-Type
   * 0000000 00101 00010 110 01001 0110011
   * 0x005112B3

 5. XOR r10, r1, r4

    * R-Type
    * 0000000 00100 00001 100 01010 0110011
    * 0x004102B3


  6.SLT r11, r2, r4

   * R-Type
   * 0000000 00100 00010 010 01011 0110011
   * 0x004112B3


 7.ADDI r12, r4, 5

   * I-Type
   * 000000000101 00100 000 01100 0010011
   * 0x00520193


 8.SW r3, r1, 2

   * S-Type
   * 0000000 00011 00001 010 00010 0100011
   * 0x00310223

9.SRL r16, r14, r2

 * R-Type
 * 0000000 00010 01110 101 10000 0110011
 * 0x002722B3


 10.BNE r0, r1, 20

   * B-Type
   * 0000000 00001 00000 001 00101 1100011
   * 0x00105163


 11.BEQ r0, r0, 15

   * B-Type
   * 0000000 00000 00000 000 00011 1100011
   * 0x00003163


12.LW r13, r1, 2

   * I-Type
   * 000000000010 00001 010 01101 0000011
   * 0x00210183


13.SLL r15, r1, r2

  * R-Type
  * 0000000 00010 00001 001 01111 0110011
  * 0x002102B3 
