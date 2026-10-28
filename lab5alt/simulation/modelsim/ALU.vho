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

-- DATE "10/28/2026 10:11:29"

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

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : OUT std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|Mux7~1_combout\ : std_logic;
SIGNAL \add_instance|Mux7~2_combout\ : std_logic;
SIGNAL \add_instance|res~0_combout\ : std_logic;
SIGNAL \add_instance|res~4_combout\ : std_logic;
SIGNAL \add_instance|res~1_combout\ : std_logic;
SIGNAL \add_instance|res~2_combout\ : std_logic;
SIGNAL \add_instance|res~3_combout\ : std_logic;
SIGNAL \add_instance|Mux7~0_combout\ : std_logic;
SIGNAL \add_instance|diff~2_combout\ : std_logic;
SIGNAL \add_instance|diff~1_combout\ : std_logic;
SIGNAL \add_instance|diff~3_combout\ : std_logic;
SIGNAL \add_instance|diff~0_combout\ : std_logic;
SIGNAL \add_instance|count~0_combout\ : std_logic;
SIGNAL \add_instance|Mux7~3_combout\ : std_logic;
SIGNAL \add_instance|product~0_combout\ : std_logic;
SIGNAL \add_instance|Add16~0_combout\ : std_logic;
SIGNAL \add_instance|Add16~5_combout\ : std_logic;
SIGNAL \add_instance|res~5_combout\ : std_logic;
SIGNAL \add_instance|res~6_combout\ : std_logic;
SIGNAL \add_instance|res~7_combout\ : std_logic;
SIGNAL \add_instance|res~8_combout\ : std_logic;
SIGNAL \add_instance|res~9_combout\ : std_logic;
SIGNAL \add_instance|count~1_combout\ : std_logic;
SIGNAL \add_instance|Mux6~0_combout\ : std_logic;
SIGNAL \add_instance|Mux6~1_combout\ : std_logic;
SIGNAL \add_instance|product~1_combout\ : std_logic;
SIGNAL \add_instance|Add16~2\ : std_logic;
SIGNAL \add_instance|Add16~2COUT1_31\ : std_logic;
SIGNAL \add_instance|Add16~6_combout\ : std_logic;
SIGNAL \add_instance|Add16~11_combout\ : std_logic;
SIGNAL \add_instance|Add17~0_combout\ : std_logic;
SIGNAL \add_instance|res~12_combout\ : std_logic;
SIGNAL \add_instance|res~10_combout\ : std_logic;
SIGNAL \add_instance|res~11_combout\ : std_logic;
SIGNAL \add_instance|res~13_combout\ : std_logic;
SIGNAL \add_instance|count~2_combout\ : std_logic;
SIGNAL \add_instance|Mux5~0_combout\ : std_logic;
SIGNAL \add_instance|Mux5~1_combout\ : std_logic;
SIGNAL \add_instance|Mux5~2_combout\ : std_logic;
SIGNAL \add_instance|res~16_combout\ : std_logic;
SIGNAL \add_instance|res~14_combout\ : std_logic;
SIGNAL \add_instance|res~15_combout\ : std_logic;
SIGNAL \add_instance|res~17_combout\ : std_logic;
SIGNAL \add_instance|product~2_combout\ : std_logic;
SIGNAL \add_instance|Add16~8\ : std_logic;
SIGNAL \add_instance|Add16~8COUT1_32\ : std_logic;
SIGNAL \add_instance|Add16~12_combout\ : std_logic;
SIGNAL \add_instance|Add16~17_combout\ : std_logic;
SIGNAL \add_instance|Add17~2\ : std_logic;
SIGNAL \add_instance|Add17~2COUT1_30\ : std_logic;
SIGNAL \add_instance|Add17~5_combout\ : std_logic;
SIGNAL \add_instance|Add17~10_combout\ : std_logic;
SIGNAL \add_instance|Add18~0_combout\ : std_logic;
SIGNAL \add_instance|Mux4~0_combout\ : std_logic;
SIGNAL \add_instance|Mux4~1_combout\ : std_logic;
SIGNAL \add_instance|Mux4~2_combout\ : std_logic;
SIGNAL \add_instance|Add16~14\ : std_logic;
SIGNAL \add_instance|Add16~14COUT1_33\ : std_logic;
SIGNAL \add_instance|Add16~18_combout\ : std_logic;
SIGNAL \add_instance|Add16~28_combout\ : std_logic;
SIGNAL \add_instance|Add17~7\ : std_logic;
SIGNAL \add_instance|Add17~7COUT1_31\ : std_logic;
SIGNAL \add_instance|Add17~11_combout\ : std_logic;
SIGNAL \add_instance|Add17~16_combout\ : std_logic;
SIGNAL \add_instance|Add18~2\ : std_logic;
SIGNAL \add_instance|Add18~2COUT1_26\ : std_logic;
SIGNAL \add_instance|Add18~5_combout\ : std_logic;
SIGNAL \add_instance|Mux2~0_combout\ : std_logic;
SIGNAL \add_instance|res~18_combout\ : std_logic;
SIGNAL \add_instance|res~20_combout\ : std_logic;
SIGNAL \add_instance|res~19_combout\ : std_logic;
SIGNAL \add_instance|Mux3~0_combout\ : std_logic;
SIGNAL \add_instance|Mux3~1_combout\ : std_logic;
SIGNAL \add_instance|Mux3~2_combout\ : std_logic;
SIGNAL \add_instance|Mux3~3_combout\ : std_logic;
SIGNAL \add_instance|Mux3~4_combout\ : std_logic;
SIGNAL \add_instance|res~21_combout\ : std_logic;
SIGNAL \add_instance|Add16~20\ : std_logic;
SIGNAL \add_instance|Add16~20COUT1_34\ : std_logic;
SIGNAL \add_instance|Add16~23_combout\ : std_logic;
SIGNAL \add_instance|Add16~29_combout\ : std_logic;
SIGNAL \add_instance|Add17~13\ : std_logic;
SIGNAL \add_instance|Add17~13COUT1_32\ : std_logic;
SIGNAL \add_instance|Add17~17_combout\ : std_logic;
SIGNAL \add_instance|Add17~22_combout\ : std_logic;
SIGNAL \add_instance|Add18~7\ : std_logic;
SIGNAL \add_instance|Add18~7COUT1_27\ : std_logic;
SIGNAL \add_instance|Add18~10_combout\ : std_logic;
SIGNAL \add_instance|res~22_combout\ : std_logic;
SIGNAL \add_instance|Mux2~1_combout\ : std_logic;
SIGNAL \add_instance|res~23_combout\ : std_logic;
SIGNAL \add_instance|Mux2~2_combout\ : std_logic;
SIGNAL \add_instance|Mux2~3_combout\ : std_logic;
SIGNAL \add_instance|Mux2~4_combout\ : std_logic;
SIGNAL \add_instance|Mux2~5_combout\ : std_logic;
SIGNAL \add_instance|Add17~19\ : std_logic;
SIGNAL \add_instance|Add17~19COUT1_33\ : std_logic;
SIGNAL \add_instance|Add17~23_combout\ : std_logic;
SIGNAL \add_instance|Add17~28_combout\ : std_logic;
SIGNAL \add_instance|Add18~12\ : std_logic;
SIGNAL \add_instance|Add18~12COUT1_28\ : std_logic;
SIGNAL \add_instance|Add18~15_combout\ : std_logic;
SIGNAL \add_instance|res~24_combout\ : std_logic;
SIGNAL \add_instance|res~26_combout\ : std_logic;
SIGNAL \add_instance|res~25_combout\ : std_logic;
SIGNAL \add_instance|Mux1~0_combout\ : std_logic;
SIGNAL \add_instance|Mux1~1_combout\ : std_logic;
SIGNAL \add_instance|Mux1~2_combout\ : std_logic;
SIGNAL \add_instance|Mux1~3_combout\ : std_logic;
SIGNAL \add_instance|Mux1~4_combout\ : std_logic;
SIGNAL \add_instance|res~27_combout\ : std_logic;
SIGNAL \add_instance|res~28_combout\ : std_logic;
SIGNAL \add_instance|Add18~17\ : std_logic;
SIGNAL \add_instance|Add18~17COUT1_29\ : std_logic;
SIGNAL \add_instance|Add18~20_combout\ : std_logic;
SIGNAL \add_instance|Mux0~0_combout\ : std_logic;
SIGNAL \add_instance|Mux0~1_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X9_Y7_N6
\add_instance|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~1_combout\ = ((\input_vector~combout\(9) & ((\input_vector~combout\(4)))) # (!\input_vector~combout\(9) & (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~1_combout\);

-- Location: LC_X11_Y7_N5
\add_instance|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~2_combout\ = (\input_vector~combout\(8) & ((\input_vector~combout\(0) & (\input_vector~combout\(9) $ (!\add_instance|Mux7~1_combout\))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(9) & \add_instance|Mux7~1_combout\)))) # 
-- (!\input_vector~combout\(8) & (((\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b438",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~2_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X10_Y8_N9
\add_instance|res~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~0_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(1) & (\input_vector~combout\(5))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~0_combout\);

-- Location: LC_X10_Y8_N5
\add_instance|res~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~4_combout\ = (!\input_vector~combout\(2) & ((\input_vector~combout\(1) & ((\input_vector~combout\(7)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~4_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X9_Y7_N4
\add_instance|res~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~1_combout\ = (!\input_vector~combout\(2) & ((\input_vector~combout\(1) & (\input_vector~combout\(6))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~1_combout\);

-- Location: LC_X9_Y7_N9
\add_instance|res~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~2_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(6) & (\input_vector~combout\(2)))) # (!\input_vector~combout\(1) & (((!\input_vector~combout\(2) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8380",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~2_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X10_Y7_N1
\add_instance|res~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~3_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(3) & (\add_instance|res~1_combout\)) # (!\input_vector~combout\(3) & ((\add_instance|res~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|res~1_combout\,
	datac => \add_instance|res~2_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~3_combout\);

-- Location: LC_X10_Y7_N6
\add_instance|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~0_combout\ = (\input_vector~combout\(0) & ((\add_instance|res~3_combout\ & ((\add_instance|res~4_combout\))) # (!\add_instance|res~3_combout\ & (\add_instance|res~0_combout\)))) # (!\input_vector~combout\(0) & 
-- (((\add_instance|res~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~0_combout\,
	datab => \add_instance|res~4_combout\,
	datac => \input_vector~combout\(0),
	datad => \add_instance|res~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~0_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|diff~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|diff~2_combout\ = \input_vector~combout\(0) $ ((((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|diff~2_combout\);

-- Location: LC_X9_Y7_N1
\add_instance|diff~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|diff~1_combout\ = \input_vector~combout\(6) $ ((((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|diff~1_combout\);

-- Location: LC_X10_Y8_N2
\add_instance|diff~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|diff~3_combout\ = (\input_vector~combout\(1) $ ((\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|diff~3_combout\);

-- Location: LC_X11_Y7_N3
\add_instance|diff~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|diff~0_combout\ = (\input_vector~combout\(3) $ (((\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|diff~0_combout\);

-- Location: LC_X11_Y7_N1
\add_instance|count~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|count~0_combout\ = \add_instance|diff~2_combout\ $ (\add_instance|diff~1_combout\ $ (\add_instance|diff~3_combout\ $ (\add_instance|diff~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|diff~2_combout\,
	datab => \add_instance|diff~1_combout\,
	datac => \add_instance|diff~3_combout\,
	datad => \add_instance|diff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|count~0_combout\);

-- Location: LC_X11_Y7_N2
\add_instance|Mux7~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~3_combout\ = (\add_instance|Mux7~2_combout\ & ((\input_vector~combout\(8)) # ((\add_instance|count~0_combout\)))) # (!\add_instance|Mux7~2_combout\ & (!\input_vector~combout\(8) & (\add_instance|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux7~2_combout\,
	datab => \input_vector~combout\(8),
	datac => \add_instance|Mux7~0_combout\,
	datad => \add_instance|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~3_combout\);

-- Location: LC_X8_Y6_N9
\add_instance|product~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|product~0_combout\ = ((\input_vector~combout\(5) & ((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|product~0_combout\);

-- Location: LC_X8_Y6_N0
\add_instance|Add16~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~0_combout\ = \input_vector~combout\(4) $ ((\add_instance|product~0_combout\))
-- \add_instance|Add16~2\ = CARRY((\input_vector~combout\(4) & (\add_instance|product~0_combout\)))
-- \add_instance|Add16~2COUT1_31\ = CARRY((\input_vector~combout\(4) & (\add_instance|product~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \add_instance|product~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~0_combout\,
	cout0 => \add_instance|Add16~2\,
	cout1 => \add_instance|Add16~2COUT1_31\);

-- Location: LC_X8_Y6_N7
\add_instance|Add16~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~5_combout\ = (\input_vector~combout\(1) & (((\add_instance|Add16~0_combout\)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(5) & ((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|Add16~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~5_combout\);

-- Location: LC_X10_Y8_N7
\add_instance|res~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~5_combout\ = ((\input_vector~combout\(1) $ (\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~5_combout\);

-- Location: LC_X10_Y8_N0
\add_instance|res~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~6_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(7) & \input_vector~combout\(2))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(5) & ((!\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~6_combout\);

-- Location: LC_X10_Y7_N0
\add_instance|res~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~7_combout\ = (\input_vector~combout\(0) & (((\add_instance|res~2_combout\) # (\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & (\add_instance|res~6_combout\ & ((!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~6_combout\,
	datab => \input_vector~combout\(0),
	datac => \add_instance|res~2_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~7_combout\);

-- Location: LC_X9_Y7_N7
\add_instance|res~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~8_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(2) & \input_vector~combout\(4))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(6) & (!\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~8_combout\);

-- Location: LC_X10_Y7_N9
\add_instance|res~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~9_combout\ = (\input_vector~combout\(3) & ((\add_instance|res~7_combout\ & ((\add_instance|res~8_combout\))) # (!\add_instance|res~7_combout\ & (\add_instance|res~4_combout\)))) # (!\input_vector~combout\(3) & 
-- (((\add_instance|res~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \add_instance|res~4_combout\,
	datac => \add_instance|res~7_combout\,
	datad => \add_instance|res~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~9_combout\);

-- Location: LC_X11_Y7_N9
\add_instance|count~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|count~1_combout\ = (\add_instance|diff~2_combout\ & ((\add_instance|diff~1_combout\ & ((!\add_instance|diff~0_combout\) # (!\add_instance|diff~3_combout\))) # (!\add_instance|diff~1_combout\ & ((\add_instance|diff~3_combout\) # 
-- (\add_instance|diff~0_combout\))))) # (!\add_instance|diff~2_combout\ & ((\add_instance|diff~1_combout\ & ((\add_instance|diff~3_combout\) # (\add_instance|diff~0_combout\))) # (!\add_instance|diff~1_combout\ & (\add_instance|diff~3_combout\ & 
-- \add_instance|diff~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|diff~2_combout\,
	datab => \add_instance|diff~1_combout\,
	datac => \add_instance|diff~3_combout\,
	datad => \add_instance|diff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|count~1_combout\);

-- Location: LC_X11_Y7_N4
\add_instance|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux6~0_combout\ = (\input_vector~combout\(8) & (((\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(9) & ((\add_instance|count~1_combout\))) # (!\input_vector~combout\(9) & 
-- (\add_instance|res~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~9_combout\,
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux6~0_combout\);

-- Location: LC_X11_Y7_N8
\add_instance|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux6~1_combout\ = (\input_vector~combout\(8) & ((\add_instance|Mux6~0_combout\ & (\add_instance|Add16~5_combout\)) # (!\add_instance|Mux6~0_combout\ & ((\add_instance|res~5_combout\))))) # (!\input_vector~combout\(8) & 
-- (((\add_instance|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add16~5_combout\,
	datab => \input_vector~combout\(8),
	datac => \add_instance|res~5_combout\,
	datad => \add_instance|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux6~1_combout\);

-- Location: LC_X8_Y6_N5
\add_instance|product~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|product~1_combout\ = ((\input_vector~combout\(6) & ((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|product~1_combout\);

-- Location: LC_X8_Y6_N1
\add_instance|Add16~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~6_combout\ = \add_instance|product~1_combout\ $ (\input_vector~combout\(5) $ ((\add_instance|Add16~2\)))
-- \add_instance|Add16~8\ = CARRY((\add_instance|product~1_combout\ & (!\input_vector~combout\(5) & !\add_instance|Add16~2\)) # (!\add_instance|product~1_combout\ & ((!\add_instance|Add16~2\) # (!\input_vector~combout\(5)))))
-- \add_instance|Add16~8COUT1_32\ = CARRY((\add_instance|product~1_combout\ & (!\input_vector~combout\(5) & !\add_instance|Add16~2COUT1_31\)) # (!\add_instance|product~1_combout\ & ((!\add_instance|Add16~2COUT1_31\) # (!\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|product~1_combout\,
	datab => \input_vector~combout\(5),
	cin0 => \add_instance|Add16~2\,
	cin1 => \add_instance|Add16~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~6_combout\,
	cout0 => \add_instance|Add16~8\,
	cout1 => \add_instance|Add16~8COUT1_32\);

-- Location: LC_X9_Y7_N8
\add_instance|Add16~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~11_combout\ = (\input_vector~combout\(1) & (((\add_instance|Add16~6_combout\)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(6) & (\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \add_instance|Add16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~11_combout\);

-- Location: LC_X8_Y7_N5
\add_instance|Add17~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~0_combout\ = \input_vector~combout\(4) $ ((\add_instance|Add16~11_combout\))
-- \add_instance|Add17~2\ = CARRY((\input_vector~combout\(4) & (\add_instance|Add16~11_combout\)))
-- \add_instance|Add17~2COUT1_30\ = CARRY((\input_vector~combout\(4) & (\add_instance|Add16~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \add_instance|Add16~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~0_combout\,
	cout0 => \add_instance|Add17~2\,
	cout1 => \add_instance|Add17~2COUT1_30\);

-- Location: LC_X10_Y8_N6
\add_instance|res~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~12_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(5) & ((\input_vector~combout\(2))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(7) & !\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~12_combout\);

-- Location: LC_X9_Y7_N5
\add_instance|res~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~10_combout\ = (!\input_vector~combout\(2) & ((\input_vector~combout\(1) & ((\input_vector~combout\(4)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~10_combout\);

-- Location: LC_X10_Y7_N2
\add_instance|res~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~11_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(3) & ((\add_instance|res~8_combout\))) # (!\input_vector~combout\(3) & 
-- (\add_instance|res~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~10_combout\,
	datab => \add_instance|res~8_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~11_combout\);

-- Location: LC_X10_Y7_N3
\add_instance|res~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~13_combout\ = (\input_vector~combout\(0) & ((\add_instance|res~11_combout\ & ((\add_instance|res~12_combout\))) # (!\add_instance|res~11_combout\ & (\add_instance|res~6_combout\)))) # (!\input_vector~combout\(0) & 
-- (((\add_instance|res~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~6_combout\,
	datab => \add_instance|res~12_combout\,
	datac => \input_vector~combout\(0),
	datad => \add_instance|res~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~13_combout\);

-- Location: LC_X11_Y7_N7
\add_instance|count~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|count~2_combout\ = (\add_instance|diff~2_combout\ & (\add_instance|diff~1_combout\ & (\add_instance|diff~3_combout\ & \add_instance|diff~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|diff~2_combout\,
	datab => \add_instance|diff~1_combout\,
	datac => \add_instance|diff~3_combout\,
	datad => \add_instance|diff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|count~2_combout\);

-- Location: LC_X8_Y7_N2
\add_instance|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux5~0_combout\ = (\input_vector~combout\(8) & (((\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(9) & ((\add_instance|count~2_combout\))) # (!\input_vector~combout\(9) & 
-- (\add_instance|res~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~13_combout\,
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux5~0_combout\);

-- Location: LC_X8_Y7_N4
\add_instance|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux5~1_combout\ = (\input_vector~combout\(2) & ((\add_instance|Add17~0_combout\) # ((!\add_instance|Mux5~0_combout\)))) # (!\input_vector~combout\(2) & (((\add_instance|Add16~11_combout\ & \add_instance|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add17~0_combout\,
	datab => \add_instance|Add16~11_combout\,
	datac => \input_vector~combout\(2),
	datad => \add_instance|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux5~1_combout\);

-- Location: LC_X8_Y7_N0
\add_instance|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux5~2_combout\ = (\input_vector~combout\(8) & (\add_instance|Mux5~1_combout\ $ (((\input_vector~combout\(3) & !\add_instance|Mux5~0_combout\))))) # (!\input_vector~combout\(8) & (((\add_instance|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f348",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(8),
	datac => \add_instance|Mux5~1_combout\,
	datad => \add_instance|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux5~2_combout\);

-- Location: LC_X9_Y7_N0
\add_instance|res~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~16_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(1) & (\input_vector~combout\(6))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~16_combout\);

-- Location: LC_X10_Y8_N4
\add_instance|res~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~14_combout\ = (!\input_vector~combout\(2) & ((\input_vector~combout\(1) & (\input_vector~combout\(5))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~14_combout\);

-- Location: LC_X10_Y7_N5
\add_instance|res~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~15_combout\ = (\input_vector~combout\(0) & ((\add_instance|res~10_combout\) # ((\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & (((\add_instance|res~14_combout\ & !\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~10_combout\,
	datab => \add_instance|res~14_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~15_combout\);

-- Location: LC_X10_Y7_N4
\add_instance|res~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~17_combout\ = (\add_instance|res~15_combout\ & ((\add_instance|res~16_combout\) # ((!\input_vector~combout\(3))))) # (!\add_instance|res~15_combout\ & (((\add_instance|res~12_combout\ & \input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~16_combout\,
	datab => \add_instance|res~12_combout\,
	datac => \add_instance|res~15_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~17_combout\);

-- Location: LC_X8_Y6_N8
\add_instance|product~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|product~2_combout\ = (\input_vector~combout\(7) & (((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|product~2_combout\);

-- Location: LC_X8_Y6_N2
\add_instance|Add16~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~12_combout\ = \add_instance|product~2_combout\ $ (\input_vector~combout\(6) $ ((!\add_instance|Add16~8\)))
-- \add_instance|Add16~14\ = CARRY((\add_instance|product~2_combout\ & ((\input_vector~combout\(6)) # (!\add_instance|Add16~8\))) # (!\add_instance|product~2_combout\ & (\input_vector~combout\(6) & !\add_instance|Add16~8\)))
-- \add_instance|Add16~14COUT1_33\ = CARRY((\add_instance|product~2_combout\ & ((\input_vector~combout\(6)) # (!\add_instance|Add16~8COUT1_32\))) # (!\add_instance|product~2_combout\ & (\input_vector~combout\(6) & !\add_instance|Add16~8COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|product~2_combout\,
	datab => \input_vector~combout\(6),
	cin0 => \add_instance|Add16~8\,
	cin1 => \add_instance|Add16~8COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~12_combout\,
	cout0 => \add_instance|Add16~14\,
	cout1 => \add_instance|Add16~14COUT1_33\);

-- Location: LC_X8_Y6_N6
\add_instance|Add16~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~17_combout\ = (\input_vector~combout\(1) & (\add_instance|Add16~12_combout\)) # (!\input_vector~combout\(1) & (((\input_vector~combout\(0) & \input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add16~12_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~17_combout\);

-- Location: LC_X8_Y7_N6
\add_instance|Add17~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~5_combout\ = \add_instance|Add16~17_combout\ $ (\input_vector~combout\(5) $ ((\add_instance|Add17~2\)))
-- \add_instance|Add17~7\ = CARRY((\add_instance|Add16~17_combout\ & (!\input_vector~combout\(5) & !\add_instance|Add17~2\)) # (!\add_instance|Add16~17_combout\ & ((!\add_instance|Add17~2\) # (!\input_vector~combout\(5)))))
-- \add_instance|Add17~7COUT1_31\ = CARRY((\add_instance|Add16~17_combout\ & (!\input_vector~combout\(5) & !\add_instance|Add17~2COUT1_30\)) # (!\add_instance|Add16~17_combout\ & ((!\add_instance|Add17~2COUT1_30\) # (!\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add16~17_combout\,
	datab => \input_vector~combout\(5),
	cin0 => \add_instance|Add17~2\,
	cin1 => \add_instance|Add17~2COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~5_combout\,
	cout0 => \add_instance|Add17~7\,
	cout1 => \add_instance|Add17~7COUT1_31\);

-- Location: LC_X8_Y7_N1
\add_instance|Add17~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~10_combout\ = (\input_vector~combout\(2) & (\add_instance|Add17~5_combout\)) # (!\input_vector~combout\(2) & (((\add_instance|Add16~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add17~5_combout\,
	datab => \input_vector~combout\(2),
	datac => \add_instance|Add16~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~10_combout\);

-- Location: LC_X7_Y6_N5
\add_instance|Add18~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add18~0_combout\ = \input_vector~combout\(4) $ ((\add_instance|Add17~10_combout\))
-- \add_instance|Add18~2\ = CARRY((\input_vector~combout\(4) & (\add_instance|Add17~10_combout\)))
-- \add_instance|Add18~2COUT1_26\ = CARRY((\input_vector~combout\(4) & (\add_instance|Add17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \add_instance|Add17~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add18~0_combout\,
	cout0 => \add_instance|Add18~2\,
	cout1 => \add_instance|Add18~2COUT1_26\);

-- Location: LC_X7_Y6_N4
\add_instance|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux4~0_combout\ = ((\input_vector~combout\(3) & ((\add_instance|Add18~0_combout\))) # (!\input_vector~combout\(3) & (\add_instance|Add17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add17~10_combout\,
	datac => \add_instance|Add18~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux4~0_combout\);

-- Location: LC_X7_Y6_N0
\add_instance|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux4~1_combout\ = (\input_vector~combout\(9) & (((\add_instance|Mux4~0_combout\)))) # (!\input_vector~combout\(9) & (\input_vector~combout\(4) $ (((\input_vector~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(9),
	datac => \add_instance|Mux4~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux4~1_combout\);

-- Location: LC_X7_Y7_N8
\add_instance|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux4~2_combout\ = (\input_vector~combout\(8) & (((\add_instance|Mux4~1_combout\)))) # (!\input_vector~combout\(8) & (\add_instance|res~17_combout\ & ((!\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~17_combout\,
	datab => \add_instance|Mux4~1_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux4~2_combout\);

-- Location: LC_X8_Y6_N3
\add_instance|Add16~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~18_combout\ = \input_vector~combout\(7) $ ((((\add_instance|Add16~14\))))
-- \add_instance|Add16~20\ = CARRY(((!\add_instance|Add16~14\)) # (!\input_vector~combout\(7)))
-- \add_instance|Add16~20COUT1_34\ = CARRY(((!\add_instance|Add16~14COUT1_33\)) # (!\input_vector~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	cin0 => \add_instance|Add16~14\,
	cin1 => \add_instance|Add16~14COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~18_combout\,
	cout0 => \add_instance|Add16~20\,
	cout1 => \add_instance|Add16~20COUT1_34\);

-- Location: LC_X6_Y7_N4
\add_instance|Add16~28\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~28_combout\ = ((\add_instance|Add16~18_combout\ & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add16~18_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~28_combout\);

-- Location: LC_X8_Y7_N7
\add_instance|Add17~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~11_combout\ = \input_vector~combout\(6) $ (\add_instance|Add16~28_combout\ $ ((!\add_instance|Add17~7\)))
-- \add_instance|Add17~13\ = CARRY((\input_vector~combout\(6) & ((\add_instance|Add16~28_combout\) # (!\add_instance|Add17~7\))) # (!\input_vector~combout\(6) & (\add_instance|Add16~28_combout\ & !\add_instance|Add17~7\)))
-- \add_instance|Add17~13COUT1_32\ = CARRY((\input_vector~combout\(6) & ((\add_instance|Add16~28_combout\) # (!\add_instance|Add17~7COUT1_31\))) # (!\input_vector~combout\(6) & (\add_instance|Add16~28_combout\ & !\add_instance|Add17~7COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|Add16~28_combout\,
	cin0 => \add_instance|Add17~7\,
	cin1 => \add_instance|Add17~7COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~11_combout\,
	cout0 => \add_instance|Add17~13\,
	cout1 => \add_instance|Add17~13COUT1_32\);

-- Location: LC_X6_Y7_N2
\add_instance|Add17~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~16_combout\ = (\input_vector~combout\(2) & (((\add_instance|Add17~11_combout\)))) # (!\input_vector~combout\(2) & (\input_vector~combout\(1) & (\add_instance|Add16~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|Add16~18_combout\,
	datac => \add_instance|Add17~11_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~16_combout\);

-- Location: LC_X7_Y6_N6
\add_instance|Add18~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add18~5_combout\ = \add_instance|Add17~16_combout\ $ (\input_vector~combout\(5) $ ((\add_instance|Add18~2\)))
-- \add_instance|Add18~7\ = CARRY((\add_instance|Add17~16_combout\ & (!\input_vector~combout\(5) & !\add_instance|Add18~2\)) # (!\add_instance|Add17~16_combout\ & ((!\add_instance|Add18~2\) # (!\input_vector~combout\(5)))))
-- \add_instance|Add18~7COUT1_27\ = CARRY((\add_instance|Add17~16_combout\ & (!\input_vector~combout\(5) & !\add_instance|Add18~2COUT1_26\)) # (!\add_instance|Add17~16_combout\ & ((!\add_instance|Add18~2COUT1_26\) # (!\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add17~16_combout\,
	datab => \input_vector~combout\(5),
	cin0 => \add_instance|Add18~2\,
	cin1 => \add_instance|Add18~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add18~5_combout\,
	cout0 => \add_instance|Add18~7\,
	cout1 => \add_instance|Add18~7COUT1_27\);

-- Location: LC_X7_Y7_N0
\add_instance|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~0_combout\ = ((\input_vector~combout\(9) & ((\input_vector~combout\(3)))) # (!\input_vector~combout\(9) & (\input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~0_combout\);

-- Location: LC_X9_Y7_N3
\add_instance|res~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~18_combout\ = \input_vector~combout\(5) $ ((((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~18_combout\);

-- Location: LC_X10_Y8_N1
\add_instance|res~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~20_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(1) & ((\input_vector~combout\(7)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~20_combout\);

-- Location: LC_X8_Y10_N7
\add_instance|res~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~19_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(6) & (!\input_vector~combout\(2)))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(2) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~19_combout\);

-- Location: LC_X8_Y10_N4
\add_instance|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~0_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(3) & (\add_instance|res~16_combout\)) # (!\input_vector~combout\(3) & 
-- ((\add_instance|res~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~16_combout\,
	datab => \input_vector~combout\(0),
	datac => \add_instance|res~19_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~0_combout\);

-- Location: LC_X8_Y10_N1
\add_instance|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~1_combout\ = (\add_instance|Mux3~0_combout\ & (((\add_instance|res~20_combout\) # (!\input_vector~combout\(0))))) # (!\add_instance|Mux3~0_combout\ & (\add_instance|res~14_combout\ & ((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~14_combout\,
	datab => \add_instance|res~20_combout\,
	datac => \add_instance|Mux3~0_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~1_combout\);

-- Location: LC_X7_Y7_N6
\add_instance|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~2_combout\ = (\add_instance|Mux2~0_combout\ & (((\input_vector~combout\(9))))) # (!\add_instance|Mux2~0_combout\ & ((\input_vector~combout\(9) & ((\add_instance|Add17~16_combout\))) # (!\input_vector~combout\(9) & 
-- (\add_instance|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux3~1_combout\,
	datab => \add_instance|Add17~16_combout\,
	datac => \add_instance|Mux2~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~2_combout\);

-- Location: LC_X7_Y7_N2
\add_instance|Mux3~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~3_combout\ = (\add_instance|Mux2~0_combout\ & ((\add_instance|Mux3~2_combout\ & (\add_instance|Add18~5_combout\)) # (!\add_instance|Mux3~2_combout\ & ((\add_instance|res~18_combout\))))) # (!\add_instance|Mux2~0_combout\ & 
-- (((\add_instance|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add18~5_combout\,
	datab => \add_instance|Mux2~0_combout\,
	datac => \add_instance|res~18_combout\,
	datad => \add_instance|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~3_combout\);

-- Location: LC_X7_Y7_N4
\add_instance|Mux3~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~4_combout\ = ((\add_instance|Mux3~3_combout\ & ((\input_vector~combout\(8)) # (!\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux3~3_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~4_combout\);

-- Location: LC_X7_Y6_N1
\add_instance|res~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~21_combout\ = (\input_vector~combout\(6) $ (((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~21_combout\);

-- Location: LC_X8_Y6_N4
\add_instance|Add16~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~23_combout\ = (((!\add_instance|Add16~20\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \add_instance|Add16~20\,
	cin1 => \add_instance|Add16~20COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~23_combout\);

-- Location: LC_X6_Y7_N6
\add_instance|Add16~29\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add16~29_combout\ = ((\add_instance|Add16~23_combout\ & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add16~23_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add16~29_combout\);

-- Location: LC_X8_Y7_N8
\add_instance|Add17~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~17_combout\ = \add_instance|Add16~29_combout\ $ (\input_vector~combout\(7) $ ((\add_instance|Add17~13\)))
-- \add_instance|Add17~19\ = CARRY((\add_instance|Add16~29_combout\ & (!\input_vector~combout\(7) & !\add_instance|Add17~13\)) # (!\add_instance|Add16~29_combout\ & ((!\add_instance|Add17~13\) # (!\input_vector~combout\(7)))))
-- \add_instance|Add17~19COUT1_33\ = CARRY((\add_instance|Add16~29_combout\ & (!\input_vector~combout\(7) & !\add_instance|Add17~13COUT1_32\)) # (!\add_instance|Add16~29_combout\ & ((!\add_instance|Add17~13COUT1_32\) # (!\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add16~29_combout\,
	datab => \input_vector~combout\(7),
	cin0 => \add_instance|Add17~13\,
	cin1 => \add_instance|Add17~13COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~17_combout\,
	cout0 => \add_instance|Add17~19\,
	cout1 => \add_instance|Add17~19COUT1_33\);

-- Location: LC_X6_Y7_N5
\add_instance|Add17~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~22_combout\ = (\input_vector~combout\(2) & (((\add_instance|Add17~17_combout\)))) # (!\input_vector~combout\(2) & (\input_vector~combout\(1) & (\add_instance|Add16~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|Add16~23_combout\,
	datac => \add_instance|Add17~17_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~22_combout\);

-- Location: LC_X7_Y6_N7
\add_instance|Add18~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add18~10_combout\ = \add_instance|Add17~22_combout\ $ (\input_vector~combout\(6) $ ((!\add_instance|Add18~7\)))
-- \add_instance|Add18~12\ = CARRY((\add_instance|Add17~22_combout\ & ((\input_vector~combout\(6)) # (!\add_instance|Add18~7\))) # (!\add_instance|Add17~22_combout\ & (\input_vector~combout\(6) & !\add_instance|Add18~7\)))
-- \add_instance|Add18~12COUT1_28\ = CARRY((\add_instance|Add17~22_combout\ & ((\input_vector~combout\(6)) # (!\add_instance|Add18~7COUT1_27\))) # (!\add_instance|Add17~22_combout\ & (\input_vector~combout\(6) & !\add_instance|Add18~7COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add17~22_combout\,
	datab => \input_vector~combout\(6),
	cin0 => \add_instance|Add18~7\,
	cin1 => \add_instance|Add18~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add18~10_combout\,
	cout0 => \add_instance|Add18~12\,
	cout1 => \add_instance|Add18~12COUT1_28\);

-- Location: LC_X8_Y10_N0
\add_instance|res~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~22_combout\ = (\input_vector~combout\(1) & (((!\input_vector~combout\(2) & \input_vector~combout\(7))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(5) & (\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~22_combout\);

-- Location: LC_X8_Y10_N8
\add_instance|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~1_combout\ = (\input_vector~combout\(0) & ((\add_instance|res~19_combout\) # ((\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & (((\add_instance|res~22_combout\ & !\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|res~19_combout\,
	datac => \add_instance|res~22_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~1_combout\);

-- Location: LC_X8_Y10_N9
\add_instance|res~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~23_combout\ = (\input_vector~combout\(1) & (((!\input_vector~combout\(2) & \input_vector~combout\(4))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(6) & (\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~23_combout\);

-- Location: LC_X8_Y10_N6
\add_instance|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~2_combout\ = (\add_instance|Mux2~1_combout\ & ((\add_instance|res~23_combout\) # ((!\input_vector~combout\(3))))) # (!\add_instance|Mux2~1_combout\ & (((\add_instance|res~20_combout\ & \input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux2~1_combout\,
	datab => \add_instance|res~23_combout\,
	datac => \add_instance|res~20_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~2_combout\);

-- Location: LC_X7_Y6_N2
\add_instance|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~3_combout\ = (\input_vector~combout\(9) & ((\add_instance|Add17~22_combout\) # ((\add_instance|Mux2~0_combout\)))) # (!\input_vector~combout\(9) & (((!\add_instance|Mux2~0_combout\ & \add_instance|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add17~22_combout\,
	datab => \input_vector~combout\(9),
	datac => \add_instance|Mux2~0_combout\,
	datad => \add_instance|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~3_combout\);

-- Location: LC_X7_Y6_N3
\add_instance|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~4_combout\ = (\add_instance|Mux2~0_combout\ & ((\add_instance|Mux2~3_combout\ & ((\add_instance|Add18~10_combout\))) # (!\add_instance|Mux2~3_combout\ & (\add_instance|res~21_combout\)))) # (!\add_instance|Mux2~0_combout\ & 
-- (((\add_instance|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux2~0_combout\,
	datab => \add_instance|res~21_combout\,
	datac => \add_instance|Add18~10_combout\,
	datad => \add_instance|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~4_combout\);

-- Location: LC_X10_Y6_N2
\add_instance|Mux2~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~5_combout\ = ((\add_instance|Mux2~4_combout\ & ((\input_vector~combout\(8)) # (!\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(8),
	datad => \add_instance|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~5_combout\);

-- Location: LC_X8_Y7_N9
\add_instance|Add17~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~23_combout\ = (((!\add_instance|Add17~19\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \add_instance|Add17~19\,
	cin1 => \add_instance|Add17~19COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~23_combout\);

-- Location: LC_X8_Y7_N3
\add_instance|Add17~28\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add17~28_combout\ = (((\input_vector~combout\(2) & \add_instance|Add17~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(2),
	datad => \add_instance|Add17~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add17~28_combout\);

-- Location: LC_X7_Y6_N8
\add_instance|Add18~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add18~15_combout\ = \input_vector~combout\(7) $ (\add_instance|Add17~28_combout\ $ ((\add_instance|Add18~12\)))
-- \add_instance|Add18~17\ = CARRY((\input_vector~combout\(7) & (!\add_instance|Add17~28_combout\ & !\add_instance|Add18~12\)) # (!\input_vector~combout\(7) & ((!\add_instance|Add18~12\) # (!\add_instance|Add17~28_combout\))))
-- \add_instance|Add18~17COUT1_29\ = CARRY((\input_vector~combout\(7) & (!\add_instance|Add17~28_combout\ & !\add_instance|Add18~12COUT1_28\)) # (!\input_vector~combout\(7) & ((!\add_instance|Add18~12COUT1_28\) # (!\add_instance|Add17~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|Add17~28_combout\,
	cin0 => \add_instance|Add18~12\,
	cin1 => \add_instance|Add18~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add18~15_combout\,
	cout0 => \add_instance|Add18~17\,
	cout1 => \add_instance|Add18~17COUT1_29\);

-- Location: LC_X8_Y10_N3
\add_instance|res~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~24_combout\ = ((\input_vector~combout\(6) $ (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~24_combout\);

-- Location: LC_X10_Y8_N8
\add_instance|res~26\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~26_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(5) & ((!\input_vector~combout\(2))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(7) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~26_combout\);

-- Location: LC_X9_Y7_N2
\add_instance|res~25\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~25_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(1) & ((\input_vector~combout\(4)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~25_combout\);

-- Location: LC_X8_Y10_N2
\add_instance|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~0_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(3) & (\add_instance|res~23_combout\)) # (!\input_vector~combout\(3) & 
-- ((\add_instance|res~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|res~23_combout\,
	datac => \add_instance|res~25_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~0_combout\);

-- Location: LC_X8_Y10_N5
\add_instance|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~1_combout\ = (\add_instance|Mux1~0_combout\ & ((\add_instance|res~26_combout\) # ((!\input_vector~combout\(0))))) # (!\add_instance|Mux1~0_combout\ & (((\add_instance|res~22_combout\ & \input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~26_combout\,
	datab => \add_instance|Mux1~0_combout\,
	datac => \add_instance|res~22_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~1_combout\);

-- Location: LC_X7_Y7_N1
\add_instance|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~2_combout\ = (\input_vector~combout\(9) & ((\add_instance|Add17~28_combout\) # ((\add_instance|Mux2~0_combout\)))) # (!\input_vector~combout\(9) & (((!\add_instance|Mux2~0_combout\ & \add_instance|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add17~28_combout\,
	datab => \input_vector~combout\(9),
	datac => \add_instance|Mux2~0_combout\,
	datad => \add_instance|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~2_combout\);

-- Location: LC_X7_Y7_N3
\add_instance|Mux1~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~3_combout\ = (\add_instance|Mux2~0_combout\ & ((\add_instance|Mux1~2_combout\ & (\add_instance|Add18~15_combout\)) # (!\add_instance|Mux1~2_combout\ & ((\add_instance|res~24_combout\))))) # (!\add_instance|Mux2~0_combout\ & 
-- (((\add_instance|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add18~15_combout\,
	datab => \add_instance|res~24_combout\,
	datac => \add_instance|Mux2~0_combout\,
	datad => \add_instance|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~3_combout\);

-- Location: LC_X7_Y7_N9
\add_instance|Mux1~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~4_combout\ = (\add_instance|Mux1~3_combout\ & (((\input_vector~combout\(8)) # (!\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux1~3_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~4_combout\);

-- Location: LC_X10_Y7_N7
\add_instance|res~27\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~27_combout\ = (\input_vector~combout\(0) & (((\add_instance|res~25_combout\) # (\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & (\add_instance|res~0_combout\ & ((!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~0_combout\,
	datab => \add_instance|res~25_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~27_combout\);

-- Location: LC_X10_Y7_N8
\add_instance|res~28\ : maxv_lcell
-- Equation(s):
-- \add_instance|res~28_combout\ = (\add_instance|res~27_combout\ & (((\add_instance|res~1_combout\) # (!\input_vector~combout\(3))))) # (!\add_instance|res~27_combout\ & (\add_instance|res~26_combout\ & ((\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~26_combout\,
	datab => \add_instance|res~1_combout\,
	datac => \add_instance|res~27_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|res~28_combout\);

-- Location: LC_X7_Y6_N9
\add_instance|Add18~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add18~20_combout\ = (((!\add_instance|Add18~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \add_instance|Add18~17\,
	cin1 => \add_instance|Add18~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add18~20_combout\);

-- Location: LC_X7_Y7_N7
\add_instance|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux0~0_combout\ = (\input_vector~combout\(9) & (\add_instance|Add18~20_combout\ & ((\input_vector~combout\(3))))) # (!\input_vector~combout\(9) & (((\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add18~20_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux0~0_combout\);

-- Location: LC_X7_Y7_N5
\add_instance|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux0~1_combout\ = (\input_vector~combout\(8) & (((\add_instance|Mux0~0_combout\)))) # (!\input_vector~combout\(8) & (\add_instance|res~28_combout\ & ((!\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|res~28_combout\,
	datab => \add_instance|Mux0~0_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux0~1_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux7~3_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux6~1_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux5~2_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux4~2_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux3~4_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux2~5_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux1~4_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux0~1_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


