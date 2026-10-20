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

-- DATE "10/16/2026 14:51:37"

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

ENTITY 	pascal_top IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start : IN std_logic;
	sw : IN std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END pascal_top;

-- Design Ports Information
-- led[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pascal_top IS
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
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \start_meta~feeder_combout\ : std_logic;
SIGNAL \start_meta~q\ : std_logic;
SIGNAL \start_sync~feeder_combout\ : std_logic;
SIGNAL \start_sync~q\ : std_logic;
SIGNAL \start_prev~q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst_meta~feeder_combout\ : std_logic;
SIGNAL \rst_meta~q\ : std_logic;
SIGNAL \rst_sync~feeder_combout\ : std_logic;
SIGNAL \rst_sync~q\ : std_logic;
SIGNAL \u_fsm|state~8_combout\ : std_logic;
SIGNAL \u_fsm|state.IDLE~q\ : std_logic;
SIGNAL \u_fsm|init~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw_meta[3]~feeder_combout\ : std_logic;
SIGNAL \sw_sync[3]~feeder_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw_meta[7]~feeder_combout\ : std_logic;
SIGNAL \sw_sync[7]~feeder_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw_meta[5]~feeder_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw_meta[6]~feeder_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw_meta[4]~feeder_combout\ : std_logic;
SIGNAL \sw_sync[4]~feeder_combout\ : std_logic;
SIGNAL \u_dp|n_valid~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw_meta[1]~feeder_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw_meta[0]~feeder_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw_sync[2]~feeder_combout\ : std_logic;
SIGNAL \u_dp|n_valid~1_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~16_combout\ : std_logic;
SIGNAL \u_dp|k_reg~4_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~18_combout\ : std_logic;
SIGNAL \u_dp|n_reg~0_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~17_combout\ : std_logic;
SIGNAL \u_dp|k_reg~5_combout\ : std_logic;
SIGNAL \u_dp|Add1~1_combout\ : std_logic;
SIGNAL \u_dp|k_reg~3_combout\ : std_logic;
SIGNAL \u_dp|n_reg~1_combout\ : std_logic;
SIGNAL \u_dp|Add1~2_combout\ : std_logic;
SIGNAL \u_dp|k_reg~2_combout\ : std_logic;
SIGNAL \u_fsm|Selector1~1_combout\ : std_logic;
SIGNAL \u_dp|n_reg~2_combout\ : std_logic;
SIGNAL \u_dp|n_reg~3_combout\ : std_logic;
SIGNAL \u_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \u_fsm|state~9_combout\ : std_logic;
SIGNAL \u_fsm|state.COMP~q\ : std_logic;
SIGNAL \u_fsm|Selector1~2_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[0]~29_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[7]~84_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[7]~31_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[0]~30\ : std_logic;
SIGNAL \u_dp|timer_reg[1]~32_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[1]~33\ : std_logic;
SIGNAL \u_dp|timer_reg[2]~34_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[2]~35\ : std_logic;
SIGNAL \u_dp|timer_reg[3]~36_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~19_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[3]~37\ : std_logic;
SIGNAL \u_dp|timer_reg[4]~38_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[4]~39\ : std_logic;
SIGNAL \u_dp|timer_reg[5]~40_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[5]~41\ : std_logic;
SIGNAL \u_dp|timer_reg[6]~42_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[6]~43\ : std_logic;
SIGNAL \u_dp|timer_reg[7]~44_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[7]~45\ : std_logic;
SIGNAL \u_dp|timer_reg[8]~46_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[8]~47\ : std_logic;
SIGNAL \u_dp|timer_reg[9]~48_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[9]~49\ : std_logic;
SIGNAL \u_dp|timer_reg[10]~50_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[10]~51\ : std_logic;
SIGNAL \u_dp|timer_reg[11]~52_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[11]~53\ : std_logic;
SIGNAL \u_dp|timer_reg[12]~54_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[12]~55\ : std_logic;
SIGNAL \u_dp|timer_reg[13]~56_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[13]~57\ : std_logic;
SIGNAL \u_dp|timer_reg[14]~58_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[14]~59\ : std_logic;
SIGNAL \u_dp|timer_reg[15]~60_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[15]~61\ : std_logic;
SIGNAL \u_dp|timer_reg[16]~62_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[16]~63\ : std_logic;
SIGNAL \u_dp|timer_reg[17]~64_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[17]~65\ : std_logic;
SIGNAL \u_dp|timer_reg[18]~66_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[18]~67\ : std_logic;
SIGNAL \u_dp|timer_reg[19]~68_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[19]~69\ : std_logic;
SIGNAL \u_dp|timer_reg[20]~70_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[20]~71\ : std_logic;
SIGNAL \u_dp|timer_reg[21]~72_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[21]~73\ : std_logic;
SIGNAL \u_dp|timer_reg[22]~74_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[22]~75\ : std_logic;
SIGNAL \u_dp|timer_reg[23]~76_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[23]~77\ : std_logic;
SIGNAL \u_dp|timer_reg[24]~78_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[24]~79\ : std_logic;
SIGNAL \u_dp|timer_reg[25]~80_combout\ : std_logic;
SIGNAL \u_dp|timer_reg[25]~81\ : std_logic;
SIGNAL \u_dp|timer_reg[26]~82_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~25_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~26_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~20_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~21_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~23_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~22_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~24_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~27_combout\ : std_logic;
SIGNAL \u_dp|c_reg[0]~28_combout\ : std_logic;
SIGNAL \u_dp|Add1~0_combout\ : std_logic;
SIGNAL \u_dp|Add0~1\ : std_logic;
SIGNAL \u_dp|Add0~3\ : std_logic;
SIGNAL \u_dp|Add0~5\ : std_logic;
SIGNAL \u_dp|Add0~6_combout\ : std_logic;
SIGNAL \u_dp|Add0~2_combout\ : std_logic;
SIGNAL \u_dp|Add0~4_combout\ : std_logic;
SIGNAL \u_dp|c_reg~35_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \u_dp|Add0~0_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[43]~80_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[43]~66_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \u_dp|c_reg~31_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[38]~79_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ : std_logic;
SIGNAL \u_dp|c_reg~32_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~15\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~16_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~17\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~18_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[33]~78_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \u_dp|c_reg~33_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~19\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~20_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~19_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[18]~45_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \u_dp|c_reg~36_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~21\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~22_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~31_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[23]~76_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[23]~50_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[28]~53_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \u_dp|c_reg~34_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[48]~81_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[48]~69_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ : std_logic;
SIGNAL \u_dp|c_reg~30_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[53]~82_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\ : std_logic;
SIGNAL \u_dp|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9_cout\ : std_logic;
SIGNAL \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ : std_logic;
SIGNAL \u_dp|c_reg~29_combout\ : std_logic;
SIGNAL \u_dp|err_reg~0_combout\ : std_logic;
SIGNAL \u_dp|err_reg~q\ : std_logic;
SIGNAL \u_dp|led[0]~0_combout\ : std_logic;
SIGNAL \u_dp|led[1]~1_combout\ : std_logic;
SIGNAL \u_dp|led[2]~2_combout\ : std_logic;
SIGNAL \u_dp|led[3]~3_combout\ : std_logic;
SIGNAL \u_dp|led[4]~4_combout\ : std_logic;
SIGNAL \u_dp|led[5]~5_combout\ : std_logic;
SIGNAL \u_dp|led[6]~6_combout\ : std_logic;
SIGNAL \u_dp|led[7]~7_combout\ : std_logic;
SIGNAL \u_dp|timer_reg\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \u_dp|c_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_dp|n_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_dp|k_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL sw_meta : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_dp|Mult0|auto_generated|le4a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL sw_sync : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_dp|Mult0|auto_generated|le3a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_dp|Mult0|auto_generated|le5a\ : std_logic_vector(8 DOWNTO 0);

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
ww_sw <= sw;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
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

-- Location: IOOBUF_X16_Y0_N16
\led[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dp|led[0]~0_combout\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dp|led[1]~1_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\led[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dp|led[2]~2_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\led[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dp|led[3]~3_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\led[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dp|led[4]~4_combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\led[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dp|led[5]~5_combout\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\led[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dp|led[6]~6_combout\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\led[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dp|led[7]~7_combout\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOIBUF_X0_Y13_N15
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

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X40_Y0_N1
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

-- Location: LCCOMB_X28_Y4_N22
\start_meta~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \start_meta~feeder_combout\ = \start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~input_o\,
	combout => \start_meta~feeder_combout\);

-- Location: FF_X28_Y4_N23
start_meta : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \start_meta~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_meta~q\);

-- Location: LCCOMB_X27_Y6_N10
\start_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \start_sync~feeder_combout\ = \start_meta~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start_meta~q\,
	combout => \start_sync~feeder_combout\);

-- Location: FF_X27_Y6_N11
start_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \start_sync~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_sync~q\);

-- Location: FF_X26_Y6_N25
start_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \start_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_prev~q\);

-- Location: IOIBUF_X53_Y0_N1
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

-- Location: LCCOMB_X27_Y6_N28
\rst_meta~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rst_meta~feeder_combout\ = \rst~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rst~input_o\,
	combout => \rst_meta~feeder_combout\);

-- Location: FF_X27_Y6_N29
rst_meta : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_meta~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst_meta~q\);

-- Location: LCCOMB_X27_Y6_N14
\rst_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rst_sync~feeder_combout\ = \rst_meta~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rst_meta~q\,
	combout => \rst_sync~feeder_combout\);

-- Location: FF_X27_Y6_N15
rst_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_sync~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst_sync~q\);

-- Location: LCCOMB_X27_Y6_N16
\u_fsm|state~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fsm|state~8_combout\ = (!\rst_sync~q\ & ((\u_fsm|state.IDLE~q\) # ((\start_sync~q\ & !\start_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_sync~q\,
	datab => \rst_sync~q\,
	datac => \u_fsm|state.IDLE~q\,
	datad => \start_prev~q\,
	combout => \u_fsm|state~8_combout\);

-- Location: FF_X27_Y6_N17
\u_fsm|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_fsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fsm|state.IDLE~q\);

-- Location: LCCOMB_X26_Y6_N24
\u_fsm|init~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fsm|init~0_combout\ = (\start_sync~q\ & (!\start_prev~q\ & !\u_fsm|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_sync~q\,
	datac => \start_prev~q\,
	datad => \u_fsm|state.IDLE~q\,
	combout => \u_fsm|init~0_combout\);

-- Location: IOIBUF_X6_Y0_N1
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X26_Y6_N14
\sw_meta[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_meta[3]~feeder_combout\ = \sw[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[3]~input_o\,
	combout => \sw_meta[3]~feeder_combout\);

-- Location: FF_X26_Y6_N15
\sw_meta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_meta[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_meta(3));

-- Location: LCCOMB_X27_Y6_N8
\sw_sync[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_sync[3]~feeder_combout\ = sw_meta(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sw_meta(3),
	combout => \sw_sync[3]~feeder_combout\);

-- Location: FF_X27_Y6_N9
\sw_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_sync[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync(3));

-- Location: IOIBUF_X14_Y0_N1
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X14_Y2_N10
\sw_meta[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_meta[7]~feeder_combout\ = \sw[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[7]~input_o\,
	combout => \sw_meta[7]~feeder_combout\);

-- Location: FF_X14_Y2_N11
\sw_meta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_meta[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_meta(7));

-- Location: LCCOMB_X14_Y2_N6
\sw_sync[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_sync[7]~feeder_combout\ = sw_meta(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sw_meta(7),
	combout => \sw_sync[7]~feeder_combout\);

-- Location: FF_X14_Y2_N7
\sw_sync[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_sync[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync(7));

-- Location: IOIBUF_X8_Y0_N8
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X14_Y2_N22
\sw_meta[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_meta[5]~feeder_combout\ = \sw[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[5]~input_o\,
	combout => \sw_meta[5]~feeder_combout\);

-- Location: FF_X14_Y2_N23
\sw_meta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_meta[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_meta(5));

-- Location: FF_X14_Y2_N19
\sw_sync[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => sw_meta(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync(5));

-- Location: IOIBUF_X14_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X14_Y2_N8
\sw_meta[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_meta[6]~feeder_combout\ = \sw[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[6]~input_o\,
	combout => \sw_meta[6]~feeder_combout\);

-- Location: FF_X14_Y2_N9
\sw_meta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_meta[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_meta(6));

-- Location: FF_X14_Y2_N5
\sw_sync[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => sw_meta(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync(6));

-- Location: IOIBUF_X8_Y0_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X14_Y2_N20
\sw_meta[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_meta[4]~feeder_combout\ = \sw[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[4]~input_o\,
	combout => \sw_meta[4]~feeder_combout\);

-- Location: FF_X14_Y2_N21
\sw_meta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_meta[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_meta(4));

-- Location: LCCOMB_X14_Y2_N12
\sw_sync[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_sync[4]~feeder_combout\ = sw_meta(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sw_meta(4),
	combout => \sw_sync[4]~feeder_combout\);

-- Location: FF_X14_Y2_N13
\sw_sync[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_sync[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync(4));

-- Location: LCCOMB_X14_Y2_N4
\u_dp|n_valid~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|n_valid~0_combout\ = (sw_sync(7)) # ((sw_sync(5)) # ((sw_sync(6)) # (sw_sync(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_sync(7),
	datab => sw_sync(5),
	datac => sw_sync(6),
	datad => sw_sync(4),
	combout => \u_dp|n_valid~0_combout\);

-- Location: IOIBUF_X6_Y0_N29
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X28_Y4_N26
\sw_meta[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_meta[1]~feeder_combout\ = \sw[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[1]~input_o\,
	combout => \sw_meta[1]~feeder_combout\);

-- Location: FF_X28_Y4_N27
\sw_meta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_meta[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_meta(1));

-- Location: FF_X28_Y4_N7
\sw_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => sw_meta(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync(1));

-- Location: IOIBUF_X3_Y0_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X27_Y4_N16
\sw_meta[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_meta[0]~feeder_combout\ = \sw[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[0]~input_o\,
	combout => \sw_meta[0]~feeder_combout\);

-- Location: FF_X27_Y4_N17
\sw_meta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_meta[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_meta(0));

-- Location: FF_X28_Y4_N25
\sw_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => sw_meta(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync(0));

-- Location: IOIBUF_X6_Y0_N8
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: FF_X28_Y4_N29
\sw_meta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sw[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_meta(2));

-- Location: LCCOMB_X28_Y4_N20
\sw_sync[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_sync[2]~feeder_combout\ = sw_meta(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sw_meta(2),
	combout => \sw_sync[2]~feeder_combout\);

-- Location: FF_X28_Y4_N21
\sw_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sw_sync[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync(2));

-- Location: LCCOMB_X28_Y4_N24
\u_dp|n_valid~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|n_valid~1_combout\ = (!sw_sync(2) & ((!sw_sync(0)) # (!sw_sync(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_sync(1),
	datac => sw_sync(0),
	datad => sw_sync(2),
	combout => \u_dp|n_valid~1_combout\);

-- Location: LCCOMB_X27_Y6_N26
\u_dp|c_reg[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~16_combout\ = ((\u_dp|n_valid~0_combout\) # (sw_sync(3) $ (\u_dp|n_valid~1_combout\))) # (!\u_fsm|init~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fsm|init~0_combout\,
	datab => sw_sync(3),
	datac => \u_dp|n_valid~0_combout\,
	datad => \u_dp|n_valid~1_combout\,
	combout => \u_dp|c_reg[0]~16_combout\);

-- Location: LCCOMB_X33_Y6_N16
\u_dp|k_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|k_reg~4_combout\ = (!\u_dp|k_reg\(0) & (\u_dp|c_reg[0]~16_combout\ & !\rst_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|k_reg\(0),
	datac => \u_dp|c_reg[0]~16_combout\,
	datad => \rst_sync~q\,
	combout => \u_dp|k_reg~4_combout\);

-- Location: LCCOMB_X27_Y6_N12
\u_dp|c_reg[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~18_combout\ = (\u_fsm|init~0_combout\ & ((\u_dp|n_valid~0_combout\) # (sw_sync(3) $ (\u_dp|n_valid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fsm|init~0_combout\,
	datab => sw_sync(3),
	datac => \u_dp|n_valid~0_combout\,
	datad => \u_dp|n_valid~1_combout\,
	combout => \u_dp|c_reg[0]~18_combout\);

-- Location: LCCOMB_X28_Y6_N6
\u_dp|n_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|n_reg~0_combout\ = (sw_sync(3) & !\rst_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_sync(3),
	datad => \rst_sync~q\,
	combout => \u_dp|n_reg~0_combout\);

-- Location: LCCOMB_X28_Y6_N0
\u_dp|c_reg[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~17_combout\ = (\rst_sync~q\) # (!\u_dp|c_reg[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|c_reg[0]~16_combout\,
	datad => \rst_sync~q\,
	combout => \u_dp|c_reg[0]~17_combout\);

-- Location: FF_X29_Y6_N15
\u_dp|n_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_dp|n_reg~0_combout\,
	sload => VCC,
	ena => \u_dp|c_reg[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|n_reg\(3));

-- Location: LCCOMB_X33_Y6_N14
\u_dp|k_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|k_reg~5_combout\ = (\u_dp|c_reg[0]~16_combout\ & (!\rst_sync~q\ & (\u_dp|k_reg\(0) $ (\u_dp|k_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg[0]~16_combout\,
	datab => \rst_sync~q\,
	datac => \u_dp|k_reg\(0),
	datad => \u_dp|k_reg\(1),
	combout => \u_dp|k_reg~5_combout\);

-- Location: FF_X29_Y6_N27
\u_dp|k_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_dp|k_reg~5_combout\,
	sload => VCC,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|k_reg\(1));

-- Location: LCCOMB_X33_Y6_N22
\u_dp|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Add1~1_combout\ = \u_dp|k_reg\(2) $ (((\u_dp|k_reg\(0) & \u_dp|k_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|k_reg\(0),
	datac => \u_dp|k_reg\(2),
	datad => \u_dp|k_reg\(1),
	combout => \u_dp|Add1~1_combout\);

-- Location: LCCOMB_X29_Y6_N6
\u_dp|k_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|k_reg~3_combout\ = (\u_dp|Add1~1_combout\ & (!\rst_sync~q\ & \u_dp|c_reg[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~1_combout\,
	datab => \rst_sync~q\,
	datad => \u_dp|c_reg[0]~16_combout\,
	combout => \u_dp|k_reg~3_combout\);

-- Location: FF_X29_Y6_N7
\u_dp|k_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|k_reg~3_combout\,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|k_reg\(2));

-- Location: LCCOMB_X29_Y6_N10
\u_dp|n_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|n_reg~1_combout\ = (!\rst_sync~q\ & sw_sync(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_sync~q\,
	datad => sw_sync(2),
	combout => \u_dp|n_reg~1_combout\);

-- Location: FF_X29_Y6_N5
\u_dp|n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_dp|n_reg~1_combout\,
	sload => VCC,
	ena => \u_dp|c_reg[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|n_reg\(2));

-- Location: LCCOMB_X33_Y6_N8
\u_dp|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Add1~2_combout\ = \u_dp|k_reg\(3) $ (((\u_dp|k_reg\(2) & (\u_dp|k_reg\(0) & \u_dp|k_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(3),
	datab => \u_dp|k_reg\(2),
	datac => \u_dp|k_reg\(0),
	datad => \u_dp|k_reg\(1),
	combout => \u_dp|Add1~2_combout\);

-- Location: LCCOMB_X33_Y6_N18
\u_dp|k_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|k_reg~2_combout\ = (\u_dp|c_reg[0]~16_combout\ & (!\rst_sync~q\ & \u_dp|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg[0]~16_combout\,
	datab => \rst_sync~q\,
	datac => \u_dp|Add1~2_combout\,
	combout => \u_dp|k_reg~2_combout\);

-- Location: FF_X29_Y6_N13
\u_dp|k_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_dp|k_reg~2_combout\,
	sload => VCC,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|k_reg\(3));

-- Location: LCCOMB_X33_Y6_N4
\u_fsm|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fsm|Selector1~1_combout\ = (\u_dp|n_reg\(3) & ((\u_dp|k_reg\(2) $ (\u_dp|n_reg\(2))) # (!\u_dp|k_reg\(3)))) # (!\u_dp|n_reg\(3) & ((\u_dp|k_reg\(3)) # (\u_dp|k_reg\(2) $ (\u_dp|n_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|n_reg\(3),
	datab => \u_dp|k_reg\(2),
	datac => \u_dp|n_reg\(2),
	datad => \u_dp|k_reg\(3),
	combout => \u_fsm|Selector1~1_combout\);

-- Location: LCCOMB_X28_Y4_N6
\u_dp|n_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|n_reg~2_combout\ = (sw_sync(1) & !\rst_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sw_sync(1),
	datad => \rst_sync~q\,
	combout => \u_dp|n_reg~2_combout\);

-- Location: FF_X29_Y6_N25
\u_dp|n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_dp|n_reg~2_combout\,
	sload => VCC,
	ena => \u_dp|c_reg[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|n_reg\(1));

-- Location: LCCOMB_X28_Y6_N26
\u_dp|n_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|n_reg~3_combout\ = (!\rst_sync~q\ & sw_sync(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_sync~q\,
	datac => sw_sync(0),
	combout => \u_dp|n_reg~3_combout\);

-- Location: FF_X29_Y6_N1
\u_dp|n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_dp|n_reg~3_combout\,
	sload => VCC,
	ena => \u_dp|c_reg[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|n_reg\(0));

-- Location: LCCOMB_X33_Y6_N30
\u_fsm|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fsm|Selector1~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|n_reg\(1) $ (\u_dp|k_reg\(1))) # (!\u_dp|n_reg\(0)))) # (!\u_dp|k_reg\(0) & ((\u_dp|n_reg\(0)) # (\u_dp|n_reg\(1) $ (\u_dp|k_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|n_reg\(1),
	datac => \u_dp|n_reg\(0),
	datad => \u_dp|k_reg\(1),
	combout => \u_fsm|Selector1~0_combout\);

-- Location: LCCOMB_X33_Y6_N0
\u_fsm|state~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fsm|state~9_combout\ = (!\rst_sync~q\ & ((\u_fsm|Selector1~2_combout\) # (!\u_dp|c_reg[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_sync~q\,
	datac => \u_dp|c_reg[0]~16_combout\,
	datad => \u_fsm|Selector1~2_combout\,
	combout => \u_fsm|state~9_combout\);

-- Location: FF_X33_Y6_N1
\u_fsm|state.COMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_fsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fsm|state.COMP~q\);

-- Location: LCCOMB_X33_Y6_N10
\u_fsm|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fsm|Selector1~2_combout\ = (\u_fsm|state.COMP~q\ & ((\u_fsm|Selector1~1_combout\) # (\u_fsm|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_fsm|Selector1~1_combout\,
	datac => \u_fsm|Selector1~0_combout\,
	datad => \u_fsm|state.COMP~q\,
	combout => \u_fsm|Selector1~2_combout\);

-- Location: LCCOMB_X33_Y5_N6
\u_dp|timer_reg[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[0]~29_combout\ = \u_dp|timer_reg\(0) $ (VCC)
-- \u_dp|timer_reg[0]~30\ = CARRY(\u_dp|timer_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(0),
	datad => VCC,
	combout => \u_dp|timer_reg[0]~29_combout\,
	cout => \u_dp|timer_reg[0]~30\);

-- Location: LCCOMB_X33_Y6_N20
\u_dp|timer_reg[7]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[7]~84_combout\ = ((\rst_sync~q\) # (!\u_dp|c_reg[0]~16_combout\)) # (!\u_dp|c_reg[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|c_reg[0]~27_combout\,
	datac => \u_dp|c_reg[0]~16_combout\,
	datad => \rst_sync~q\,
	combout => \u_dp|timer_reg[7]~84_combout\);

-- Location: LCCOMB_X27_Y6_N18
\u_dp|timer_reg[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[7]~31_combout\ = (\rst_sync~q\) # ((!\u_dp|c_reg[0]~18_combout\ & ((\u_fsm|init~0_combout\) # (\u_fsm|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fsm|init~0_combout\,
	datab => \rst_sync~q\,
	datac => \u_dp|c_reg[0]~18_combout\,
	datad => \u_fsm|Selector1~2_combout\,
	combout => \u_dp|timer_reg[7]~31_combout\);

-- Location: FF_X33_Y5_N7
\u_dp|timer_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[0]~29_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(0));

-- Location: LCCOMB_X33_Y5_N8
\u_dp|timer_reg[1]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[1]~32_combout\ = (\u_dp|timer_reg\(1) & (!\u_dp|timer_reg[0]~30\)) # (!\u_dp|timer_reg\(1) & ((\u_dp|timer_reg[0]~30\) # (GND)))
-- \u_dp|timer_reg[1]~33\ = CARRY((!\u_dp|timer_reg[0]~30\) # (!\u_dp|timer_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(1),
	datad => VCC,
	cin => \u_dp|timer_reg[0]~30\,
	combout => \u_dp|timer_reg[1]~32_combout\,
	cout => \u_dp|timer_reg[1]~33\);

-- Location: FF_X33_Y5_N9
\u_dp|timer_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[1]~32_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(1));

-- Location: LCCOMB_X33_Y5_N10
\u_dp|timer_reg[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[2]~34_combout\ = (\u_dp|timer_reg\(2) & (\u_dp|timer_reg[1]~33\ $ (GND))) # (!\u_dp|timer_reg\(2) & (!\u_dp|timer_reg[1]~33\ & VCC))
-- \u_dp|timer_reg[2]~35\ = CARRY((\u_dp|timer_reg\(2) & !\u_dp|timer_reg[1]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(2),
	datad => VCC,
	cin => \u_dp|timer_reg[1]~33\,
	combout => \u_dp|timer_reg[2]~34_combout\,
	cout => \u_dp|timer_reg[2]~35\);

-- Location: FF_X33_Y5_N11
\u_dp|timer_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[2]~34_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(2));

-- Location: LCCOMB_X33_Y5_N12
\u_dp|timer_reg[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[3]~36_combout\ = (\u_dp|timer_reg\(3) & (!\u_dp|timer_reg[2]~35\)) # (!\u_dp|timer_reg\(3) & ((\u_dp|timer_reg[2]~35\) # (GND)))
-- \u_dp|timer_reg[3]~37\ = CARRY((!\u_dp|timer_reg[2]~35\) # (!\u_dp|timer_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(3),
	datad => VCC,
	cin => \u_dp|timer_reg[2]~35\,
	combout => \u_dp|timer_reg[3]~36_combout\,
	cout => \u_dp|timer_reg[3]~37\);

-- Location: FF_X33_Y5_N13
\u_dp|timer_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[3]~36_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(3));

-- Location: LCCOMB_X33_Y5_N0
\u_dp|c_reg[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~19_combout\ = (((!\u_dp|timer_reg\(0)) # (!\u_dp|timer_reg\(1))) # (!\u_dp|timer_reg\(3))) # (!\u_dp|timer_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(2),
	datab => \u_dp|timer_reg\(3),
	datac => \u_dp|timer_reg\(1),
	datad => \u_dp|timer_reg\(0),
	combout => \u_dp|c_reg[0]~19_combout\);

-- Location: LCCOMB_X33_Y5_N14
\u_dp|timer_reg[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[4]~38_combout\ = (\u_dp|timer_reg\(4) & (\u_dp|timer_reg[3]~37\ $ (GND))) # (!\u_dp|timer_reg\(4) & (!\u_dp|timer_reg[3]~37\ & VCC))
-- \u_dp|timer_reg[4]~39\ = CARRY((\u_dp|timer_reg\(4) & !\u_dp|timer_reg[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(4),
	datad => VCC,
	cin => \u_dp|timer_reg[3]~37\,
	combout => \u_dp|timer_reg[4]~38_combout\,
	cout => \u_dp|timer_reg[4]~39\);

-- Location: FF_X33_Y5_N15
\u_dp|timer_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[4]~38_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(4));

-- Location: LCCOMB_X33_Y5_N16
\u_dp|timer_reg[5]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[5]~40_combout\ = (\u_dp|timer_reg\(5) & (!\u_dp|timer_reg[4]~39\)) # (!\u_dp|timer_reg\(5) & ((\u_dp|timer_reg[4]~39\) # (GND)))
-- \u_dp|timer_reg[5]~41\ = CARRY((!\u_dp|timer_reg[4]~39\) # (!\u_dp|timer_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(5),
	datad => VCC,
	cin => \u_dp|timer_reg[4]~39\,
	combout => \u_dp|timer_reg[5]~40_combout\,
	cout => \u_dp|timer_reg[5]~41\);

-- Location: FF_X33_Y5_N17
\u_dp|timer_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[5]~40_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(5));

-- Location: LCCOMB_X33_Y5_N18
\u_dp|timer_reg[6]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[6]~42_combout\ = (\u_dp|timer_reg\(6) & (\u_dp|timer_reg[5]~41\ $ (GND))) # (!\u_dp|timer_reg\(6) & (!\u_dp|timer_reg[5]~41\ & VCC))
-- \u_dp|timer_reg[6]~43\ = CARRY((\u_dp|timer_reg\(6) & !\u_dp|timer_reg[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(6),
	datad => VCC,
	cin => \u_dp|timer_reg[5]~41\,
	combout => \u_dp|timer_reg[6]~42_combout\,
	cout => \u_dp|timer_reg[6]~43\);

-- Location: FF_X33_Y5_N19
\u_dp|timer_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[6]~42_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(6));

-- Location: LCCOMB_X33_Y5_N20
\u_dp|timer_reg[7]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[7]~44_combout\ = (\u_dp|timer_reg\(7) & (!\u_dp|timer_reg[6]~43\)) # (!\u_dp|timer_reg\(7) & ((\u_dp|timer_reg[6]~43\) # (GND)))
-- \u_dp|timer_reg[7]~45\ = CARRY((!\u_dp|timer_reg[6]~43\) # (!\u_dp|timer_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(7),
	datad => VCC,
	cin => \u_dp|timer_reg[6]~43\,
	combout => \u_dp|timer_reg[7]~44_combout\,
	cout => \u_dp|timer_reg[7]~45\);

-- Location: FF_X33_Y5_N21
\u_dp|timer_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[7]~44_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(7));

-- Location: LCCOMB_X33_Y5_N22
\u_dp|timer_reg[8]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[8]~46_combout\ = (\u_dp|timer_reg\(8) & (\u_dp|timer_reg[7]~45\ $ (GND))) # (!\u_dp|timer_reg\(8) & (!\u_dp|timer_reg[7]~45\ & VCC))
-- \u_dp|timer_reg[8]~47\ = CARRY((\u_dp|timer_reg\(8) & !\u_dp|timer_reg[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(8),
	datad => VCC,
	cin => \u_dp|timer_reg[7]~45\,
	combout => \u_dp|timer_reg[8]~46_combout\,
	cout => \u_dp|timer_reg[8]~47\);

-- Location: FF_X33_Y5_N23
\u_dp|timer_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[8]~46_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(8));

-- Location: LCCOMB_X33_Y5_N24
\u_dp|timer_reg[9]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[9]~48_combout\ = (\u_dp|timer_reg\(9) & (!\u_dp|timer_reg[8]~47\)) # (!\u_dp|timer_reg\(9) & ((\u_dp|timer_reg[8]~47\) # (GND)))
-- \u_dp|timer_reg[9]~49\ = CARRY((!\u_dp|timer_reg[8]~47\) # (!\u_dp|timer_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(9),
	datad => VCC,
	cin => \u_dp|timer_reg[8]~47\,
	combout => \u_dp|timer_reg[9]~48_combout\,
	cout => \u_dp|timer_reg[9]~49\);

-- Location: FF_X33_Y5_N25
\u_dp|timer_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[9]~48_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(9));

-- Location: LCCOMB_X33_Y5_N26
\u_dp|timer_reg[10]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[10]~50_combout\ = (\u_dp|timer_reg\(10) & (\u_dp|timer_reg[9]~49\ $ (GND))) # (!\u_dp|timer_reg\(10) & (!\u_dp|timer_reg[9]~49\ & VCC))
-- \u_dp|timer_reg[10]~51\ = CARRY((\u_dp|timer_reg\(10) & !\u_dp|timer_reg[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(10),
	datad => VCC,
	cin => \u_dp|timer_reg[9]~49\,
	combout => \u_dp|timer_reg[10]~50_combout\,
	cout => \u_dp|timer_reg[10]~51\);

-- Location: FF_X33_Y5_N27
\u_dp|timer_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[10]~50_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(10));

-- Location: LCCOMB_X33_Y5_N28
\u_dp|timer_reg[11]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[11]~52_combout\ = (\u_dp|timer_reg\(11) & (!\u_dp|timer_reg[10]~51\)) # (!\u_dp|timer_reg\(11) & ((\u_dp|timer_reg[10]~51\) # (GND)))
-- \u_dp|timer_reg[11]~53\ = CARRY((!\u_dp|timer_reg[10]~51\) # (!\u_dp|timer_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(11),
	datad => VCC,
	cin => \u_dp|timer_reg[10]~51\,
	combout => \u_dp|timer_reg[11]~52_combout\,
	cout => \u_dp|timer_reg[11]~53\);

-- Location: FF_X33_Y5_N29
\u_dp|timer_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[11]~52_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(11));

-- Location: LCCOMB_X33_Y5_N30
\u_dp|timer_reg[12]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[12]~54_combout\ = (\u_dp|timer_reg\(12) & (\u_dp|timer_reg[11]~53\ $ (GND))) # (!\u_dp|timer_reg\(12) & (!\u_dp|timer_reg[11]~53\ & VCC))
-- \u_dp|timer_reg[12]~55\ = CARRY((\u_dp|timer_reg\(12) & !\u_dp|timer_reg[11]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(12),
	datad => VCC,
	cin => \u_dp|timer_reg[11]~53\,
	combout => \u_dp|timer_reg[12]~54_combout\,
	cout => \u_dp|timer_reg[12]~55\);

-- Location: FF_X33_Y5_N31
\u_dp|timer_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[12]~54_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(12));

-- Location: LCCOMB_X33_Y4_N0
\u_dp|timer_reg[13]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[13]~56_combout\ = (\u_dp|timer_reg\(13) & (!\u_dp|timer_reg[12]~55\)) # (!\u_dp|timer_reg\(13) & ((\u_dp|timer_reg[12]~55\) # (GND)))
-- \u_dp|timer_reg[13]~57\ = CARRY((!\u_dp|timer_reg[12]~55\) # (!\u_dp|timer_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(13),
	datad => VCC,
	cin => \u_dp|timer_reg[12]~55\,
	combout => \u_dp|timer_reg[13]~56_combout\,
	cout => \u_dp|timer_reg[13]~57\);

-- Location: FF_X33_Y4_N1
\u_dp|timer_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[13]~56_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(13));

-- Location: LCCOMB_X33_Y4_N2
\u_dp|timer_reg[14]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[14]~58_combout\ = (\u_dp|timer_reg\(14) & (\u_dp|timer_reg[13]~57\ $ (GND))) # (!\u_dp|timer_reg\(14) & (!\u_dp|timer_reg[13]~57\ & VCC))
-- \u_dp|timer_reg[14]~59\ = CARRY((\u_dp|timer_reg\(14) & !\u_dp|timer_reg[13]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(14),
	datad => VCC,
	cin => \u_dp|timer_reg[13]~57\,
	combout => \u_dp|timer_reg[14]~58_combout\,
	cout => \u_dp|timer_reg[14]~59\);

-- Location: FF_X33_Y4_N3
\u_dp|timer_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[14]~58_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(14));

-- Location: LCCOMB_X33_Y4_N4
\u_dp|timer_reg[15]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[15]~60_combout\ = (\u_dp|timer_reg\(15) & (!\u_dp|timer_reg[14]~59\)) # (!\u_dp|timer_reg\(15) & ((\u_dp|timer_reg[14]~59\) # (GND)))
-- \u_dp|timer_reg[15]~61\ = CARRY((!\u_dp|timer_reg[14]~59\) # (!\u_dp|timer_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(15),
	datad => VCC,
	cin => \u_dp|timer_reg[14]~59\,
	combout => \u_dp|timer_reg[15]~60_combout\,
	cout => \u_dp|timer_reg[15]~61\);

-- Location: FF_X33_Y4_N5
\u_dp|timer_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[15]~60_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(15));

-- Location: LCCOMB_X33_Y4_N6
\u_dp|timer_reg[16]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[16]~62_combout\ = (\u_dp|timer_reg\(16) & (\u_dp|timer_reg[15]~61\ $ (GND))) # (!\u_dp|timer_reg\(16) & (!\u_dp|timer_reg[15]~61\ & VCC))
-- \u_dp|timer_reg[16]~63\ = CARRY((\u_dp|timer_reg\(16) & !\u_dp|timer_reg[15]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(16),
	datad => VCC,
	cin => \u_dp|timer_reg[15]~61\,
	combout => \u_dp|timer_reg[16]~62_combout\,
	cout => \u_dp|timer_reg[16]~63\);

-- Location: FF_X33_Y4_N7
\u_dp|timer_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[16]~62_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(16));

-- Location: LCCOMB_X33_Y4_N8
\u_dp|timer_reg[17]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[17]~64_combout\ = (\u_dp|timer_reg\(17) & (!\u_dp|timer_reg[16]~63\)) # (!\u_dp|timer_reg\(17) & ((\u_dp|timer_reg[16]~63\) # (GND)))
-- \u_dp|timer_reg[17]~65\ = CARRY((!\u_dp|timer_reg[16]~63\) # (!\u_dp|timer_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(17),
	datad => VCC,
	cin => \u_dp|timer_reg[16]~63\,
	combout => \u_dp|timer_reg[17]~64_combout\,
	cout => \u_dp|timer_reg[17]~65\);

-- Location: FF_X33_Y4_N9
\u_dp|timer_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[17]~64_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(17));

-- Location: LCCOMB_X33_Y4_N10
\u_dp|timer_reg[18]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[18]~66_combout\ = (\u_dp|timer_reg\(18) & (\u_dp|timer_reg[17]~65\ $ (GND))) # (!\u_dp|timer_reg\(18) & (!\u_dp|timer_reg[17]~65\ & VCC))
-- \u_dp|timer_reg[18]~67\ = CARRY((\u_dp|timer_reg\(18) & !\u_dp|timer_reg[17]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(18),
	datad => VCC,
	cin => \u_dp|timer_reg[17]~65\,
	combout => \u_dp|timer_reg[18]~66_combout\,
	cout => \u_dp|timer_reg[18]~67\);

-- Location: FF_X33_Y4_N11
\u_dp|timer_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[18]~66_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(18));

-- Location: LCCOMB_X33_Y4_N12
\u_dp|timer_reg[19]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[19]~68_combout\ = (\u_dp|timer_reg\(19) & (!\u_dp|timer_reg[18]~67\)) # (!\u_dp|timer_reg\(19) & ((\u_dp|timer_reg[18]~67\) # (GND)))
-- \u_dp|timer_reg[19]~69\ = CARRY((!\u_dp|timer_reg[18]~67\) # (!\u_dp|timer_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(19),
	datad => VCC,
	cin => \u_dp|timer_reg[18]~67\,
	combout => \u_dp|timer_reg[19]~68_combout\,
	cout => \u_dp|timer_reg[19]~69\);

-- Location: FF_X33_Y4_N13
\u_dp|timer_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[19]~68_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(19));

-- Location: LCCOMB_X33_Y4_N14
\u_dp|timer_reg[20]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[20]~70_combout\ = (\u_dp|timer_reg\(20) & (\u_dp|timer_reg[19]~69\ $ (GND))) # (!\u_dp|timer_reg\(20) & (!\u_dp|timer_reg[19]~69\ & VCC))
-- \u_dp|timer_reg[20]~71\ = CARRY((\u_dp|timer_reg\(20) & !\u_dp|timer_reg[19]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(20),
	datad => VCC,
	cin => \u_dp|timer_reg[19]~69\,
	combout => \u_dp|timer_reg[20]~70_combout\,
	cout => \u_dp|timer_reg[20]~71\);

-- Location: FF_X33_Y4_N15
\u_dp|timer_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[20]~70_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(20));

-- Location: LCCOMB_X33_Y4_N16
\u_dp|timer_reg[21]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[21]~72_combout\ = (\u_dp|timer_reg\(21) & (!\u_dp|timer_reg[20]~71\)) # (!\u_dp|timer_reg\(21) & ((\u_dp|timer_reg[20]~71\) # (GND)))
-- \u_dp|timer_reg[21]~73\ = CARRY((!\u_dp|timer_reg[20]~71\) # (!\u_dp|timer_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(21),
	datad => VCC,
	cin => \u_dp|timer_reg[20]~71\,
	combout => \u_dp|timer_reg[21]~72_combout\,
	cout => \u_dp|timer_reg[21]~73\);

-- Location: FF_X33_Y4_N17
\u_dp|timer_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[21]~72_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(21));

-- Location: LCCOMB_X33_Y4_N18
\u_dp|timer_reg[22]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[22]~74_combout\ = (\u_dp|timer_reg\(22) & (\u_dp|timer_reg[21]~73\ $ (GND))) # (!\u_dp|timer_reg\(22) & (!\u_dp|timer_reg[21]~73\ & VCC))
-- \u_dp|timer_reg[22]~75\ = CARRY((\u_dp|timer_reg\(22) & !\u_dp|timer_reg[21]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(22),
	datad => VCC,
	cin => \u_dp|timer_reg[21]~73\,
	combout => \u_dp|timer_reg[22]~74_combout\,
	cout => \u_dp|timer_reg[22]~75\);

-- Location: FF_X33_Y4_N19
\u_dp|timer_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[22]~74_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(22));

-- Location: LCCOMB_X33_Y4_N20
\u_dp|timer_reg[23]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[23]~76_combout\ = (\u_dp|timer_reg\(23) & (!\u_dp|timer_reg[22]~75\)) # (!\u_dp|timer_reg\(23) & ((\u_dp|timer_reg[22]~75\) # (GND)))
-- \u_dp|timer_reg[23]~77\ = CARRY((!\u_dp|timer_reg[22]~75\) # (!\u_dp|timer_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(23),
	datad => VCC,
	cin => \u_dp|timer_reg[22]~75\,
	combout => \u_dp|timer_reg[23]~76_combout\,
	cout => \u_dp|timer_reg[23]~77\);

-- Location: FF_X33_Y4_N21
\u_dp|timer_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[23]~76_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(23));

-- Location: LCCOMB_X33_Y4_N22
\u_dp|timer_reg[24]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[24]~78_combout\ = (\u_dp|timer_reg\(24) & (\u_dp|timer_reg[23]~77\ $ (GND))) # (!\u_dp|timer_reg\(24) & (!\u_dp|timer_reg[23]~77\ & VCC))
-- \u_dp|timer_reg[24]~79\ = CARRY((\u_dp|timer_reg\(24) & !\u_dp|timer_reg[23]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(24),
	datad => VCC,
	cin => \u_dp|timer_reg[23]~77\,
	combout => \u_dp|timer_reg[24]~78_combout\,
	cout => \u_dp|timer_reg[24]~79\);

-- Location: FF_X33_Y4_N23
\u_dp|timer_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[24]~78_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(24));

-- Location: LCCOMB_X33_Y4_N24
\u_dp|timer_reg[25]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[25]~80_combout\ = (\u_dp|timer_reg\(25) & (!\u_dp|timer_reg[24]~79\)) # (!\u_dp|timer_reg\(25) & ((\u_dp|timer_reg[24]~79\) # (GND)))
-- \u_dp|timer_reg[25]~81\ = CARRY((!\u_dp|timer_reg[24]~79\) # (!\u_dp|timer_reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|timer_reg\(25),
	datad => VCC,
	cin => \u_dp|timer_reg[24]~79\,
	combout => \u_dp|timer_reg[25]~80_combout\,
	cout => \u_dp|timer_reg[25]~81\);

-- Location: FF_X33_Y4_N25
\u_dp|timer_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[25]~80_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(25));

-- Location: LCCOMB_X33_Y4_N26
\u_dp|timer_reg[26]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|timer_reg[26]~82_combout\ = \u_dp|timer_reg\(26) $ (!\u_dp|timer_reg[25]~81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(26),
	cin => \u_dp|timer_reg[25]~81\,
	combout => \u_dp|timer_reg[26]~82_combout\);

-- Location: FF_X33_Y4_N27
\u_dp|timer_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|timer_reg[26]~82_combout\,
	sclr => \u_dp|timer_reg[7]~84_combout\,
	ena => \u_dp|timer_reg[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|timer_reg\(26));

-- Location: LCCOMB_X33_Y4_N30
\u_dp|c_reg[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~25_combout\ = (((!\u_dp|timer_reg\(21)) # (!\u_dp|timer_reg\(20))) # (!\u_dp|timer_reg\(23))) # (!\u_dp|timer_reg\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(22),
	datab => \u_dp|timer_reg\(23),
	datac => \u_dp|timer_reg\(20),
	datad => \u_dp|timer_reg\(21),
	combout => \u_dp|c_reg[0]~25_combout\);

-- Location: LCCOMB_X33_Y6_N26
\u_dp|c_reg[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~26_combout\ = ((\u_dp|timer_reg\(25)) # ((\u_dp|c_reg[0]~25_combout\) # (!\u_dp|timer_reg\(24)))) # (!\u_dp|timer_reg\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(26),
	datab => \u_dp|timer_reg\(25),
	datac => \u_dp|timer_reg\(24),
	datad => \u_dp|c_reg[0]~25_combout\,
	combout => \u_dp|c_reg[0]~26_combout\);

-- Location: LCCOMB_X33_Y5_N2
\u_dp|c_reg[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~20_combout\ = (((!\u_dp|timer_reg\(5)) # (!\u_dp|timer_reg\(4))) # (!\u_dp|timer_reg\(6))) # (!\u_dp|timer_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(7),
	datab => \u_dp|timer_reg\(6),
	datac => \u_dp|timer_reg\(4),
	datad => \u_dp|timer_reg\(5),
	combout => \u_dp|c_reg[0]~20_combout\);

-- Location: LCCOMB_X33_Y5_N4
\u_dp|c_reg[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~21_combout\ = (\u_dp|timer_reg\(10)) # ((\u_dp|timer_reg\(11)) # ((\u_dp|timer_reg\(8)) # (\u_dp|timer_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(10),
	datab => \u_dp|timer_reg\(11),
	datac => \u_dp|timer_reg\(8),
	datad => \u_dp|timer_reg\(9),
	combout => \u_dp|c_reg[0]~21_combout\);

-- Location: LCCOMB_X33_Y4_N28
\u_dp|c_reg[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~23_combout\ = ((\u_dp|timer_reg\(19)) # ((\u_dp|timer_reg\(17)) # (!\u_dp|timer_reg\(16)))) # (!\u_dp|timer_reg\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(18),
	datab => \u_dp|timer_reg\(19),
	datac => \u_dp|timer_reg\(17),
	datad => \u_dp|timer_reg\(16),
	combout => \u_dp|c_reg[0]~23_combout\);

-- Location: LCCOMB_X33_Y6_N6
\u_dp|c_reg[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~22_combout\ = (((\u_dp|timer_reg\(12)) # (!\u_dp|timer_reg\(15))) # (!\u_dp|timer_reg\(13))) # (!\u_dp|timer_reg\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|timer_reg\(14),
	datab => \u_dp|timer_reg\(13),
	datac => \u_dp|timer_reg\(12),
	datad => \u_dp|timer_reg\(15),
	combout => \u_dp|c_reg[0]~22_combout\);

-- Location: LCCOMB_X33_Y6_N12
\u_dp|c_reg[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~24_combout\ = (\u_dp|c_reg[0]~20_combout\) # ((\u_dp|c_reg[0]~21_combout\) # ((\u_dp|c_reg[0]~23_combout\) # (\u_dp|c_reg[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg[0]~20_combout\,
	datab => \u_dp|c_reg[0]~21_combout\,
	datac => \u_dp|c_reg[0]~23_combout\,
	datad => \u_dp|c_reg[0]~22_combout\,
	combout => \u_dp|c_reg[0]~24_combout\);

-- Location: LCCOMB_X33_Y6_N28
\u_dp|c_reg[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~27_combout\ = ((\u_dp|c_reg[0]~19_combout\) # ((\u_dp|c_reg[0]~26_combout\) # (\u_dp|c_reg[0]~24_combout\))) # (!\u_fsm|Selector1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fsm|Selector1~2_combout\,
	datab => \u_dp|c_reg[0]~19_combout\,
	datac => \u_dp|c_reg[0]~26_combout\,
	datad => \u_dp|c_reg[0]~24_combout\,
	combout => \u_dp|c_reg[0]~27_combout\);

-- Location: LCCOMB_X27_Y6_N22
\u_dp|c_reg[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg[0]~28_combout\ = (\rst_sync~q\) # ((!\u_dp|c_reg[0]~18_combout\ & ((\u_fsm|init~0_combout\) # (!\u_dp|c_reg[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fsm|init~0_combout\,
	datab => \rst_sync~q\,
	datac => \u_dp|c_reg[0]~18_combout\,
	datad => \u_dp|c_reg[0]~27_combout\,
	combout => \u_dp|c_reg[0]~28_combout\);

-- Location: FF_X29_Y6_N11
\u_dp|k_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_dp|k_reg~4_combout\,
	sload => VCC,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|k_reg\(0));

-- Location: LCCOMB_X33_Y6_N24
\u_dp|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Add1~0_combout\ = \u_dp|k_reg\(0) $ (\u_dp|k_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|k_reg\(0),
	datad => \u_dp|k_reg\(1),
	combout => \u_dp|Add1~0_combout\);

-- Location: LCCOMB_X29_Y6_N12
\u_dp|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Add0~0_combout\ = (\u_dp|k_reg\(0) & (\u_dp|n_reg\(0) $ (VCC))) # (!\u_dp|k_reg\(0) & ((\u_dp|n_reg\(0)) # (GND)))
-- \u_dp|Add0~1\ = CARRY((\u_dp|n_reg\(0)) # (!\u_dp|k_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|n_reg\(0),
	datad => VCC,
	combout => \u_dp|Add0~0_combout\,
	cout => \u_dp|Add0~1\);

-- Location: LCCOMB_X29_Y6_N14
\u_dp|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Add0~2_combout\ = (\u_dp|k_reg\(1) & ((\u_dp|n_reg\(1) & (!\u_dp|Add0~1\)) # (!\u_dp|n_reg\(1) & ((\u_dp|Add0~1\) # (GND))))) # (!\u_dp|k_reg\(1) & ((\u_dp|n_reg\(1) & (\u_dp|Add0~1\ & VCC)) # (!\u_dp|n_reg\(1) & (!\u_dp|Add0~1\))))
-- \u_dp|Add0~3\ = CARRY((\u_dp|k_reg\(1) & ((!\u_dp|Add0~1\) # (!\u_dp|n_reg\(1)))) # (!\u_dp|k_reg\(1) & (!\u_dp|n_reg\(1) & !\u_dp|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(1),
	datab => \u_dp|n_reg\(1),
	datad => VCC,
	cin => \u_dp|Add0~1\,
	combout => \u_dp|Add0~2_combout\,
	cout => \u_dp|Add0~3\);

-- Location: LCCOMB_X29_Y6_N16
\u_dp|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Add0~4_combout\ = ((\u_dp|k_reg\(2) $ (\u_dp|n_reg\(2) $ (\u_dp|Add0~3\)))) # (GND)
-- \u_dp|Add0~5\ = CARRY((\u_dp|k_reg\(2) & (\u_dp|n_reg\(2) & !\u_dp|Add0~3\)) # (!\u_dp|k_reg\(2) & ((\u_dp|n_reg\(2)) # (!\u_dp|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(2),
	datab => \u_dp|n_reg\(2),
	datad => VCC,
	cin => \u_dp|Add0~3\,
	combout => \u_dp|Add0~4_combout\,
	cout => \u_dp|Add0~5\);

-- Location: LCCOMB_X29_Y6_N18
\u_dp|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Add0~6_combout\ = \u_dp|k_reg\(3) $ (\u_dp|Add0~5\ $ (!\u_dp|n_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(3),
	datad => \u_dp|n_reg\(3),
	cin => \u_dp|Add0~5\,
	combout => \u_dp|Add0~6_combout\);

-- Location: LCCOMB_X29_Y6_N28
\u_dp|Mult0|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le5a\(0) = (\u_dp|c_reg\(0) & ((\u_dp|Add0~6_combout\) # ((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(0),
	datab => \u_dp|Add0~6_combout\,
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X28_Y6_N12
\u_dp|Mult0|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le5a\(1) = (\u_dp|c_reg\(1) & ((\u_dp|Add0~6_combout\) # ((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(1),
	datab => \u_dp|Add0~6_combout\,
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X29_Y6_N0
\u_dp|Mult0|auto_generated|le4a[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(9) = \u_dp|Add0~6_combout\ $ (((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add0~2_combout\,
	datab => \u_dp|Add0~6_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le4a\(9));

-- Location: LCCOMB_X28_Y6_N24
\u_dp|Mult0|auto_generated|le4a[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(8) = (\u_dp|c_reg\(7) & (\u_dp|Add0~6_combout\ & (\u_dp|Add0~2_combout\ $ (\u_dp|Add0~4_combout\)))) # (!\u_dp|c_reg\(7) & (\u_dp|Add0~6_combout\ $ (((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(7),
	datab => \u_dp|Add0~6_combout\,
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le4a\(8));

-- Location: LCCOMB_X28_Y6_N8
\u_dp|c_reg~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg~35_combout\ = (!\rst_sync~q\ & (\u_dp|c_reg[0]~16_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_sync~q\,
	datac => \u_dp|c_reg[0]~16_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	combout => \u_dp|c_reg~35_combout\);

-- Location: FF_X28_Y6_N9
\u_dp|c_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|c_reg~35_combout\,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|c_reg\(6));

-- Location: LCCOMB_X28_Y6_N22
\u_dp|Mult0|auto_generated|le5a[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le5a\(6) = (\u_dp|c_reg\(6) & ((\u_dp|Add0~6_combout\) # ((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(6),
	datab => \u_dp|Add0~6_combout\,
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le5a\(6));

-- Location: LCCOMB_X30_Y6_N30
\u_dp|Mult0|auto_generated|le5a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le5a\(5) = (\u_dp|c_reg\(5) & ((\u_dp|Add0~6_combout\) # ((\u_dp|Add0~4_combout\ & \u_dp|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add0~4_combout\,
	datab => \u_dp|c_reg\(5),
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~6_combout\,
	combout => \u_dp|Mult0|auto_generated|le5a\(5));

-- Location: LCCOMB_X29_Y6_N4
\u_dp|Mult0|auto_generated|cs2a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ = \u_dp|Add0~2_combout\ $ (\u_dp|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X29_Y6_N30
\u_dp|Mult0|auto_generated|le4a[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(7) = (\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\u_dp|c_reg\(7) $ (\u_dp|Mult0|auto_generated|le4a\(9))))) # (!\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\u_dp|c_reg\(6) & 
-- ((\u_dp|Mult0|auto_generated|le4a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(6),
	datab => \u_dp|c_reg\(7),
	datac => \u_dp|Mult0|auto_generated|le4a\(9),
	datad => \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \u_dp|Mult0|auto_generated|le4a\(7));

-- Location: LCCOMB_X29_Y6_N26
\u_dp|Mult0|auto_generated|le3a[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(8) = (\u_dp|Add0~2_combout\ & ((\u_dp|Add0~0_combout\) # (!\u_dp|c_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(7),
	datab => \u_dp|Add0~0_combout\,
	datad => \u_dp|Add0~2_combout\,
	combout => \u_dp|Mult0|auto_generated|le3a\(8));

-- Location: LCCOMB_X29_Y6_N22
\u_dp|Mult0|auto_generated|le4a[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(6) = (\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & (\u_dp|c_reg\(6) $ (((\u_dp|Mult0|auto_generated|le4a\(9)))))) # (!\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\u_dp|c_reg\(5) & 
-- \u_dp|Mult0|auto_generated|le4a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(6),
	datab => \u_dp|c_reg\(5),
	datac => \u_dp|Mult0|auto_generated|le4a\(9),
	datad => \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \u_dp|Mult0|auto_generated|le4a\(6));

-- Location: LCCOMB_X30_Y6_N12
\u_dp|Mult0|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~12_combout\ = ((\u_dp|Mult0|auto_generated|le3a\(8) $ (\u_dp|Mult0|auto_generated|le4a\(6) $ (!\u_dp|Mult0|auto_generated|op_1~11\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_1~13\ = CARRY((\u_dp|Mult0|auto_generated|le3a\(8) & ((\u_dp|Mult0|auto_generated|le4a\(6)) # (!\u_dp|Mult0|auto_generated|op_1~11\))) # (!\u_dp|Mult0|auto_generated|le3a\(8) & (\u_dp|Mult0|auto_generated|le4a\(6) & 
-- !\u_dp|Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le3a\(8),
	datab => \u_dp|Mult0|auto_generated|le4a\(6),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_1~11\,
	combout => \u_dp|Mult0|auto_generated|op_1~12_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X28_Y6_N14
\u_dp|Mult0|auto_generated|le5a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le5a\(4) = (\u_dp|c_reg\(4) & ((\u_dp|Add0~6_combout\) # ((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add0~6_combout\,
	datab => \u_dp|c_reg\(4),
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X28_Y6_N2
\u_dp|Mult0|auto_generated|le3a[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(7) = (\u_dp|Add0~0_combout\ & (\u_dp|c_reg\(7) $ (((\u_dp|Add0~2_combout\))))) # (!\u_dp|Add0~0_combout\ & (((!\u_dp|c_reg\(6) & \u_dp|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(7),
	datab => \u_dp|c_reg\(6),
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~0_combout\,
	combout => \u_dp|Mult0|auto_generated|le3a\(7));

-- Location: LCCOMB_X29_Y6_N2
\u_dp|Mult0|auto_generated|le3a[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(6) = (\u_dp|Add0~0_combout\ & (\u_dp|Add0~2_combout\ $ (((\u_dp|c_reg\(6)))))) # (!\u_dp|Add0~0_combout\ & (\u_dp|Add0~2_combout\ & (!\u_dp|c_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add0~2_combout\,
	datab => \u_dp|c_reg\(5),
	datac => \u_dp|Add0~0_combout\,
	datad => \u_dp|c_reg\(6),
	combout => \u_dp|Mult0|auto_generated|le3a\(6));

-- Location: LCCOMB_X27_Y6_N20
\u_dp|Mult0|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le5a\(3) = (\u_dp|c_reg\(3) & ((\u_dp|Add0~6_combout\) # ((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(3),
	datab => \u_dp|Add0~2_combout\,
	datac => \u_dp|Add0~6_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X29_Y6_N20
\u_dp|Mult0|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le5a\(2) = (\u_dp|c_reg\(2) & ((\u_dp|Add0~6_combout\) # ((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(2),
	datab => \u_dp|Add0~6_combout\,
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X30_Y6_N20
\u_dp|Mult0|auto_generated|le3a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(3) = (\u_dp|Add0~0_combout\ & (\u_dp|c_reg\(3) $ (((\u_dp|Add0~2_combout\))))) # (!\u_dp|Add0~0_combout\ & (((!\u_dp|c_reg\(2) & \u_dp|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add0~0_combout\,
	datab => \u_dp|c_reg\(3),
	datac => \u_dp|c_reg\(2),
	datad => \u_dp|Add0~2_combout\,
	combout => \u_dp|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X30_Y6_N26
\u_dp|Mult0|auto_generated|le3a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(2) = (\u_dp|Add0~0_combout\ & (\u_dp|c_reg\(2) $ (((\u_dp|Add0~2_combout\))))) # (!\u_dp|Add0~0_combout\ & (((!\u_dp|c_reg\(1) & \u_dp|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add0~0_combout\,
	datab => \u_dp|c_reg\(2),
	datac => \u_dp|c_reg\(1),
	datad => \u_dp|Add0~2_combout\,
	combout => \u_dp|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X30_Y6_N0
\u_dp|Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~0_combout\ = (\u_dp|Mult0|auto_generated|le4a\(9) & (\u_dp|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\u_dp|Mult0|auto_generated|le4a\(9) & (\u_dp|Mult0|auto_generated|le3a\(2) & VCC))
-- \u_dp|Mult0|auto_generated|op_1~1\ = CARRY((\u_dp|Mult0|auto_generated|le4a\(9) & \u_dp|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le4a\(9),
	datab => \u_dp|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \u_dp|Mult0|auto_generated|op_1~0_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X30_Y6_N2
\u_dp|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~2_combout\ = (\u_dp|Mult0|auto_generated|le3a\(3) & (!\u_dp|Mult0|auto_generated|op_1~1\)) # (!\u_dp|Mult0|auto_generated|le3a\(3) & ((\u_dp|Mult0|auto_generated|op_1~1\) # (GND)))
-- \u_dp|Mult0|auto_generated|op_1~3\ = CARRY((!\u_dp|Mult0|auto_generated|op_1~1\) # (!\u_dp|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_1~1\,
	combout => \u_dp|Mult0|auto_generated|op_1~2_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X28_Y6_N16
\u_dp|Mult0|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(1) = (\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\u_dp|Mult0|auto_generated|le4a\(9) $ (\u_dp|c_reg\(1))))) # (!\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\u_dp|c_reg\(0) & 
-- (\u_dp|Mult0|auto_generated|le4a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(0),
	datab => \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \u_dp|Mult0|auto_generated|le4a\(9),
	datad => \u_dp|c_reg\(1),
	combout => \u_dp|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X28_Y6_N30
\u_dp|Mult0|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(0) = \u_dp|Add0~6_combout\ $ (((\u_dp|c_reg\(0) & ((\u_dp|Add0~2_combout\) # (\u_dp|Add0~4_combout\))) # (!\u_dp|c_reg\(0) & (\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(0),
	datab => \u_dp|Add0~6_combout\,
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X28_Y6_N28
\u_dp|Mult0|auto_generated|le3a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(1) = (\u_dp|Add0~0_combout\ & ((\u_dp|c_reg\(1) $ (\u_dp|Add0~2_combout\)))) # (!\u_dp|Add0~0_combout\ & (!\u_dp|c_reg\(0) & ((\u_dp|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(0),
	datab => \u_dp|c_reg\(1),
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~0_combout\,
	combout => \u_dp|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X29_Y6_N24
\u_dp|Mult0|auto_generated|le3a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(0) = \u_dp|Add0~2_combout\ $ (((\u_dp|c_reg\(0) & \u_dp|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(0),
	datab => \u_dp|Add0~0_combout\,
	datad => \u_dp|Add0~2_combout\,
	combout => \u_dp|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X31_Y6_N2
\u_dp|Mult0|auto_generated|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~0_combout\ = (\u_dp|Mult0|auto_generated|le3a\(0) & (\u_dp|Add0~2_combout\ $ (VCC))) # (!\u_dp|Mult0|auto_generated|le3a\(0) & (\u_dp|Add0~2_combout\ & VCC))
-- \u_dp|Mult0|auto_generated|op_3~1\ = CARRY((\u_dp|Mult0|auto_generated|le3a\(0) & \u_dp|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le3a\(0),
	datab => \u_dp|Add0~2_combout\,
	datad => VCC,
	combout => \u_dp|Mult0|auto_generated|op_3~0_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X31_Y6_N4
\u_dp|Mult0|auto_generated|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~2_combout\ = (\u_dp|Mult0|auto_generated|le3a\(1) & (!\u_dp|Mult0|auto_generated|op_3~1\)) # (!\u_dp|Mult0|auto_generated|le3a\(1) & ((\u_dp|Mult0|auto_generated|op_3~1\) # (GND)))
-- \u_dp|Mult0|auto_generated|op_3~3\ = CARRY((!\u_dp|Mult0|auto_generated|op_3~1\) # (!\u_dp|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~1\,
	combout => \u_dp|Mult0|auto_generated|op_3~2_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X31_Y6_N6
\u_dp|Mult0|auto_generated|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~4_combout\ = ((\u_dp|Mult0|auto_generated|op_1~0_combout\ $ (\u_dp|Mult0|auto_generated|le4a\(0) $ (!\u_dp|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_3~5\ = CARRY((\u_dp|Mult0|auto_generated|op_1~0_combout\ & ((\u_dp|Mult0|auto_generated|le4a\(0)) # (!\u_dp|Mult0|auto_generated|op_3~3\))) # (!\u_dp|Mult0|auto_generated|op_1~0_combout\ & (\u_dp|Mult0|auto_generated|le4a\(0) 
-- & !\u_dp|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_1~0_combout\,
	datab => \u_dp|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~3\,
	combout => \u_dp|Mult0|auto_generated|op_3~4_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X31_Y6_N8
\u_dp|Mult0|auto_generated|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~6_combout\ = (\u_dp|Mult0|auto_generated|op_1~2_combout\ & ((\u_dp|Mult0|auto_generated|le4a\(1) & (\u_dp|Mult0|auto_generated|op_3~5\ & VCC)) # (!\u_dp|Mult0|auto_generated|le4a\(1) & 
-- (!\u_dp|Mult0|auto_generated|op_3~5\)))) # (!\u_dp|Mult0|auto_generated|op_1~2_combout\ & ((\u_dp|Mult0|auto_generated|le4a\(1) & (!\u_dp|Mult0|auto_generated|op_3~5\)) # (!\u_dp|Mult0|auto_generated|le4a\(1) & ((\u_dp|Mult0|auto_generated|op_3~5\) # 
-- (GND)))))
-- \u_dp|Mult0|auto_generated|op_3~7\ = CARRY((\u_dp|Mult0|auto_generated|op_1~2_combout\ & (!\u_dp|Mult0|auto_generated|le4a\(1) & !\u_dp|Mult0|auto_generated|op_3~5\)) # (!\u_dp|Mult0|auto_generated|op_1~2_combout\ & ((!\u_dp|Mult0|auto_generated|op_3~5\) 
-- # (!\u_dp|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_1~2_combout\,
	datab => \u_dp|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~5\,
	combout => \u_dp|Mult0|auto_generated|op_3~6_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X31_Y6_N10
\u_dp|Mult0|auto_generated|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~8_combout\ = ((\u_dp|Mult0|auto_generated|le5a\(0) $ (\u_dp|Mult0|auto_generated|op_1~4_combout\ $ (!\u_dp|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_3~9\ = CARRY((\u_dp|Mult0|auto_generated|le5a\(0) & ((\u_dp|Mult0|auto_generated|op_1~4_combout\) # (!\u_dp|Mult0|auto_generated|op_3~7\))) # (!\u_dp|Mult0|auto_generated|le5a\(0) & (\u_dp|Mult0|auto_generated|op_1~4_combout\ 
-- & !\u_dp|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le5a\(0),
	datab => \u_dp|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~7\,
	combout => \u_dp|Mult0|auto_generated|op_3~8_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X31_Y6_N12
\u_dp|Mult0|auto_generated|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~10_combout\ = (\u_dp|Mult0|auto_generated|le5a\(1) & ((\u_dp|Mult0|auto_generated|op_1~6_combout\ & (\u_dp|Mult0|auto_generated|op_3~9\ & VCC)) # (!\u_dp|Mult0|auto_generated|op_1~6_combout\ & 
-- (!\u_dp|Mult0|auto_generated|op_3~9\)))) # (!\u_dp|Mult0|auto_generated|le5a\(1) & ((\u_dp|Mult0|auto_generated|op_1~6_combout\ & (!\u_dp|Mult0|auto_generated|op_3~9\)) # (!\u_dp|Mult0|auto_generated|op_1~6_combout\ & ((\u_dp|Mult0|auto_generated|op_3~9\) 
-- # (GND)))))
-- \u_dp|Mult0|auto_generated|op_3~11\ = CARRY((\u_dp|Mult0|auto_generated|le5a\(1) & (!\u_dp|Mult0|auto_generated|op_1~6_combout\ & !\u_dp|Mult0|auto_generated|op_3~9\)) # (!\u_dp|Mult0|auto_generated|le5a\(1) & ((!\u_dp|Mult0|auto_generated|op_3~9\) # 
-- (!\u_dp|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le5a\(1),
	datab => \u_dp|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~9\,
	combout => \u_dp|Mult0|auto_generated|op_3~10_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X31_Y6_N14
\u_dp|Mult0|auto_generated|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~12_combout\ = ((\u_dp|Mult0|auto_generated|op_1~8_combout\ $ (\u_dp|Mult0|auto_generated|le5a\(2) $ (!\u_dp|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_3~13\ = CARRY((\u_dp|Mult0|auto_generated|op_1~8_combout\ & ((\u_dp|Mult0|auto_generated|le5a\(2)) # (!\u_dp|Mult0|auto_generated|op_3~11\))) # (!\u_dp|Mult0|auto_generated|op_1~8_combout\ & 
-- (\u_dp|Mult0|auto_generated|le5a\(2) & !\u_dp|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_1~8_combout\,
	datab => \u_dp|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~11\,
	combout => \u_dp|Mult0|auto_generated|op_3~12_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X31_Y8_N0
\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|Mult0|auto_generated|op_3~12_combout\) # (GND))) # (!\u_dp|k_reg\(0) & (\u_dp|Mult0|auto_generated|op_3~12_combout\ $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~12_combout\,
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X30_Y8_N26
\u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & ((\u_dp|Mult0|auto_generated|op_3~12_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u_dp|Mult0|auto_generated|op_3~12_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X30_Y8_N8
\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|Mult0|auto_generated|op_3~10_combout\) # (GND))) # (!\u_dp|k_reg\(0) & (\u_dp|Mult0|auto_generated|op_3~10_combout\ $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~10_combout\,
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X30_Y8_N10
\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ & ((\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\u_dp|Add1~0_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ & ((\u_dp|Add1~0_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ & (\u_dp|Add1~0_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ & ((\u_dp|Add1~0_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \u_dp|Add1~0_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X30_Y8_N28
\u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X29_Y7_N12
\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|Mult0|auto_generated|op_3~8_combout\) # (GND))) # (!\u_dp|k_reg\(0) & (\u_dp|Mult0|auto_generated|op_3~8_combout\ $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~8_combout\,
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

-- Location: LCCOMB_X29_Y7_N14
\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND))))) # (!\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\u_dp|Add1~0_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\))) # 
-- (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~0_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X29_Y7_N16
\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = ((\u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ $ (\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))) # 
-- (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\) # (!\u_dp|Add1~1_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\u_dp|Add1~1_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \u_dp|Add1~1_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X29_Y7_N0
\u_dp|Div0|auto_generated|divider|divider|StageOut[43]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[43]~80_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\)) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[43]~80_combout\);

-- Location: LCCOMB_X30_Y7_N0
\u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\);

-- Location: LCCOMB_X30_Y7_N18
\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|Mult0|auto_generated|op_3~6_combout\) # (GND))) # (!\u_dp|k_reg\(0) & (\u_dp|Mult0|auto_generated|op_3~6_combout\ $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~6_combout\,
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\);

-- Location: LCCOMB_X30_Y7_N20
\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ = (\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # (GND))))) # (!\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ = CARRY((\u_dp|Add1~0_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\))) # 
-- (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~0_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\);

-- Location: LCCOMB_X30_Y7_N22
\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ = ((\u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ $ (\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))) # 
-- (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\) # (!\u_dp|Add1~1_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ & (!\u_dp|Add1~1_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\,
	datab => \u_dp|Add1~1_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\);

-- Location: LCCOMB_X30_Y7_N24
\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ = (\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # (GND))))) # (!\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ = CARRY((\u_dp|Add1~2_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\))) # 
-- (!\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~2_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\);

-- Location: LCCOMB_X30_Y7_N16
\u_dp|Div0|auto_generated|divider|divider|StageOut[43]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[43]~66_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[43]~66_combout\);

-- Location: LCCOMB_X30_Y7_N14
\u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\);

-- Location: LCCOMB_X30_Y7_N30
\u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & ((\u_dp|Mult0|auto_generated|op_3~6_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	datac => \u_dp|Mult0|auto_generated|op_3~6_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\);

-- Location: LCCOMB_X30_Y7_N2
\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|Mult0|auto_generated|op_3~4_combout\) # (GND))) # (!\u_dp|k_reg\(0) & (\u_dp|Mult0|auto_generated|op_3~4_combout\ $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~4_combout\,
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\);

-- Location: LCCOMB_X30_Y7_N4
\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (\u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\ & ((\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # 
-- (!\u_dp|Add1~0_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ & VCC)))) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\ & ((\u_dp|Add1~0_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # (GND))) # (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\ & (\u_dp|Add1~0_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\ & ((\u_dp|Add1~0_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\,
	datab => \u_dp|Add1~0_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

-- Location: LCCOMB_X30_Y7_N6
\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = ((\u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\ $ (\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))) # 
-- (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\) # (!\u_dp|Add1~1_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\ & (!\u_dp|Add1~1_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\,
	datab => \u_dp|Add1~1_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

-- Location: LCCOMB_X30_Y7_N8
\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # (GND))))) # (!\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((\u_dp|Add1~2_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\))) # 
-- (!\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~2_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[42]~67_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

-- Location: LCCOMB_X30_Y7_N10
\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[43]~80_combout\) # ((\u_dp|Div0|auto_generated|divider|divider|StageOut[43]~66_combout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[43]~80_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[43]~66_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\);

-- Location: LCCOMB_X30_Y7_N12
\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\);

-- Location: LCCOMB_X29_Y7_N28
\u_dp|c_reg~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg~31_combout\ = (!\rst_sync~q\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & \u_dp|c_reg[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_sync~q\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datad => \u_dp|c_reg[0]~16_combout\,
	combout => \u_dp|c_reg~31_combout\);

-- Location: FF_X29_Y7_N29
\u_dp|c_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|c_reg~31_combout\,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|c_reg\(2));

-- Location: LCCOMB_X30_Y6_N28
\u_dp|Mult0|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(3) = (\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\u_dp|c_reg\(3) $ (\u_dp|Mult0|auto_generated|le4a\(9))))) # (!\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\u_dp|c_reg\(2) & 
-- ((\u_dp|Mult0|auto_generated|le4a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(2),
	datab => \u_dp|c_reg\(3),
	datac => \u_dp|Mult0|auto_generated|le4a\(9),
	datad => \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \u_dp|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X30_Y6_N24
\u_dp|Mult0|auto_generated|le3a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(4) = (\u_dp|Add0~0_combout\ & (\u_dp|c_reg\(4) $ (((\u_dp|Add0~2_combout\))))) # (!\u_dp|Add0~0_combout\ & (((!\u_dp|c_reg\(3) & \u_dp|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add0~0_combout\,
	datab => \u_dp|c_reg\(4),
	datac => \u_dp|c_reg\(3),
	datad => \u_dp|Add0~2_combout\,
	combout => \u_dp|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X30_Y6_N4
\u_dp|Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~4_combout\ = ((\u_dp|Mult0|auto_generated|le4a\(2) $ (\u_dp|Mult0|auto_generated|le3a\(4) $ (!\u_dp|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_1~5\ = CARRY((\u_dp|Mult0|auto_generated|le4a\(2) & ((\u_dp|Mult0|auto_generated|le3a\(4)) # (!\u_dp|Mult0|auto_generated|op_1~3\))) # (!\u_dp|Mult0|auto_generated|le4a\(2) & (\u_dp|Mult0|auto_generated|le3a\(4) & 
-- !\u_dp|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le4a\(2),
	datab => \u_dp|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_1~3\,
	combout => \u_dp|Mult0|auto_generated|op_1~4_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X30_Y6_N6
\u_dp|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~6_combout\ = (\u_dp|Mult0|auto_generated|le3a\(5) & ((\u_dp|Mult0|auto_generated|le4a\(3) & (\u_dp|Mult0|auto_generated|op_1~5\ & VCC)) # (!\u_dp|Mult0|auto_generated|le4a\(3) & (!\u_dp|Mult0|auto_generated|op_1~5\)))) # 
-- (!\u_dp|Mult0|auto_generated|le3a\(5) & ((\u_dp|Mult0|auto_generated|le4a\(3) & (!\u_dp|Mult0|auto_generated|op_1~5\)) # (!\u_dp|Mult0|auto_generated|le4a\(3) & ((\u_dp|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \u_dp|Mult0|auto_generated|op_1~7\ = CARRY((\u_dp|Mult0|auto_generated|le3a\(5) & (!\u_dp|Mult0|auto_generated|le4a\(3) & !\u_dp|Mult0|auto_generated|op_1~5\)) # (!\u_dp|Mult0|auto_generated|le3a\(5) & ((!\u_dp|Mult0|auto_generated|op_1~5\) # 
-- (!\u_dp|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le3a\(5),
	datab => \u_dp|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_1~5\,
	combout => \u_dp|Mult0|auto_generated|op_1~6_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X30_Y6_N8
\u_dp|Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~8_combout\ = ((\u_dp|Mult0|auto_generated|le3a\(6) $ (\u_dp|Mult0|auto_generated|le4a\(4) $ (!\u_dp|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_1~9\ = CARRY((\u_dp|Mult0|auto_generated|le3a\(6) & ((\u_dp|Mult0|auto_generated|le4a\(4)) # (!\u_dp|Mult0|auto_generated|op_1~7\))) # (!\u_dp|Mult0|auto_generated|le3a\(6) & (\u_dp|Mult0|auto_generated|le4a\(4) & 
-- !\u_dp|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le3a\(6),
	datab => \u_dp|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_1~7\,
	combout => \u_dp|Mult0|auto_generated|op_1~8_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X31_Y6_N16
\u_dp|Mult0|auto_generated|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~14_combout\ = (\u_dp|Mult0|auto_generated|op_1~10_combout\ & ((\u_dp|Mult0|auto_generated|le5a\(3) & (\u_dp|Mult0|auto_generated|op_3~13\ & VCC)) # (!\u_dp|Mult0|auto_generated|le5a\(3) & 
-- (!\u_dp|Mult0|auto_generated|op_3~13\)))) # (!\u_dp|Mult0|auto_generated|op_1~10_combout\ & ((\u_dp|Mult0|auto_generated|le5a\(3) & (!\u_dp|Mult0|auto_generated|op_3~13\)) # (!\u_dp|Mult0|auto_generated|le5a\(3) & ((\u_dp|Mult0|auto_generated|op_3~13\) # 
-- (GND)))))
-- \u_dp|Mult0|auto_generated|op_3~15\ = CARRY((\u_dp|Mult0|auto_generated|op_1~10_combout\ & (!\u_dp|Mult0|auto_generated|le5a\(3) & !\u_dp|Mult0|auto_generated|op_3~13\)) # (!\u_dp|Mult0|auto_generated|op_1~10_combout\ & 
-- ((!\u_dp|Mult0|auto_generated|op_3~13\) # (!\u_dp|Mult0|auto_generated|le5a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_1~10_combout\,
	datab => \u_dp|Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~13\,
	combout => \u_dp|Mult0|auto_generated|op_3~14_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~15\);

-- Location: LCCOMB_X31_Y8_N18
\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|Mult0|auto_generated|op_3~14_combout\) # (GND))) # (!\u_dp|k_reg\(0) & (\u_dp|Mult0|auto_generated|op_3~14_combout\ $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~14_combout\,
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X31_Y8_N12
\u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u_dp|Mult0|auto_generated|op_3~14_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \u_dp|Mult0|auto_generated|op_3~14_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X31_Y8_N2
\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ & ((\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\u_dp|Add1~0_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ & ((\u_dp|Add1~0_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ & (\u_dp|Add1~0_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ & ((\u_dp|Add1~0_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \u_dp|Add1~0_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X30_Y8_N24
\u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X30_Y8_N12
\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # 
-- (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\u_dp|Add1~1_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # 
-- (!\u_dp|Add1~1_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~1_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X29_Y7_N10
\u_dp|Div0|auto_generated|divider|divider|StageOut[38]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[38]~79_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\)) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[38]~79_combout\);

-- Location: LCCOMB_X29_Y7_N8
\u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X29_Y7_N18
\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND))))) # (!\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((\u_dp|Add1~2_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\))) # 
-- (!\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~2_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X29_Y7_N4
\u_dp|Div0|auto_generated|divider|divider|StageOut[38]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\ = (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\);

-- Location: LCCOMB_X30_Y7_N26
\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[38]~79_combout\) # ((\u_dp|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[38]~79_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\);

-- Location: LCCOMB_X30_Y7_N28
\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\);

-- Location: LCCOMB_X27_Y6_N6
\u_dp|c_reg~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg~32_combout\ = (\u_dp|c_reg[0]~16_combout\ & (!\rst_sync~q\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg[0]~16_combout\,
	datab => \rst_sync~q\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	combout => \u_dp|c_reg~32_combout\);

-- Location: FF_X27_Y6_N7
\u_dp|c_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|c_reg~32_combout\,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|c_reg\(3));

-- Location: LCCOMB_X27_Y6_N2
\u_dp|Mult0|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(4) = (\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\u_dp|c_reg\(4) $ (\u_dp|Mult0|auto_generated|le4a\(9))))) # (!\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\u_dp|c_reg\(3) & 
-- ((\u_dp|Mult0|auto_generated|le4a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(3),
	datab => \u_dp|c_reg\(4),
	datac => \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \u_dp|Mult0|auto_generated|le4a\(9),
	combout => \u_dp|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X30_Y6_N10
\u_dp|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~10_combout\ = (\u_dp|Mult0|auto_generated|le4a\(5) & ((\u_dp|Mult0|auto_generated|le3a\(7) & (\u_dp|Mult0|auto_generated|op_1~9\ & VCC)) # (!\u_dp|Mult0|auto_generated|le3a\(7) & (!\u_dp|Mult0|auto_generated|op_1~9\)))) # 
-- (!\u_dp|Mult0|auto_generated|le4a\(5) & ((\u_dp|Mult0|auto_generated|le3a\(7) & (!\u_dp|Mult0|auto_generated|op_1~9\)) # (!\u_dp|Mult0|auto_generated|le3a\(7) & ((\u_dp|Mult0|auto_generated|op_1~9\) # (GND)))))
-- \u_dp|Mult0|auto_generated|op_1~11\ = CARRY((\u_dp|Mult0|auto_generated|le4a\(5) & (!\u_dp|Mult0|auto_generated|le3a\(7) & !\u_dp|Mult0|auto_generated|op_1~9\)) # (!\u_dp|Mult0|auto_generated|le4a\(5) & ((!\u_dp|Mult0|auto_generated|op_1~9\) # 
-- (!\u_dp|Mult0|auto_generated|le3a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le4a\(5),
	datab => \u_dp|Mult0|auto_generated|le3a\(7),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_1~9\,
	combout => \u_dp|Mult0|auto_generated|op_1~10_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X31_Y6_N18
\u_dp|Mult0|auto_generated|op_3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~16_combout\ = ((\u_dp|Mult0|auto_generated|op_1~12_combout\ $ (\u_dp|Mult0|auto_generated|le5a\(4) $ (!\u_dp|Mult0|auto_generated|op_3~15\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_3~17\ = CARRY((\u_dp|Mult0|auto_generated|op_1~12_combout\ & ((\u_dp|Mult0|auto_generated|le5a\(4)) # (!\u_dp|Mult0|auto_generated|op_3~15\))) # (!\u_dp|Mult0|auto_generated|op_1~12_combout\ & 
-- (\u_dp|Mult0|auto_generated|le5a\(4) & !\u_dp|Mult0|auto_generated|op_3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_1~12_combout\,
	datab => \u_dp|Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~15\,
	combout => \u_dp|Mult0|auto_generated|op_3~16_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~17\);

-- Location: LCCOMB_X32_Y6_N20
\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|Mult0|auto_generated|op_3~16_combout\) # (GND))) # (!\u_dp|k_reg\(0) & (\u_dp|Mult0|auto_generated|op_3~16_combout\ $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~16_combout\,
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X30_Y6_N14
\u_dp|Mult0|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~14_combout\ = (\u_dp|Mult0|auto_generated|le5a\(5) & ((\u_dp|Mult0|auto_generated|le4a\(7) & (\u_dp|Mult0|auto_generated|op_1~13\ & VCC)) # (!\u_dp|Mult0|auto_generated|le4a\(7) & (!\u_dp|Mult0|auto_generated|op_1~13\)))) # 
-- (!\u_dp|Mult0|auto_generated|le5a\(5) & ((\u_dp|Mult0|auto_generated|le4a\(7) & (!\u_dp|Mult0|auto_generated|op_1~13\)) # (!\u_dp|Mult0|auto_generated|le4a\(7) & ((\u_dp|Mult0|auto_generated|op_1~13\) # (GND)))))
-- \u_dp|Mult0|auto_generated|op_1~15\ = CARRY((\u_dp|Mult0|auto_generated|le5a\(5) & (!\u_dp|Mult0|auto_generated|le4a\(7) & !\u_dp|Mult0|auto_generated|op_1~13\)) # (!\u_dp|Mult0|auto_generated|le5a\(5) & ((!\u_dp|Mult0|auto_generated|op_1~13\) # 
-- (!\u_dp|Mult0|auto_generated|le4a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le5a\(5),
	datab => \u_dp|Mult0|auto_generated|le4a\(7),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_1~13\,
	combout => \u_dp|Mult0|auto_generated|op_1~14_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X31_Y6_N20
\u_dp|Mult0|auto_generated|op_3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~18_combout\ = (\u_dp|Mult0|auto_generated|op_1~14_combout\ & ((\u_dp|Add0~2_combout\ & (\u_dp|Mult0|auto_generated|op_3~17\ & VCC)) # (!\u_dp|Add0~2_combout\ & (!\u_dp|Mult0|auto_generated|op_3~17\)))) # 
-- (!\u_dp|Mult0|auto_generated|op_1~14_combout\ & ((\u_dp|Add0~2_combout\ & (!\u_dp|Mult0|auto_generated|op_3~17\)) # (!\u_dp|Add0~2_combout\ & ((\u_dp|Mult0|auto_generated|op_3~17\) # (GND)))))
-- \u_dp|Mult0|auto_generated|op_3~19\ = CARRY((\u_dp|Mult0|auto_generated|op_1~14_combout\ & (!\u_dp|Add0~2_combout\ & !\u_dp|Mult0|auto_generated|op_3~17\)) # (!\u_dp|Mult0|auto_generated|op_1~14_combout\ & ((!\u_dp|Mult0|auto_generated|op_3~17\) # 
-- (!\u_dp|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_1~14_combout\,
	datab => \u_dp|Add0~2_combout\,
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~17\,
	combout => \u_dp|Mult0|auto_generated|op_3~18_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~19\);

-- Location: LCCOMB_X32_Y6_N10
\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\u_dp|k_reg\(0) & ((\u_dp|Mult0|auto_generated|op_3~18_combout\) # (GND))) # (!\u_dp|k_reg\(0) & (\u_dp|Mult0|auto_generated|op_3~18_combout\ $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~18_combout\,
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X32_Y6_N12
\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\u_dp|Add1~0_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\))) # 
-- (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~0_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X32_Y6_N14
\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\ $ (\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\u_dp|Add1~1_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\ & (!\u_dp|Add1~1_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\,
	datab => \u_dp|Add1~1_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X32_Y6_N16
\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X32_Y6_N8
\u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\ = (\u_dp|Add1~2_combout\ & (((\u_dp|Mult0|auto_generated|op_3~18_combout\)))) # (!\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u_dp|Mult0|auto_generated|op_3~18_combout\))) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \u_dp|Mult0|auto_generated|op_3~18_combout\,
	datac => \u_dp|Add1~2_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\);

-- Location: LCCOMB_X32_Y6_N22
\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\u_dp|Add1~0_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\))) # 
-- (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~0_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X32_Y6_N24
\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\ $ (\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # 
-- (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\u_dp|Add1~1_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\ & (!\u_dp|Add1~1_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\,
	datab => \u_dp|Add1~1_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X32_Y6_N26
\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\u_dp|Add1~2_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\))) # 
-- (!\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~2_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X32_Y6_N28
\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X30_Y8_N0
\u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u_dp|Mult0|auto_generated|op_3~16_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Mult0|auto_generated|op_3~16_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X31_Y8_N20
\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ & ((\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\u_dp|Add1~0_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ & ((\u_dp|Add1~0_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ & (\u_dp|Add1~0_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ & ((\u_dp|Add1~0_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \u_dp|Add1~0_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X30_Y8_N6
\u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\);

-- Location: LCCOMB_X31_Y8_N4
\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # 
-- (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\u_dp|Add1~1_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)) # 
-- (!\u_dp|Add1~1_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~1_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X30_Y8_N20
\u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\);

-- Location: LCCOMB_X30_Y8_N14
\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))))) # (!\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\u_dp|Add1~2_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\))) # 
-- (!\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~2_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[27]~52_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X29_Y7_N30
\u_dp|Div0|auto_generated|divider|divider|StageOut[33]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X29_Y7_N24
\u_dp|Div0|auto_generated|divider|divider|StageOut[33]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[33]~78_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\))) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[33]~78_combout\);

-- Location: LCCOMB_X29_Y7_N20
\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\) # ((\u_dp|Div0|auto_generated|divider|divider|StageOut[33]~78_combout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[33]~78_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X29_Y7_N22
\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\);

-- Location: LCCOMB_X27_Y6_N24
\u_dp|c_reg~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg~33_combout\ = (\u_dp|c_reg[0]~16_combout\ & (!\rst_sync~q\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg[0]~16_combout\,
	datab => \rst_sync~q\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	combout => \u_dp|c_reg~33_combout\);

-- Location: FF_X27_Y6_N25
\u_dp|c_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|c_reg~33_combout\,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|c_reg\(4));

-- Location: LCCOMB_X29_Y6_N8
\u_dp|Mult0|auto_generated|le4a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(5) = (\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\u_dp|c_reg\(5) $ (\u_dp|Mult0|auto_generated|le4a\(9))))) # (!\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\u_dp|c_reg\(4) & 
-- ((\u_dp|Mult0|auto_generated|le4a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(4),
	datab => \u_dp|c_reg\(5),
	datac => \u_dp|Mult0|auto_generated|le4a\(9),
	datad => \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \u_dp|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X30_Y6_N16
\u_dp|Mult0|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~16_combout\ = ((\u_dp|Mult0|auto_generated|le4a\(8) $ (\u_dp|Mult0|auto_generated|le5a\(6) $ (!\u_dp|Mult0|auto_generated|op_1~15\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_1~17\ = CARRY((\u_dp|Mult0|auto_generated|le4a\(8) & ((\u_dp|Mult0|auto_generated|le5a\(6)) # (!\u_dp|Mult0|auto_generated|op_1~15\))) # (!\u_dp|Mult0|auto_generated|le4a\(8) & (\u_dp|Mult0|auto_generated|le5a\(6) & 
-- !\u_dp|Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le4a\(8),
	datab => \u_dp|Mult0|auto_generated|le5a\(6),
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_1~15\,
	combout => \u_dp|Mult0|auto_generated|op_1~16_combout\,
	cout => \u_dp|Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X31_Y6_N22
\u_dp|Mult0|auto_generated|op_3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~20_combout\ = ((\u_dp|Mult0|auto_generated|op_1~16_combout\ $ (\u_dp|Add0~2_combout\ $ (!\u_dp|Mult0|auto_generated|op_3~19\)))) # (GND)
-- \u_dp|Mult0|auto_generated|op_3~21\ = CARRY((\u_dp|Mult0|auto_generated|op_1~16_combout\ & ((\u_dp|Add0~2_combout\) # (!\u_dp|Mult0|auto_generated|op_3~19\))) # (!\u_dp|Mult0|auto_generated|op_1~16_combout\ & (\u_dp|Add0~2_combout\ & 
-- !\u_dp|Mult0|auto_generated|op_3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_1~16_combout\,
	datab => \u_dp|Add0~2_combout\,
	datad => VCC,
	cin => \u_dp|Mult0|auto_generated|op_3~19\,
	combout => \u_dp|Mult0|auto_generated|op_3~20_combout\,
	cout => \u_dp|Mult0|auto_generated|op_3~21\);

-- Location: LCCOMB_X31_Y6_N26
\u_dp|Div0|auto_generated|divider|divider|StageOut[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~19_combout\ = (\u_dp|k_reg\(1) & ((\u_dp|k_reg\(0)) # (!\u_dp|Mult0|auto_generated|op_3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(1),
	datac => \u_dp|Mult0|auto_generated|op_3~20_combout\,
	datad => \u_dp|k_reg\(0),
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~19_combout\);

-- Location: LCCOMB_X31_Y6_N0
\u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\ = (\u_dp|Mult0|auto_generated|op_3~22_combout\ & ((\u_dp|k_reg\(2)) # ((\u_dp|k_reg\(3)) # (\u_dp|Div0|auto_generated|divider|divider|StageOut[6]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(2),
	datab => \u_dp|k_reg\(3),
	datac => \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~19_combout\,
	datad => \u_dp|Mult0|auto_generated|op_3~22_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\);

-- Location: LCCOMB_X32_Y6_N4
\u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\ = (\u_dp|Add1~2_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\)) # (!\u_dp|Add1~2_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\)) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[6]~83_combout\,
	datab => \u_dp|Add1~2_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\);

-- Location: LCCOMB_X32_Y6_N6
\u_dp|Div0|auto_generated|divider|divider|StageOut[18]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\ & \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|Div0|auto_generated|divider|divider|StageOut[12]~40_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X32_Y6_N0
\u_dp|Div0|auto_generated|divider|divider|StageOut[18]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[18]~45_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[18]~45_combout\);

-- Location: LCCOMB_X32_Y6_N2
\u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\);

-- Location: LCCOMB_X32_Y6_N18
\u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[10]~42_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\);

-- Location: LCCOMB_X31_Y8_N22
\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # 
-- (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\u_dp|Add1~1_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # 
-- (!\u_dp|Add1~1_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~1_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X31_Y8_N24
\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))))) # (!\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\u_dp|Add1~2_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\))) # 
-- (!\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~2_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[17]~46_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X31_Y8_N26
\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\) # ((\u_dp|Div0|auto_generated|divider|divider|StageOut[18]~45_combout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[18]~45_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X31_Y8_N28
\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X28_Y6_N10
\u_dp|c_reg~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg~36_combout\ = (\u_dp|c_reg[0]~16_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & !\rst_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg[0]~16_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \rst_sync~q\,
	combout => \u_dp|c_reg~36_combout\);

-- Location: FF_X28_Y6_N11
\u_dp|c_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|c_reg~36_combout\,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|c_reg\(7));

-- Location: LCCOMB_X28_Y6_N18
\u_dp|Mult0|auto_generated|le5a[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le5a\(7) = (\u_dp|c_reg\(7) & ((\u_dp|Add0~6_combout\) # ((\u_dp|Add0~2_combout\ & \u_dp|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(7),
	datab => \u_dp|Add0~6_combout\,
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~4_combout\,
	combout => \u_dp|Mult0|auto_generated|le5a\(7));

-- Location: LCCOMB_X30_Y6_N18
\u_dp|Mult0|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_1~18_combout\ = \u_dp|Mult0|auto_generated|le4a\(9) $ (\u_dp|Mult0|auto_generated|op_1~17\ $ (!\u_dp|Mult0|auto_generated|le5a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|le4a\(9),
	datad => \u_dp|Mult0|auto_generated|le5a\(7),
	cin => \u_dp|Mult0|auto_generated|op_1~17\,
	combout => \u_dp|Mult0|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X31_Y6_N24
\u_dp|Mult0|auto_generated|op_3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|op_3~22_combout\ = \u_dp|Add0~2_combout\ $ (\u_dp|Mult0|auto_generated|op_3~21\ $ (!\u_dp|Mult0|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Add0~2_combout\,
	datad => \u_dp|Mult0|auto_generated|op_1~18_combout\,
	cin => \u_dp|Mult0|auto_generated|op_3~21\,
	combout => \u_dp|Mult0|auto_generated|op_3~22_combout\);

-- Location: LCCOMB_X31_Y6_N30
\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~31_combout\ = (\u_dp|k_reg\(2)) # ((\u_dp|k_reg\(1) & !\u_dp|Mult0|auto_generated|op_3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|k_reg\(2),
	datac => \u_dp|k_reg\(1),
	datad => \u_dp|Mult0|auto_generated|op_3~22_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~31_combout\);

-- Location: LCCOMB_X31_Y6_N28
\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\ = (\u_dp|Mult0|auto_generated|op_3~20_combout\ & ((\u_dp|k_reg\(0)) # ((\u_dp|k_reg\(3)) # (\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|k_reg\(3),
	datac => \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~31_combout\,
	datad => \u_dp|Mult0|auto_generated|op_3~20_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\);

-- Location: LCCOMB_X32_Y6_N30
\u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\ = (\u_dp|Add1~2_combout\ & (((\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\)))) # (!\u_dp|Add1~2_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\))) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[5]~84_combout\,
	datac => \u_dp|Add1~2_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\);

-- Location: LCCOMB_X31_Y8_N30
\u_dp|Div0|auto_generated|divider|divider|StageOut[23]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[23]~76_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\)) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[11]~41_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[23]~76_combout\);

-- Location: LCCOMB_X31_Y8_N14
\u_dp|Div0|auto_generated|divider|divider|StageOut[23]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[23]~50_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[23]~50_combout\);

-- Location: LCCOMB_X31_Y8_N16
\u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\);

-- Location: LCCOMB_X31_Y8_N6
\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))))) # (!\u_dp|Add1~2_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\u_dp|Add1~2_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\))) # 
-- (!\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~2_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[22]~51_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X31_Y8_N8
\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[23]~76_combout\) # ((\u_dp|Div0|auto_generated|divider|divider|StageOut[23]~50_combout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[23]~76_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[23]~50_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\);

-- Location: LCCOMB_X31_Y8_N10
\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\);

-- Location: LCCOMB_X30_Y8_N22
\u_dp|Div0|auto_generated|divider|divider|StageOut[28]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[28]~53_combout\ = (!\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[28]~53_combout\);

-- Location: LCCOMB_X30_Y8_N4
\u_dp|Div0|auto_generated|divider|divider|StageOut[28]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\)) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[16]~47_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\);

-- Location: LCCOMB_X30_Y8_N16
\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[28]~53_combout\) # ((\u_dp|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[28]~53_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9_cout\);

-- Location: LCCOMB_X30_Y8_N18
\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9_cout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\);

-- Location: LCCOMB_X29_Y7_N26
\u_dp|c_reg~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg~34_combout\ = (\u_dp|c_reg[0]~16_combout\ & (!\rst_sync~q\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|c_reg[0]~16_combout\,
	datac => \rst_sync~q\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \u_dp|c_reg~34_combout\);

-- Location: FF_X28_Y6_N7
\u_dp|c_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_dp|c_reg~34_combout\,
	sload => VCC,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|c_reg\(5));

-- Location: LCCOMB_X28_Y6_N4
\u_dp|Mult0|auto_generated|le3a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le3a\(5) = (\u_dp|Add0~0_combout\ & (\u_dp|c_reg\(5) $ (((\u_dp|Add0~2_combout\))))) # (!\u_dp|Add0~0_combout\ & (((!\u_dp|c_reg\(4) & \u_dp|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(5),
	datab => \u_dp|c_reg\(4),
	datac => \u_dp|Add0~2_combout\,
	datad => \u_dp|Add0~0_combout\,
	combout => \u_dp|Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X30_Y8_N30
\u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & ((\u_dp|Mult0|auto_generated|op_3~10_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datac => \u_dp|Mult0|auto_generated|op_3~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X29_Y7_N2
\u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\);

-- Location: LCCOMB_X31_Y7_N24
\u_dp|Div0|auto_generated|divider|divider|StageOut[48]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[48]~81_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\))) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[48]~81_combout\);

-- Location: LCCOMB_X31_Y7_N8
\u_dp|Div0|auto_generated|divider|divider|StageOut[48]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[48]~69_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[48]~69_combout\);

-- Location: LCCOMB_X31_Y7_N30
\u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[40]~65_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\);

-- Location: LCCOMB_X31_Y7_N28
\u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (\u_dp|Mult0|auto_generated|op_3~4_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_3~4_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\);

-- Location: LCCOMB_X31_Y7_N12
\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ = (\u_dp|Mult0|auto_generated|op_3~2_combout\ & ((\u_dp|k_reg\(0)) # (GND))) # (!\u_dp|Mult0|auto_generated|op_3~2_combout\ & (\u_dp|k_reg\(0) $ (VCC)))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ = CARRY((\u_dp|Mult0|auto_generated|op_3~2_combout\) # (\u_dp|k_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Mult0|auto_generated|op_3~2_combout\,
	datab => \u_dp|k_reg\(0),
	datad => VCC,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\);

-- Location: LCCOMB_X31_Y7_N14
\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ = (\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # (GND))))) # (!\u_dp|Add1~0_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\ & 
-- (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ & VCC)) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ = CARRY((\u_dp|Add1~0_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\))) # 
-- (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~0_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\);

-- Location: LCCOMB_X31_Y7_N16
\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ = ((\u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\ $ (\u_dp|Add1~1_combout\ $ (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))) # 
-- (GND)
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\) # (!\u_dp|Add1~1_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\ & (!\u_dp|Add1~1_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\,
	datab => \u_dp|Add1~1_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\);

-- Location: LCCOMB_X31_Y7_N18
\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ = (\u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ & ((\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)) # 
-- (!\u_dp|Add1~2_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ & VCC)))) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ & ((\u_dp|Add1~2_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # (GND))) # (!\u_dp|Add1~2_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\))))
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ & (\u_dp|Add1~2_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ & ((\u_dp|Add1~2_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\,
	datab => \u_dp|Add1~2_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\);

-- Location: LCCOMB_X31_Y7_N20
\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[48]~81_combout\) # ((\u_dp|Div0|auto_generated|divider|divider|StageOut[48]~69_combout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[48]~81_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[48]~69_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9_cout\);

-- Location: LCCOMB_X31_Y7_N22
\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9_cout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\);

-- Location: LCCOMB_X28_Y6_N20
\u_dp|c_reg~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg~30_combout\ = (!\rst_sync~q\ & (\u_dp|c_reg[0]~16_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_sync~q\,
	datac => \u_dp|c_reg[0]~16_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	combout => \u_dp|c_reg~30_combout\);

-- Location: FF_X28_Y6_N21
\u_dp|c_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|c_reg~30_combout\,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|c_reg\(1));

-- Location: LCCOMB_X30_Y6_N22
\u_dp|Mult0|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Mult0|auto_generated|le4a\(2) = (\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\u_dp|c_reg\(2) $ (\u_dp|Mult0|auto_generated|le4a\(9))))) # (!\u_dp|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\u_dp|c_reg\(1) & 
-- ((\u_dp|Mult0|auto_generated|le4a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(1),
	datab => \u_dp|c_reg\(2),
	datac => \u_dp|Mult0|auto_generated|le4a\(9),
	datad => \u_dp|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \u_dp|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X29_Y7_N6
\u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & ((\u_dp|Mult0|auto_generated|op_3~8_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datad => \u_dp|Mult0|auto_generated|op_3~8_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\);

-- Location: LCCOMB_X31_Y7_N4
\u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|StageOut[35]~60_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\);

-- Location: LCCOMB_X31_Y7_N26
\u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\);

-- Location: LCCOMB_X32_Y7_N30
\u_dp|Div0|auto_generated|divider|divider|StageOut[53]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\);

-- Location: LCCOMB_X32_Y7_N16
\u_dp|Div0|auto_generated|divider|divider|StageOut[53]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[53]~82_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & 
-- ((\u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\))) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[41]~64_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[53]~82_combout\);

-- Location: LCCOMB_X31_Y7_N10
\u_dp|Div0|auto_generated|divider|divider|StageOut[52]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\)) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[46]~70_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\);

-- Location: LCCOMB_X31_Y7_N0
\u_dp|Div0|auto_generated|divider|divider|StageOut[51]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ & ((\u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	datad => \u_dp|Div0|auto_generated|divider|divider|StageOut[45]~71_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\);

-- Location: LCCOMB_X31_Y7_N6
\u_dp|Div0|auto_generated|divider|divider|StageOut[50]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\ = (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ & ((\u_dp|Mult0|auto_generated|op_3~2_combout\))) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ & (\u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	datac => \u_dp|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	datad => \u_dp|Mult0|auto_generated|op_3~2_combout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\);

-- Location: LCCOMB_X32_Y7_N2
\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1_cout\ = CARRY((\u_dp|k_reg\(0)) # (\u_dp|Mult0|auto_generated|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|k_reg\(0),
	datab => \u_dp|Mult0|auto_generated|op_3~0_combout\,
	datad => VCC,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1_cout\);

-- Location: LCCOMB_X32_Y7_N4
\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3_cout\ = CARRY((\u_dp|Add1~0_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1_cout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\))) # (!\u_dp|Add1~0_combout\ & (!\u_dp|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Add1~0_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1_cout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3_cout\);

-- Location: LCCOMB_X32_Y7_N6
\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3_cout\) # 
-- (!\u_dp|Add1~1_combout\))) # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\ & (!\u_dp|Add1~1_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\,
	datab => \u_dp|Add1~1_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3_cout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5_cout\);

-- Location: LCCOMB_X32_Y7_N8
\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\ & (\u_dp|Add1~2_combout\ & !\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5_cout\)) 
-- # (!\u_dp|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\ & ((\u_dp|Add1~2_combout\) # (!\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\,
	datab => \u_dp|Add1~2_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5_cout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7_cout\);

-- Location: LCCOMB_X32_Y7_N10
\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9_cout\ = CARRY((\u_dp|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\) # ((\u_dp|Div0|auto_generated|divider|divider|StageOut[53]~82_combout\) # 
-- (!\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\,
	datab => \u_dp|Div0|auto_generated|divider|divider|StageOut[53]~82_combout\,
	datad => VCC,
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7_cout\,
	cout => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9_cout\);

-- Location: LCCOMB_X32_Y7_N12
\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ = !\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9_cout\,
	combout => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\);

-- Location: LCCOMB_X32_Y7_N24
\u_dp|c_reg~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|c_reg~29_combout\ = (!\rst_sync~q\ & ((!\u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\) # (!\u_dp|c_reg[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg[0]~16_combout\,
	datab => \rst_sync~q\,
	datad => \u_dp|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	combout => \u_dp|c_reg~29_combout\);

-- Location: FF_X32_Y7_N25
\u_dp|c_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|c_reg~29_combout\,
	ena => \u_dp|c_reg[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|c_reg\(0));

-- Location: LCCOMB_X27_Y6_N4
\u_dp|err_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|err_reg~0_combout\ = (\u_dp|c_reg[0]~18_combout\) # ((!\u_fsm|init~0_combout\ & \u_dp|err_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fsm|init~0_combout\,
	datab => \u_dp|c_reg[0]~18_combout\,
	datac => \u_dp|err_reg~q\,
	combout => \u_dp|err_reg~0_combout\);

-- Location: FF_X27_Y6_N5
\u_dp|err_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_dp|err_reg~0_combout\,
	sclr => \rst_sync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dp|err_reg~q\);

-- Location: LCCOMB_X26_Y6_N12
\u_dp|led[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|led[0]~0_combout\ = (\u_dp|c_reg\(0)) # (\u_dp|err_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|c_reg\(0),
	datad => \u_dp|err_reg~q\,
	combout => \u_dp|led[0]~0_combout\);

-- Location: LCCOMB_X26_Y6_N18
\u_dp|led[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|led[1]~1_combout\ = (\u_dp|c_reg\(1)) # (\u_dp|err_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|c_reg\(1),
	datad => \u_dp|err_reg~q\,
	combout => \u_dp|led[1]~1_combout\);

-- Location: LCCOMB_X26_Y6_N28
\u_dp|led[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|led[2]~2_combout\ = (\u_dp|c_reg\(2)) # (\u_dp|err_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|c_reg\(2),
	datad => \u_dp|err_reg~q\,
	combout => \u_dp|led[2]~2_combout\);

-- Location: LCCOMB_X26_Y6_N30
\u_dp|led[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|led[3]~3_combout\ = (\u_dp|c_reg\(3)) # (\u_dp|err_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dp|c_reg\(3),
	datad => \u_dp|err_reg~q\,
	combout => \u_dp|led[3]~3_combout\);

-- Location: LCCOMB_X26_Y6_N16
\u_dp|led[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|led[4]~4_combout\ = (\u_dp|c_reg\(4)) # (\u_dp|err_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dp|c_reg\(4),
	datad => \u_dp|err_reg~q\,
	combout => \u_dp|led[4]~4_combout\);

-- Location: LCCOMB_X26_Y6_N10
\u_dp|led[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|led[5]~5_combout\ = (\u_dp|c_reg\(5)) # (\u_dp|err_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|c_reg\(5),
	datad => \u_dp|err_reg~q\,
	combout => \u_dp|led[5]~5_combout\);

-- Location: LCCOMB_X26_Y6_N20
\u_dp|led[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|led[6]~6_combout\ = (\u_dp|c_reg\(6)) # (\u_dp|err_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|c_reg\(6),
	datad => \u_dp|err_reg~q\,
	combout => \u_dp|led[6]~6_combout\);

-- Location: LCCOMB_X26_Y6_N22
\u_dp|led[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_dp|led[7]~7_combout\ = (\u_dp|c_reg\(7)) # (\u_dp|err_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dp|c_reg\(7),
	datad => \u_dp|err_reg~q\,
	combout => \u_dp|led[7]~7_combout\);

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

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;
END structure;


