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
  5. 8 push buttons


# Circuit connection for 4-bit comparator:-
Power Supply:

 * The RISC-V development board is powered using a USB connection or an appropriate power adapter.
 * Ensure that the board is properly powered on and the power indicator LEDs (if any) are on.
  

Input Connections (4-bit Number A):

*The 4-bit number A consists of four binary inputs: A0, A1, A2, and A3.
* These inputs are connected to four GPIO pins on the RISC-V board. For this example, let's assume they are connected to PC0, PC1, PC2, and PC3 respectively.
* If using switches to provide these inputs, one terminal of each switch is connected to the respective GPIO pin, and the other terminal is connected to 
  either Vcc (for logic HIGH) or GND (for logic LOW).

Input Connections (4-bit Number B):

* Similarly, the 4-bit number B consists of four binary inputs: B0, B1, B2, and B3.
* These inputs are connected to another set of GPIO pins on the RISC-V board. For this example, let's assume they are connected to PD0, PD1, PD2, and PD3 respectively.
* These can also be connected via switches similar to the A inputs.


Output Connections:

* The outputs of the comparator indicate whether A is greater than, equal to, or less than B.
* These outputs are connected to three GPIO pins on the RISC-V board, assumed here to be PE0, PE1, and PE2 respectively.
* LEDs (with appropriate current-limiting resistors) can be connected to these GPIO pins to visualize the output:
* PC4 indicates A > B (LED will light up if A is greater than B).
* PC5 indicates A = B (LED will light up if A is equal to B).
* PC6 indicates A < B (LED will light up if A is less than B).


# Truth Table:

![WhatsApp Image 2024-06-04 at 06 20 19_28b55529](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/93c9137b-6e29-46cf-a78b-2c4bd595dc1c)


# Logic Diagram:-

![WhatsApp Image 2024-06-04 at 06 20 56_11113299](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/4be7cf9c-637a-4460-bcaa-9e743a60f5dc)




# Pinout Diagram for 4-bit comparator:-


![WhatsApp Image 2024-06-04 at 07 17 32_f3f6c307](https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/56482d69-ab8d-4703-a485-6467a85e9fcc)





# Table for Pin Connection:-


   ---------------------
       
   |  PC0 - o---- A0         |
       
   |  PC1 - o---- A1         |
       
   |  PC2 - o---- A2         |
       
   |  PC3 - o---- A3         |

   |                         |
       
   |  PD0 - o---- B0         |
       
   |  PD1 - o---- B1         |
       
   |  PD2 - o---- B2         |
       
   |  PD3 - o---- B3         |
      
   |                         |
       
   |  PC4 - o---- A > B (LED with resistor) |
       
   |  PC5 - o---- A = B (LED with resistor) |
       
      
   |  PC6 - o---- A < B (LED with resistor) |
       
   |                         |
       
   |    Vcc - o---- +5V      |
       
   |    GND - o---- GND      |
       
   -------------------------



    

