
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

 For output waveform give following command:-

    $ gtkwave Harshit_rv32i.vcd

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
    
   9.SRL r16, r14, r2
    
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

    
