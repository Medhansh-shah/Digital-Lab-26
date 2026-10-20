transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {andgate.vho}

vcom -93 -work work {D:/DigitalLab26/lab1alt/andgate/Testbench.vhdl}
vcom -93 -work work {D:/DigitalLab26/lab1alt/andgate/DUT.vhdl}
vcom -93 -work work {D:/DigitalLab26/lab1alt/andgate/Gates.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=andgate_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  TB

add wave *
view structure
view signals
run -all
