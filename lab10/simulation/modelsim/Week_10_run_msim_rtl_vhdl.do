transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/DigitalLab26/lab10/pascal_fsm.vhd}
vcom -93 -work work {D:/DigitalLab26/lab10/pascal_datapath.vhd}
vcom -93 -work work {D:/DigitalLab26/lab10/pascal_top.vhd}

