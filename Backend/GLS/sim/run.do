# Create and map work library
vlib work
vmap work

# Compile Standard Cell Library
vlog -sv /home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/verilog/tsmc13_m.v

# Compile Gate-Level Netlist
vlog -sv /home/ICer/Labs/System_Final/PNR/Export/SYS_TOP.v

# Compile Testbench
vlog -sv tb_SYS_TOP_basic.sv

# Start Gate-Level Simulation
vsim -sdfmax "/tb_SYS_TOP_basic/UUT=/home/ICer/Labs/System_Final/GLS/sim/SYS_TOP.sdf" \
     -sdfnoerror \
     +no_notifier \
     +no_tchk_msg \
     work.tb_SYS_TOP_basic

# Load Waveform
do wave.do

# ===================================================================
# VCD Logging
# ===================================================================
vcd file SYS_TOP.vcd
vcd add -r /tb_SYS_TOP_basic/*

# Run Full Simulation
run -all

# Flush VCD Buffer
vcd flush
