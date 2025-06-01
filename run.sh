#!/bin/bash
iverilog -o sim_out testbench.v my_module.v
vvp sim_out
gtkwave dump.vcd

