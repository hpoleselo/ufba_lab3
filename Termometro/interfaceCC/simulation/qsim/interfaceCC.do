onerror {quit -f}
vlib work
vlog -work work interfaceCC.vo
vlog -work work interfaceCC.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.interfaceCC_vlg_vec_tst
vcd file -direction interfaceCC.msim.vcd
vcd add -internal interfaceCC_vlg_vec_tst/*
vcd add -internal interfaceCC_vlg_vec_tst/i1/*
add wave /*
run -all
