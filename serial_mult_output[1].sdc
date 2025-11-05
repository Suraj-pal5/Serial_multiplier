# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Sun Oct 19 17:36:18 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design Serial_multiplier16bit

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_false_path -from [get_ports rst]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin1[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multin2[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports rst]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[31]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[30]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[29]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[28]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[27]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[26]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[25]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[24]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[23]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[22]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[21]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[20]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[19]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[18]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[17]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[16]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {Serial_multout[0]}]
set_wire_load_mode "enclosed"
