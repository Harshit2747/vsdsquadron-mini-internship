# VSD SQUADRON MINI INTERNSHIP
   summer internship under VLSI SYSTEM DESIGN on RISCV-Architecture and about open source eda tools.



   .

# TASK-1:
 * Creating a virtual machine in VirtualBox for RISC-V involves downloading a compatible RISC-V disk image and configuring the virtual machine settings to match the architecture requirements. This setup 
  allows users to emulate and run RISC-V-based software on their existing hardware for development and testing purposes.

![WhatsApp Image 2024-05-22 at 11 03 54_0c498e2c](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/7162cfc7-fb47-446d-a806-fe53797ce6a0)







![harshit ](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/fc147a82-4c5f-4c3d-b821-b8ba32820c3c)




# Install VirtualBox:

    *sudo apt install virtualbox

install the latest version of VirtualBox.
   


![WhatsApp Image 2024-05-22 at 11 03 36_32f894bb](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/929eb2d7-de5a-4112-8771-ed5446b9095a)





LAB BASED TASK:

c program to calculate sum of n natural number.
open terminal and give this command to open leafpad which is an editor.

    *$leafpad sum1ton.c

if it is not installed,install using below command.

    *$sudo install leafpad.


![WhatsApp Image 2024-05-22 at 11 03 31_f8480b3c](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/4779e7b0-626a-4796-92b1-b5516493dee1)


# write c program
In leafpad editor to calculate sum of n natural numbers and save it.



![harshit ](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/43a25d8c-7351-4cfe-9a25-fc89b52b915e)

    *$gcc sum1ton.c
    
    *$ ./a.out
* Running the command "gcc sum1ton.c"in a terminal would compile  the c source file "sum1ton.c"using gnu compiler collection.if succesful,it would generate an executable file named"a.out"bydefault.

  ![WhatsApp Image 2024-05-22 at 11 03 31_b038d865](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/0ec2032a-0f12-4f03-903b-e226f7704a4a)




Give command to open the c program in terminal
```cat sum1ton.c.```


![WhatsApp Image 2024-05-22 at 20 42 33_3b74a474](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/bb64f806-fd20-4b71-ad3f-14c1982d80ab)

Give command:-

*      $ riscv64-unknown-elf-gcc-o1 -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c

  * This command is compiling a C source file named "sum1ton.c" into an object file named "sum1ton.o" using the RISC-V GCC compiler with optimization level 1 (-O1), specifying the Application Binary 
   Interface (ABI) as LP64 (-mabi=lp64), and the target architecture as RV64I (-march=rv64i).
  
  * -mabi=ilp32: This option specifies the ABI (Application Binary Interface) to use ilp32, which is for a 32-bit integer, long, and pointer size. This ABI is used for 32-bit RISC-V architectures.


Go another tab and give command:-


```$ riscv64-unknown-elf-objdump -d sum1ton.o```


it will give bunch of assembly language code.


search the main address in that assembly language code.

![harshit ](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/ee6eec1a-95ca-4567-8597-82c0cb3f4ab8)


```$ riscv64-unknown-elf-gcc-ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c```


In the second tab run the same command


```$ riscv64-unknown-elf-objdump -d sum1ton.c | less```


 search for main address in that assembly language code.
![WhatsApp Image 2024-05-23 at 13 33 06_71e3e5c8](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/f1e9ec6b-d273-4865-840a-59388cf846c3)





# TASK-2

 ABOUT RISC-V SPECIFICATION
 
   * It is 32-bit instruction set.it has various instruction some of the basic instruction are R,I,S,B,J.

 Identify the istruction types and formats for each RISC-V instruction provided:
   1. R-Type Instructions (e.g., ADD, SUB, AND, OR, XOR, SLT, SRL, SLL)

   *  Format: funct7 rs2 rs1 funct3 rd opcode
   *  Length: 32 bits
   *  Example: ADD r6, r2, r1

    *funct7  = 0000000
    *rs2     = 00010 (2)
    *rs1     = 00001 (1)
    *funct3  = 000
    *rd      = 00110 (6)
    *opcode  = 0110011

  

  2. I-type Instruction(e.g.,ADDI,LW)
     * Format: imm[11:0] rs1 funct3 rd opcode
     * Example: ADDI r12, r4, 5


    *imm     = 000000000101 (5)
    *rs1     = 00100 (4)
    *funct3  = 000
    *rd      = 01100 (12)
    *opcode  = 0010011

 3. S-Type Instructions (e.g., SW)

 *  Format: imm[11:5] rs2 rs1 funct3 imm[4:0] opcode
 *  Example: SW r3, r1, 2

        imm     = 0000000 00010 (2)
        rs2     = 00011 (3)
        rs1     = 00001 (1)
        funct3  = 010
        imm     = 00010 (2)
        opcode  = 0100011  
 
