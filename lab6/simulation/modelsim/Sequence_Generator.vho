-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/11/2026 11:35:12"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Sequence_generator2 IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	y : OUT std_logic
	);
END Sequence_generator2;

-- Design Ports Information


ARCHITECTURE structure OF Sequence_generator2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \FF1|Q~regout\ : std_logic;
SIGNAL \FF2|Q~regout\ : std_logic;
SIGNAL \FF0|Q~regout\ : std_logic;
SIGNAL \FF0|ALT_INV_Q~regout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FF0|ALT_INV_Q~regout\ <= NOT \FF0|Q~regout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X10_Y4_N3
\FF1|Q\ : maxv_lcell
-- Equation(s):
-- \FF1|Q~regout\ = DFFEAS(((!\FF1|Q~regout\ & ((!\FF0|Q~regout\) # (!\FF2|Q~regout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \FF2|Q~regout\,
	datac => \FF0|Q~regout\,
	datad => \FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FF1|Q~regout\);

-- Location: LC_X10_Y4_N7
\FF2|Q\ : maxv_lcell
-- Equation(s):
-- \FF2|Q~regout\ = DFFEAS(((\FF2|Q~regout\ & (!\FF0|Q~regout\ & !\FF1|Q~regout\)) # (!\FF2|Q~regout\ & (\FF0|Q~regout\ & \FF1|Q~regout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "300c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \FF2|Q~regout\,
	datac => \FF0|Q~regout\,
	datad => \FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FF2|Q~regout\);

-- Location: LC_X10_Y4_N6
\FF0|Q\ : maxv_lcell
-- Equation(s):
-- \FF0|Q~regout\ = DFFEAS(((!\FF2|Q~regout\ & (\FF0|Q~regout\ $ (\FF1|Q~regout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \FF2|Q~regout\,
	datac => \FF0|Q~regout\,
	datad => \FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FF0|Q~regout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \FF0|ALT_INV_Q~regout\,
	oe => VCC,
	padio => ww_y);
END structure;


