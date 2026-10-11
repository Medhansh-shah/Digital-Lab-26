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

-- DATE "10/09/2026 15:16:53"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	gcd_top IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	ready : OUT std_logic;
	gcd_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END gcd_top;

-- Design Ports Information
-- ready	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gcd_out[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gcd_out[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gcd_out[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gcd_out[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gcd_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL ww_gcd_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \gcd_out[0]~output_o\ : std_logic;
SIGNAL \gcd_out[1]~output_o\ : std_logic;
SIGNAL \gcd_out[2]~output_o\ : std_logic;
SIGNAL \gcd_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \CTRL_INST|next_state~2_combout\ : std_logic;
SIGNAL \CTRL_INST|current_state~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \CTRL_INST|current_state~q\ : std_logic;
SIGNAL \DP_INST|REG_Y|d_out[1]~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \DP_INST|SUB|D[2]~5\ : std_logic;
SIGNAL \DP_INST|SUB|D[3]~6_combout\ : std_logic;
SIGNAL \CTRL_INST|swap_en~0_combout\ : std_logic;
SIGNAL \DP_INST|REG_X|d_out[3]~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \DP_INST|y_next~0_combout\ : std_logic;
SIGNAL \DP_INST|REG_Y|d_out[3]~2_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \DP_INST|REG_Y|d_out[0]~5_combout\ : std_logic;
SIGNAL \DP_INST|SUB|D[0]~0_combout\ : std_logic;
SIGNAL \DP_INST|REG_X|d_out[0]~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \DP_INST|COMP|LessThan0~0_combout\ : std_logic;
SIGNAL \DP_INST|COMP|LessThan0~1_combout\ : std_logic;
SIGNAL \DP_INST|COMP|LessThan0~2_combout\ : std_logic;
SIGNAL \DP_INST|REG_Y|d_out[3]~6_combout\ : std_logic;
SIGNAL \DP_INST|SUB|D[0]~1\ : std_logic;
SIGNAL \DP_INST|SUB|D[1]~2_combout\ : std_logic;
SIGNAL \DP_INST|REG_X|d_out[1]~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \DP_INST|SUB|D[1]~3\ : std_logic;
SIGNAL \DP_INST|SUB|D[2]~4_combout\ : std_logic;
SIGNAL \DP_INST|REG_X|d_out[2]~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \DP_INST|REG_Y|d_out[2]~3_combout\ : std_logic;
SIGNAL \DP_INST|ZERO_DET|Equal0~0_combout\ : std_logic;
SIGNAL \CTRL_INST|ready~0_combout\ : std_logic;
SIGNAL \DP_INST|gcd_out[0]~0_combout\ : std_logic;
SIGNAL \DP_INST|gcd_out[1]~1_combout\ : std_logic;
SIGNAL \DP_INST|gcd_out[2]~2_combout\ : std_logic;
SIGNAL \DP_INST|gcd_out[3]~3_combout\ : std_logic;
SIGNAL \DP_INST|REG_X|d_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP_INST|REG_Y|d_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \CTRL_INST|ALT_INV_ready~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start <= start;
ww_A <= A;
ww_B <= B;
ready <= ww_ready;
gcd_out <= ww_gcd_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\CTRL_INST|ALT_INV_ready~0_combout\ <= NOT \CTRL_INST|ready~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y24_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X21_Y0_N2
\ready~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL_INST|ALT_INV_ready~0_combout\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\gcd_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP_INST|gcd_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \gcd_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\gcd_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP_INST|gcd_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \gcd_out[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\gcd_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP_INST|gcd_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \gcd_out[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\gcd_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP_INST|gcd_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \gcd_out[3]~output_o\);

-- Location: IOIBUF_X21_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X6_Y0_N8
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X53_Y0_N1
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X15_Y1_N30
\CTRL_INST|next_state~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL_INST|next_state~2_combout\ = (\CTRL_INST|current_state~q\ & ((\DP_INST|ZERO_DET|Equal0~0_combout\))) # (!\CTRL_INST|current_state~q\ & (\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL_INST|current_state~q\,
	datac => \start~input_o\,
	datad => \DP_INST|ZERO_DET|Equal0~0_combout\,
	combout => \CTRL_INST|next_state~2_combout\);

-- Location: LCCOMB_X15_Y1_N24
\CTRL_INST|current_state~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL_INST|current_state~feeder_combout\ = \CTRL_INST|next_state~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CTRL_INST|next_state~2_combout\,
	combout => \CTRL_INST|current_state~feeder_combout\);

-- Location: IOIBUF_X40_Y0_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X15_Y1_N25
\CTRL_INST|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CTRL_INST|current_state~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_INST|current_state~q\);

-- Location: LCCOMB_X16_Y1_N0
\DP_INST|REG_Y|d_out[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_Y|d_out[1]~4_combout\ = (\CTRL_INST|current_state~q\ & (((\DP_INST|REG_X|d_out\(1))))) # (!\CTRL_INST|current_state~q\ & ((\start~input_o\ & (\B[1]~input_o\)) # (!\start~input_o\ & ((\DP_INST|REG_X|d_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \CTRL_INST|current_state~q\,
	datac => \DP_INST|REG_X|d_out\(1),
	datad => \start~input_o\,
	combout => \DP_INST|REG_Y|d_out[1]~4_combout\);

-- Location: IOIBUF_X6_Y0_N1
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N16
\DP_INST|SUB|D[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|SUB|D[2]~4_combout\ = ((\DP_INST|REG_X|d_out\(2) $ (\DP_INST|REG_Y|d_out\(2) $ (\DP_INST|SUB|D[1]~3\)))) # (GND)
-- \DP_INST|SUB|D[2]~5\ = CARRY((\DP_INST|REG_X|d_out\(2) & ((!\DP_INST|SUB|D[1]~3\) # (!\DP_INST|REG_Y|d_out\(2)))) # (!\DP_INST|REG_X|d_out\(2) & (!\DP_INST|REG_Y|d_out\(2) & !\DP_INST|SUB|D[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_X|d_out\(2),
	datab => \DP_INST|REG_Y|d_out\(2),
	datad => VCC,
	cin => \DP_INST|SUB|D[1]~3\,
	combout => \DP_INST|SUB|D[2]~4_combout\,
	cout => \DP_INST|SUB|D[2]~5\);

-- Location: LCCOMB_X15_Y1_N18
\DP_INST|SUB|D[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|SUB|D[3]~6_combout\ = \DP_INST|REG_X|d_out\(3) $ (\DP_INST|SUB|D[2]~5\ $ (!\DP_INST|REG_Y|d_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_X|d_out\(3),
	datad => \DP_INST|REG_Y|d_out\(3),
	cin => \DP_INST|SUB|D[2]~5\,
	combout => \DP_INST|SUB|D[3]~6_combout\);

-- Location: LCCOMB_X16_Y1_N28
\CTRL_INST|swap_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL_INST|swap_en~0_combout\ = (\CTRL_INST|current_state~q\ & (\DP_INST|ZERO_DET|Equal0~0_combout\ & \DP_INST|COMP|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL_INST|current_state~q\,
	datac => \DP_INST|ZERO_DET|Equal0~0_combout\,
	datad => \DP_INST|COMP|LessThan0~2_combout\,
	combout => \CTRL_INST|swap_en~0_combout\);

-- Location: LCCOMB_X15_Y1_N26
\DP_INST|REG_X|d_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_X|d_out[3]~3_combout\ = (\CTRL_INST|swap_en~0_combout\ & (\DP_INST|REG_Y|d_out\(3))) # (!\CTRL_INST|swap_en~0_combout\ & ((\DP_INST|SUB|D[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_Y|d_out\(3),
	datab => \DP_INST|SUB|D[3]~6_combout\,
	datad => \CTRL_INST|swap_en~0_combout\,
	combout => \DP_INST|REG_X|d_out[3]~3_combout\);

-- Location: IOIBUF_X14_Y0_N1
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N20
\DP_INST|y_next~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|y_next~0_combout\ = (\start~input_o\ & !\CTRL_INST|current_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \CTRL_INST|current_state~q\,
	combout => \DP_INST|y_next~0_combout\);

-- Location: FF_X15_Y1_N27
\DP_INST|REG_X|d_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP_INST|REG_X|d_out[3]~3_combout\,
	asdata => \A[3]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \DP_INST|y_next~0_combout\,
	ena => \CTRL_INST|next_state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP_INST|REG_X|d_out\(3));

-- Location: LCCOMB_X16_Y1_N24
\DP_INST|REG_Y|d_out[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_Y|d_out[3]~2_combout\ = (\start~input_o\ & ((\CTRL_INST|current_state~q\ & ((\DP_INST|REG_X|d_out\(3)))) # (!\CTRL_INST|current_state~q\ & (\B[3]~input_o\)))) # (!\start~input_o\ & (((\DP_INST|REG_X|d_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \start~input_o\,
	datac => \DP_INST|REG_X|d_out\(3),
	datad => \CTRL_INST|current_state~q\,
	combout => \DP_INST|REG_Y|d_out[3]~2_combout\);

-- Location: FF_X16_Y1_N25
\DP_INST|REG_Y|d_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP_INST|REG_Y|d_out[3]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \DP_INST|REG_Y|d_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP_INST|REG_Y|d_out\(3));

-- Location: IOIBUF_X3_Y0_N1
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X16_Y1_N22
\DP_INST|REG_Y|d_out[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_Y|d_out[0]~5_combout\ = (\start~input_o\ & ((\CTRL_INST|current_state~q\ & ((\DP_INST|REG_X|d_out\(0)))) # (!\CTRL_INST|current_state~q\ & (\B[0]~input_o\)))) # (!\start~input_o\ & (((\DP_INST|REG_X|d_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \start~input_o\,
	datac => \DP_INST|REG_X|d_out\(0),
	datad => \CTRL_INST|current_state~q\,
	combout => \DP_INST|REG_Y|d_out[0]~5_combout\);

-- Location: FF_X16_Y1_N23
\DP_INST|REG_Y|d_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP_INST|REG_Y|d_out[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \DP_INST|REG_Y|d_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP_INST|REG_Y|d_out\(0));

-- Location: LCCOMB_X15_Y1_N12
\DP_INST|SUB|D[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|SUB|D[0]~0_combout\ = (\DP_INST|REG_X|d_out\(0) & ((GND) # (!\DP_INST|REG_Y|d_out\(0)))) # (!\DP_INST|REG_X|d_out\(0) & (\DP_INST|REG_Y|d_out\(0) $ (GND)))
-- \DP_INST|SUB|D[0]~1\ = CARRY((\DP_INST|REG_X|d_out\(0)) # (!\DP_INST|REG_Y|d_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_X|d_out\(0),
	datab => \DP_INST|REG_Y|d_out\(0),
	datad => VCC,
	combout => \DP_INST|SUB|D[0]~0_combout\,
	cout => \DP_INST|SUB|D[0]~1\);

-- Location: LCCOMB_X16_Y1_N4
\DP_INST|REG_X|d_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_X|d_out[0]~0_combout\ = (\CTRL_INST|swap_en~0_combout\ & ((\DP_INST|REG_Y|d_out\(0)))) # (!\CTRL_INST|swap_en~0_combout\ & (\DP_INST|SUB|D[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|SUB|D[0]~0_combout\,
	datab => \DP_INST|REG_Y|d_out\(0),
	datad => \CTRL_INST|swap_en~0_combout\,
	combout => \DP_INST|REG_X|d_out[0]~0_combout\);

-- Location: IOIBUF_X8_Y0_N15
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: FF_X16_Y1_N5
\DP_INST|REG_X|d_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP_INST|REG_X|d_out[0]~0_combout\,
	asdata => \A[0]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \DP_INST|y_next~0_combout\,
	ena => \CTRL_INST|next_state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP_INST|REG_X|d_out\(0));

-- Location: LCCOMB_X16_Y1_N10
\DP_INST|COMP|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|COMP|LessThan0~0_combout\ = (\DP_INST|REG_X|d_out\(1) & (!\DP_INST|REG_X|d_out\(0) & (\DP_INST|REG_Y|d_out\(0) & \DP_INST|REG_Y|d_out\(1)))) # (!\DP_INST|REG_X|d_out\(1) & ((\DP_INST|REG_Y|d_out\(1)) # ((!\DP_INST|REG_X|d_out\(0) & 
-- \DP_INST|REG_Y|d_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_X|d_out\(1),
	datab => \DP_INST|REG_X|d_out\(0),
	datac => \DP_INST|REG_Y|d_out\(0),
	datad => \DP_INST|REG_Y|d_out\(1),
	combout => \DP_INST|COMP|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y1_N12
\DP_INST|COMP|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|COMP|LessThan0~1_combout\ = (\DP_INST|REG_Y|d_out\(2) & ((\DP_INST|COMP|LessThan0~0_combout\) # (!\DP_INST|REG_X|d_out\(2)))) # (!\DP_INST|REG_Y|d_out\(2) & (!\DP_INST|REG_X|d_out\(2) & \DP_INST|COMP|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_Y|d_out\(2),
	datac => \DP_INST|REG_X|d_out\(2),
	datad => \DP_INST|COMP|LessThan0~0_combout\,
	combout => \DP_INST|COMP|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y1_N2
\DP_INST|COMP|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|COMP|LessThan0~2_combout\ = (\DP_INST|REG_Y|d_out\(3) & ((\DP_INST|COMP|LessThan0~1_combout\) # (!\DP_INST|REG_X|d_out\(3)))) # (!\DP_INST|REG_Y|d_out\(3) & (!\DP_INST|REG_X|d_out\(3) & \DP_INST|COMP|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP_INST|REG_Y|d_out\(3),
	datac => \DP_INST|REG_X|d_out\(3),
	datad => \DP_INST|COMP|LessThan0~1_combout\,
	combout => \DP_INST|COMP|LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y1_N18
\DP_INST|REG_Y|d_out[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_Y|d_out[3]~6_combout\ = (\CTRL_INST|current_state~q\ & (((\DP_INST|ZERO_DET|Equal0~0_combout\ & \DP_INST|COMP|LessThan0~2_combout\)))) # (!\CTRL_INST|current_state~q\ & (\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \CTRL_INST|current_state~q\,
	datac => \DP_INST|ZERO_DET|Equal0~0_combout\,
	datad => \DP_INST|COMP|LessThan0~2_combout\,
	combout => \DP_INST|REG_Y|d_out[3]~6_combout\);

-- Location: FF_X16_Y1_N1
\DP_INST|REG_Y|d_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP_INST|REG_Y|d_out[1]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \DP_INST|REG_Y|d_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP_INST|REG_Y|d_out\(1));

-- Location: LCCOMB_X15_Y1_N14
\DP_INST|SUB|D[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|SUB|D[1]~2_combout\ = (\DP_INST|REG_X|d_out\(1) & ((\DP_INST|REG_Y|d_out\(1) & (!\DP_INST|SUB|D[0]~1\)) # (!\DP_INST|REG_Y|d_out\(1) & (\DP_INST|SUB|D[0]~1\ & VCC)))) # (!\DP_INST|REG_X|d_out\(1) & ((\DP_INST|REG_Y|d_out\(1) & 
-- ((\DP_INST|SUB|D[0]~1\) # (GND))) # (!\DP_INST|REG_Y|d_out\(1) & (!\DP_INST|SUB|D[0]~1\))))
-- \DP_INST|SUB|D[1]~3\ = CARRY((\DP_INST|REG_X|d_out\(1) & (\DP_INST|REG_Y|d_out\(1) & !\DP_INST|SUB|D[0]~1\)) # (!\DP_INST|REG_X|d_out\(1) & ((\DP_INST|REG_Y|d_out\(1)) # (!\DP_INST|SUB|D[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_X|d_out\(1),
	datab => \DP_INST|REG_Y|d_out\(1),
	datad => VCC,
	cin => \DP_INST|SUB|D[0]~1\,
	combout => \DP_INST|SUB|D[1]~2_combout\,
	cout => \DP_INST|SUB|D[1]~3\);

-- Location: LCCOMB_X16_Y1_N6
\DP_INST|REG_X|d_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_X|d_out[1]~1_combout\ = (\CTRL_INST|swap_en~0_combout\ & ((\DP_INST|REG_Y|d_out\(1)))) # (!\CTRL_INST|swap_en~0_combout\ & (\DP_INST|SUB|D[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|SUB|D[1]~2_combout\,
	datab => \DP_INST|REG_Y|d_out\(1),
	datad => \CTRL_INST|swap_en~0_combout\,
	combout => \DP_INST|REG_X|d_out[1]~1_combout\);

-- Location: IOIBUF_X8_Y0_N8
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X16_Y1_N7
\DP_INST|REG_X|d_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP_INST|REG_X|d_out[1]~1_combout\,
	asdata => \A[1]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \DP_INST|y_next~0_combout\,
	ena => \CTRL_INST|next_state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP_INST|REG_X|d_out\(1));

-- Location: LCCOMB_X15_Y1_N4
\DP_INST|REG_X|d_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_X|d_out[2]~2_combout\ = (\CTRL_INST|swap_en~0_combout\ & (\DP_INST|REG_Y|d_out\(2))) # (!\CTRL_INST|swap_en~0_combout\ & ((\DP_INST|SUB|D[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_Y|d_out\(2),
	datab => \DP_INST|SUB|D[2]~4_combout\,
	datad => \CTRL_INST|swap_en~0_combout\,
	combout => \DP_INST|REG_X|d_out[2]~2_combout\);

-- Location: IOIBUF_X14_Y0_N8
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X15_Y1_N5
\DP_INST|REG_X|d_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP_INST|REG_X|d_out[2]~2_combout\,
	asdata => \A[2]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \DP_INST|y_next~0_combout\,
	ena => \CTRL_INST|next_state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP_INST|REG_X|d_out\(2));

-- Location: LCCOMB_X16_Y1_N26
\DP_INST|REG_Y|d_out[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|REG_Y|d_out[2]~3_combout\ = (\start~input_o\ & ((\CTRL_INST|current_state~q\ & ((\DP_INST|REG_X|d_out\(2)))) # (!\CTRL_INST|current_state~q\ & (\B[2]~input_o\)))) # (!\start~input_o\ & (((\DP_INST|REG_X|d_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \start~input_o\,
	datac => \DP_INST|REG_X|d_out\(2),
	datad => \CTRL_INST|current_state~q\,
	combout => \DP_INST|REG_Y|d_out[2]~3_combout\);

-- Location: FF_X16_Y1_N27
\DP_INST|REG_Y|d_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP_INST|REG_Y|d_out[2]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \DP_INST|REG_Y|d_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP_INST|REG_Y|d_out\(2));

-- Location: LCCOMB_X16_Y1_N16
\DP_INST|ZERO_DET|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|ZERO_DET|Equal0~0_combout\ = (\DP_INST|REG_Y|d_out\(2)) # ((\DP_INST|REG_Y|d_out\(1)) # ((\DP_INST|REG_Y|d_out\(0)) # (\DP_INST|REG_Y|d_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|REG_Y|d_out\(2),
	datab => \DP_INST|REG_Y|d_out\(1),
	datac => \DP_INST|REG_Y|d_out\(0),
	datad => \DP_INST|REG_Y|d_out\(3),
	combout => \DP_INST|ZERO_DET|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y1_N10
\CTRL_INST|ready~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CTRL_INST|ready~0_combout\ = (\DP_INST|ZERO_DET|Equal0~0_combout\) # (!\CTRL_INST|current_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP_INST|ZERO_DET|Equal0~0_combout\,
	datad => \CTRL_INST|current_state~q\,
	combout => \CTRL_INST|ready~0_combout\);

-- Location: LCCOMB_X16_Y1_N14
\DP_INST|gcd_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|gcd_out[0]~0_combout\ = (!\DP_INST|ZERO_DET|Equal0~0_combout\ & \DP_INST|REG_X|d_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|ZERO_DET|Equal0~0_combout\,
	datac => \DP_INST|REG_X|d_out\(0),
	combout => \DP_INST|gcd_out[0]~0_combout\);

-- Location: LCCOMB_X16_Y1_N20
\DP_INST|gcd_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|gcd_out[1]~1_combout\ = (!\DP_INST|ZERO_DET|Equal0~0_combout\ & \DP_INST|REG_X|d_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|ZERO_DET|Equal0~0_combout\,
	datac => \DP_INST|REG_X|d_out\(1),
	combout => \DP_INST|gcd_out[1]~1_combout\);

-- Location: LCCOMB_X16_Y1_N30
\DP_INST|gcd_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|gcd_out[2]~2_combout\ = (\DP_INST|REG_X|d_out\(2) & !\DP_INST|ZERO_DET|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP_INST|REG_X|d_out\(2),
	datac => \DP_INST|ZERO_DET|Equal0~0_combout\,
	combout => \DP_INST|gcd_out[2]~2_combout\);

-- Location: LCCOMB_X16_Y1_N8
\DP_INST|gcd_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DP_INST|gcd_out[3]~3_combout\ = (!\DP_INST|ZERO_DET|Equal0~0_combout\ & \DP_INST|REG_X|d_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP_INST|ZERO_DET|Equal0~0_combout\,
	datac => \DP_INST|REG_X|d_out\(3),
	combout => \DP_INST|gcd_out[3]~3_combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_ready <= \ready~output_o\;

ww_gcd_out(0) <= \gcd_out[0]~output_o\;

ww_gcd_out(1) <= \gcd_out[1]~output_o\;

ww_gcd_out(2) <= \gcd_out[2]~output_o\;

ww_gcd_out(3) <= \gcd_out[3]~output_o\;
END structure;


