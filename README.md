# ripple_carry_adder

3 bits ripple carry adder implemented with behavioral Verilog.

Commands to compile and run simulation on ModelSim SE-64 10.5
>   vlog -sw -work work -quiet ripple_carry_adder_beh.sv
>   vlog -sw -work work -quiet testbench.sv
>   vsim

Testbench Inputs:
      0ns   2ns   4ns
A     0     7     2
B     0     3     1
CIN   0     0     0
