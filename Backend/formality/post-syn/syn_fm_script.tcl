
########################### Define Top Module ############################
                                                   
set top_module system_top

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "/home/ICer/Labs/System_Final/Synthesis/system_top.svf"


set SSLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

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

## Read Implementation technology libraries

read_db -container i [list $SSLIB $TTLIB $FFLIB]

## Read Implementation Design Files

read_verilog -container i "/home/ICer/Labs/System_Final/Synthesis/netlists/system_top.v"
 
## set the top Implementation Design

set_top i:/WORK/$top_module


## matching Compare points
match

## verify
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
