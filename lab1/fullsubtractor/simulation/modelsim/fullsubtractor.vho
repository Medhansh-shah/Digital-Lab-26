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

-- DATE "08/07/2026 16:58:29"

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

ENTITY 	fullsubtractor2 IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	Bin : IN std_logic;
	D : BUFFER std_logic;
	Borrow : BUFFER std_logic
	);
END fullsubtractor2;

-- Design Ports Information


ARCHITECTURE structure OF fullsubtractor2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Bin : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Borrow : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \Bin~combout\ : std_logic;
SIGNAL \G2|G5|Y~0_combout\ : std_logic;
SIGNAL \G8|Y~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Bin <= Bin;
D <= ww_D;
Borrow <= ww_Borrow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Bin,
	combout => \Bin~combout\);

-- Location: LC_X3_Y9_N2
\G2|G5|Y~0\ : maxv_lcell
-- Equation(s):
-- \G2|G5|Y~0_combout\ = (\A~combout\ $ (\B~combout\ $ (\Bin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\,
	datac => \B~combout\,
	datad => \Bin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G2|G5|Y~0_combout\);

-- Location: LC_X3_Y9_N4
\G8|Y~0\ : maxv_lcell
-- Equation(s):
-- \G8|Y~0_combout\ = ((\A~combout\ & (\B~combout\ & \Bin~combout\)) # (!\A~combout\ & ((\B~combout\) # (\Bin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\,
	datac => \B~combout\,
	datad => \Bin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G8|Y~0_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \G2|G5|Y~0_combout\,
	oe => VCC,
	padio => ww_D);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Borrow~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \G8|Y~0_combout\,
	oe => VCC,
	padio => ww_Borrow);
END structure;


