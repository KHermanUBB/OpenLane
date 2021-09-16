# User config
set ::env(DESIGN_NAME) SonarOnChip

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Fill this
set ::env(CLOCK_PERIOD) "20"
set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CLOCK_NET) "wb_clk_i"

set ::env(DESIGN_IS_CORE) 1
set ::env(PL_SKIP_INITIAL_PLACEMENT) 1

set ::env(PL_TARGET_DENSITY) 0.66
set ::env(FP_ASPECT_RATIO) 1
set ::env(FP_CORE_UTIL) 50



set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

