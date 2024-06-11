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


# working:-

* PD4 is connected with Green LED. if (a > b) then led will blink.

* PD5 is connected with multicolor LED. if (a = b) then led will blink

* PD6 is connected with White LED. if (a < b) then led will blink


 
https://github.com/Harshit2747/vsdsquadron-mini-internship/assets/167745025/5d9742d2-6bad-4a8f-8a66-61ae7bab9e12


    


