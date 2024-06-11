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
       
   -------------------------



    

