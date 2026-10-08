#------------------------------------------------------------------------------
# 1. Output & Directory Setup
#------------------------------------------------------------------------------
set report_dir /home/ICer/Labs/System_Final/GLS/pt/report
file mkdir $report_dir
set Out_report SYS_TOP_pw

#------------------------------------------------------------------------------
# 2. App Variables & SDF Settings
#------------------------------------------------------------------------------
set_app_var power_enable_analysis true
set_app_var power_analysis_mode time_based
set power_vcd_time_unit 1ns

# Tcl variables for SDF and VCD mapping (Fixed CMD-104)
set power_vcd_name_mapping true
set read_sdf_unresolved_argument_verbose true
set sdf_enable_no_negedge true
set read_sdf_process_hierarchical_pins true

# Enable clock propagation across multiplexers
set_app_var case_analysis_propagate_through_icg true
set_app_var timing_enable_preset_clear_arcs true

#------------------------------------------------------------------------------
# 3. Target & Link Libraries
#------------------------------------------------------------------------------
set search_path [list . /home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys]
set SSLIB scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
set FFLIB scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db

set target_library [list $SSLIB $FFLIB]
set link_library   [list * $SSLIB $FFLIB]

#------------------------------------------------------------------------------
# 4. Read & Link Design Files
#------------------------------------------------------------------------------
# Read the Post-PNR Netlist (Matches your SDC and SDF)
read_verilog /home/ICer/Labs/System_Final/PNR/Export/SYS_TOP.v

current_design SYS_TOP
link_design

# Read SDC Constraints
read_sdc /home/ICer/Labs/System_Final/DFT/sdc/SYS_TOP.sdc

# Safely force Functional Mode for DFT Clock Muxes (Fixes SEL-005)
set test_pins [get_ports -quiet {scan_en test_mode SE scan_mode test_en}]
if {[sizeof_collection $test_pins] > 0} {
    set_case_analysis 0 $test_pins
}

# Read SDF Delays
read_sdf -analysis_type on_chip_variation /home/ICer/Labs/System_Final/GLS/sim/SYS_TOP.sdf

# Propagate clock tree
set_propagated_clock [all_clocks]

#------------------------------------------------------------------------------
# 5. Read Switching Activity (VCD)
#------------------------------------------------------------------------------
read_vcd -strip_path tb_SYS_TOP_basic/UUT \
         -zero_delay \
         /home/ICer/Labs/System_Final/GLS/sim/VCD/SYS_TOP.vcd

# Update Power Calculation Graph
update_power

#------------------------------------------------------------------------------
# 6. Report Power Breakdown
#------------------------------------------------------------------------------
report_power -hierarchy                      > $report_dir/${Out_report}_hierarchy.rpt
report_power -cell_power -net_power -verbose > $report_dir/${Out_report}_detailed.rpt
report_power                                 > $report_dir/$Out_report.rpt

echo "----------------------------------------"
echo " PrimeTime PX Analysis Completed"
echo " Reports saved in: $report_dir"
echo "----------------------------------------"

exit
