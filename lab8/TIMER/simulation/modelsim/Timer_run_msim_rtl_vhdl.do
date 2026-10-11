transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/DigitalLab26/lab8/TIMER/CLK_div.vhd}
vcom -93 -work work {D:/DigitalLab26/lab8/TIMER/Timer.vhd}

vcom -93 -work work {D:/DigitalLab26/lab8/TIMER/tb_UART_Timer.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_UART_Timer

add wave *
view structure
view signals
run -all
