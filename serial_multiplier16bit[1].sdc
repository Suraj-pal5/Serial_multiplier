#############################################################
# SDC File for Serial Multiplier 16-bit
#############################################################

# Define main clock (10ns = 100MHz)
create_clock -name clk -period 10 [get_ports clk]

# Define reset as asynchronous
set_false_path -from [get_ports rst]

# Input delay (2ns)
set_input_delay 2 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]

# Output delay (2ns)
set_output_delay 2 -clock clk [all_outputs]

# End of SDC
#############################################################

