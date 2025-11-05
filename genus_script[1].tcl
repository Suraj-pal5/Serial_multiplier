###############################################################
# Cadence Genus Synthesis Script for Serial_multiplier16bit.v
###############################################################

# -------------------------------------------------------------
# Library setup
# -------------------------------------------------------------
set_db init_lib_search_path {/home/install/FOUNDRY/digital/90nm/dig/lib/}
set_db library slow.lib

# -------------------------------------------------------------
# Read and elaborate the design
# -------------------------------------------------------------
# Read RTL source file
read_hdl {./Serial_multiplier16bit.v}

# Elaborate top-level module
# (Change this if your top module name is different)
elaborate Serial_multiplier16bit

# -------------------------------------------------------------
# Read timing constraints
# -------------------------------------------------------------
read_sdc ./serial_multiplier16bit.sdc

# -------------------------------------------------------------
# Synthesis effort settings
# -------------------------------------------------------------
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

# -------------------------------------------------------------
# Run synthesis flow
# -------------------------------------------------------------
syn_generic
syn_map
syn_opt

# -------------------------------------------------------------
# Write out the synthesized results
# -------------------------------------------------------------
write_hdl > serial_mult_netlist.v
write_sdc > serial_mult_output.sdc

# -------------------------------------------------------------
# Generate reports
# -------------------------------------------------------------
report timing > serial_mult_time.rpt
report power  > serial_mult_power.rpt
report area   > serial_mult_area.rpt
report gates  > serial_mult_gates.rpt

# -------------------------------------------------------------
# Optional: Launch GUI for post-synthesis analysis
# -------------------------------------------------------------
gui_show
