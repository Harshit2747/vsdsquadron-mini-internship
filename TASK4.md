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

    

# Project Demonstration:

 
https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/5d9742d2-6bad-4a8f-8a66-61ae7bab9e12


    

