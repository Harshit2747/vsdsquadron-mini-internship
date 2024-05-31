# read design

read_verilog Harshit_rv32i.v

# generic synthesis
synth -top Harshit_rv32i

# mapping to mycells.lib
dfflibmap -liberty /Users/Harshit2747/Desktop/Harshit/RISC-V/Harshit_rv32i-main/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
proc; opt
abc -liberty /Users/Harshit2747/Desktop/Harshit/RISC-V/Harshit_rv32i-main/lib/sky130_fd_sc_hd__tt_025C_1v80.lib -script +strash;scorr;ifraig;retime,{D};strash;dch,-f;map,-M,1,{D}
clean
flatten
# write synthesized design
write_verilog -noattr Harshit_rv32i_synth.v
