
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../DFT/system_top.svf"


set SSLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
set STDLIB_V "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/verilog/tsmc13_m_neg.v"


######################### Reference Container ############################
## Read Reference technology libraries
read_db -container r [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files
set fh [open system.lst r]
set rtl_files [split [read $fh] "\n"]
close $fh
set clean_files {}
foreach f $rtl_files {
    if {[string trim $f] ne ""} {
        lappend clean_files [string trim $f]
    }
}
read_verilog -container r $clean_files

# Read the SystemVerilog controller
read_sverilog -container r "/home/ICer/Labs/System_Final/rtl/sys_ctrl.sv"

## set the top Reference Design 
set_top r:/WORK/$top_module

######################## Implementation Container #########################

# Read Implementation technology libraries
read_db -container i [list $SSLIB $TTLIB $FFLIB]

# Read Implementation Design Files
read_verilog -container i -netlist "/home/ICer/Labs/System_Final/PNR/Export/SYS_TOP.v"
read_verilog -container i -libname STDLIB $STDLIB_V
 
## set the top Implementation Design
set_top i:/WORK/$top_module



############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port r:/WORK/${top_module}/SI*
set_dont_verify_points -type port i:/WORK/${top_module}/SI*

#scan_out
set_dont_verify_points -type port r:/WORK/${top_module}/SO*
set_dont_verify_points -type port i:/WORK/${top_module}/SO*

############################### constants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant r:/WORK/${top_module}/test_mode 0
set_constant i:/WORK/${top_module}/test_mode 0

#scan_enable
set_constant r:/WORK/${top_module}/SE 0
set_constant i:/WORK/${top_module}/SE 0


########################### matching Compare points ##########################

match

################################# verify #####################################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
