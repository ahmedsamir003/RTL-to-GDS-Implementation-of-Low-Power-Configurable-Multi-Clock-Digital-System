
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. Master Clocks
set CLK1_NAME REF_CLK
set CLK1_PER 10
set CLK1_SETUP_SKEW 0.2
set CLK1_HOLD_SKEW 0.1
set CLK1_LAT 0
set CLK1_RISE 0.05
set CLK1_FALL 0.05

create_clock 		-name 	$CLK1_NAME 		-period $CLK1_PER -waveform "0 [expr $CLK1_PER/2]" 						[get_ports REF_CLK]
set_clock_uncertainty 	-setup 	$CLK1_SETUP_SKEW 													[get_clocks $CLK1_NAME]
set_clock_uncertainty 	-hold 	$CLK1_HOLD_SKEW  													[get_clocks $CLK1_NAME]
set_clock_transition 	-rise 	$CLK1_RISE  														[get_clocks $CLK1_NAME]
set_clock_transition 	-fall 	$CLK1_FALL  														[get_clocks $CLK1_NAME]
set_clock_latency 		$CLK1_LAT 														[get_clocks $CLK1_NAME]



set CLK2_NAME UART_CLK
set CLK2_PER 271.30
set CLK2_SETUP_SKEW 0.2
set CLK2_HOLD_SKEW 0.1
set CLK2_LAT 0
set CLK2_RISE 0.05
set CLK2_FALL 0.05

create_clock 		-name 	$CLK2_NAME 		-period $CLK2_PER -waveform "0 [expr $CLK2_PER/2]" 						[get_ports UART_CLK]
set_clock_uncertainty 	-setup 	$CLK2_SETUP_SKEW 													[get_clocks $CLK2_NAME]
set_clock_uncertainty 	-hold 	$CLK2_HOLD_SKEW  													[get_clocks $CLK2_NAME]
set_clock_transition 	-rise 	$CLK2_RISE  														[get_clocks $CLK2_NAME]
set_clock_transition 	-fall 	$CLK2_FALL  														[get_clocks $CLK2_NAME]
set_clock_latency 		$CLK2_LAT 														[get_clocks $CLK2_NAME]

#2. Generated clocks
create_generated_clock -master_clock "REF_CLK" -source [get_ports REF_CLK]\
						-name "ALU_CLK" -divide_by 1 [get_pins U0_CLK_GATE/U0_TLATNCAX12M/ECK]
set_clock_uncertainty 	-setup 	0.2 													[get_clocks ALU_CLK]
set_clock_uncertainty 	-hold 	0.1  													[get_clocks ALU_CLK]
						
create_generated_clock -master_clock "UART_CLK" -source [get_ports UART_CLK]\
						-name "RX_CLK" -divide_by 1 [get_pins U1_ClkDiv/o_div_clk]
set_clock_uncertainty 	-setup 	0.2 													[get_clocks RX_CLK]
set_clock_uncertainty 	-hold 	0.1  													[get_clocks RX_CLK]
						
create_generated_clock -master_clock "UART_CLK" -source [get_ports UART_CLK]\
						-name "TX_CLK" -divide_by 32 [get_pins U0_ClkDiv/o_div_clk]
set_clock_uncertainty 	-setup 	0.2 													[get_clocks TX_CLK]
set_clock_uncertainty 	-hold 	0.1  													[get_clocks TX_CLK]

set_dont_touch_network [get_clocks {REF_CLK UART_CLK ALU_CLK RX_CLK TX_CLK}]

set_dont_touch [get_cells -hierarchical *U0_CLK_GATE*]
####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks {REF_CLK ALU_CLK}] -group [get_clocks {UART_CLK RX_CLK TX_CLK}]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.2*$CLK2_PER]
set out_delay [expr 0.2*$CLK2_PER]

#Constrain Input Paths
set_input_delay $in_delay -clock UART_CLK [get_ports UART_RX_IN]

#Constrain Output Paths
set_output_delay $out_delay -clock UART_CLK [get_ports UART_TX_O]
set_output_delay $out_delay -clock UART_CLK [get_ports parity_error]
set_output_delay $out_delay -clock UART_CLK [get_ports framing_error]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports UART_RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports UART_TX_O]
set_load 0.1 [get_ports parity_error]
set_load 0.1 [get_ports framing_error]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################


####################################################################################

