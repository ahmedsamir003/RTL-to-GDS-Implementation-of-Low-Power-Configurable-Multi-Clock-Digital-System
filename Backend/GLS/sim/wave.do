onerror {resume}
quietly WaveActivateNextPane {} 0

#===================================================================
# Testbench Clocks & Resets
#===================================================================
add wave -noupdate -expand -group {TB Clocks & Reset} -color Yellow /tb_SYS_TOP_basic/REF_CLK
add wave -noupdate -expand -group {TB Clocks & Reset} -color Yellow /tb_SYS_TOP_basic/UART_CLK
add wave -noupdate -expand -group {TB Clocks & Reset} -color Yellow /tb_SYS_TOP_basic/RST_N

#===================================================================
# Testbench Serial IO
#===================================================================
add wave -noupdate -expand -group {UART Serial IO} -color Cyan /tb_SYS_TOP_basic/UART_RX_IN
add wave -noupdate -expand -group {UART Serial IO} -color Plum /tb_SYS_TOP_basic/UART_TX_O

#===================================================================
# System Output Error Flags
#===================================================================
add wave -noupdate -expand -group {DUT Flags} -color Red /tb_SYS_TOP_basic/parity_error
add wave -noupdate -expand -group {DUT Flags} -color Red /tb_SYS_TOP_basic/framing_error

#===================================================================
# Testbench Verification Signals
#===================================================================
add wave -noupdate -expand -group {TB Internal Logic} -color Coral -radix hexadecimal /tb_SYS_TOP_basic/tx_byte
add wave -noupdate -expand -group {TB Internal Logic} -color Coral /tb_SYS_TOP_basic/calc_parity
add wave -noupdate -expand -group {TB Internal Logic} -color Coral /tb_SYS_TOP_basic/tb_parity_en
add wave -noupdate -expand -group {TB Internal Logic} -color Green -radix hexadecimal /tb_SYS_TOP_basic/rx_received_byte
add wave -noupdate -expand -group {TB Internal Logic} -color Green -radix unsigned /tb_SYS_TOP_basic/pass_count
add wave -noupdate -expand -group {TB Internal Logic} -color Red -radix unsigned /tb_SYS_TOP_basic/error_count

#===================================================================
# Netlist Top-Level Interface (UUT Pinout)
#===================================================================
add wave -noupdate -expand -group {DUT Netlist Pins} -color SkyBlue /tb_SYS_TOP_basic/UUT/REF_CLK
add wave -noupdate -expand -group {DUT Netlist Pins} -color SkyBlue /tb_SYS_TOP_basic/UUT/UART_CLK
add wave -noupdate -expand -group {DUT Netlist Pins} -color SkyBlue /tb_SYS_TOP_basic/UUT/RST_N
add wave -noupdate -expand -group {DUT Netlist Pins} -color SkyBlue /tb_SYS_TOP_basic/UUT/UART_RX_IN
add wave -noupdate -expand -group {DUT Netlist Pins} -color SkyBlue /tb_SYS_TOP_basic/UUT/UART_TX_O
add wave -noupdate -expand -group {DUT Netlist Pins} -color SkyBlue /tb_SYS_TOP_basic/UUT/parity_error
add wave -noupdate -expand -group {DUT Netlist Pins} -color SkyBlue /tb_SYS_TOP_basic/UUT/framing_error

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 180
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1937544537 ps}
