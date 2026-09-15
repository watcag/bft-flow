create_project TOP -part xcvu9p-flga2104-3-e
add_files -norecurse { ../../rtl/mux.v }
add_files -fileset constrs_1 -norecurse ../../script/xilinx/top.xdc
add_files -norecurse {../../includes/system.h ../../includes/commands.h ../../includes/mux.h}
add_files -norecurse {../../rtl/pi_route.v ../../rtl/pi_switch.v ../../rtl/pi_switch_top.v ../../rtl/bp.v}
add_files -norecurse {../../rtl/bp.v }
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
synth_design -mode out_of_context
opt_design; 
place_design; 
route_design
set_switching_activity -default_toggle_rate 100
report_power -file ../../results/hw_mapping/fc_power_pi.txt
report_utilization -file ../../results/hw_mapping/fc_area_pi.txt
report_timing_summary -file ../../results/hw_mapping/fc_freq_pi.txt
exit
