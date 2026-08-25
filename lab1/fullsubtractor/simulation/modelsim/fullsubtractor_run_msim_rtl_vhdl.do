transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/medha/Downloads/EE214_Lab1_DD/EE214_Lab1_DD/fullsubtractor/Gates.vhdl}
vcom -93 -work work {C:/Users/medha/Downloads/EE214_Lab1_DD/EE214_Lab1_DD/fullsubtractor/fullsubtractor2.vhd}
vcom -93 -work work {C:/Users/medha/Downloads/EE214_Lab1_DD/EE214_Lab1_DD/fullsubtractor/xor_gate.vhd}

vcom -93 -work work {C:/Users/medha/Downloads/EE214_Lab1_DD/EE214_Lab1_DD/fullsubtractor/DUT.vhdl}
vcom -93 -work work {C:/Users/medha/Downloads/EE214_Lab1_DD/EE214_Lab1_DD/fullsubtractor/Testbench.vhdl}
vcom -93 -work work {C:/Users/medha/Downloads/EE214_Lab1_DD/EE214_Lab1_DD/fullsubtractor/Gates.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
