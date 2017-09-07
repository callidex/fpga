
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name FPGA -dir "D:/GitHub/FPGA/planAhead_run_2" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/GitHub/FPGA/seg_test.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/GitHub/FPGA} }
set_property target_constrs_file "seg_test.ucf" [current_fileset -constrset]
add_files [list {seg_test.ucf}] -fileset [get_property constrset [current_run]]
link_design
