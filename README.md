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



 # TASK-3

 Functional simulation experiment using RISC-V Core Verilog netlist and testbench.
   *  IVERILOG:-Icarus Verilog, commonly referred to as IVerilog, is an open-source Verilog simulation and synthesis tool. It supports a wide range of Verilog standards and is used for designing and testing digital circuits. IVerilog is popular for its flexibility, allowing users to simulate complex designs and generate netlists for various FPGA and ASIC platforms. It is widely used in both educational and professional settings for hardware design and verification.

   *  GTKWAVE:- GTKWave is an open-source waveform viewer used for visualizing simulation results from digital circuit designs. It is commonly used in conjunction with simulation tools like Icarus Verilog.It is a fully featured GTK+ based waveform viewer for Unix and Win32, capable of displaying signal waveforms dumped in a variety of formats.

     
1. 
INSTALL IVERILOG:
using follwing command:-

    $ sudo apt install iverilog 
    
   ![WhatsApp Image 2024-05-30 at 10 37 45_581f3968](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/4c7e1e0f-76f2-472a-a68d-ff6ee5a3e6d6)

INSTALL GTKWAVE:
using following command:-

    $ sudo apt install iverilog gtkwave
    
![WhatsApp Image 2024-05-30 at 10 39 56_5bbda749](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/a782e8e3-d10b-4128-bcd7-5d2b2f77f9c6)

2. created the verilog file and testbench file in github repository.

cloned it to machine using following command:-

    $ git clone https://github.com/Harshit2747/vsdsquadron-mini-internship
    $ cd vsdsquadron-mini-internship


![WhatsApp Image 2024-05-30 at 13 12 36_911b1292](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/2bad89ed-c164-4302-a98d-1d6385a4c269)


simulate and run the code ,using following command:-

    $ iverilog -o vsdsquadron-mini-internship Harshit_rv32i.v Harshit_rv32i_tb.v
    $ ./vsdsquadron-mini-internship
    
And  for output waveform give following command:-

    $ gtkwave Harshit_rv32i.vcd

![WhatsApp Image 2024-05-30 at 13 12 35_afa0d07a](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/0014ccf1-2a14-4ee9-918f-4dda99fb9c32)

    

3.Analyze the wave form of each instruction using gtkwave.

following instruction are:-
    1.ADD r6, r2, r1
    
   2.SUB r7, r1, r2
   
   3.AND r8, r1, r3
   
   4.OR r9, r2, r5
   
   5.XOR r10, r1, r4
   
   6.SLT r11, r2, r4
   
   7.ADDI r12, r4, 5
   
   8.SW r3, r1, 2
   
   9.LW r13, r1, 2
   
   10.BEQ r0, r0, 15
  

Let's analyze:-

    1.ADD r6, r2, r1
    
![WhatsApp Image 2024-05-30 at 11 01 01_92ca8ece](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/2017e4d0-fbfe-4cfa-805e-98505d23481d)

    2.SUB r7, r1, r2
    
 ![WhatsApp Image 2024-05-30 at 11 03 12_d5baf988](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/097c3d64-c828-4ca5-bc36-bac158313fde)

    3.AND r8, r1, r3

![WhatsApp Image 2024-05-30 at 11 06 31_b093e69e](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/98d34fba-a45c-4c09-ade5-bd720d48ed18)

    4.OR r9, r2, r5

![WhatsApp Image 2024-05-30 at 11 01 05_d461ada0](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/ec1c9312-10ae-45f0-b597-b177c1e3d939)

    5.XOR r10, r1, r4

![WhatsApp Image 2024-05-30 at 11 01 05_feaa4380](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/5aaa76ef-8f9f-4fdd-a26f-2fc59fe0fcf6)

    6.SLT r11, r2, r4

![WhatsApp Image 2024-05-30 at 11 01 06_e0834270](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/161cbaf4-e736-45d3-9a0a-77bc99218371)

    7.ADDI r12, r4, 5

![WhatsApp Image 2024-05-30 at 11 01 07_feec8365](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/5bc4b5fa-a1fd-440f-ac12-531f8f378410)

    8.SW r3, r1, 2

![WhatsApp Image 2024-05-30 at 11 01 06_7cb6d5a3](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/a6743ab9-1cfa-48db-ae51-610a4e28f444)


    9.LW r13, r1, 2


![WhatsApp Image 2024-05-30 at 11 01 07_251ec2d6](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/76491557-19a2-4626-9747-65935a30cbf7)


    10.BEQ r0, r0, 15


![WhatsApp Image 2024-05-30 at 11 01 07_23c3b37f](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/24400d56-1a99-42c6-8f30-6db46e5b92f4)

    

    


# TASK-4 (PROJECT)

make mini project on vsdsquadron mini board to understandthe board overview
 
 # 4-bit comparator.

 A 4-bit comparator is a digital circuit that compares two 4-bit binary numbers and determines their relative magnitudes. It outputs signals that indicate whether one number is greater than, equal to, or less than the other. Comparators are fundamental components in digital systems, used in a variety of applications such as sorting algorithms, digital logic design, and microprocessor-based systems.

Overview of a 4-bit Comparator
Functionality
A 4-bit comparator takes two 4-bit inputs (let's call them A and B) and produces three outputs:

A > B (A is greater than B)
A = B (A is equal to B)
A < B (A is less than B)
Each of these outputs is a binary signal (0 or 1) indicating the result of the comparison.

Inputs and Outputs
Inputs:

A3, A2, A1, A0 (4 bits representing the first number A)
B3, B2, B1, B0 (4 bits representing the second number B)
Outputs:

A > B (High if A is greater than B, otherwise Low)
A = B (High if A is equal to B, otherwise Low)
A < B (High if A is less than B, otherwise Low)


# components required:-
  1. Vsdsquadron mini board 
  2. Breadboard
  3. Jumper wires
  4. 3 leds and resister



# Circuit connection for 4-bit comparator:-
Power Supply:

 * The RISC-V development board is powered using a USB connection or an appropriate power adapter.
 * Ensure that the board is properly powered on and the power indicator LEDs (if any) are on.
  




Output Connections:

* The outputs of the comparator indicate whether A is greater than, equal to, or less than B.
* These outputs are connected to three GPIO pins on the RISC-V board, assumed here to be Pd4,pd5,pd6 respectively.
* LEDs (with appropriate current-limiting resistors) can be connected to these GPIO pins to visualize the output:
* PD4 indicates A > B (LED will light up green if A is greater than B).
* PD5 indicates A = B (LED will light up multicolor if A is equal to B).
* PD6 indicates A < B (LED will light up white if A is less than B).


# Truth Table:

![Screenshot (152)](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/6a83e3ec-5c81-4c6d-b052-bc229caa3c84)



# Logic Diagram:-

![WhatsApp Image 2024-06-04 at 06 20 56_11113299](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/4be7cf9c-637a-4460-bcaa-9e743a60f5dc)




# Pinout Diagram for 4-bit comparator:-



![image](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/25e2b785-2329-4377-b09f-f37b4441f6f4)






# Table for Pin Connection:-


   ---------------------
       
   |  PD4 - o---- A > B (LED with resistor) |
       
   |  PD5 - o---- A = B (LED with resistor) |
       
      
   |  PD6 - o---- A < B (LED with resistor) |
       
   |                         |
       
   |    Vcc - o---- +5V      |
       
   |    GND - o---- GND      |
       
   -------------------------



# Code for implementation of 4-bit comparator using VSDSquadron Mini Board(.C Code):


#include <ch32v00x.h>
#include <debug.h>
#include<stdio.h>


#define LED1_PIN GPIO_Pin_4 //GreenLED

#define LED2_PIN GPIO_Pin_5 //Multicolor LED

#define LED3_PIN GPIO_Pin_6 //white LED

#define LED_PORT GPIOD

void GPIO_Config(void) {
    // Enable the clock for GPIOD

   RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD, ENABLE);

 // Configure PD4, PD5, and PD6 as outputs
   
   GPIO_InitTypeDef GPIO_InitStructure;
    
 GPIO_InitStructure.GPIO_Pin = LED1_PIN | LED2_PIN | LED3_PIN ;
    
   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP; // Push-pull output
    
 GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    
   GPIO_Init(LED_PORT, &GPIO_InitStructure);
}

void compare_4bit(uint8_t a, uint8_t b) {
    // Clear all LEDs
    GPIO_ResetBits(LED_PORT, LED1_PIN | LED2_PIN | LED3_PIN);

 if (a > b) {
      // Light up LED1 if a > b
        GPIO_SetBits(LED_PORT, LED1_PIN);
    } else if (a == b) {
        // Light up LED2 if a == b
        GPIO_SetBits(LED_PORT, LED2_PIN);
    } else {
        // Light up LED3 if a < b
        GPIO_SetBits(LED_PORT, LED3_PIN);
    }  
    
}  

int main(void) { 
   
   NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
   
   SystemCoreClockUpdate();
   
   Delay_Init();
    // Initialize the GPIO for the LEDs
    
   GPIO_Config();


  
   for (uint8_t a = 0; a <= 15; a++) {
   
   for (uint8_t b = 0; b <= 15; b++) {
   
   compare_4bit(a, b);
          
   Delay_Ms(800); // Delay for visualization
        }
    }
    
  return 0;
}

    









    

    

    

    
  
    
    
    
 


