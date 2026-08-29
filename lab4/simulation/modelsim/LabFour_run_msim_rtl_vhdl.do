transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/medha/Downloads/Scan_Chain_Files/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/medha/Downloads/Scan_Chain_Files/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/medha/Downloads/Scan_Chain_Files/Scan_Chain_Files/TopLevel.vhdl}
vcom -93 -work work {D:/DigitalLab26/lab4/Gates.vhdl}
vcom -93 -work work {D:/DigitalLab26/lab4/DUT.vhdl}
vcom -93 -work work {D:/DigitalLab26/lab4/bcdadder.vhd}
vcom -93 -work work {D:/DigitalLab26/lab4/FULL_ADDER.vhd}

vcom -93 -work work {D:/DigitalLab26/lab4/DUT.vhdl}
vcom -93 -work work {D:/DigitalLab26/lab4/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
