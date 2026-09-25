transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/DigitalLab26/lab7/Clock_div.vhd}
vcom -93 -work work {D:/DigitalLab26/lab7/UART.vhd}

vcom -93 -work work {D:/DigitalLab26/lab7/UART_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  UART_tb

add wave *
view structure
view signals
run -all
