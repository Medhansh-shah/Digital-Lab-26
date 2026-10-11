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

-- DATE "10/01/2026 15:59:28"

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

ENTITY 	UART_Timer IS
    PORT (
	i_Clk : IN std_logic;
	i_Reset : IN std_logic;
	i_RX_Serial : IN std_logic;
	o_LED : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END UART_Timer;

-- Design Ports Information
-- o_LED[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Reset	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Clk	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_Timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_Clk : std_logic;
SIGNAL ww_i_Reset : std_logic;
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_o_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_ClockDiv|clk_5MHz_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_LED[0]~output_o\ : std_logic;
SIGNAL \o_LED[1]~output_o\ : std_logic;
SIGNAL \o_LED[2]~output_o\ : std_logic;
SIGNAL \o_LED[3]~output_o\ : std_logic;
SIGNAL \o_LED[4]~output_o\ : std_logic;
SIGNAL \o_LED[5]~output_o\ : std_logic;
SIGNAL \o_LED[6]~output_o\ : std_logic;
SIGNAL \o_LED[7]~output_o\ : std_logic;
SIGNAL \i_Clk~input_o\ : std_logic;
SIGNAL \i_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5MHz~0_combout\ : std_logic;
SIGNAL \i_Reset~input_o\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5MHz~2_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5MHz~1_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_5MHz_reg~0_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_5MHz_reg~feeder_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_5MHz_reg~q\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\ : std_logic;
SIGNAL \r_Clk_Count[0]~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \r_Clk_Count[8]~28\ : std_logic;
SIGNAL \r_Clk_Count[9]~29_combout\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \r_RX_Data_R~q\ : std_logic;
SIGNAL \r_RX_Data~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \r_Bit_Index[0]~1_combout\ : std_logic;
SIGNAL \r_Bit_Index[1]~2_combout\ : std_logic;
SIGNAL \r_Bit_Index[2]~0_combout\ : std_logic;
SIGNAL \r_Bit_Index[2]~3_combout\ : std_logic;
SIGNAL \r_SM_Main~14_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \r_Clk_Count~18_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \r_Clk_Count[0]~11\ : std_logic;
SIGNAL \r_Clk_Count[1]~12_combout\ : std_logic;
SIGNAL \r_Clk_Count[1]~13\ : std_logic;
SIGNAL \r_Clk_Count[2]~14_combout\ : std_logic;
SIGNAL \r_Clk_Count[2]~15\ : std_logic;
SIGNAL \r_Clk_Count[3]~16_combout\ : std_logic;
SIGNAL \r_Clk_Count[3]~17\ : std_logic;
SIGNAL \r_Clk_Count[4]~19_combout\ : std_logic;
SIGNAL \r_Clk_Count[4]~20\ : std_logic;
SIGNAL \r_Clk_Count[5]~21_combout\ : std_logic;
SIGNAL \r_Clk_Count[5]~22\ : std_logic;
SIGNAL \r_Clk_Count[6]~23_combout\ : std_logic;
SIGNAL \r_Clk_Count[6]~24\ : std_logic;
SIGNAL \r_Clk_Count[7]~25_combout\ : std_logic;
SIGNAL \r_Clk_Count[7]~26\ : std_logic;
SIGNAL \r_Clk_Count[8]~27_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \r_RX_DV~q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_RX_Byte[3]~3_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_RX_Byte[1]~2_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \r_RX_Byte[2]~0_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r_RX_Byte[0]~1_combout\ : std_logic;
SIGNAL \p_Timer_FSM~0_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_RX_Byte[6]~5_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_RX_Byte[7]~4_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \r_RX_Byte[5]~6_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_RX_Byte[4]~7_combout\ : std_logic;
SIGNAL \p_Timer_FSM~3_combout\ : std_logic;
SIGNAL \p_Timer_FSM~4_combout\ : std_logic;
SIGNAL \p_Timer_FSM~1_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \p_Timer_FSM~2_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector54~2_combout\ : std_logic;
SIGNAL \Selector54~3_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \r_Accumulator[1]~31_combout\ : std_logic;
SIGNAL \r_Accumulator[9]~33_combout\ : std_logic;
SIGNAL \r_Accumulator[9]~34_combout\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \r_Accumulator[1]~32\ : std_logic;
SIGNAL \r_Accumulator[2]~37\ : std_logic;
SIGNAL \r_Accumulator[3]~39\ : std_logic;
SIGNAL \r_Accumulator[4]~40_combout\ : std_logic;
SIGNAL \r_RX_Byte[4]~_wirecell_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \r_Accumulator[4]~41\ : std_logic;
SIGNAL \r_Accumulator[5]~42_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \r_Accumulator[5]~43\ : std_logic;
SIGNAL \r_Accumulator[6]~44_combout\ : std_logic;
SIGNAL \Add2~1_wirecell_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \r_Accumulator[6]~45\ : std_logic;
SIGNAL \r_Accumulator[7]~46_combout\ : std_logic;
SIGNAL \Add2~2_wirecell_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \r_Accumulator[7]~47\ : std_logic;
SIGNAL \r_Accumulator[8]~48_combout\ : std_logic;
SIGNAL \Add2~3_wirecell_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \r_Accumulator[8]~49\ : std_logic;
SIGNAL \r_Accumulator[9]~50_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \r_Accumulator[9]~51\ : std_logic;
SIGNAL \r_Accumulator[10]~52_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \r_Accumulator[10]~53\ : std_logic;
SIGNAL \r_Accumulator[11]~54_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \r_Accumulator[11]~55\ : std_logic;
SIGNAL \r_Accumulator[12]~56_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \r_Accumulator[12]~57\ : std_logic;
SIGNAL \r_Accumulator[13]~58_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \r_Accumulator[13]~59\ : std_logic;
SIGNAL \r_Accumulator[14]~60_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \r_Accumulator[14]~61\ : std_logic;
SIGNAL \r_Accumulator[15]~62_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \r_Accumulator[15]~63\ : std_logic;
SIGNAL \r_Accumulator[16]~64_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \r_Accumulator[16]~65\ : std_logic;
SIGNAL \r_Accumulator[17]~66_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \r_Accumulator[17]~67\ : std_logic;
SIGNAL \r_Accumulator[18]~68_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \r_Accumulator[18]~69\ : std_logic;
SIGNAL \r_Accumulator[19]~70_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \r_Accumulator[19]~71\ : std_logic;
SIGNAL \r_Accumulator[20]~72_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \r_Accumulator[20]~73\ : std_logic;
SIGNAL \r_Accumulator[21]~74_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \r_Accumulator[21]~75\ : std_logic;
SIGNAL \r_Accumulator[22]~76_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \r_Accumulator[22]~77\ : std_logic;
SIGNAL \r_Accumulator[23]~78_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \r_Accumulator[23]~79\ : std_logic;
SIGNAL \r_Accumulator[24]~80_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \r_Accumulator[24]~81\ : std_logic;
SIGNAL \r_Accumulator[25]~82_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \r_Accumulator[25]~83\ : std_logic;
SIGNAL \r_Accumulator[26]~84_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \r_Accumulator[26]~85\ : std_logic;
SIGNAL \r_Accumulator[27]~86_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \r_Accumulator[27]~87\ : std_logic;
SIGNAL \r_Accumulator[28]~88_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \r_Accumulator[28]~89\ : std_logic;
SIGNAL \r_Accumulator[29]~90_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \r_Accumulator[29]~91\ : std_logic;
SIGNAL \r_Accumulator[30]~92_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \r_Accumulator[30]~93\ : std_logic;
SIGNAL \r_Accumulator[31]~94_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan5~5_combout\ : std_logic;
SIGNAL \LessThan5~6_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \r_Accumulator[9]~35_combout\ : std_logic;
SIGNAL \r_Accumulator[2]~36_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \r_Accumulator[3]~38_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz[0]~8_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~1_cout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~2_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~1_cout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~2_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~3\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~4_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~5\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~6_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~7\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~8_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~9\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~10_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~11_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal1~6_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~11\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~12_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~13\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~14_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~15\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~16_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~17\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~18_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal1~5_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~19\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~20_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~10_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~21\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~22_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~9_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~23\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~24_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~8_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~25\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~26_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~7_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal1~3_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~27\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~28_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~29\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~30_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~6_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~31\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~32_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~33\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~34_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~5_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~35\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~36_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~4_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~37\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~38_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~3_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~39\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~40_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~2_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~41\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~42_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~1_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal1~1_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~43\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~44_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~45\ : std_logic;
SIGNAL \Inst_ClockDiv|Add1~46_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_1Hz~0_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal1~0_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal1~2_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal1~4_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal1~7_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_1Hz_reg~0_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_1Hz_reg~feeder_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_1Hz_reg~q\ : std_logic;
SIGNAL \r_1Hz_d1~q\ : std_logic;
SIGNAL \r_1Hz_d2~q\ : std_logic;
SIGNAL \r_Timer_Count[7]~1_combout\ : std_logic;
SIGNAL \r_Timer_Count[7]~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \r_Timer_Count[0]~3_combout\ : std_logic;
SIGNAL \r_Timer_Count[1]~5_combout\ : std_logic;
SIGNAL \r_Timer_Count[1]~6_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \r_Timer_Count[2]~7_combout\ : std_logic;
SIGNAL \r_Timer_Count[2]~8_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \r_Timer_Count[3]~9_combout\ : std_logic;
SIGNAL \r_Timer_Count[3]~10_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \r_Timer_Count[4]~11_combout\ : std_logic;
SIGNAL \r_Timer_Count[4]~12_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \r_Timer_Count[5]~13_combout\ : std_logic;
SIGNAL \r_Timer_Count[5]~14_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \r_Timer_Count[6]~15_combout\ : std_logic;
SIGNAL \r_Timer_Count[6]~16_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \r_Timer_Count[7]~17_combout\ : std_logic;
SIGNAL \r_Timer_Count[7]~18_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \r_Timer_State.S_DONE~1_combout\ : std_logic;
SIGNAL \r_Timer_State.S_DONE~0_combout\ : std_logic;
SIGNAL \Selector59~5_combout\ : std_logic;
SIGNAL \Selector59~4_combout\ : std_logic;
SIGNAL \Selector59~6_combout\ : std_logic;
SIGNAL \r_Timer_State.S_DONE~2_combout\ : std_logic;
SIGNAL \r_Timer_State.S_DONE~q\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Selector54~1_combout\ : std_logic;
SIGNAL \Selector54~4_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \r_Timer_Count[0]~0_combout\ : std_logic;
SIGNAL \r_Timer_Count[0]~4_combout\ : std_logic;
SIGNAL \Selector59~1_combout\ : std_logic;
SIGNAL \Selector59~2_combout\ : std_logic;
SIGNAL \Selector56~1_combout\ : std_logic;
SIGNAL \r_Timer_State.S_DIGIT_2~q\ : std_logic;
SIGNAL \Selector57~1_combout\ : std_logic;
SIGNAL \r_Timer_State.S_DIGIT_3~q\ : std_logic;
SIGNAL \Selector59~3_combout\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \Selector55~2_combout\ : std_logic;
SIGNAL \Selector55~3_combout\ : std_logic;
SIGNAL \r_Timer_State.S_DIGIT_1~q\ : std_logic;
SIGNAL \Selector58~1_combout\ : std_logic;
SIGNAL \Selector58~2_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector58~3_combout\ : std_logic;
SIGNAL \r_Timer_State.S_PROCEED~q\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~3\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~4_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~5\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~6_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~7\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~8_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal2~6_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~9\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~10_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~11\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~12_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~13\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~14_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~15\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~16_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz~6_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~17\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~18_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz~5_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~19\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~20_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~21\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~22_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz~4_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~23\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~24_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~25\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~26_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~27\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~28_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz~3_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~29\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~30_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~31\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~32_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~33\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~34_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~35\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~36_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz~2_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~37\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~38_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz~1_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~39\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~40_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~41\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~42_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~43\ : std_logic;
SIGNAL \Inst_ClockDiv|Add2~44_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz~0_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal2~0_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal2~1_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal2~3_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal2~2_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal2~4_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|count_5Hz~7_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|Equal2~5_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_5Hz_reg~0_combout\ : std_logic;
SIGNAL \Inst_ClockDiv|clk_5Hz_reg~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \o_LED[0]~reg0_q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \o_LED[1]~reg0_q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \o_LED[2]~reg0_q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \o_LED[3]~reg0_q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \o_LED[4]~reg0_q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \o_LED[5]~reg0_q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \o_LED[6]~reg0_q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \o_LED[7]~reg0_q\ : std_logic;
SIGNAL r_Accumulator : std_logic_vector(31 DOWNTO 0);
SIGNAL r_Clk_Count : std_logic_vector(9 DOWNTO 0);
SIGNAL r_Timer_Count : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_ClockDiv|count_5Hz\ : std_logic_vector(22 DOWNTO 0);
SIGNAL r_RX_Byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_ClockDiv|count_5MHz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL r_Bit_Index : std_logic_vector(2 DOWNTO 0);
SIGNAL \Inst_ClockDiv|count_1Hz\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_i_Reset~input_o\ : std_logic;
SIGNAL \ALT_INV_r_Timer_State.S_DIGIT_1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_Clk <= i_Clk;
ww_i_Reset <= i_Reset;
ww_i_RX_Serial <= i_RX_Serial;
o_LED <= ww_o_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Clk~input_o\);

\Inst_ClockDiv|clk_5MHz_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Inst_ClockDiv|clk_5MHz_reg~q\);
\ALT_INV_i_Reset~input_o\ <= NOT \i_Reset~input_o\;
\ALT_INV_r_Timer_State.S_DIGIT_1~q\ <= NOT \r_Timer_State.S_DIGIT_1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y27_N20
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
\o_LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\o_LED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\o_LED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\o_LED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\o_LED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\o_LED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\o_LED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LED[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LED[7]~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\i_Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Clk,
	o => \i_Clk~input_o\);

-- Location: CLKCTRL_G2
\i_Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X35_Y4_N16
\Inst_ClockDiv|count_5MHz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5MHz~0_combout\ = (\Inst_ClockDiv|count_5MHz\(1) & ((\Inst_ClockDiv|count_5MHz\(0)))) # (!\Inst_ClockDiv|count_5MHz\(1) & (!\Inst_ClockDiv|count_5MHz\(2) & !\Inst_ClockDiv|count_5MHz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5MHz\(2),
	datac => \Inst_ClockDiv|count_5MHz\(1),
	datad => \Inst_ClockDiv|count_5MHz\(0),
	combout => \Inst_ClockDiv|count_5MHz~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\i_Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Reset,
	o => \i_Reset~input_o\);

-- Location: FF_X35_Y4_N17
\Inst_ClockDiv|count_5MHz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5MHz~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5MHz\(1));

-- Location: LCCOMB_X35_Y4_N18
\Inst_ClockDiv|count_5MHz~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5MHz~2_combout\ = (\Inst_ClockDiv|count_5MHz\(2) & ((\Inst_ClockDiv|count_5MHz\(0)))) # (!\Inst_ClockDiv|count_5MHz\(2) & (\Inst_ClockDiv|count_5MHz\(1) & !\Inst_ClockDiv|count_5MHz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5MHz\(1),
	datac => \Inst_ClockDiv|count_5MHz\(2),
	datad => \Inst_ClockDiv|count_5MHz\(0),
	combout => \Inst_ClockDiv|count_5MHz~2_combout\);

-- Location: FF_X35_Y4_N19
\Inst_ClockDiv|count_5MHz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5MHz~2_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5MHz\(2));

-- Location: LCCOMB_X35_Y4_N22
\Inst_ClockDiv|count_5MHz~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5MHz~1_combout\ = (!\Inst_ClockDiv|count_5MHz\(0) & ((\Inst_ClockDiv|count_5MHz\(1)) # (!\Inst_ClockDiv|count_5MHz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5MHz\(2),
	datab => \Inst_ClockDiv|count_5MHz\(1),
	datac => \Inst_ClockDiv|count_5MHz\(0),
	combout => \Inst_ClockDiv|count_5MHz~1_combout\);

-- Location: FF_X35_Y4_N23
\Inst_ClockDiv|count_5MHz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5MHz~1_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5MHz\(0));

-- Location: LCCOMB_X35_Y4_N6
\Inst_ClockDiv|clk_5MHz_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|clk_5MHz_reg~0_combout\ = \Inst_ClockDiv|clk_5MHz_reg~q\ $ (((!\Inst_ClockDiv|count_5MHz\(0) & (\Inst_ClockDiv|count_5MHz\(2) & !\Inst_ClockDiv|count_5MHz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5MHz\(0),
	datab => \Inst_ClockDiv|count_5MHz\(2),
	datac => \Inst_ClockDiv|clk_5MHz_reg~q\,
	datad => \Inst_ClockDiv|count_5MHz\(1),
	combout => \Inst_ClockDiv|clk_5MHz_reg~0_combout\);

-- Location: LCCOMB_X35_Y4_N14
\Inst_ClockDiv|clk_5MHz_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|clk_5MHz_reg~feeder_combout\ = \Inst_ClockDiv|clk_5MHz_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|clk_5MHz_reg~0_combout\,
	combout => \Inst_ClockDiv|clk_5MHz_reg~feeder_combout\);

-- Location: FF_X35_Y4_N15
\Inst_ClockDiv|clk_5MHz_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|clk_5MHz_reg~feeder_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|clk_5MHz_reg~q\);

-- Location: CLKCTRL_G17
\Inst_ClockDiv|clk_5MHz_reg~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y5_N10
\r_Clk_Count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[0]~10_combout\ = r_Clk_Count(0) $ (VCC)
-- \r_Clk_Count[0]~11\ = CARRY(r_Clk_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(0),
	datad => VCC,
	combout => \r_Clk_Count[0]~10_combout\,
	cout => \r_Clk_Count[0]~11\);

-- Location: LCCOMB_X37_Y5_N8
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!r_Clk_Count(5) & (!r_Clk_Count(4) & (!r_Clk_Count(6) & !r_Clk_Count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(5),
	datab => r_Clk_Count(4),
	datac => r_Clk_Count(6),
	datad => r_Clk_Count(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y5_N26
\r_Clk_Count[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[8]~27_combout\ = (r_Clk_Count(8) & (\r_Clk_Count[7]~26\ $ (GND))) # (!r_Clk_Count(8) & (!\r_Clk_Count[7]~26\ & VCC))
-- \r_Clk_Count[8]~28\ = CARRY((r_Clk_Count(8) & !\r_Clk_Count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(8),
	datad => VCC,
	cin => \r_Clk_Count[7]~26\,
	combout => \r_Clk_Count[8]~27_combout\,
	cout => \r_Clk_Count[8]~28\);

-- Location: LCCOMB_X37_Y5_N28
\r_Clk_Count[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[9]~29_combout\ = \r_Clk_Count[8]~28\ $ (r_Clk_Count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_Clk_Count(9),
	cin => \r_Clk_Count[8]~28\,
	combout => \r_Clk_Count[9]~29_combout\);

-- Location: IOIBUF_X0_Y15_N22
\i_RX_Serial~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX_Serial,
	o => \i_RX_Serial~input_o\);

-- Location: FF_X38_Y5_N5
r_RX_Data_R : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	asdata => \i_RX_Serial~input_o\,
	sload => VCC,
	ena => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data_R~q\);

-- Location: FF_X38_Y5_N7
r_RX_Data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	asdata => \r_RX_Data_R~q\,
	sload => VCC,
	ena => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data~q\);

-- Location: LCCOMB_X38_Y5_N26
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & (((!\r_RX_Data~q\)))) # (!\Selector2~0_combout\ & (\r_SM_Main~14_combout\ & (\r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main~14_combout\,
	datab => \Selector2~0_combout\,
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \r_RX_Data~q\,
	combout => \Selector2~1_combout\);

-- Location: FF_X38_Y5_N27
\r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X38_Y5_N14
\r_Bit_Index[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Bit_Index[0]~1_combout\ = r_Bit_Index(0) $ (((\r_SM_Main.s_RX_Data_Bits~q\ & !\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(0),
	datad => \LessThan0~1_combout\,
	combout => \r_Bit_Index[0]~1_combout\);

-- Location: FF_X38_Y5_N15
\r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Bit_Index[0]~1_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(0));

-- Location: LCCOMB_X38_Y5_N0
\r_Bit_Index[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Bit_Index[1]~2_combout\ = r_Bit_Index(1) $ (((\r_SM_Main.s_RX_Data_Bits~q\ & (r_Bit_Index(0) & !\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(1),
	datad => \LessThan0~1_combout\,
	combout => \r_Bit_Index[1]~2_combout\);

-- Location: FF_X38_Y5_N1
\r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Bit_Index[1]~2_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(1));

-- Location: LCCOMB_X38_Y5_N22
\r_Bit_Index[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Bit_Index[2]~0_combout\ = (r_Bit_Index(0) & r_Bit_Index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_Bit_Index(0),
	datad => r_Bit_Index(1),
	combout => \r_Bit_Index[2]~0_combout\);

-- Location: LCCOMB_X38_Y5_N24
\r_Bit_Index[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Bit_Index[2]~3_combout\ = r_Bit_Index(2) $ (((\r_Bit_Index[2]~0_combout\ & (\r_SM_Main.s_RX_Data_Bits~q\ & !\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Bit_Index[2]~0_combout\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(2),
	datad => \LessThan0~1_combout\,
	combout => \r_Bit_Index[2]~3_combout\);

-- Location: FF_X38_Y5_N25
\r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Bit_Index[2]~3_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(2));

-- Location: LCCOMB_X38_Y5_N10
\r_SM_Main~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_SM_Main~14_combout\ = (((\LessThan0~1_combout\) # (!r_Bit_Index(0))) # (!r_Bit_Index(2))) # (!r_Bit_Index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \LessThan0~1_combout\,
	combout => \r_SM_Main~14_combout\);

-- Location: LCCOMB_X38_Y5_N8
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\Selector2~0_combout\ & (!\Selector3~0_combout\ & ((\r_SM_Main~14_combout\) # (!\r_SM_Main.s_RX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main~14_combout\,
	datab => \Selector2~0_combout\,
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X39_Y5_N4
\Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (!\r_RX_Data~q\ & !\r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => \r_SM_Main.s_Idle~q\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X38_Y5_N30
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\r_SM_Main.s_Cleanup~q\ & (\Selector1~0_combout\ & ((\r_SM_Main.s_RX_Start_Bit~q\) # (\Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Cleanup~q\,
	datab => \Selector1~0_combout\,
	datac => \r_SM_Main.s_RX_Start_Bit~q\,
	datad => \Selector3~2_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X38_Y5_N31
\r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X37_Y5_N6
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r_SM_Main.s_RX_Start_Bit~q\ & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_SM_Main.s_RX_Start_Bit~q\,
	datad => \Equal0~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X38_Y5_N16
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\r_SM_Main.s_Cleanup~q\ & (((!\Selector2~0_combout\ & \r_SM_Main.s_Idle~q\)) # (!\r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datab => \Selector2~0_combout\,
	datac => \r_SM_Main.s_Idle~q\,
	datad => \r_SM_Main.s_Cleanup~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X38_Y5_N17
\r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X38_Y5_N6
\r_Clk_Count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count~18_combout\ = (!\r_SM_Main.s_Cleanup~q\ & \r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Cleanup~q\,
	datad => \r_SM_Main.s_Idle~q\,
	combout => \r_Clk_Count~18_combout\);

-- Location: FF_X37_Y5_N29
\r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[9]~29_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(9));

-- Location: LCCOMB_X37_Y5_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_Clk_Count(1)) # ((r_Clk_Count(9)) # ((r_Clk_Count(0)) # (!r_Clk_Count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(1),
	datab => r_Clk_Count(9),
	datac => r_Clk_Count(8),
	datad => r_Clk_Count(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X37_Y5_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ((r_Clk_Count(7)) # ((\Equal0~0_combout\) # (!\LessThan0~0_combout\))) # (!r_Clk_Count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(2),
	datab => r_Clk_Count(7),
	datac => \LessThan0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X37_Y5_N4
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\r_SM_Main.s_RX_Start_Bit~q\ & ((!\Equal0~1_combout\))) # (!\r_SM_Main.s_RX_Start_Bit~q\ & (!\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Equal0~1_combout\,
	datac => \r_SM_Main.s_RX_Start_Bit~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X37_Y5_N11
\r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[0]~10_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(0));

-- Location: LCCOMB_X37_Y5_N12
\r_Clk_Count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[1]~12_combout\ = (r_Clk_Count(1) & (!\r_Clk_Count[0]~11\)) # (!r_Clk_Count(1) & ((\r_Clk_Count[0]~11\) # (GND)))
-- \r_Clk_Count[1]~13\ = CARRY((!\r_Clk_Count[0]~11\) # (!r_Clk_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(1),
	datad => VCC,
	cin => \r_Clk_Count[0]~11\,
	combout => \r_Clk_Count[1]~12_combout\,
	cout => \r_Clk_Count[1]~13\);

-- Location: FF_X37_Y5_N13
\r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[1]~12_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(1));

-- Location: LCCOMB_X37_Y5_N14
\r_Clk_Count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[2]~14_combout\ = (r_Clk_Count(2) & (\r_Clk_Count[1]~13\ $ (GND))) # (!r_Clk_Count(2) & (!\r_Clk_Count[1]~13\ & VCC))
-- \r_Clk_Count[2]~15\ = CARRY((r_Clk_Count(2) & !\r_Clk_Count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(2),
	datad => VCC,
	cin => \r_Clk_Count[1]~13\,
	combout => \r_Clk_Count[2]~14_combout\,
	cout => \r_Clk_Count[2]~15\);

-- Location: FF_X37_Y5_N15
\r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[2]~14_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(2));

-- Location: LCCOMB_X37_Y5_N16
\r_Clk_Count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[3]~16_combout\ = (r_Clk_Count(3) & (!\r_Clk_Count[2]~15\)) # (!r_Clk_Count(3) & ((\r_Clk_Count[2]~15\) # (GND)))
-- \r_Clk_Count[3]~17\ = CARRY((!\r_Clk_Count[2]~15\) # (!r_Clk_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(3),
	datad => VCC,
	cin => \r_Clk_Count[2]~15\,
	combout => \r_Clk_Count[3]~16_combout\,
	cout => \r_Clk_Count[3]~17\);

-- Location: FF_X37_Y5_N17
\r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[3]~16_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(3));

-- Location: LCCOMB_X37_Y5_N18
\r_Clk_Count[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[4]~19_combout\ = (r_Clk_Count(4) & (\r_Clk_Count[3]~17\ $ (GND))) # (!r_Clk_Count(4) & (!\r_Clk_Count[3]~17\ & VCC))
-- \r_Clk_Count[4]~20\ = CARRY((r_Clk_Count(4) & !\r_Clk_Count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(4),
	datad => VCC,
	cin => \r_Clk_Count[3]~17\,
	combout => \r_Clk_Count[4]~19_combout\,
	cout => \r_Clk_Count[4]~20\);

-- Location: FF_X37_Y5_N19
\r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[4]~19_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(4));

-- Location: LCCOMB_X37_Y5_N20
\r_Clk_Count[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[5]~21_combout\ = (r_Clk_Count(5) & (!\r_Clk_Count[4]~20\)) # (!r_Clk_Count(5) & ((\r_Clk_Count[4]~20\) # (GND)))
-- \r_Clk_Count[5]~22\ = CARRY((!\r_Clk_Count[4]~20\) # (!r_Clk_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(5),
	datad => VCC,
	cin => \r_Clk_Count[4]~20\,
	combout => \r_Clk_Count[5]~21_combout\,
	cout => \r_Clk_Count[5]~22\);

-- Location: FF_X37_Y5_N21
\r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[5]~21_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(5));

-- Location: LCCOMB_X37_Y5_N22
\r_Clk_Count[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[6]~23_combout\ = (r_Clk_Count(6) & (\r_Clk_Count[5]~22\ $ (GND))) # (!r_Clk_Count(6) & (!\r_Clk_Count[5]~22\ & VCC))
-- \r_Clk_Count[6]~24\ = CARRY((r_Clk_Count(6) & !\r_Clk_Count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(6),
	datad => VCC,
	cin => \r_Clk_Count[5]~22\,
	combout => \r_Clk_Count[6]~23_combout\,
	cout => \r_Clk_Count[6]~24\);

-- Location: FF_X37_Y5_N23
\r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[6]~23_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(6));

-- Location: LCCOMB_X37_Y5_N24
\r_Clk_Count[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[7]~25_combout\ = (r_Clk_Count(7) & (!\r_Clk_Count[6]~24\)) # (!r_Clk_Count(7) & ((\r_Clk_Count[6]~24\) # (GND)))
-- \r_Clk_Count[7]~26\ = CARRY((!\r_Clk_Count[6]~24\) # (!r_Clk_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(7),
	datad => VCC,
	cin => \r_Clk_Count[6]~24\,
	combout => \r_Clk_Count[7]~25_combout\,
	cout => \r_Clk_Count[7]~26\);

-- Location: FF_X37_Y5_N25
\r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[7]~25_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(7));

-- Location: FF_X37_Y5_N27
\r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Clk_Count[8]~27_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \Selector5~0_combout\,
	ena => \r_Clk_Count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(8));

-- Location: LCCOMB_X37_Y5_N30
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!r_Clk_Count(8) & (!r_Clk_Count(7) & \LessThan0~0_combout\))) # (!r_Clk_Count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(8),
	datab => r_Clk_Count(7),
	datac => \LessThan0~0_combout\,
	datad => r_Clk_Count(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y5_N12
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\r_SM_Main.s_RX_Stop_Bit~q\ & (!\r_SM_Main.s_Cleanup~q\ & !\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_Main.s_RX_Stop_Bit~q\,
	datac => \r_SM_Main.s_Cleanup~q\,
	datad => \LessThan0~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X38_Y5_N13
\r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X38_Y5_N28
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (r_Bit_Index(2) & (\r_Bit_Index[2]~0_combout\ & !\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datab => r_Bit_Index(2),
	datac => \r_Bit_Index[2]~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X38_Y5_N20
\Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~2_combout\) # ((\Selector3~0_combout\) # ((\Selector2~0_combout\) # (\Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \Selector3~0_combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X38_Y5_N18
\Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (!\r_SM_Main.s_Cleanup~q\ & ((\Selector3~3_combout\ & ((\Selector3~1_combout\))) # (!\Selector3~3_combout\ & (\r_SM_Main.s_RX_Stop_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Cleanup~q\,
	datab => \Selector3~3_combout\,
	datac => \r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~4_combout\);

-- Location: FF_X38_Y5_N19
\r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector3~4_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X38_Y5_N2
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\r_SM_Main.s_RX_Stop_Bit~q\ & !\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \LessThan0~1_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X38_Y5_N3
r_RX_DV : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_DV~q\);

-- Location: LCCOMB_X38_Y5_N4
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (!\i_Reset~input_o\ & !\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datab => \i_Reset~input_o\,
	datad => \LessThan0~1_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X41_Y5_N24
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!r_Bit_Index(2) & (r_Bit_Index(0) & (\Decoder0~0_combout\ & r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(1),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X41_Y5_N18
\r_RX_Byte[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[3]~3_combout\ = (\Decoder0~4_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~4_combout\ & ((r_RX_Byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(3),
	datad => \Decoder0~4_combout\,
	combout => \r_RX_Byte[3]~3_combout\);

-- Location: FF_X41_Y5_N19
\r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_RX_Byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(3));

-- Location: LCCOMB_X41_Y5_N6
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!r_Bit_Index(2) & (r_Bit_Index(0) & (\Decoder0~0_combout\ & !r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(1),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X41_Y5_N2
\r_RX_Byte[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[1]~2_combout\ = (\Decoder0~3_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~3_combout\ & ((r_RX_Byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(1),
	datad => \Decoder0~3_combout\,
	combout => \r_RX_Byte[1]~2_combout\);

-- Location: FF_X41_Y5_N3
\r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_RX_Byte[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(1));

-- Location: LCCOMB_X41_Y5_N10
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!r_Bit_Index(2) & (!r_Bit_Index(0) & (\Decoder0~0_combout\ & r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(1),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X41_Y5_N30
\r_RX_Byte[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[2]~0_combout\ = (\Decoder0~1_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~1_combout\ & ((r_RX_Byte(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(2),
	datad => \Decoder0~1_combout\,
	combout => \r_RX_Byte[2]~0_combout\);

-- Location: FF_X41_Y5_N31
\r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_RX_Byte[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(2));

-- Location: LCCOMB_X41_Y5_N16
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!r_Bit_Index(2) & (!r_Bit_Index(0) & (\Decoder0~0_combout\ & !r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(1),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X41_Y5_N0
\r_RX_Byte[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[0]~1_combout\ = (\Decoder0~2_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~2_combout\ & ((r_RX_Byte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(0),
	datad => \Decoder0~2_combout\,
	combout => \r_RX_Byte[0]~1_combout\);

-- Location: FF_X41_Y5_N1
\r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_RX_Byte[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(0));

-- Location: LCCOMB_X41_Y5_N8
\p_Timer_FSM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_Timer_FSM~0_combout\ = (r_RX_Byte(1) & (!r_RX_Byte(2) & !r_RX_Byte(0))) # (!r_RX_Byte(1) & (r_RX_Byte(2) & r_RX_Byte(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_Byte(1),
	datac => r_RX_Byte(2),
	datad => r_RX_Byte(0),
	combout => \p_Timer_FSM~0_combout\);

-- Location: LCCOMB_X40_Y5_N12
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (r_Bit_Index(2) & (!r_Bit_Index(0) & (\Decoder0~0_combout\ & r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(1),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X40_Y5_N26
\r_RX_Byte[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[6]~5_combout\ = (\Decoder0~6_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~6_combout\ & ((r_RX_Byte(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(6),
	datad => \Decoder0~6_combout\,
	combout => \r_RX_Byte[6]~5_combout\);

-- Location: FF_X40_Y5_N27
\r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_RX_Byte[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(6));

-- Location: LCCOMB_X41_Y5_N26
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (r_Bit_Index(2) & (r_Bit_Index(0) & (\Decoder0~0_combout\ & r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(1),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X40_Y5_N16
\r_RX_Byte[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[7]~4_combout\ = (\Decoder0~5_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~5_combout\ & ((r_RX_Byte(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(7),
	datad => \Decoder0~5_combout\,
	combout => \r_RX_Byte[7]~4_combout\);

-- Location: FF_X40_Y5_N17
\r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_RX_Byte[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(7));

-- Location: LCCOMB_X40_Y5_N10
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (r_Bit_Index(2) & (r_Bit_Index(0) & (\Decoder0~0_combout\ & !r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(1),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X40_Y5_N24
\r_RX_Byte[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[5]~6_combout\ = (\Decoder0~7_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~7_combout\ & ((r_RX_Byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(5),
	datad => \Decoder0~7_combout\,
	combout => \r_RX_Byte[5]~6_combout\);

-- Location: FF_X40_Y5_N25
\r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_RX_Byte[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(5));

-- Location: LCCOMB_X40_Y5_N0
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (r_Bit_Index(2) & (!r_Bit_Index(0) & (\Decoder0~0_combout\ & !r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(1),
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X40_Y5_N2
\r_RX_Byte[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[4]~7_combout\ = (\Decoder0~8_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~8_combout\ & ((r_RX_Byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(4),
	datad => \Decoder0~8_combout\,
	combout => \r_RX_Byte[4]~7_combout\);

-- Location: FF_X40_Y5_N3
\r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_RX_Byte[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(4));

-- Location: LCCOMB_X40_Y5_N6
\p_Timer_FSM~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_Timer_FSM~3_combout\ = (r_RX_Byte(6)) # ((r_RX_Byte(7)) # ((!r_RX_Byte(4)) # (!r_RX_Byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(6),
	datab => r_RX_Byte(7),
	datac => r_RX_Byte(5),
	datad => r_RX_Byte(4),
	combout => \p_Timer_FSM~3_combout\);

-- Location: LCCOMB_X41_Y5_N14
\p_Timer_FSM~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_Timer_FSM~4_combout\ = (\p_Timer_FSM~3_combout\) # ((r_RX_Byte(3) & ((r_RX_Byte(2)) # (r_RX_Byte(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(2),
	datab => r_RX_Byte(3),
	datac => \p_Timer_FSM~3_combout\,
	datad => r_RX_Byte(1),
	combout => \p_Timer_FSM~4_combout\);

-- Location: LCCOMB_X40_Y5_N20
\p_Timer_FSM~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_Timer_FSM~1_combout\ = (!r_RX_Byte(6) & (!r_RX_Byte(7) & (!r_RX_Byte(5) & !r_RX_Byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(6),
	datab => r_RX_Byte(7),
	datac => r_RX_Byte(5),
	datad => r_RX_Byte(4),
	combout => \p_Timer_FSM~1_combout\);

-- Location: LCCOMB_X41_Y5_N20
\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\p_Timer_FSM~4_combout\ & (((!\p_Timer_FSM~1_combout\) # (!\p_Timer_FSM~0_combout\)) # (!r_RX_Byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(3),
	datab => \p_Timer_FSM~0_combout\,
	datac => \p_Timer_FSM~4_combout\,
	datad => \p_Timer_FSM~1_combout\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X41_Y5_N28
\p_Timer_FSM~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_Timer_FSM~2_combout\ = (r_RX_Byte(3) & (\p_Timer_FSM~0_combout\ & \p_Timer_FSM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_Byte(3),
	datac => \p_Timer_FSM~0_combout\,
	datad => \p_Timer_FSM~1_combout\,
	combout => \p_Timer_FSM~2_combout\);

-- Location: LCCOMB_X42_Y5_N20
\Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (!\p_Timer_FSM~4_combout\ & (\r_RX_DV~q\ & !\p_Timer_FSM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_Timer_FSM~4_combout\,
	datac => \r_RX_DV~q\,
	datad => \p_Timer_FSM~2_combout\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X43_Y4_N12
\Selector54~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~2_combout\ = (r_Accumulator(0) & ((\p_Timer_FSM~2_combout\) # (!\r_RX_DV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_DV~q\,
	datac => r_Accumulator(0),
	datad => \p_Timer_FSM~2_combout\,
	combout => \Selector54~2_combout\);

-- Location: LCCOMB_X43_Y4_N2
\Selector54~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~3_combout\ = (!\Selector59~3_combout\ & ((\Selector54~2_combout\) # ((r_RX_Byte(0) & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(0),
	datab => \Selector59~3_combout\,
	datac => \Selector57~0_combout\,
	datad => \Selector54~2_combout\,
	combout => \Selector54~3_combout\);

-- Location: LCCOMB_X43_Y4_N8
\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\r_RX_DV~q\ & (!\p_Timer_FSM~4_combout\ & !\r_Timer_State.S_DIGIT_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_DV~q\,
	datac => \p_Timer_FSM~4_combout\,
	datad => \r_Timer_State.S_DIGIT_1~q\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X41_Y4_N2
\r_Accumulator[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[1]~31_combout\ = (r_RX_Byte(1) & (r_Accumulator(0) $ (VCC))) # (!r_RX_Byte(1) & (r_Accumulator(0) & VCC))
-- \r_Accumulator[1]~32\ = CARRY((r_RX_Byte(1) & r_Accumulator(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(1),
	datab => r_Accumulator(0),
	datad => VCC,
	combout => \r_Accumulator[1]~31_combout\,
	cout => \r_Accumulator[1]~32\);

-- Location: LCCOMB_X40_Y3_N4
\r_Accumulator[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[9]~33_combout\ = (\r_Timer_State.S_PROCEED~q\) # ((\r_Timer_State.S_DIGIT_1~q\ & \p_Timer_FSM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_State.S_DIGIT_1~q\,
	datac => \r_Timer_State.S_PROCEED~q\,
	datad => \p_Timer_FSM~4_combout\,
	combout => \r_Accumulator[9]~33_combout\);

-- Location: LCCOMB_X40_Y4_N8
\r_Accumulator[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[9]~34_combout\ = (\r_Timer_State.S_DIGIT_1~q\ & ((\Selector59~3_combout\) # ((\p_Timer_FSM~2_combout\)))) # (!\r_Timer_State.S_DIGIT_1~q\ & (\p_Timer_FSM~4_combout\ & ((\Selector59~3_combout\) # (\p_Timer_FSM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_State.S_DIGIT_1~q\,
	datab => \Selector59~3_combout\,
	datac => \p_Timer_FSM~4_combout\,
	datad => \p_Timer_FSM~2_combout\,
	combout => \r_Accumulator[9]~34_combout\);

-- Location: LCCOMB_X40_Y5_N22
\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (r_RX_Byte(6)) # ((r_RX_Byte(7)) # ((r_RX_Byte(5) & r_RX_Byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(6),
	datab => r_RX_Byte(7),
	datac => r_RX_Byte(5),
	datad => r_RX_Byte(4),
	combout => \Add2~3_combout\);

-- Location: LCCOMB_X40_Y5_N28
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = r_RX_Byte(5) $ (r_RX_Byte(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_Byte(5),
	datad => r_RX_Byte(4),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X42_Y4_N4
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (r_Accumulator(0) & (r_Accumulator(2) $ (VCC))) # (!r_Accumulator(0) & (r_Accumulator(2) & VCC))
-- \Add3~1\ = CARRY((r_Accumulator(0) & r_Accumulator(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(0),
	datab => r_Accumulator(2),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X42_Y4_N6
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (r_Accumulator(1) & ((r_Accumulator(3) & (\Add3~1\ & VCC)) # (!r_Accumulator(3) & (!\Add3~1\)))) # (!r_Accumulator(1) & ((r_Accumulator(3) & (!\Add3~1\)) # (!r_Accumulator(3) & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((r_Accumulator(1) & (!r_Accumulator(3) & !\Add3~1\)) # (!r_Accumulator(1) & ((!\Add3~1\) # (!r_Accumulator(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(1),
	datab => r_Accumulator(3),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X41_Y4_N4
\r_Accumulator[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[2]~36_combout\ = (r_RX_Byte(2) & ((r_Accumulator(1) & (\r_Accumulator[1]~32\ & VCC)) # (!r_Accumulator(1) & (!\r_Accumulator[1]~32\)))) # (!r_RX_Byte(2) & ((r_Accumulator(1) & (!\r_Accumulator[1]~32\)) # (!r_Accumulator(1) & 
-- ((\r_Accumulator[1]~32\) # (GND)))))
-- \r_Accumulator[2]~37\ = CARRY((r_RX_Byte(2) & (!r_Accumulator(1) & !\r_Accumulator[1]~32\)) # (!r_RX_Byte(2) & ((!\r_Accumulator[1]~32\) # (!r_Accumulator(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(2),
	datab => r_Accumulator(1),
	datad => VCC,
	cin => \r_Accumulator[1]~32\,
	combout => \r_Accumulator[2]~36_combout\,
	cout => \r_Accumulator[2]~37\);

-- Location: LCCOMB_X41_Y4_N6
\r_Accumulator[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[3]~38_combout\ = ((\Add3~0_combout\ $ (r_RX_Byte(3) $ (!\r_Accumulator[2]~37\)))) # (GND)
-- \r_Accumulator[3]~39\ = CARRY((\Add3~0_combout\ & ((r_RX_Byte(3)) # (!\r_Accumulator[2]~37\))) # (!\Add3~0_combout\ & (r_RX_Byte(3) & !\r_Accumulator[2]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => r_RX_Byte(3),
	datad => VCC,
	cin => \r_Accumulator[2]~37\,
	combout => \r_Accumulator[3]~38_combout\,
	cout => \r_Accumulator[3]~39\);

-- Location: LCCOMB_X41_Y4_N8
\r_Accumulator[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[4]~40_combout\ = (\Add3~2_combout\ & ((r_RX_Byte(4) & (!\r_Accumulator[3]~39\)) # (!r_RX_Byte(4) & (\r_Accumulator[3]~39\ & VCC)))) # (!\Add3~2_combout\ & ((r_RX_Byte(4) & ((\r_Accumulator[3]~39\) # (GND))) # (!r_RX_Byte(4) & 
-- (!\r_Accumulator[3]~39\))))
-- \r_Accumulator[4]~41\ = CARRY((\Add3~2_combout\ & (r_RX_Byte(4) & !\r_Accumulator[3]~39\)) # (!\Add3~2_combout\ & ((r_RX_Byte(4)) # (!\r_Accumulator[3]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => r_RX_Byte(4),
	datad => VCC,
	cin => \r_Accumulator[3]~39\,
	combout => \r_Accumulator[4]~40_combout\,
	cout => \r_Accumulator[4]~41\);

-- Location: LCCOMB_X40_Y5_N14
\r_RX_Byte[4]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[4]~_wirecell_combout\ = !r_RX_Byte(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(4),
	combout => \r_RX_Byte[4]~_wirecell_combout\);

-- Location: FF_X41_Y4_N9
\r_Accumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[4]~40_combout\,
	asdata => \r_RX_Byte[4]~_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(4));

-- Location: LCCOMB_X42_Y4_N8
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((r_Accumulator(4) $ (r_Accumulator(2) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((r_Accumulator(4) & ((r_Accumulator(2)) # (!\Add3~3\))) # (!r_Accumulator(4) & (r_Accumulator(2) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(4),
	datab => r_Accumulator(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X41_Y4_N10
\r_Accumulator[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[5]~42_combout\ = ((\Add2~0_combout\ $ (\Add3~4_combout\ $ (!\r_Accumulator[4]~41\)))) # (GND)
-- \r_Accumulator[5]~43\ = CARRY((\Add2~0_combout\ & ((\Add3~4_combout\) # (!\r_Accumulator[4]~41\))) # (!\Add2~0_combout\ & (\Add3~4_combout\ & !\r_Accumulator[4]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add3~4_combout\,
	datad => VCC,
	cin => \r_Accumulator[4]~41\,
	combout => \r_Accumulator[5]~42_combout\,
	cout => \r_Accumulator[5]~43\);

-- Location: FF_X41_Y4_N11
\r_Accumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[5]~42_combout\,
	asdata => \Add2~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(5));

-- Location: LCCOMB_X40_Y5_N8
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = r_RX_Byte(7) $ (((r_RX_Byte(6)) # ((r_RX_Byte(5) & r_RX_Byte(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(5),
	datab => r_RX_Byte(4),
	datac => r_RX_Byte(6),
	datad => r_RX_Byte(7),
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X40_Y5_N18
\Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = r_RX_Byte(6) $ (((r_RX_Byte(5) & r_RX_Byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_Byte(5),
	datac => r_RX_Byte(6),
	datad => r_RX_Byte(4),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X42_Y4_N10
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (r_Accumulator(5) & ((r_Accumulator(3) & (\Add3~5\ & VCC)) # (!r_Accumulator(3) & (!\Add3~5\)))) # (!r_Accumulator(5) & ((r_Accumulator(3) & (!\Add3~5\)) # (!r_Accumulator(3) & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((r_Accumulator(5) & (!r_Accumulator(3) & !\Add3~5\)) # (!r_Accumulator(5) & ((!\Add3~5\) # (!r_Accumulator(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(5),
	datab => r_Accumulator(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X41_Y4_N12
\r_Accumulator[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[6]~44_combout\ = (\Add2~1_combout\ & ((\Add3~6_combout\ & (!\r_Accumulator[5]~43\)) # (!\Add3~6_combout\ & ((\r_Accumulator[5]~43\) # (GND))))) # (!\Add2~1_combout\ & ((\Add3~6_combout\ & (\r_Accumulator[5]~43\ & VCC)) # (!\Add3~6_combout\ 
-- & (!\r_Accumulator[5]~43\))))
-- \r_Accumulator[6]~45\ = CARRY((\Add2~1_combout\ & ((!\r_Accumulator[5]~43\) # (!\Add3~6_combout\))) # (!\Add2~1_combout\ & (!\Add3~6_combout\ & !\r_Accumulator[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \r_Accumulator[5]~43\,
	combout => \r_Accumulator[6]~44_combout\,
	cout => \r_Accumulator[6]~45\);

-- Location: LCCOMB_X40_Y5_N30
\Add2~1_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~1_wirecell_combout\ = !\Add2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~1_combout\,
	combout => \Add2~1_wirecell_combout\);

-- Location: FF_X41_Y4_N13
\r_Accumulator[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[6]~44_combout\,
	asdata => \Add2~1_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(6));

-- Location: LCCOMB_X42_Y4_N12
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((r_Accumulator(4) $ (r_Accumulator(6) $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((r_Accumulator(4) & ((r_Accumulator(6)) # (!\Add3~7\))) # (!r_Accumulator(4) & (r_Accumulator(6) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(4),
	datab => r_Accumulator(6),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X41_Y4_N14
\r_Accumulator[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[7]~46_combout\ = ((\Add2~2_combout\ $ (\Add3~8_combout\ $ (\r_Accumulator[6]~45\)))) # (GND)
-- \r_Accumulator[7]~47\ = CARRY((\Add2~2_combout\ & (\Add3~8_combout\ & !\r_Accumulator[6]~45\)) # (!\Add2~2_combout\ & ((\Add3~8_combout\) # (!\r_Accumulator[6]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \r_Accumulator[6]~45\,
	combout => \r_Accumulator[7]~46_combout\,
	cout => \r_Accumulator[7]~47\);

-- Location: LCCOMB_X40_Y5_N4
\Add2~2_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_wirecell_combout\ = !\Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~2_combout\,
	combout => \Add2~2_wirecell_combout\);

-- Location: FF_X41_Y4_N15
\r_Accumulator[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[7]~46_combout\,
	asdata => \Add2~2_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(7));

-- Location: LCCOMB_X42_Y4_N14
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (r_Accumulator(5) & ((r_Accumulator(7) & (\Add3~9\ & VCC)) # (!r_Accumulator(7) & (!\Add3~9\)))) # (!r_Accumulator(5) & ((r_Accumulator(7) & (!\Add3~9\)) # (!r_Accumulator(7) & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((r_Accumulator(5) & (!r_Accumulator(7) & !\Add3~9\)) # (!r_Accumulator(5) & ((!\Add3~9\) # (!r_Accumulator(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(5),
	datab => r_Accumulator(7),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X41_Y4_N16
\r_Accumulator[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[8]~48_combout\ = (\Add2~3_combout\ & ((\Add3~10_combout\ & (!\r_Accumulator[7]~47\)) # (!\Add3~10_combout\ & ((\r_Accumulator[7]~47\) # (GND))))) # (!\Add2~3_combout\ & ((\Add3~10_combout\ & (\r_Accumulator[7]~47\ & VCC)) # 
-- (!\Add3~10_combout\ & (!\r_Accumulator[7]~47\))))
-- \r_Accumulator[8]~49\ = CARRY((\Add2~3_combout\ & ((!\r_Accumulator[7]~47\) # (!\Add3~10_combout\))) # (!\Add2~3_combout\ & (!\Add3~10_combout\ & !\r_Accumulator[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \r_Accumulator[7]~47\,
	combout => \r_Accumulator[8]~48_combout\,
	cout => \r_Accumulator[8]~49\);

-- Location: LCCOMB_X40_Y3_N6
\Add2~3_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_wirecell_combout\ = !\Add2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~3_combout\,
	combout => \Add2~3_wirecell_combout\);

-- Location: FF_X41_Y4_N17
\r_Accumulator[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[8]~48_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(8));

-- Location: LCCOMB_X42_Y4_N16
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((r_Accumulator(8) $ (r_Accumulator(6) $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((r_Accumulator(8) & ((r_Accumulator(6)) # (!\Add3~11\))) # (!r_Accumulator(8) & (r_Accumulator(6) & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(8),
	datab => r_Accumulator(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X41_Y4_N18
\r_Accumulator[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[9]~50_combout\ = ((\Add2~3_combout\ $ (\Add3~12_combout\ $ (\r_Accumulator[8]~49\)))) # (GND)
-- \r_Accumulator[9]~51\ = CARRY((\Add2~3_combout\ & (\Add3~12_combout\ & !\r_Accumulator[8]~49\)) # (!\Add2~3_combout\ & ((\Add3~12_combout\) # (!\r_Accumulator[8]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \r_Accumulator[8]~49\,
	combout => \r_Accumulator[9]~50_combout\,
	cout => \r_Accumulator[9]~51\);

-- Location: FF_X41_Y4_N19
\r_Accumulator[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[9]~50_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(9));

-- Location: LCCOMB_X42_Y4_N18
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (r_Accumulator(7) & ((r_Accumulator(9) & (\Add3~13\ & VCC)) # (!r_Accumulator(9) & (!\Add3~13\)))) # (!r_Accumulator(7) & ((r_Accumulator(9) & (!\Add3~13\)) # (!r_Accumulator(9) & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((r_Accumulator(7) & (!r_Accumulator(9) & !\Add3~13\)) # (!r_Accumulator(7) & ((!\Add3~13\) # (!r_Accumulator(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(7),
	datab => r_Accumulator(9),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X41_Y4_N20
\r_Accumulator[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[10]~52_combout\ = (\Add2~3_combout\ & ((\Add3~14_combout\ & (!\r_Accumulator[9]~51\)) # (!\Add3~14_combout\ & ((\r_Accumulator[9]~51\) # (GND))))) # (!\Add2~3_combout\ & ((\Add3~14_combout\ & (\r_Accumulator[9]~51\ & VCC)) # 
-- (!\Add3~14_combout\ & (!\r_Accumulator[9]~51\))))
-- \r_Accumulator[10]~53\ = CARRY((\Add2~3_combout\ & ((!\r_Accumulator[9]~51\) # (!\Add3~14_combout\))) # (!\Add2~3_combout\ & (!\Add3~14_combout\ & !\r_Accumulator[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~14_combout\,
	datad => VCC,
	cin => \r_Accumulator[9]~51\,
	combout => \r_Accumulator[10]~52_combout\,
	cout => \r_Accumulator[10]~53\);

-- Location: FF_X41_Y4_N21
\r_Accumulator[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[10]~52_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(10));

-- Location: LCCOMB_X42_Y4_N20
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((r_Accumulator(8) $ (r_Accumulator(10) $ (!\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((r_Accumulator(8) & ((r_Accumulator(10)) # (!\Add3~15\))) # (!r_Accumulator(8) & (r_Accumulator(10) & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(8),
	datab => r_Accumulator(10),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X41_Y4_N22
\r_Accumulator[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[11]~54_combout\ = ((\Add3~16_combout\ $ (\Add2~3_combout\ $ (\r_Accumulator[10]~53\)))) # (GND)
-- \r_Accumulator[11]~55\ = CARRY((\Add3~16_combout\ & ((!\r_Accumulator[10]~53\) # (!\Add2~3_combout\))) # (!\Add3~16_combout\ & (!\Add2~3_combout\ & !\r_Accumulator[10]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[10]~53\,
	combout => \r_Accumulator[11]~54_combout\,
	cout => \r_Accumulator[11]~55\);

-- Location: FF_X41_Y4_N23
\r_Accumulator[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[11]~54_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(11));

-- Location: LCCOMB_X42_Y4_N22
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (r_Accumulator(9) & ((r_Accumulator(11) & (\Add3~17\ & VCC)) # (!r_Accumulator(11) & (!\Add3~17\)))) # (!r_Accumulator(9) & ((r_Accumulator(11) & (!\Add3~17\)) # (!r_Accumulator(11) & ((\Add3~17\) # (GND)))))
-- \Add3~19\ = CARRY((r_Accumulator(9) & (!r_Accumulator(11) & !\Add3~17\)) # (!r_Accumulator(9) & ((!\Add3~17\) # (!r_Accumulator(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(9),
	datab => r_Accumulator(11),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X41_Y4_N24
\r_Accumulator[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[12]~56_combout\ = (\Add2~3_combout\ & ((\Add3~18_combout\ & (!\r_Accumulator[11]~55\)) # (!\Add3~18_combout\ & ((\r_Accumulator[11]~55\) # (GND))))) # (!\Add2~3_combout\ & ((\Add3~18_combout\ & (\r_Accumulator[11]~55\ & VCC)) # 
-- (!\Add3~18_combout\ & (!\r_Accumulator[11]~55\))))
-- \r_Accumulator[12]~57\ = CARRY((\Add2~3_combout\ & ((!\r_Accumulator[11]~55\) # (!\Add3~18_combout\))) # (!\Add2~3_combout\ & (!\Add3~18_combout\ & !\r_Accumulator[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~18_combout\,
	datad => VCC,
	cin => \r_Accumulator[11]~55\,
	combout => \r_Accumulator[12]~56_combout\,
	cout => \r_Accumulator[12]~57\);

-- Location: FF_X41_Y4_N25
\r_Accumulator[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[12]~56_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(12));

-- Location: LCCOMB_X42_Y4_N24
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((r_Accumulator(12) $ (r_Accumulator(10) $ (!\Add3~19\)))) # (GND)
-- \Add3~21\ = CARRY((r_Accumulator(12) & ((r_Accumulator(10)) # (!\Add3~19\))) # (!r_Accumulator(12) & (r_Accumulator(10) & !\Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(12),
	datab => r_Accumulator(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X41_Y4_N26
\r_Accumulator[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[13]~58_combout\ = ((\Add2~3_combout\ $ (\Add3~20_combout\ $ (\r_Accumulator[12]~57\)))) # (GND)
-- \r_Accumulator[13]~59\ = CARRY((\Add2~3_combout\ & (\Add3~20_combout\ & !\r_Accumulator[12]~57\)) # (!\Add2~3_combout\ & ((\Add3~20_combout\) # (!\r_Accumulator[12]~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~20_combout\,
	datad => VCC,
	cin => \r_Accumulator[12]~57\,
	combout => \r_Accumulator[13]~58_combout\,
	cout => \r_Accumulator[13]~59\);

-- Location: FF_X41_Y4_N27
\r_Accumulator[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[13]~58_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(13));

-- Location: LCCOMB_X42_Y4_N26
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (r_Accumulator(13) & ((r_Accumulator(11) & (\Add3~21\ & VCC)) # (!r_Accumulator(11) & (!\Add3~21\)))) # (!r_Accumulator(13) & ((r_Accumulator(11) & (!\Add3~21\)) # (!r_Accumulator(11) & ((\Add3~21\) # (GND)))))
-- \Add3~23\ = CARRY((r_Accumulator(13) & (!r_Accumulator(11) & !\Add3~21\)) # (!r_Accumulator(13) & ((!\Add3~21\) # (!r_Accumulator(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(13),
	datab => r_Accumulator(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X41_Y4_N28
\r_Accumulator[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[14]~60_combout\ = (\Add3~22_combout\ & ((\Add2~3_combout\ & (!\r_Accumulator[13]~59\)) # (!\Add2~3_combout\ & (\r_Accumulator[13]~59\ & VCC)))) # (!\Add3~22_combout\ & ((\Add2~3_combout\ & ((\r_Accumulator[13]~59\) # (GND))) # 
-- (!\Add2~3_combout\ & (!\r_Accumulator[13]~59\))))
-- \r_Accumulator[14]~61\ = CARRY((\Add3~22_combout\ & (\Add2~3_combout\ & !\r_Accumulator[13]~59\)) # (!\Add3~22_combout\ & ((\Add2~3_combout\) # (!\r_Accumulator[13]~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[13]~59\,
	combout => \r_Accumulator[14]~60_combout\,
	cout => \r_Accumulator[14]~61\);

-- Location: FF_X41_Y4_N29
\r_Accumulator[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[14]~60_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(14));

-- Location: LCCOMB_X42_Y4_N28
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = ((r_Accumulator(12) $ (r_Accumulator(14) $ (!\Add3~23\)))) # (GND)
-- \Add3~25\ = CARRY((r_Accumulator(12) & ((r_Accumulator(14)) # (!\Add3~23\))) # (!r_Accumulator(12) & (r_Accumulator(14) & !\Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(12),
	datab => r_Accumulator(14),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X41_Y4_N30
\r_Accumulator[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[15]~62_combout\ = ((\Add2~3_combout\ $ (\Add3~24_combout\ $ (\r_Accumulator[14]~61\)))) # (GND)
-- \r_Accumulator[15]~63\ = CARRY((\Add2~3_combout\ & (\Add3~24_combout\ & !\r_Accumulator[14]~61\)) # (!\Add2~3_combout\ & ((\Add3~24_combout\) # (!\r_Accumulator[14]~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~24_combout\,
	datad => VCC,
	cin => \r_Accumulator[14]~61\,
	combout => \r_Accumulator[15]~62_combout\,
	cout => \r_Accumulator[15]~63\);

-- Location: FF_X41_Y4_N31
\r_Accumulator[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[15]~62_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(15));

-- Location: LCCOMB_X42_Y4_N30
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (r_Accumulator(13) & ((r_Accumulator(15) & (\Add3~25\ & VCC)) # (!r_Accumulator(15) & (!\Add3~25\)))) # (!r_Accumulator(13) & ((r_Accumulator(15) & (!\Add3~25\)) # (!r_Accumulator(15) & ((\Add3~25\) # (GND)))))
-- \Add3~27\ = CARRY((r_Accumulator(13) & (!r_Accumulator(15) & !\Add3~25\)) # (!r_Accumulator(13) & ((!\Add3~25\) # (!r_Accumulator(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(13),
	datab => r_Accumulator(15),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X41_Y3_N0
\r_Accumulator[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[16]~64_combout\ = (\Add2~3_combout\ & ((\Add3~26_combout\ & (!\r_Accumulator[15]~63\)) # (!\Add3~26_combout\ & ((\r_Accumulator[15]~63\) # (GND))))) # (!\Add2~3_combout\ & ((\Add3~26_combout\ & (\r_Accumulator[15]~63\ & VCC)) # 
-- (!\Add3~26_combout\ & (!\r_Accumulator[15]~63\))))
-- \r_Accumulator[16]~65\ = CARRY((\Add2~3_combout\ & ((!\r_Accumulator[15]~63\) # (!\Add3~26_combout\))) # (!\Add2~3_combout\ & (!\Add3~26_combout\ & !\r_Accumulator[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~26_combout\,
	datad => VCC,
	cin => \r_Accumulator[15]~63\,
	combout => \r_Accumulator[16]~64_combout\,
	cout => \r_Accumulator[16]~65\);

-- Location: FF_X41_Y3_N1
\r_Accumulator[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[16]~64_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(16));

-- Location: LCCOMB_X42_Y3_N0
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = ((r_Accumulator(16) $ (r_Accumulator(14) $ (!\Add3~27\)))) # (GND)
-- \Add3~29\ = CARRY((r_Accumulator(16) & ((r_Accumulator(14)) # (!\Add3~27\))) # (!r_Accumulator(16) & (r_Accumulator(14) & !\Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(16),
	datab => r_Accumulator(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X41_Y3_N2
\r_Accumulator[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[17]~66_combout\ = ((\Add2~3_combout\ $ (\Add3~28_combout\ $ (\r_Accumulator[16]~65\)))) # (GND)
-- \r_Accumulator[17]~67\ = CARRY((\Add2~3_combout\ & (\Add3~28_combout\ & !\r_Accumulator[16]~65\)) # (!\Add2~3_combout\ & ((\Add3~28_combout\) # (!\r_Accumulator[16]~65\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~28_combout\,
	datad => VCC,
	cin => \r_Accumulator[16]~65\,
	combout => \r_Accumulator[17]~66_combout\,
	cout => \r_Accumulator[17]~67\);

-- Location: FF_X41_Y3_N3
\r_Accumulator[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[17]~66_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(17));

-- Location: LCCOMB_X42_Y3_N2
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (r_Accumulator(15) & ((r_Accumulator(17) & (\Add3~29\ & VCC)) # (!r_Accumulator(17) & (!\Add3~29\)))) # (!r_Accumulator(15) & ((r_Accumulator(17) & (!\Add3~29\)) # (!r_Accumulator(17) & ((\Add3~29\) # (GND)))))
-- \Add3~31\ = CARRY((r_Accumulator(15) & (!r_Accumulator(17) & !\Add3~29\)) # (!r_Accumulator(15) & ((!\Add3~29\) # (!r_Accumulator(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(15),
	datab => r_Accumulator(17),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X41_Y3_N4
\r_Accumulator[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[18]~68_combout\ = (\Add3~30_combout\ & ((\Add2~3_combout\ & (!\r_Accumulator[17]~67\)) # (!\Add2~3_combout\ & (\r_Accumulator[17]~67\ & VCC)))) # (!\Add3~30_combout\ & ((\Add2~3_combout\ & ((\r_Accumulator[17]~67\) # (GND))) # 
-- (!\Add2~3_combout\ & (!\r_Accumulator[17]~67\))))
-- \r_Accumulator[18]~69\ = CARRY((\Add3~30_combout\ & (\Add2~3_combout\ & !\r_Accumulator[17]~67\)) # (!\Add3~30_combout\ & ((\Add2~3_combout\) # (!\r_Accumulator[17]~67\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[17]~67\,
	combout => \r_Accumulator[18]~68_combout\,
	cout => \r_Accumulator[18]~69\);

-- Location: FF_X41_Y3_N5
\r_Accumulator[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[18]~68_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(18));

-- Location: LCCOMB_X42_Y3_N4
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = ((r_Accumulator(16) $ (r_Accumulator(18) $ (!\Add3~31\)))) # (GND)
-- \Add3~33\ = CARRY((r_Accumulator(16) & ((r_Accumulator(18)) # (!\Add3~31\))) # (!r_Accumulator(16) & (r_Accumulator(18) & !\Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(16),
	datab => r_Accumulator(18),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X41_Y3_N6
\r_Accumulator[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[19]~70_combout\ = ((\Add3~32_combout\ $ (\Add2~3_combout\ $ (\r_Accumulator[18]~69\)))) # (GND)
-- \r_Accumulator[19]~71\ = CARRY((\Add3~32_combout\ & ((!\r_Accumulator[18]~69\) # (!\Add2~3_combout\))) # (!\Add3~32_combout\ & (!\Add2~3_combout\ & !\r_Accumulator[18]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[18]~69\,
	combout => \r_Accumulator[19]~70_combout\,
	cout => \r_Accumulator[19]~71\);

-- Location: FF_X41_Y3_N7
\r_Accumulator[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[19]~70_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(19));

-- Location: LCCOMB_X42_Y3_N6
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (r_Accumulator(17) & ((r_Accumulator(19) & (\Add3~33\ & VCC)) # (!r_Accumulator(19) & (!\Add3~33\)))) # (!r_Accumulator(17) & ((r_Accumulator(19) & (!\Add3~33\)) # (!r_Accumulator(19) & ((\Add3~33\) # (GND)))))
-- \Add3~35\ = CARRY((r_Accumulator(17) & (!r_Accumulator(19) & !\Add3~33\)) # (!r_Accumulator(17) & ((!\Add3~33\) # (!r_Accumulator(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(17),
	datab => r_Accumulator(19),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X41_Y3_N8
\r_Accumulator[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[20]~72_combout\ = (\Add3~34_combout\ & ((\Add2~3_combout\ & (!\r_Accumulator[19]~71\)) # (!\Add2~3_combout\ & (\r_Accumulator[19]~71\ & VCC)))) # (!\Add3~34_combout\ & ((\Add2~3_combout\ & ((\r_Accumulator[19]~71\) # (GND))) # 
-- (!\Add2~3_combout\ & (!\r_Accumulator[19]~71\))))
-- \r_Accumulator[20]~73\ = CARRY((\Add3~34_combout\ & (\Add2~3_combout\ & !\r_Accumulator[19]~71\)) # (!\Add3~34_combout\ & ((\Add2~3_combout\) # (!\r_Accumulator[19]~71\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[19]~71\,
	combout => \r_Accumulator[20]~72_combout\,
	cout => \r_Accumulator[20]~73\);

-- Location: FF_X41_Y3_N9
\r_Accumulator[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[20]~72_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(20));

-- Location: LCCOMB_X42_Y3_N8
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = ((r_Accumulator(20) $ (r_Accumulator(18) $ (!\Add3~35\)))) # (GND)
-- \Add3~37\ = CARRY((r_Accumulator(20) & ((r_Accumulator(18)) # (!\Add3~35\))) # (!r_Accumulator(20) & (r_Accumulator(18) & !\Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(20),
	datab => r_Accumulator(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X41_Y3_N10
\r_Accumulator[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[21]~74_combout\ = ((\Add2~3_combout\ $ (\Add3~36_combout\ $ (\r_Accumulator[20]~73\)))) # (GND)
-- \r_Accumulator[21]~75\ = CARRY((\Add2~3_combout\ & (\Add3~36_combout\ & !\r_Accumulator[20]~73\)) # (!\Add2~3_combout\ & ((\Add3~36_combout\) # (!\r_Accumulator[20]~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~36_combout\,
	datad => VCC,
	cin => \r_Accumulator[20]~73\,
	combout => \r_Accumulator[21]~74_combout\,
	cout => \r_Accumulator[21]~75\);

-- Location: FF_X41_Y3_N11
\r_Accumulator[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[21]~74_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(21));

-- Location: LCCOMB_X42_Y3_N10
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (r_Accumulator(21) & ((r_Accumulator(19) & (\Add3~37\ & VCC)) # (!r_Accumulator(19) & (!\Add3~37\)))) # (!r_Accumulator(21) & ((r_Accumulator(19) & (!\Add3~37\)) # (!r_Accumulator(19) & ((\Add3~37\) # (GND)))))
-- \Add3~39\ = CARRY((r_Accumulator(21) & (!r_Accumulator(19) & !\Add3~37\)) # (!r_Accumulator(21) & ((!\Add3~37\) # (!r_Accumulator(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(21),
	datab => r_Accumulator(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X41_Y3_N12
\r_Accumulator[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[22]~76_combout\ = (\Add2~3_combout\ & ((\Add3~38_combout\ & (!\r_Accumulator[21]~75\)) # (!\Add3~38_combout\ & ((\r_Accumulator[21]~75\) # (GND))))) # (!\Add2~3_combout\ & ((\Add3~38_combout\ & (\r_Accumulator[21]~75\ & VCC)) # 
-- (!\Add3~38_combout\ & (!\r_Accumulator[21]~75\))))
-- \r_Accumulator[22]~77\ = CARRY((\Add2~3_combout\ & ((!\r_Accumulator[21]~75\) # (!\Add3~38_combout\))) # (!\Add2~3_combout\ & (!\Add3~38_combout\ & !\r_Accumulator[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~38_combout\,
	datad => VCC,
	cin => \r_Accumulator[21]~75\,
	combout => \r_Accumulator[22]~76_combout\,
	cout => \r_Accumulator[22]~77\);

-- Location: FF_X41_Y3_N13
\r_Accumulator[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[22]~76_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(22));

-- Location: LCCOMB_X42_Y3_N12
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = ((r_Accumulator(20) $ (r_Accumulator(22) $ (!\Add3~39\)))) # (GND)
-- \Add3~41\ = CARRY((r_Accumulator(20) & ((r_Accumulator(22)) # (!\Add3~39\))) # (!r_Accumulator(20) & (r_Accumulator(22) & !\Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(20),
	datab => r_Accumulator(22),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X41_Y3_N14
\r_Accumulator[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[23]~78_combout\ = ((\Add2~3_combout\ $ (\Add3~40_combout\ $ (\r_Accumulator[22]~77\)))) # (GND)
-- \r_Accumulator[23]~79\ = CARRY((\Add2~3_combout\ & (\Add3~40_combout\ & !\r_Accumulator[22]~77\)) # (!\Add2~3_combout\ & ((\Add3~40_combout\) # (!\r_Accumulator[22]~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~40_combout\,
	datad => VCC,
	cin => \r_Accumulator[22]~77\,
	combout => \r_Accumulator[23]~78_combout\,
	cout => \r_Accumulator[23]~79\);

-- Location: FF_X41_Y3_N15
\r_Accumulator[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[23]~78_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(23));

-- Location: LCCOMB_X42_Y3_N14
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (r_Accumulator(23) & ((r_Accumulator(21) & (\Add3~41\ & VCC)) # (!r_Accumulator(21) & (!\Add3~41\)))) # (!r_Accumulator(23) & ((r_Accumulator(21) & (!\Add3~41\)) # (!r_Accumulator(21) & ((\Add3~41\) # (GND)))))
-- \Add3~43\ = CARRY((r_Accumulator(23) & (!r_Accumulator(21) & !\Add3~41\)) # (!r_Accumulator(23) & ((!\Add3~41\) # (!r_Accumulator(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(23),
	datab => r_Accumulator(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X41_Y3_N16
\r_Accumulator[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[24]~80_combout\ = (\Add2~3_combout\ & ((\Add3~42_combout\ & (!\r_Accumulator[23]~79\)) # (!\Add3~42_combout\ & ((\r_Accumulator[23]~79\) # (GND))))) # (!\Add2~3_combout\ & ((\Add3~42_combout\ & (\r_Accumulator[23]~79\ & VCC)) # 
-- (!\Add3~42_combout\ & (!\r_Accumulator[23]~79\))))
-- \r_Accumulator[24]~81\ = CARRY((\Add2~3_combout\ & ((!\r_Accumulator[23]~79\) # (!\Add3~42_combout\))) # (!\Add2~3_combout\ & (!\Add3~42_combout\ & !\r_Accumulator[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~42_combout\,
	datad => VCC,
	cin => \r_Accumulator[23]~79\,
	combout => \r_Accumulator[24]~80_combout\,
	cout => \r_Accumulator[24]~81\);

-- Location: FF_X41_Y3_N17
\r_Accumulator[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[24]~80_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(24));

-- Location: LCCOMB_X42_Y3_N16
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = ((r_Accumulator(24) $ (r_Accumulator(22) $ (!\Add3~43\)))) # (GND)
-- \Add3~45\ = CARRY((r_Accumulator(24) & ((r_Accumulator(22)) # (!\Add3~43\))) # (!r_Accumulator(24) & (r_Accumulator(22) & !\Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(24),
	datab => r_Accumulator(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X41_Y3_N18
\r_Accumulator[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[25]~82_combout\ = ((\Add2~3_combout\ $ (\Add3~44_combout\ $ (\r_Accumulator[24]~81\)))) # (GND)
-- \r_Accumulator[25]~83\ = CARRY((\Add2~3_combout\ & (\Add3~44_combout\ & !\r_Accumulator[24]~81\)) # (!\Add2~3_combout\ & ((\Add3~44_combout\) # (!\r_Accumulator[24]~81\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~44_combout\,
	datad => VCC,
	cin => \r_Accumulator[24]~81\,
	combout => \r_Accumulator[25]~82_combout\,
	cout => \r_Accumulator[25]~83\);

-- Location: FF_X41_Y3_N19
\r_Accumulator[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[25]~82_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(25));

-- Location: LCCOMB_X42_Y3_N18
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (r_Accumulator(23) & ((r_Accumulator(25) & (\Add3~45\ & VCC)) # (!r_Accumulator(25) & (!\Add3~45\)))) # (!r_Accumulator(23) & ((r_Accumulator(25) & (!\Add3~45\)) # (!r_Accumulator(25) & ((\Add3~45\) # (GND)))))
-- \Add3~47\ = CARRY((r_Accumulator(23) & (!r_Accumulator(25) & !\Add3~45\)) # (!r_Accumulator(23) & ((!\Add3~45\) # (!r_Accumulator(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(23),
	datab => r_Accumulator(25),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X41_Y3_N20
\r_Accumulator[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[26]~84_combout\ = (\Add2~3_combout\ & ((\Add3~46_combout\ & (!\r_Accumulator[25]~83\)) # (!\Add3~46_combout\ & ((\r_Accumulator[25]~83\) # (GND))))) # (!\Add2~3_combout\ & ((\Add3~46_combout\ & (\r_Accumulator[25]~83\ & VCC)) # 
-- (!\Add3~46_combout\ & (!\r_Accumulator[25]~83\))))
-- \r_Accumulator[26]~85\ = CARRY((\Add2~3_combout\ & ((!\r_Accumulator[25]~83\) # (!\Add3~46_combout\))) # (!\Add2~3_combout\ & (!\Add3~46_combout\ & !\r_Accumulator[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \Add3~46_combout\,
	datad => VCC,
	cin => \r_Accumulator[25]~83\,
	combout => \r_Accumulator[26]~84_combout\,
	cout => \r_Accumulator[26]~85\);

-- Location: FF_X41_Y3_N21
\r_Accumulator[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[26]~84_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(26));

-- Location: LCCOMB_X42_Y3_N20
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = ((r_Accumulator(24) $ (r_Accumulator(26) $ (!\Add3~47\)))) # (GND)
-- \Add3~49\ = CARRY((r_Accumulator(24) & ((r_Accumulator(26)) # (!\Add3~47\))) # (!r_Accumulator(24) & (r_Accumulator(26) & !\Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(24),
	datab => r_Accumulator(26),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X41_Y3_N22
\r_Accumulator[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[27]~86_combout\ = ((\Add3~48_combout\ $ (\Add2~3_combout\ $ (\r_Accumulator[26]~85\)))) # (GND)
-- \r_Accumulator[27]~87\ = CARRY((\Add3~48_combout\ & ((!\r_Accumulator[26]~85\) # (!\Add2~3_combout\))) # (!\Add3~48_combout\ & (!\Add2~3_combout\ & !\r_Accumulator[26]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~48_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[26]~85\,
	combout => \r_Accumulator[27]~86_combout\,
	cout => \r_Accumulator[27]~87\);

-- Location: FF_X41_Y3_N23
\r_Accumulator[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[27]~86_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(27));

-- Location: LCCOMB_X42_Y3_N22
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (r_Accumulator(27) & ((r_Accumulator(25) & (\Add3~49\ & VCC)) # (!r_Accumulator(25) & (!\Add3~49\)))) # (!r_Accumulator(27) & ((r_Accumulator(25) & (!\Add3~49\)) # (!r_Accumulator(25) & ((\Add3~49\) # (GND)))))
-- \Add3~51\ = CARRY((r_Accumulator(27) & (!r_Accumulator(25) & !\Add3~49\)) # (!r_Accumulator(27) & ((!\Add3~49\) # (!r_Accumulator(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(27),
	datab => r_Accumulator(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X41_Y3_N24
\r_Accumulator[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[28]~88_combout\ = (\Add3~50_combout\ & ((\Add2~3_combout\ & (!\r_Accumulator[27]~87\)) # (!\Add2~3_combout\ & (\r_Accumulator[27]~87\ & VCC)))) # (!\Add3~50_combout\ & ((\Add2~3_combout\ & ((\r_Accumulator[27]~87\) # (GND))) # 
-- (!\Add2~3_combout\ & (!\r_Accumulator[27]~87\))))
-- \r_Accumulator[28]~89\ = CARRY((\Add3~50_combout\ & (\Add2~3_combout\ & !\r_Accumulator[27]~87\)) # (!\Add3~50_combout\ & ((\Add2~3_combout\) # (!\r_Accumulator[27]~87\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~50_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[27]~87\,
	combout => \r_Accumulator[28]~88_combout\,
	cout => \r_Accumulator[28]~89\);

-- Location: FF_X41_Y3_N25
\r_Accumulator[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[28]~88_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(28));

-- Location: LCCOMB_X42_Y3_N24
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = ((r_Accumulator(26) $ (r_Accumulator(28) $ (!\Add3~51\)))) # (GND)
-- \Add3~53\ = CARRY((r_Accumulator(26) & ((r_Accumulator(28)) # (!\Add3~51\))) # (!r_Accumulator(26) & (r_Accumulator(28) & !\Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(26),
	datab => r_Accumulator(28),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X41_Y3_N26
\r_Accumulator[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[29]~90_combout\ = ((\Add3~52_combout\ $ (\Add2~3_combout\ $ (\r_Accumulator[28]~89\)))) # (GND)
-- \r_Accumulator[29]~91\ = CARRY((\Add3~52_combout\ & ((!\r_Accumulator[28]~89\) # (!\Add2~3_combout\))) # (!\Add3~52_combout\ & (!\Add2~3_combout\ & !\r_Accumulator[28]~89\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~52_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[28]~89\,
	combout => \r_Accumulator[29]~90_combout\,
	cout => \r_Accumulator[29]~91\);

-- Location: FF_X41_Y3_N27
\r_Accumulator[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[29]~90_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(29));

-- Location: LCCOMB_X42_Y3_N26
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (r_Accumulator(29) & ((r_Accumulator(27) & (\Add3~53\ & VCC)) # (!r_Accumulator(27) & (!\Add3~53\)))) # (!r_Accumulator(29) & ((r_Accumulator(27) & (!\Add3~53\)) # (!r_Accumulator(27) & ((\Add3~53\) # (GND)))))
-- \Add3~55\ = CARRY((r_Accumulator(29) & (!r_Accumulator(27) & !\Add3~53\)) # (!r_Accumulator(29) & ((!\Add3~53\) # (!r_Accumulator(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(29),
	datab => r_Accumulator(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X41_Y3_N28
\r_Accumulator[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[30]~92_combout\ = (\Add3~54_combout\ & ((\Add2~3_combout\ & (!\r_Accumulator[29]~91\)) # (!\Add2~3_combout\ & (\r_Accumulator[29]~91\ & VCC)))) # (!\Add3~54_combout\ & ((\Add2~3_combout\ & ((\r_Accumulator[29]~91\) # (GND))) # 
-- (!\Add2~3_combout\ & (!\r_Accumulator[29]~91\))))
-- \r_Accumulator[30]~93\ = CARRY((\Add3~54_combout\ & (\Add2~3_combout\ & !\r_Accumulator[29]~91\)) # (!\Add3~54_combout\ & ((\Add2~3_combout\) # (!\r_Accumulator[29]~91\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~54_combout\,
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \r_Accumulator[29]~91\,
	combout => \r_Accumulator[30]~92_combout\,
	cout => \r_Accumulator[30]~93\);

-- Location: FF_X41_Y3_N29
\r_Accumulator[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[30]~92_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(30));

-- Location: LCCOMB_X42_Y3_N28
\Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = r_Accumulator(30) $ (\Add3~55\ $ (!r_Accumulator(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Accumulator(30),
	datad => r_Accumulator(28),
	cin => \Add3~55\,
	combout => \Add3~56_combout\);

-- Location: LCCOMB_X41_Y3_N30
\r_Accumulator[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[31]~94_combout\ = \Add2~3_combout\ $ (\r_Accumulator[30]~93\ $ (\Add3~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datad => \Add3~56_combout\,
	cin => \r_Accumulator[30]~93\,
	combout => \r_Accumulator[31]~94_combout\);

-- Location: FF_X41_Y3_N31
\r_Accumulator[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[31]~94_combout\,
	asdata => \Add2~3_wirecell_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(31));

-- Location: LCCOMB_X40_Y3_N10
\LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!r_Accumulator(17) & (!r_Accumulator(18) & (!r_Accumulator(16) & !r_Accumulator(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(17),
	datab => r_Accumulator(18),
	datac => r_Accumulator(16),
	datad => r_Accumulator(19),
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X40_Y3_N28
\LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (!r_Accumulator(22) & (!r_Accumulator(20) & (!r_Accumulator(21) & !r_Accumulator(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(22),
	datab => r_Accumulator(20),
	datac => r_Accumulator(21),
	datad => r_Accumulator(23),
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X41_Y4_N0
\LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (!r_Accumulator(13) & (!r_Accumulator(14) & (!r_Accumulator(15) & !r_Accumulator(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(13),
	datab => r_Accumulator(14),
	datac => r_Accumulator(15),
	datad => r_Accumulator(12),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X40_Y3_N16
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!r_Accumulator(11) & (!r_Accumulator(10) & (!r_Accumulator(8) & !r_Accumulator(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(11),
	datab => r_Accumulator(10),
	datac => r_Accumulator(8),
	datad => r_Accumulator(9),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X40_Y3_N26
\LessThan5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (\LessThan5~2_combout\ & (\LessThan5~3_combout\ & (\LessThan5~1_combout\ & \LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \LessThan5~3_combout\,
	datac => \LessThan5~1_combout\,
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X40_Y4_N16
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (r_Accumulator(0)) # ((r_Accumulator(3)) # ((r_Accumulator(1)) # (r_Accumulator(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(0),
	datab => r_Accumulator(3),
	datac => r_Accumulator(1),
	datad => r_Accumulator(2),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X42_Y4_N2
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (r_Accumulator(4)) # ((r_Accumulator(6)) # ((r_Accumulator(7)) # (r_Accumulator(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(4),
	datab => r_Accumulator(6),
	datac => r_Accumulator(7),
	datad => r_Accumulator(5),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X40_Y4_N30
\LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\LessThan4~0_combout\) # (\LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~0_combout\,
	datac => \LessThan4~1_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X42_Y3_N30
\LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~5_combout\ = (!r_Accumulator(24) & (!r_Accumulator(27) & (!r_Accumulator(26) & !r_Accumulator(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(24),
	datab => r_Accumulator(27),
	datac => r_Accumulator(26),
	datad => r_Accumulator(25),
	combout => \LessThan5~5_combout\);

-- Location: LCCOMB_X41_Y5_N12
\LessThan5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~6_combout\ = (!r_Accumulator(30) & (!r_Accumulator(28) & (!r_Accumulator(29) & \LessThan5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(30),
	datab => r_Accumulator(28),
	datac => r_Accumulator(29),
	datad => \LessThan5~5_combout\,
	combout => \LessThan5~6_combout\);

-- Location: LCCOMB_X40_Y4_N28
\LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (!r_Accumulator(31) & (((\LessThan4~2_combout\) # (!\LessThan5~6_combout\)) # (!\LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(31),
	datab => \LessThan5~4_combout\,
	datac => \LessThan4~2_combout\,
	datad => \LessThan5~6_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X40_Y4_N14
\r_Accumulator[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Accumulator[9]~35_combout\ = (\r_RX_DV~q\ & (((\r_Timer_State.S_PROCEED~q\ & \LessThan4~3_combout\)) # (!\r_Accumulator[9]~34_combout\))) # (!\r_RX_DV~q\ & (\r_Timer_State.S_PROCEED~q\ & ((\LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_DV~q\,
	datab => \r_Timer_State.S_PROCEED~q\,
	datac => \r_Accumulator[9]~34_combout\,
	datad => \LessThan4~3_combout\,
	combout => \r_Accumulator[9]~35_combout\);

-- Location: FF_X41_Y4_N3
\r_Accumulator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[1]~31_combout\,
	asdata => r_RX_Byte(1),
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(1));

-- Location: FF_X41_Y4_N5
\r_Accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[2]~36_combout\,
	asdata => r_RX_Byte(2),
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(2));

-- Location: FF_X41_Y4_N7
\r_Accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Accumulator[3]~38_combout\,
	asdata => r_RX_Byte(3),
	clrn => \ALT_INV_i_Reset~input_o\,
	sclr => \r_Accumulator[9]~33_combout\,
	sload => \ALT_INV_r_Timer_State.S_DIGIT_1~q\,
	ena => \r_Accumulator[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(3));

-- Location: LCCOMB_X34_Y2_N26
\Inst_ClockDiv|count_5Hz[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz[0]~8_combout\ = !\Inst_ClockDiv|count_5Hz\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|count_5Hz\(0),
	combout => \Inst_ClockDiv|count_5Hz[0]~8_combout\);

-- Location: FF_X35_Y2_N9
\Inst_ClockDiv|count_5Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \Inst_ClockDiv|count_5Hz[0]~8_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(0));

-- Location: LCCOMB_X34_Y5_N10
\Inst_ClockDiv|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~1_cout\ = CARRY(!\Inst_ClockDiv|count_5Hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(0),
	datad => VCC,
	cout => \Inst_ClockDiv|Add2~1_cout\);

-- Location: LCCOMB_X34_Y5_N12
\Inst_ClockDiv|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~2_combout\ = (\Inst_ClockDiv|count_5Hz\(1) & (!\Inst_ClockDiv|Add2~1_cout\)) # (!\Inst_ClockDiv|count_5Hz\(1) & ((\Inst_ClockDiv|Add2~1_cout\) # (GND)))
-- \Inst_ClockDiv|Add2~3\ = CARRY((!\Inst_ClockDiv|Add2~1_cout\) # (!\Inst_ClockDiv|count_5Hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(1),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~1_cout\,
	combout => \Inst_ClockDiv|Add2~2_combout\,
	cout => \Inst_ClockDiv|Add2~3\);

-- Location: FF_X34_Y5_N13
\Inst_ClockDiv|count_5Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~2_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(1));

-- Location: LCCOMB_X35_Y2_N8
\Inst_ClockDiv|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~1_cout\ = CARRY((\Inst_ClockDiv|count_5Hz\(1) & !\Inst_ClockDiv|count_5Hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(1),
	datab => \Inst_ClockDiv|count_5Hz\(0),
	datad => VCC,
	cout => \Inst_ClockDiv|Add1~1_cout\);

-- Location: LCCOMB_X35_Y2_N10
\Inst_ClockDiv|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~2_combout\ = (\Inst_ClockDiv|count_1Hz\(2) & (!\Inst_ClockDiv|Add1~1_cout\)) # (!\Inst_ClockDiv|count_1Hz\(2) & ((\Inst_ClockDiv|Add1~1_cout\) # (GND)))
-- \Inst_ClockDiv|Add1~3\ = CARRY((!\Inst_ClockDiv|Add1~1_cout\) # (!\Inst_ClockDiv|count_1Hz\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(2),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~1_cout\,
	combout => \Inst_ClockDiv|Add1~2_combout\,
	cout => \Inst_ClockDiv|Add1~3\);

-- Location: FF_X35_Y2_N11
\Inst_ClockDiv|count_1Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~2_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(2));

-- Location: LCCOMB_X35_Y2_N12
\Inst_ClockDiv|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~4_combout\ = (\Inst_ClockDiv|count_1Hz\(3) & (\Inst_ClockDiv|Add1~3\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(3) & (!\Inst_ClockDiv|Add1~3\ & VCC))
-- \Inst_ClockDiv|Add1~5\ = CARRY((\Inst_ClockDiv|count_1Hz\(3) & !\Inst_ClockDiv|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(3),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~3\,
	combout => \Inst_ClockDiv|Add1~4_combout\,
	cout => \Inst_ClockDiv|Add1~5\);

-- Location: FF_X35_Y2_N13
\Inst_ClockDiv|count_1Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~4_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(3));

-- Location: LCCOMB_X35_Y2_N14
\Inst_ClockDiv|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~6_combout\ = (\Inst_ClockDiv|count_1Hz\(4) & (!\Inst_ClockDiv|Add1~5\)) # (!\Inst_ClockDiv|count_1Hz\(4) & ((\Inst_ClockDiv|Add1~5\) # (GND)))
-- \Inst_ClockDiv|Add1~7\ = CARRY((!\Inst_ClockDiv|Add1~5\) # (!\Inst_ClockDiv|count_1Hz\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(4),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~5\,
	combout => \Inst_ClockDiv|Add1~6_combout\,
	cout => \Inst_ClockDiv|Add1~7\);

-- Location: FF_X35_Y2_N15
\Inst_ClockDiv|count_1Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~6_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(4));

-- Location: LCCOMB_X35_Y2_N16
\Inst_ClockDiv|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~8_combout\ = (\Inst_ClockDiv|count_1Hz\(5) & (\Inst_ClockDiv|Add1~7\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(5) & (!\Inst_ClockDiv|Add1~7\ & VCC))
-- \Inst_ClockDiv|Add1~9\ = CARRY((\Inst_ClockDiv|count_1Hz\(5) & !\Inst_ClockDiv|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(5),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~7\,
	combout => \Inst_ClockDiv|Add1~8_combout\,
	cout => \Inst_ClockDiv|Add1~9\);

-- Location: FF_X35_Y2_N17
\Inst_ClockDiv|count_1Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~8_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(5));

-- Location: LCCOMB_X35_Y2_N18
\Inst_ClockDiv|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~10_combout\ = (\Inst_ClockDiv|count_1Hz\(6) & (!\Inst_ClockDiv|Add1~9\)) # (!\Inst_ClockDiv|count_1Hz\(6) & ((\Inst_ClockDiv|Add1~9\) # (GND)))
-- \Inst_ClockDiv|Add1~11\ = CARRY((!\Inst_ClockDiv|Add1~9\) # (!\Inst_ClockDiv|count_1Hz\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(6),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~9\,
	combout => \Inst_ClockDiv|Add1~10_combout\,
	cout => \Inst_ClockDiv|Add1~11\);

-- Location: LCCOMB_X35_Y2_N0
\Inst_ClockDiv|count_1Hz~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~11_combout\ = (\Inst_ClockDiv|Add1~10_combout\ & !\Inst_ClockDiv|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|Add1~10_combout\,
	datac => \Inst_ClockDiv|Equal1~7_combout\,
	combout => \Inst_ClockDiv|count_1Hz~11_combout\);

-- Location: FF_X35_Y2_N1
\Inst_ClockDiv|count_1Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~11_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(6));

-- Location: LCCOMB_X35_Y2_N6
\Inst_ClockDiv|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal1~6_combout\ = (!\Inst_ClockDiv|count_1Hz\(3) & (\Inst_ClockDiv|count_1Hz\(6) & (!\Inst_ClockDiv|count_1Hz\(4) & !\Inst_ClockDiv|count_1Hz\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(3),
	datab => \Inst_ClockDiv|count_1Hz\(6),
	datac => \Inst_ClockDiv|count_1Hz\(4),
	datad => \Inst_ClockDiv|count_1Hz\(5),
	combout => \Inst_ClockDiv|Equal1~6_combout\);

-- Location: LCCOMB_X35_Y2_N20
\Inst_ClockDiv|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~12_combout\ = (\Inst_ClockDiv|count_1Hz\(7) & (\Inst_ClockDiv|Add1~11\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(7) & (!\Inst_ClockDiv|Add1~11\ & VCC))
-- \Inst_ClockDiv|Add1~13\ = CARRY((\Inst_ClockDiv|count_1Hz\(7) & !\Inst_ClockDiv|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(7),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~11\,
	combout => \Inst_ClockDiv|Add1~12_combout\,
	cout => \Inst_ClockDiv|Add1~13\);

-- Location: FF_X35_Y2_N21
\Inst_ClockDiv|count_1Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~12_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(7));

-- Location: LCCOMB_X35_Y2_N22
\Inst_ClockDiv|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~14_combout\ = (\Inst_ClockDiv|count_1Hz\(8) & (!\Inst_ClockDiv|Add1~13\)) # (!\Inst_ClockDiv|count_1Hz\(8) & ((\Inst_ClockDiv|Add1~13\) # (GND)))
-- \Inst_ClockDiv|Add1~15\ = CARRY((!\Inst_ClockDiv|Add1~13\) # (!\Inst_ClockDiv|count_1Hz\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(8),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~13\,
	combout => \Inst_ClockDiv|Add1~14_combout\,
	cout => \Inst_ClockDiv|Add1~15\);

-- Location: FF_X35_Y2_N23
\Inst_ClockDiv|count_1Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~14_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(8));

-- Location: LCCOMB_X35_Y2_N24
\Inst_ClockDiv|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~16_combout\ = (\Inst_ClockDiv|count_1Hz\(9) & (\Inst_ClockDiv|Add1~15\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(9) & (!\Inst_ClockDiv|Add1~15\ & VCC))
-- \Inst_ClockDiv|Add1~17\ = CARRY((\Inst_ClockDiv|count_1Hz\(9) & !\Inst_ClockDiv|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(9),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~15\,
	combout => \Inst_ClockDiv|Add1~16_combout\,
	cout => \Inst_ClockDiv|Add1~17\);

-- Location: FF_X35_Y2_N25
\Inst_ClockDiv|count_1Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~16_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(9));

-- Location: LCCOMB_X35_Y2_N26
\Inst_ClockDiv|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~18_combout\ = (\Inst_ClockDiv|count_1Hz\(10) & (!\Inst_ClockDiv|Add1~17\)) # (!\Inst_ClockDiv|count_1Hz\(10) & ((\Inst_ClockDiv|Add1~17\) # (GND)))
-- \Inst_ClockDiv|Add1~19\ = CARRY((!\Inst_ClockDiv|Add1~17\) # (!\Inst_ClockDiv|count_1Hz\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(10),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~17\,
	combout => \Inst_ClockDiv|Add1~18_combout\,
	cout => \Inst_ClockDiv|Add1~19\);

-- Location: FF_X35_Y2_N27
\Inst_ClockDiv|count_1Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~18_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(10));

-- Location: LCCOMB_X34_Y2_N22
\Inst_ClockDiv|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal1~5_combout\ = (!\Inst_ClockDiv|count_1Hz\(9) & (!\Inst_ClockDiv|count_1Hz\(10) & (!\Inst_ClockDiv|count_1Hz\(7) & !\Inst_ClockDiv|count_1Hz\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(9),
	datab => \Inst_ClockDiv|count_1Hz\(10),
	datac => \Inst_ClockDiv|count_1Hz\(7),
	datad => \Inst_ClockDiv|count_1Hz\(8),
	combout => \Inst_ClockDiv|Equal1~5_combout\);

-- Location: LCCOMB_X35_Y2_N28
\Inst_ClockDiv|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~20_combout\ = (\Inst_ClockDiv|count_1Hz\(11) & (\Inst_ClockDiv|Add1~19\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(11) & (!\Inst_ClockDiv|Add1~19\ & VCC))
-- \Inst_ClockDiv|Add1~21\ = CARRY((\Inst_ClockDiv|count_1Hz\(11) & !\Inst_ClockDiv|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(11),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~19\,
	combout => \Inst_ClockDiv|Add1~20_combout\,
	cout => \Inst_ClockDiv|Add1~21\);

-- Location: LCCOMB_X35_Y2_N2
\Inst_ClockDiv|count_1Hz~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~10_combout\ = (!\Inst_ClockDiv|Equal1~7_combout\ & \Inst_ClockDiv|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Equal1~7_combout\,
	datad => \Inst_ClockDiv|Add1~20_combout\,
	combout => \Inst_ClockDiv|count_1Hz~10_combout\);

-- Location: FF_X35_Y2_N3
\Inst_ClockDiv|count_1Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~10_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(11));

-- Location: LCCOMB_X35_Y2_N30
\Inst_ClockDiv|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~22_combout\ = (\Inst_ClockDiv|count_1Hz\(12) & (!\Inst_ClockDiv|Add1~21\)) # (!\Inst_ClockDiv|count_1Hz\(12) & ((\Inst_ClockDiv|Add1~21\) # (GND)))
-- \Inst_ClockDiv|Add1~23\ = CARRY((!\Inst_ClockDiv|Add1~21\) # (!\Inst_ClockDiv|count_1Hz\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(12),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~21\,
	combout => \Inst_ClockDiv|Add1~22_combout\,
	cout => \Inst_ClockDiv|Add1~23\);

-- Location: LCCOMB_X35_Y2_N4
\Inst_ClockDiv|count_1Hz~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~9_combout\ = (\Inst_ClockDiv|Add1~22_combout\ & !\Inst_ClockDiv|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Add1~22_combout\,
	datac => \Inst_ClockDiv|Equal1~7_combout\,
	combout => \Inst_ClockDiv|count_1Hz~9_combout\);

-- Location: FF_X35_Y2_N5
\Inst_ClockDiv|count_1Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~9_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(12));

-- Location: LCCOMB_X35_Y1_N0
\Inst_ClockDiv|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~24_combout\ = (\Inst_ClockDiv|count_1Hz\(13) & (\Inst_ClockDiv|Add1~23\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(13) & (!\Inst_ClockDiv|Add1~23\ & VCC))
-- \Inst_ClockDiv|Add1~25\ = CARRY((\Inst_ClockDiv|count_1Hz\(13) & !\Inst_ClockDiv|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(13),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~23\,
	combout => \Inst_ClockDiv|Add1~24_combout\,
	cout => \Inst_ClockDiv|Add1~25\);

-- Location: LCCOMB_X34_Y1_N16
\Inst_ClockDiv|count_1Hz~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~8_combout\ = (\Inst_ClockDiv|Add1~24_combout\ & !\Inst_ClockDiv|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Add1~24_combout\,
	datad => \Inst_ClockDiv|Equal1~7_combout\,
	combout => \Inst_ClockDiv|count_1Hz~8_combout\);

-- Location: FF_X34_Y1_N17
\Inst_ClockDiv|count_1Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~8_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(13));

-- Location: LCCOMB_X35_Y1_N2
\Inst_ClockDiv|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~26_combout\ = (\Inst_ClockDiv|count_1Hz\(14) & (!\Inst_ClockDiv|Add1~25\)) # (!\Inst_ClockDiv|count_1Hz\(14) & ((\Inst_ClockDiv|Add1~25\) # (GND)))
-- \Inst_ClockDiv|Add1~27\ = CARRY((!\Inst_ClockDiv|Add1~25\) # (!\Inst_ClockDiv|count_1Hz\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(14),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~25\,
	combout => \Inst_ClockDiv|Add1~26_combout\,
	cout => \Inst_ClockDiv|Add1~27\);

-- Location: LCCOMB_X35_Y1_N26
\Inst_ClockDiv|count_1Hz~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~7_combout\ = (\Inst_ClockDiv|Add1~26_combout\ & !\Inst_ClockDiv|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|Add1~26_combout\,
	datad => \Inst_ClockDiv|Equal1~7_combout\,
	combout => \Inst_ClockDiv|count_1Hz~7_combout\);

-- Location: FF_X35_Y1_N27
\Inst_ClockDiv|count_1Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~7_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(14));

-- Location: LCCOMB_X34_Y2_N30
\Inst_ClockDiv|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal1~3_combout\ = (\Inst_ClockDiv|count_1Hz\(11) & (\Inst_ClockDiv|count_1Hz\(13) & (\Inst_ClockDiv|count_1Hz\(14) & \Inst_ClockDiv|count_1Hz\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(11),
	datab => \Inst_ClockDiv|count_1Hz\(13),
	datac => \Inst_ClockDiv|count_1Hz\(14),
	datad => \Inst_ClockDiv|count_1Hz\(12),
	combout => \Inst_ClockDiv|Equal1~3_combout\);

-- Location: LCCOMB_X35_Y1_N4
\Inst_ClockDiv|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~28_combout\ = (\Inst_ClockDiv|count_1Hz\(15) & (\Inst_ClockDiv|Add1~27\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(15) & (!\Inst_ClockDiv|Add1~27\ & VCC))
-- \Inst_ClockDiv|Add1~29\ = CARRY((\Inst_ClockDiv|count_1Hz\(15) & !\Inst_ClockDiv|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(15),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~27\,
	combout => \Inst_ClockDiv|Add1~28_combout\,
	cout => \Inst_ClockDiv|Add1~29\);

-- Location: FF_X35_Y1_N5
\Inst_ClockDiv|count_1Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~28_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(15));

-- Location: LCCOMB_X35_Y1_N6
\Inst_ClockDiv|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~30_combout\ = (\Inst_ClockDiv|count_1Hz\(16) & (!\Inst_ClockDiv|Add1~29\)) # (!\Inst_ClockDiv|count_1Hz\(16) & ((\Inst_ClockDiv|Add1~29\) # (GND)))
-- \Inst_ClockDiv|Add1~31\ = CARRY((!\Inst_ClockDiv|Add1~29\) # (!\Inst_ClockDiv|count_1Hz\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(16),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~29\,
	combout => \Inst_ClockDiv|Add1~30_combout\,
	cout => \Inst_ClockDiv|Add1~31\);

-- Location: LCCOMB_X34_Y1_N24
\Inst_ClockDiv|count_1Hz~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~6_combout\ = (!\Inst_ClockDiv|Equal1~7_combout\ & \Inst_ClockDiv|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Equal1~7_combout\,
	datad => \Inst_ClockDiv|Add1~30_combout\,
	combout => \Inst_ClockDiv|count_1Hz~6_combout\);

-- Location: FF_X34_Y1_N25
\Inst_ClockDiv|count_1Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~6_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(16));

-- Location: LCCOMB_X35_Y1_N8
\Inst_ClockDiv|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~32_combout\ = (\Inst_ClockDiv|count_1Hz\(17) & (\Inst_ClockDiv|Add1~31\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(17) & (!\Inst_ClockDiv|Add1~31\ & VCC))
-- \Inst_ClockDiv|Add1~33\ = CARRY((\Inst_ClockDiv|count_1Hz\(17) & !\Inst_ClockDiv|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(17),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~31\,
	combout => \Inst_ClockDiv|Add1~32_combout\,
	cout => \Inst_ClockDiv|Add1~33\);

-- Location: FF_X35_Y1_N9
\Inst_ClockDiv|count_1Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~32_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(17));

-- Location: LCCOMB_X35_Y1_N10
\Inst_ClockDiv|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~34_combout\ = (\Inst_ClockDiv|count_1Hz\(18) & (!\Inst_ClockDiv|Add1~33\)) # (!\Inst_ClockDiv|count_1Hz\(18) & ((\Inst_ClockDiv|Add1~33\) # (GND)))
-- \Inst_ClockDiv|Add1~35\ = CARRY((!\Inst_ClockDiv|Add1~33\) # (!\Inst_ClockDiv|count_1Hz\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(18),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~33\,
	combout => \Inst_ClockDiv|Add1~34_combout\,
	cout => \Inst_ClockDiv|Add1~35\);

-- Location: LCCOMB_X34_Y1_N22
\Inst_ClockDiv|count_1Hz~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~5_combout\ = (\Inst_ClockDiv|Add1~34_combout\ & !\Inst_ClockDiv|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Add1~34_combout\,
	datad => \Inst_ClockDiv|Equal1~7_combout\,
	combout => \Inst_ClockDiv|count_1Hz~5_combout\);

-- Location: FF_X34_Y1_N23
\Inst_ClockDiv|count_1Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~5_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(18));

-- Location: LCCOMB_X35_Y1_N12
\Inst_ClockDiv|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~36_combout\ = (\Inst_ClockDiv|count_1Hz\(19) & (\Inst_ClockDiv|Add1~35\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(19) & (!\Inst_ClockDiv|Add1~35\ & VCC))
-- \Inst_ClockDiv|Add1~37\ = CARRY((\Inst_ClockDiv|count_1Hz\(19) & !\Inst_ClockDiv|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(19),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~35\,
	combout => \Inst_ClockDiv|Add1~36_combout\,
	cout => \Inst_ClockDiv|Add1~37\);

-- Location: LCCOMB_X34_Y1_N30
\Inst_ClockDiv|count_1Hz~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~4_combout\ = (\Inst_ClockDiv|Add1~36_combout\ & !\Inst_ClockDiv|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Add1~36_combout\,
	datad => \Inst_ClockDiv|Equal1~7_combout\,
	combout => \Inst_ClockDiv|count_1Hz~4_combout\);

-- Location: FF_X34_Y1_N31
\Inst_ClockDiv|count_1Hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~4_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(19));

-- Location: LCCOMB_X35_Y1_N14
\Inst_ClockDiv|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~38_combout\ = (\Inst_ClockDiv|count_1Hz\(20) & (!\Inst_ClockDiv|Add1~37\)) # (!\Inst_ClockDiv|count_1Hz\(20) & ((\Inst_ClockDiv|Add1~37\) # (GND)))
-- \Inst_ClockDiv|Add1~39\ = CARRY((!\Inst_ClockDiv|Add1~37\) # (!\Inst_ClockDiv|count_1Hz\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(20),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~37\,
	combout => \Inst_ClockDiv|Add1~38_combout\,
	cout => \Inst_ClockDiv|Add1~39\);

-- Location: LCCOMB_X35_Y1_N28
\Inst_ClockDiv|count_1Hz~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~3_combout\ = (\Inst_ClockDiv|Add1~38_combout\ & !\Inst_ClockDiv|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Add1~38_combout\,
	datad => \Inst_ClockDiv|Equal1~7_combout\,
	combout => \Inst_ClockDiv|count_1Hz~3_combout\);

-- Location: FF_X35_Y1_N29
\Inst_ClockDiv|count_1Hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~3_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(20));

-- Location: LCCOMB_X35_Y1_N16
\Inst_ClockDiv|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~40_combout\ = (\Inst_ClockDiv|count_1Hz\(21) & (\Inst_ClockDiv|Add1~39\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(21) & (!\Inst_ClockDiv|Add1~39\ & VCC))
-- \Inst_ClockDiv|Add1~41\ = CARRY((\Inst_ClockDiv|count_1Hz\(21) & !\Inst_ClockDiv|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(21),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~39\,
	combout => \Inst_ClockDiv|Add1~40_combout\,
	cout => \Inst_ClockDiv|Add1~41\);

-- Location: LCCOMB_X35_Y1_N30
\Inst_ClockDiv|count_1Hz~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~2_combout\ = (!\Inst_ClockDiv|Equal1~7_combout\ & \Inst_ClockDiv|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Equal1~7_combout\,
	datad => \Inst_ClockDiv|Add1~40_combout\,
	combout => \Inst_ClockDiv|count_1Hz~2_combout\);

-- Location: FF_X35_Y1_N31
\Inst_ClockDiv|count_1Hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~2_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(21));

-- Location: LCCOMB_X35_Y1_N18
\Inst_ClockDiv|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~42_combout\ = (\Inst_ClockDiv|count_1Hz\(22) & (!\Inst_ClockDiv|Add1~41\)) # (!\Inst_ClockDiv|count_1Hz\(22) & ((\Inst_ClockDiv|Add1~41\) # (GND)))
-- \Inst_ClockDiv|Add1~43\ = CARRY((!\Inst_ClockDiv|Add1~41\) # (!\Inst_ClockDiv|count_1Hz\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(22),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~41\,
	combout => \Inst_ClockDiv|Add1~42_combout\,
	cout => \Inst_ClockDiv|Add1~43\);

-- Location: LCCOMB_X35_Y1_N24
\Inst_ClockDiv|count_1Hz~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~1_combout\ = (!\Inst_ClockDiv|Equal1~7_combout\ & \Inst_ClockDiv|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Equal1~7_combout\,
	datad => \Inst_ClockDiv|Add1~42_combout\,
	combout => \Inst_ClockDiv|count_1Hz~1_combout\);

-- Location: FF_X35_Y1_N25
\Inst_ClockDiv|count_1Hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~1_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(22));

-- Location: LCCOMB_X34_Y1_N0
\Inst_ClockDiv|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal1~1_combout\ = (\Inst_ClockDiv|count_1Hz\(21) & (\Inst_ClockDiv|count_1Hz\(22) & (\Inst_ClockDiv|count_1Hz\(19) & \Inst_ClockDiv|count_1Hz\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(21),
	datab => \Inst_ClockDiv|count_1Hz\(22),
	datac => \Inst_ClockDiv|count_1Hz\(19),
	datad => \Inst_ClockDiv|count_1Hz\(20),
	combout => \Inst_ClockDiv|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y1_N20
\Inst_ClockDiv|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~44_combout\ = (\Inst_ClockDiv|count_1Hz\(23) & (\Inst_ClockDiv|Add1~43\ $ (GND))) # (!\Inst_ClockDiv|count_1Hz\(23) & (!\Inst_ClockDiv|Add1~43\ & VCC))
-- \Inst_ClockDiv|Add1~45\ = CARRY((\Inst_ClockDiv|count_1Hz\(23) & !\Inst_ClockDiv|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_1Hz\(23),
	datad => VCC,
	cin => \Inst_ClockDiv|Add1~43\,
	combout => \Inst_ClockDiv|Add1~44_combout\,
	cout => \Inst_ClockDiv|Add1~45\);

-- Location: FF_X35_Y1_N21
\Inst_ClockDiv|count_1Hz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add1~44_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(23));

-- Location: LCCOMB_X35_Y1_N22
\Inst_ClockDiv|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add1~46_combout\ = \Inst_ClockDiv|Add1~45\ $ (\Inst_ClockDiv|count_1Hz\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_ClockDiv|count_1Hz\(24),
	cin => \Inst_ClockDiv|Add1~45\,
	combout => \Inst_ClockDiv|Add1~46_combout\);

-- Location: LCCOMB_X34_Y1_N12
\Inst_ClockDiv|count_1Hz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_1Hz~0_combout\ = (!\Inst_ClockDiv|Equal1~7_combout\ & \Inst_ClockDiv|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|Equal1~7_combout\,
	datad => \Inst_ClockDiv|Add1~46_combout\,
	combout => \Inst_ClockDiv|count_1Hz~0_combout\);

-- Location: FF_X34_Y1_N13
\Inst_ClockDiv|count_1Hz[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_1Hz~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_1Hz\(24));

-- Location: LCCOMB_X34_Y2_N4
\Inst_ClockDiv|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal1~0_combout\ = (\Inst_ClockDiv|count_5Hz\(0) & (!\Inst_ClockDiv|count_5Hz\(1) & (!\Inst_ClockDiv|count_1Hz\(23) & \Inst_ClockDiv|count_1Hz\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(0),
	datab => \Inst_ClockDiv|count_5Hz\(1),
	datac => \Inst_ClockDiv|count_1Hz\(23),
	datad => \Inst_ClockDiv|count_1Hz\(24),
	combout => \Inst_ClockDiv|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y1_N26
\Inst_ClockDiv|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal1~2_combout\ = (\Inst_ClockDiv|count_1Hz\(18) & (\Inst_ClockDiv|count_1Hz\(16) & (!\Inst_ClockDiv|count_1Hz\(17) & !\Inst_ClockDiv|count_1Hz\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_1Hz\(18),
	datab => \Inst_ClockDiv|count_1Hz\(16),
	datac => \Inst_ClockDiv|count_1Hz\(17),
	datad => \Inst_ClockDiv|count_1Hz\(15),
	combout => \Inst_ClockDiv|Equal1~2_combout\);

-- Location: LCCOMB_X34_Y2_N28
\Inst_ClockDiv|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal1~4_combout\ = (\Inst_ClockDiv|Equal1~3_combout\ & (\Inst_ClockDiv|Equal1~1_combout\ & (\Inst_ClockDiv|Equal1~0_combout\ & \Inst_ClockDiv|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal1~3_combout\,
	datab => \Inst_ClockDiv|Equal1~1_combout\,
	datac => \Inst_ClockDiv|Equal1~0_combout\,
	datad => \Inst_ClockDiv|Equal1~2_combout\,
	combout => \Inst_ClockDiv|Equal1~4_combout\);

-- Location: LCCOMB_X34_Y2_N0
\Inst_ClockDiv|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal1~7_combout\ = (\Inst_ClockDiv|Equal1~6_combout\ & (!\Inst_ClockDiv|count_1Hz\(2) & (\Inst_ClockDiv|Equal1~5_combout\ & \Inst_ClockDiv|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal1~6_combout\,
	datab => \Inst_ClockDiv|count_1Hz\(2),
	datac => \Inst_ClockDiv|Equal1~5_combout\,
	datad => \Inst_ClockDiv|Equal1~4_combout\,
	combout => \Inst_ClockDiv|Equal1~7_combout\);

-- Location: LCCOMB_X33_Y4_N28
\Inst_ClockDiv|clk_1Hz_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|clk_1Hz_reg~0_combout\ = \Inst_ClockDiv|clk_1Hz_reg~q\ $ (\Inst_ClockDiv|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_ClockDiv|clk_1Hz_reg~q\,
	datad => \Inst_ClockDiv|Equal1~7_combout\,
	combout => \Inst_ClockDiv|clk_1Hz_reg~0_combout\);

-- Location: LCCOMB_X33_Y4_N30
\Inst_ClockDiv|clk_1Hz_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|clk_1Hz_reg~feeder_combout\ = \Inst_ClockDiv|clk_1Hz_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_ClockDiv|clk_1Hz_reg~0_combout\,
	combout => \Inst_ClockDiv|clk_1Hz_reg~feeder_combout\);

-- Location: FF_X33_Y4_N31
\Inst_ClockDiv|clk_1Hz_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|clk_1Hz_reg~feeder_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|clk_1Hz_reg~q\);

-- Location: FF_X33_Y4_N17
r_1Hz_d1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	asdata => \Inst_ClockDiv|clk_1Hz_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_1Hz_d1~q\);

-- Location: FF_X38_Y4_N17
r_1Hz_d2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	asdata => \r_1Hz_d1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_1Hz_d2~q\);

-- Location: LCCOMB_X38_Y4_N16
\r_Timer_Count[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[7]~1_combout\ = (\r_1Hz_d1~q\ & (!\r_1Hz_d2~q\ & ((r_Timer_Count(0)) # (!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(0),
	datab => \r_1Hz_d1~q\,
	datac => \r_1Hz_d2~q\,
	datad => \Equal3~1_combout\,
	combout => \r_Timer_Count[7]~1_combout\);

-- Location: LCCOMB_X40_Y4_N18
\r_Timer_Count[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[7]~2_combout\ = (\r_Timer_State.S_PROCEED~q\ & ((\r_Timer_Count[7]~1_combout\) # (\LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_State.S_PROCEED~q\,
	datac => \r_Timer_Count[7]~1_combout\,
	datad => \LessThan4~3_combout\,
	combout => \r_Timer_Count[7]~2_combout\);

-- Location: LCCOMB_X39_Y4_N8
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = r_Timer_Count(0) $ (VCC)
-- \Add5~1\ = CARRY(r_Timer_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_Timer_Count(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X39_Y4_N10
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (r_Timer_Count(1) & (\Add5~1\ & VCC)) # (!r_Timer_Count(1) & (!\Add5~1\))
-- \Add5~3\ = CARRY((!r_Timer_Count(1) & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X39_Y4_N26
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (r_Timer_Count(0) & \Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_Timer_Count(0),
	datad => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X40_Y4_N20
\Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (!r_Accumulator(31) & ((!\LessThan5~6_combout\) # (!\LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(31),
	datac => \LessThan5~4_combout\,
	datad => \LessThan5~6_combout\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X40_Y4_N6
\r_Timer_Count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[0]~3_combout\ = (!\Selector59~0_combout\ & (\r_Timer_Count[7]~2_combout\ & ((\LessThan4~3_combout\) # (!\Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Selector59~0_combout\,
	datac => \LessThan4~3_combout\,
	datad => \r_Timer_Count[7]~2_combout\,
	combout => \r_Timer_Count[0]~3_combout\);

-- Location: LCCOMB_X40_Y4_N24
\r_Timer_Count[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[1]~5_combout\ = (\r_Timer_Count[0]~3_combout\ & ((\LessThan4~3_combout\ & (r_Accumulator(1))) # (!\LessThan4~3_combout\ & ((\Add5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(1),
	datab => \LessThan4~3_combout\,
	datac => \Add5~2_combout\,
	datad => \r_Timer_Count[0]~3_combout\,
	combout => \r_Timer_Count[1]~5_combout\);

-- Location: LCCOMB_X40_Y4_N4
\r_Timer_Count[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[1]~6_combout\ = (\r_Timer_Count[1]~5_combout\) # ((!\r_Timer_Count[7]~2_combout\ & r_Timer_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_Count[7]~2_combout\,
	datac => r_Timer_Count(1),
	datad => \r_Timer_Count[1]~5_combout\,
	combout => \r_Timer_Count[1]~6_combout\);

-- Location: FF_X40_Y4_N5
\r_Timer_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_Count[1]~6_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Timer_Count(1));

-- Location: LCCOMB_X39_Y4_N12
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (r_Timer_Count(2) & ((GND) # (!\Add5~3\))) # (!r_Timer_Count(2) & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((r_Timer_Count(2)) # (!\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Timer_Count(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X40_Y4_N10
\r_Timer_Count[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[2]~7_combout\ = (\r_Timer_Count[0]~3_combout\ & ((\LessThan4~3_combout\ & (r_Accumulator(2))) # (!\LessThan4~3_combout\ & ((\Add5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(2),
	datab => \LessThan4~3_combout\,
	datac => \Add5~4_combout\,
	datad => \r_Timer_Count[0]~3_combout\,
	combout => \r_Timer_Count[2]~7_combout\);

-- Location: LCCOMB_X40_Y4_N26
\r_Timer_Count[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[2]~8_combout\ = (\r_Timer_Count[2]~7_combout\) # ((!\r_Timer_Count[7]~2_combout\ & r_Timer_Count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_Count[7]~2_combout\,
	datac => r_Timer_Count(2),
	datad => \r_Timer_Count[2]~7_combout\,
	combout => \r_Timer_Count[2]~8_combout\);

-- Location: FF_X40_Y4_N27
\r_Timer_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_Count[2]~8_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Timer_Count(2));

-- Location: LCCOMB_X39_Y4_N14
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (r_Timer_Count(3) & (\Add5~5\ & VCC)) # (!r_Timer_Count(3) & (!\Add5~5\))
-- \Add5~7\ = CARRY((!r_Timer_Count(3) & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Timer_Count(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X38_Y4_N14
\r_Timer_Count[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[3]~9_combout\ = (\LessThan4~3_combout\ & (r_Accumulator(3))) # (!\LessThan4~3_combout\ & ((\Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_Accumulator(3),
	datac => \Add5~6_combout\,
	datad => \LessThan4~3_combout\,
	combout => \r_Timer_Count[3]~9_combout\);

-- Location: LCCOMB_X39_Y4_N4
\r_Timer_Count[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[3]~10_combout\ = (\r_Timer_Count[3]~9_combout\ & ((\r_Timer_Count[0]~3_combout\) # ((!\r_Timer_Count[7]~2_combout\ & r_Timer_Count(3))))) # (!\r_Timer_Count[3]~9_combout\ & (!\r_Timer_Count[7]~2_combout\ & (r_Timer_Count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_Count[3]~9_combout\,
	datab => \r_Timer_Count[7]~2_combout\,
	datac => r_Timer_Count(3),
	datad => \r_Timer_Count[0]~3_combout\,
	combout => \r_Timer_Count[3]~10_combout\);

-- Location: FF_X39_Y4_N5
\r_Timer_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_Count[3]~10_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Timer_Count(3));

-- Location: LCCOMB_X39_Y4_N16
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (r_Timer_Count(4) & ((GND) # (!\Add5~7\))) # (!r_Timer_Count(4) & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((r_Timer_Count(4)) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X39_Y4_N0
\r_Timer_Count[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[4]~11_combout\ = (\r_Timer_Count[0]~3_combout\ & ((\LessThan4~3_combout\ & (r_Accumulator(4))) # (!\LessThan4~3_combout\ & ((\Add5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(4),
	datab => \Add5~8_combout\,
	datac => \LessThan4~3_combout\,
	datad => \r_Timer_Count[0]~3_combout\,
	combout => \r_Timer_Count[4]~11_combout\);

-- Location: LCCOMB_X39_Y4_N6
\r_Timer_Count[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[4]~12_combout\ = (\r_Timer_Count[4]~11_combout\) # ((!\r_Timer_Count[7]~2_combout\ & r_Timer_Count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_Count[7]~2_combout\,
	datac => r_Timer_Count(4),
	datad => \r_Timer_Count[4]~11_combout\,
	combout => \r_Timer_Count[4]~12_combout\);

-- Location: FF_X39_Y4_N7
\r_Timer_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_Count[4]~12_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Timer_Count(4));

-- Location: LCCOMB_X39_Y4_N18
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (r_Timer_Count(5) & (\Add5~9\ & VCC)) # (!r_Timer_Count(5) & (!\Add5~9\))
-- \Add5~11\ = CARRY((!r_Timer_Count(5) & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Timer_Count(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X39_Y4_N2
\r_Timer_Count[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[5]~13_combout\ = (\r_Timer_Count[0]~3_combout\ & ((\LessThan4~3_combout\ & (r_Accumulator(5))) # (!\LessThan4~3_combout\ & ((\Add5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(5),
	datab => \LessThan4~3_combout\,
	datac => \Add5~10_combout\,
	datad => \r_Timer_Count[0]~3_combout\,
	combout => \r_Timer_Count[5]~13_combout\);

-- Location: LCCOMB_X39_Y4_N28
\r_Timer_Count[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[5]~14_combout\ = (\r_Timer_Count[5]~13_combout\) # ((!\r_Timer_Count[7]~2_combout\ & r_Timer_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_Count[7]~2_combout\,
	datac => r_Timer_Count(5),
	datad => \r_Timer_Count[5]~13_combout\,
	combout => \r_Timer_Count[5]~14_combout\);

-- Location: FF_X39_Y4_N29
\r_Timer_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_Count[5]~14_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Timer_Count(5));

-- Location: LCCOMB_X39_Y4_N20
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (r_Timer_Count(6) & ((GND) # (!\Add5~11\))) # (!r_Timer_Count(6) & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((r_Timer_Count(6)) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Timer_Count(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X40_Y4_N12
\r_Timer_Count[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[6]~15_combout\ = (\r_Timer_Count[0]~3_combout\ & ((\LessThan4~3_combout\ & (r_Accumulator(6))) # (!\LessThan4~3_combout\ & ((\Add5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(6),
	datab => \LessThan4~3_combout\,
	datac => \Add5~12_combout\,
	datad => \r_Timer_Count[0]~3_combout\,
	combout => \r_Timer_Count[6]~15_combout\);

-- Location: LCCOMB_X40_Y4_N0
\r_Timer_Count[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[6]~16_combout\ = (\r_Timer_Count[6]~15_combout\) # ((!\r_Timer_Count[7]~2_combout\ & r_Timer_Count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_Count[7]~2_combout\,
	datac => r_Timer_Count(6),
	datad => \r_Timer_Count[6]~15_combout\,
	combout => \r_Timer_Count[6]~16_combout\);

-- Location: FF_X40_Y4_N1
\r_Timer_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_Count[6]~16_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Timer_Count(6));

-- Location: LCCOMB_X39_Y4_N22
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = \Add5~13\ $ (!r_Timer_Count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_Timer_Count(7),
	cin => \Add5~13\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X40_Y4_N2
\r_Timer_Count[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[7]~17_combout\ = (\r_Timer_Count[0]~3_combout\ & ((\LessThan4~3_combout\ & (r_Accumulator(7))) # (!\LessThan4~3_combout\ & ((\Add5~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(7),
	datab => \Add5~14_combout\,
	datac => \LessThan4~3_combout\,
	datad => \r_Timer_Count[0]~3_combout\,
	combout => \r_Timer_Count[7]~17_combout\);

-- Location: LCCOMB_X40_Y4_N22
\r_Timer_Count[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[7]~18_combout\ = (\r_Timer_Count[7]~17_combout\) # ((!\r_Timer_Count[7]~2_combout\ & r_Timer_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_Count[7]~2_combout\,
	datac => r_Timer_Count(7),
	datad => \r_Timer_Count[7]~17_combout\,
	combout => \r_Timer_Count[7]~18_combout\);

-- Location: FF_X40_Y4_N23
\r_Timer_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_Count[7]~18_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Timer_Count(7));

-- Location: LCCOMB_X39_Y4_N30
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!r_Timer_Count(4) & (!r_Timer_Count(5) & (!r_Timer_Count(6) & !r_Timer_Count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(4),
	datab => r_Timer_Count(5),
	datac => r_Timer_Count(6),
	datad => r_Timer_Count(7),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X39_Y4_N24
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!r_Timer_Count(3) & (!r_Timer_Count(2) & (\Equal3~0_combout\ & !r_Timer_Count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(3),
	datab => r_Timer_Count(2),
	datac => \Equal3~0_combout\,
	datad => r_Timer_Count(1),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X38_Y4_N12
\r_Timer_State.S_DONE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_State.S_DONE~1_combout\ = (r_Timer_Count(0) & (\Equal3~1_combout\ & (\r_1Hz_d1~q\ & !\r_1Hz_d2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(0),
	datab => \Equal3~1_combout\,
	datac => \r_1Hz_d1~q\,
	datad => \r_1Hz_d2~q\,
	combout => \r_Timer_State.S_DONE~1_combout\);

-- Location: LCCOMB_X38_Y4_N18
\r_Timer_State.S_DONE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_State.S_DONE~0_combout\ = (\r_Timer_State.S_PROCEED~q\ & !\LessThan4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_State.S_PROCEED~q\,
	datad => \LessThan4~3_combout\,
	combout => \r_Timer_State.S_DONE~0_combout\);

-- Location: LCCOMB_X38_Y4_N22
\Selector59~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~5_combout\ = (\r_RX_DV~q\ & !\r_Timer_State.S_DIGIT_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_RX_DV~q\,
	datad => \r_Timer_State.S_DIGIT_1~q\,
	combout => \Selector59~5_combout\);

-- Location: LCCOMB_X38_Y4_N0
\Selector59~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~4_combout\ = (!\Selector59~3_combout\ & ((\r_Timer_State.S_DIGIT_1~q\ & (\r_RX_DV~q\)) # (!\r_Timer_State.S_DIGIT_1~q\ & ((\p_Timer_FSM~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_DV~q\,
	datab => \r_Timer_State.S_DIGIT_1~q\,
	datac => \p_Timer_FSM~2_combout\,
	datad => \Selector59~3_combout\,
	combout => \Selector59~4_combout\);

-- Location: LCCOMB_X38_Y4_N28
\Selector59~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~6_combout\ = (\Selector59~4_combout\) # ((\Selector59~2_combout\) # ((\Selector59~5_combout\ & !\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~5_combout\,
	datab => \Selector59~4_combout\,
	datac => \Selector55~0_combout\,
	datad => \Selector59~2_combout\,
	combout => \Selector59~6_combout\);

-- Location: LCCOMB_X38_Y4_N6
\r_Timer_State.S_DONE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_State.S_DONE~2_combout\ = (\Selector59~6_combout\ & (\r_Timer_State.S_DONE~1_combout\ & (\r_Timer_State.S_DONE~0_combout\))) # (!\Selector59~6_combout\ & (((\r_Timer_State.S_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_State.S_DONE~1_combout\,
	datab => \r_Timer_State.S_DONE~0_combout\,
	datac => \r_Timer_State.S_DONE~q\,
	datad => \Selector59~6_combout\,
	combout => \r_Timer_State.S_DONE~2_combout\);

-- Location: FF_X38_Y4_N7
\r_Timer_State.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_State.S_DONE~2_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_Timer_State.S_DONE~q\);

-- Location: LCCOMB_X43_Y4_N4
\Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\r_Timer_State.S_DONE~q\) # ((!\r_Timer_State.S_DIGIT_1~q\ & ((\p_Timer_FSM~4_combout\) # (!\r_RX_DV~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_State.S_DONE~q\,
	datab => \r_RX_DV~q\,
	datac => \p_Timer_FSM~4_combout\,
	datad => \r_Timer_State.S_DIGIT_1~q\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X43_Y4_N26
\Selector54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~1_combout\ = (r_Accumulator(0) & ((\Selector54~0_combout\) # ((\r_Timer_State.S_PROCEED~q\ & !\LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(0),
	datab => \r_Timer_State.S_PROCEED~q\,
	datac => \Selector54~0_combout\,
	datad => \LessThan4~3_combout\,
	combout => \Selector54~1_combout\);

-- Location: LCCOMB_X42_Y4_N0
\Selector54~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~4_combout\ = (\Selector54~3_combout\) # ((\Selector54~1_combout\) # ((r_RX_Byte(0) & \Selector56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector54~3_combout\,
	datab => r_RX_Byte(0),
	datac => \Selector56~0_combout\,
	datad => \Selector54~1_combout\,
	combout => \Selector54~4_combout\);

-- Location: FF_X42_Y4_N1
\r_Accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector54~4_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Accumulator(0));

-- Location: LCCOMB_X43_Y4_N6
\r_Timer_Count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[0]~0_combout\ = (\LessThan4~3_combout\ & (r_Accumulator(0))) # (!\LessThan4~3_combout\ & ((\Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Accumulator(0),
	datac => \Add5~0_combout\,
	datad => \LessThan4~3_combout\,
	combout => \r_Timer_Count[0]~0_combout\);

-- Location: LCCOMB_X43_Y4_N28
\r_Timer_Count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Timer_Count[0]~4_combout\ = (\r_Timer_Count[0]~0_combout\ & ((\r_Timer_Count[0]~3_combout\) # ((!\r_Timer_Count[7]~2_combout\ & r_Timer_Count(0))))) # (!\r_Timer_Count[0]~0_combout\ & (!\r_Timer_Count[7]~2_combout\ & (r_Timer_Count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_Count[0]~0_combout\,
	datab => \r_Timer_Count[7]~2_combout\,
	datac => r_Timer_Count(0),
	datad => \r_Timer_Count[0]~3_combout\,
	combout => \r_Timer_Count[0]~4_combout\);

-- Location: FF_X43_Y4_N29
\r_Timer_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \r_Timer_Count[0]~4_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Timer_Count(0));

-- Location: LCCOMB_X38_Y4_N30
\Selector59~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~1_combout\ = ((r_Timer_Count(0) & ((\r_1Hz_d2~q\) # (!\r_1Hz_d1~q\)))) # (!\Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(0),
	datab => \r_1Hz_d2~q\,
	datac => \r_1Hz_d1~q\,
	datad => \Equal3~1_combout\,
	combout => \Selector59~1_combout\);

-- Location: LCCOMB_X38_Y4_N10
\Selector59~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~2_combout\ = (\r_Timer_State.S_PROCEED~q\ & ((\Selector59~0_combout\) # ((!\Selector59~1_combout\ & !\LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~1_combout\,
	datab => \r_Timer_State.S_PROCEED~q\,
	datac => \Selector59~0_combout\,
	datad => \LessThan4~3_combout\,
	combout => \Selector59~2_combout\);

-- Location: LCCOMB_X38_Y4_N26
\Selector56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~1_combout\ = (\Selector59~2_combout\ & (((\r_Timer_State.S_DIGIT_2~q\ & !\Selector59~6_combout\)))) # (!\Selector59~2_combout\ & ((\Selector56~0_combout\) # ((\r_Timer_State.S_DIGIT_2~q\ & !\Selector59~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~2_combout\,
	datab => \Selector56~0_combout\,
	datac => \r_Timer_State.S_DIGIT_2~q\,
	datad => \Selector59~6_combout\,
	combout => \Selector56~1_combout\);

-- Location: FF_X38_Y4_N27
\r_Timer_State.S_DIGIT_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector56~1_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_Timer_State.S_DIGIT_2~q\);

-- Location: LCCOMB_X43_Y4_N20
\Selector57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~1_combout\ = (\Selector57~0_combout\ & ((\r_Timer_State.S_DIGIT_2~q\) # ((!\r_RX_DV~q\ & \r_Timer_State.S_DIGIT_3~q\)))) # (!\Selector57~0_combout\ & (!\r_RX_DV~q\ & (\r_Timer_State.S_DIGIT_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \r_RX_DV~q\,
	datac => \r_Timer_State.S_DIGIT_3~q\,
	datad => \r_Timer_State.S_DIGIT_2~q\,
	combout => \Selector57~1_combout\);

-- Location: FF_X43_Y4_N21
\r_Timer_State.S_DIGIT_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector57~1_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_Timer_State.S_DIGIT_3~q\);

-- Location: LCCOMB_X43_Y4_N10
\Selector59~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~3_combout\ = (!\r_Timer_State.S_DIGIT_3~q\ & !\r_Timer_State.S_DIGIT_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_State.S_DIGIT_3~q\,
	datad => \r_Timer_State.S_DIGIT_2~q\,
	combout => \Selector59~3_combout\);

-- Location: LCCOMB_X38_Y4_N4
\Selector55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (\r_RX_DV~q\ & (\Selector55~0_combout\ & ((!\Selector59~3_combout\) # (!\r_Timer_State.S_DIGIT_1~q\)))) # (!\r_RX_DV~q\ & (!\r_Timer_State.S_DIGIT_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_DV~q\,
	datab => \r_Timer_State.S_DIGIT_1~q\,
	datac => \Selector55~0_combout\,
	datad => \Selector59~3_combout\,
	combout => \Selector55~1_combout\);

-- Location: LCCOMB_X38_Y4_N2
\Selector55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~2_combout\ = (\Selector59~0_combout\) # ((\Equal3~1_combout\ & (!r_Timer_Count(0) & !\LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => \Equal3~1_combout\,
	datac => r_Timer_Count(0),
	datad => \LessThan4~3_combout\,
	combout => \Selector55~2_combout\);

-- Location: LCCOMB_X38_Y4_N20
\Selector55~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~3_combout\ = (!\Selector55~1_combout\ & ((!\Selector55~2_combout\) # (!\r_Timer_State.S_PROCEED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Timer_State.S_PROCEED~q\,
	datac => \Selector55~1_combout\,
	datad => \Selector55~2_combout\,
	combout => \Selector55~3_combout\);

-- Location: FF_X38_Y4_N21
\r_Timer_State.S_DIGIT_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector55~3_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_Timer_State.S_DIGIT_1~q\);

-- Location: LCCOMB_X43_Y4_N30
\Selector58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector58~1_combout\ = ((\r_Timer_State.S_DIGIT_2~q\) # (\r_Timer_State.S_DIGIT_3~q\)) # (!\r_Timer_State.S_DIGIT_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_State.S_DIGIT_1~q\,
	datab => \r_Timer_State.S_DIGIT_2~q\,
	datad => \r_Timer_State.S_DIGIT_3~q\,
	combout => \Selector58~1_combout\);

-- Location: LCCOMB_X43_Y4_N16
\Selector58~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector58~2_combout\ = (\Selector58~1_combout\ & ((\p_Timer_FSM~2_combout\) # ((\r_Timer_State.S_DIGIT_3~q\ & !\p_Timer_FSM~4_combout\)))) # (!\Selector58~1_combout\ & (\r_Timer_State.S_DIGIT_3~q\ & (!\p_Timer_FSM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~1_combout\,
	datab => \r_Timer_State.S_DIGIT_3~q\,
	datac => \p_Timer_FSM~4_combout\,
	datad => \p_Timer_FSM~2_combout\,
	combout => \Selector58~2_combout\);

-- Location: LCCOMB_X38_Y4_N24
\Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\r_Timer_State.S_PROCEED~q\ & ((\LessThan4~3_combout\ & (!\Selector59~0_combout\)) # (!\LessThan4~3_combout\ & ((\Selector59~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => \r_Timer_State.S_PROCEED~q\,
	datac => \Selector59~1_combout\,
	datad => \LessThan4~3_combout\,
	combout => \Selector58~0_combout\);

-- Location: LCCOMB_X38_Y4_N8
\Selector58~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector58~3_combout\ = (\Selector58~0_combout\) # ((\Selector58~2_combout\ & \r_RX_DV~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector58~2_combout\,
	datac => \r_RX_DV~q\,
	datad => \Selector58~0_combout\,
	combout => \Selector58~3_combout\);

-- Location: FF_X38_Y4_N9
\r_Timer_State.S_PROCEED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector58~3_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_Timer_State.S_PROCEED~q\);

-- Location: LCCOMB_X34_Y5_N14
\Inst_ClockDiv|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~4_combout\ = (\Inst_ClockDiv|count_5Hz\(2) & (\Inst_ClockDiv|Add2~3\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(2) & (!\Inst_ClockDiv|Add2~3\ & VCC))
-- \Inst_ClockDiv|Add2~5\ = CARRY((\Inst_ClockDiv|count_5Hz\(2) & !\Inst_ClockDiv|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(2),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~3\,
	combout => \Inst_ClockDiv|Add2~4_combout\,
	cout => \Inst_ClockDiv|Add2~5\);

-- Location: FF_X34_Y5_N15
\Inst_ClockDiv|count_5Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~4_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(2));

-- Location: LCCOMB_X34_Y5_N16
\Inst_ClockDiv|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~6_combout\ = (\Inst_ClockDiv|count_5Hz\(3) & (!\Inst_ClockDiv|Add2~5\)) # (!\Inst_ClockDiv|count_5Hz\(3) & ((\Inst_ClockDiv|Add2~5\) # (GND)))
-- \Inst_ClockDiv|Add2~7\ = CARRY((!\Inst_ClockDiv|Add2~5\) # (!\Inst_ClockDiv|count_5Hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(3),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~5\,
	combout => \Inst_ClockDiv|Add2~6_combout\,
	cout => \Inst_ClockDiv|Add2~7\);

-- Location: FF_X34_Y5_N17
\Inst_ClockDiv|count_5Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~6_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(3));

-- Location: LCCOMB_X34_Y5_N18
\Inst_ClockDiv|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~8_combout\ = (\Inst_ClockDiv|count_5Hz\(4) & (\Inst_ClockDiv|Add2~7\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(4) & (!\Inst_ClockDiv|Add2~7\ & VCC))
-- \Inst_ClockDiv|Add2~9\ = CARRY((\Inst_ClockDiv|count_5Hz\(4) & !\Inst_ClockDiv|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(4),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~7\,
	combout => \Inst_ClockDiv|Add2~8_combout\,
	cout => \Inst_ClockDiv|Add2~9\);

-- Location: FF_X34_Y5_N19
\Inst_ClockDiv|count_5Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~8_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(4));

-- Location: LCCOMB_X34_Y5_N4
\Inst_ClockDiv|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal2~6_combout\ = (!\Inst_ClockDiv|count_5Hz\(4) & (!\Inst_ClockDiv|count_5Hz\(2) & !\Inst_ClockDiv|count_5Hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(4),
	datac => \Inst_ClockDiv|count_5Hz\(2),
	datad => \Inst_ClockDiv|count_5Hz\(3),
	combout => \Inst_ClockDiv|Equal2~6_combout\);

-- Location: LCCOMB_X34_Y5_N20
\Inst_ClockDiv|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~10_combout\ = (\Inst_ClockDiv|count_5Hz\(5) & (!\Inst_ClockDiv|Add2~9\)) # (!\Inst_ClockDiv|count_5Hz\(5) & ((\Inst_ClockDiv|Add2~9\) # (GND)))
-- \Inst_ClockDiv|Add2~11\ = CARRY((!\Inst_ClockDiv|Add2~9\) # (!\Inst_ClockDiv|count_5Hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(5),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~9\,
	combout => \Inst_ClockDiv|Add2~10_combout\,
	cout => \Inst_ClockDiv|Add2~11\);

-- Location: FF_X34_Y5_N21
\Inst_ClockDiv|count_5Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~10_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(5));

-- Location: LCCOMB_X34_Y5_N22
\Inst_ClockDiv|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~12_combout\ = (\Inst_ClockDiv|count_5Hz\(6) & (\Inst_ClockDiv|Add2~11\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(6) & (!\Inst_ClockDiv|Add2~11\ & VCC))
-- \Inst_ClockDiv|Add2~13\ = CARRY((\Inst_ClockDiv|count_5Hz\(6) & !\Inst_ClockDiv|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(6),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~11\,
	combout => \Inst_ClockDiv|Add2~12_combout\,
	cout => \Inst_ClockDiv|Add2~13\);

-- Location: LCCOMB_X34_Y5_N24
\Inst_ClockDiv|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~14_combout\ = (\Inst_ClockDiv|count_5Hz\(7) & (!\Inst_ClockDiv|Add2~13\)) # (!\Inst_ClockDiv|count_5Hz\(7) & ((\Inst_ClockDiv|Add2~13\) # (GND)))
-- \Inst_ClockDiv|Add2~15\ = CARRY((!\Inst_ClockDiv|Add2~13\) # (!\Inst_ClockDiv|count_5Hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(7),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~13\,
	combout => \Inst_ClockDiv|Add2~14_combout\,
	cout => \Inst_ClockDiv|Add2~15\);

-- Location: FF_X34_Y5_N25
\Inst_ClockDiv|count_5Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~14_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(7));

-- Location: LCCOMB_X34_Y5_N26
\Inst_ClockDiv|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~16_combout\ = (\Inst_ClockDiv|count_5Hz\(8) & (\Inst_ClockDiv|Add2~15\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(8) & (!\Inst_ClockDiv|Add2~15\ & VCC))
-- \Inst_ClockDiv|Add2~17\ = CARRY((\Inst_ClockDiv|count_5Hz\(8) & !\Inst_ClockDiv|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(8),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~15\,
	combout => \Inst_ClockDiv|Add2~16_combout\,
	cout => \Inst_ClockDiv|Add2~17\);

-- Location: LCCOMB_X34_Y5_N2
\Inst_ClockDiv|count_5Hz~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz~6_combout\ = (\Inst_ClockDiv|Add2~16_combout\ & (((!\Inst_ClockDiv|Equal2~4_combout\) # (!\Inst_ClockDiv|Equal2~6_combout\)) # (!\Inst_ClockDiv|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~5_combout\,
	datab => \Inst_ClockDiv|Equal2~6_combout\,
	datac => \Inst_ClockDiv|Add2~16_combout\,
	datad => \Inst_ClockDiv|Equal2~4_combout\,
	combout => \Inst_ClockDiv|count_5Hz~6_combout\);

-- Location: FF_X34_Y5_N3
\Inst_ClockDiv|count_5Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5Hz~6_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(8));

-- Location: LCCOMB_X34_Y5_N28
\Inst_ClockDiv|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~18_combout\ = (\Inst_ClockDiv|count_5Hz\(9) & (!\Inst_ClockDiv|Add2~17\)) # (!\Inst_ClockDiv|count_5Hz\(9) & ((\Inst_ClockDiv|Add2~17\) # (GND)))
-- \Inst_ClockDiv|Add2~19\ = CARRY((!\Inst_ClockDiv|Add2~17\) # (!\Inst_ClockDiv|count_5Hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(9),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~17\,
	combout => \Inst_ClockDiv|Add2~18_combout\,
	cout => \Inst_ClockDiv|Add2~19\);

-- Location: LCCOMB_X34_Y5_N8
\Inst_ClockDiv|count_5Hz~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz~5_combout\ = (\Inst_ClockDiv|Add2~18_combout\ & (((!\Inst_ClockDiv|Equal2~4_combout\) # (!\Inst_ClockDiv|Equal2~6_combout\)) # (!\Inst_ClockDiv|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~5_combout\,
	datab => \Inst_ClockDiv|Add2~18_combout\,
	datac => \Inst_ClockDiv|Equal2~6_combout\,
	datad => \Inst_ClockDiv|Equal2~4_combout\,
	combout => \Inst_ClockDiv|count_5Hz~5_combout\);

-- Location: FF_X34_Y5_N9
\Inst_ClockDiv|count_5Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5Hz~5_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(9));

-- Location: LCCOMB_X34_Y5_N30
\Inst_ClockDiv|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~20_combout\ = (\Inst_ClockDiv|count_5Hz\(10) & (\Inst_ClockDiv|Add2~19\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(10) & (!\Inst_ClockDiv|Add2~19\ & VCC))
-- \Inst_ClockDiv|Add2~21\ = CARRY((\Inst_ClockDiv|count_5Hz\(10) & !\Inst_ClockDiv|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(10),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~19\,
	combout => \Inst_ClockDiv|Add2~20_combout\,
	cout => \Inst_ClockDiv|Add2~21\);

-- Location: FF_X34_Y5_N31
\Inst_ClockDiv|count_5Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~20_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(10));

-- Location: LCCOMB_X34_Y4_N0
\Inst_ClockDiv|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~22_combout\ = (\Inst_ClockDiv|count_5Hz\(11) & (!\Inst_ClockDiv|Add2~21\)) # (!\Inst_ClockDiv|count_5Hz\(11) & ((\Inst_ClockDiv|Add2~21\) # (GND)))
-- \Inst_ClockDiv|Add2~23\ = CARRY((!\Inst_ClockDiv|Add2~21\) # (!\Inst_ClockDiv|count_5Hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(11),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~21\,
	combout => \Inst_ClockDiv|Add2~22_combout\,
	cout => \Inst_ClockDiv|Add2~23\);

-- Location: LCCOMB_X35_Y4_N2
\Inst_ClockDiv|count_5Hz~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz~4_combout\ = (\Inst_ClockDiv|Add2~22_combout\ & (((!\Inst_ClockDiv|Equal2~4_combout\) # (!\Inst_ClockDiv|Equal2~6_combout\)) # (!\Inst_ClockDiv|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~5_combout\,
	datab => \Inst_ClockDiv|Equal2~6_combout\,
	datac => \Inst_ClockDiv|Add2~22_combout\,
	datad => \Inst_ClockDiv|Equal2~4_combout\,
	combout => \Inst_ClockDiv|count_5Hz~4_combout\);

-- Location: FF_X35_Y4_N3
\Inst_ClockDiv|count_5Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5Hz~4_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(11));

-- Location: LCCOMB_X34_Y4_N2
\Inst_ClockDiv|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~24_combout\ = (\Inst_ClockDiv|count_5Hz\(12) & (\Inst_ClockDiv|Add2~23\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(12) & (!\Inst_ClockDiv|Add2~23\ & VCC))
-- \Inst_ClockDiv|Add2~25\ = CARRY((\Inst_ClockDiv|count_5Hz\(12) & !\Inst_ClockDiv|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(12),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~23\,
	combout => \Inst_ClockDiv|Add2~24_combout\,
	cout => \Inst_ClockDiv|Add2~25\);

-- Location: FF_X34_Y4_N3
\Inst_ClockDiv|count_5Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~24_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(12));

-- Location: LCCOMB_X34_Y4_N4
\Inst_ClockDiv|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~26_combout\ = (\Inst_ClockDiv|count_5Hz\(13) & (!\Inst_ClockDiv|Add2~25\)) # (!\Inst_ClockDiv|count_5Hz\(13) & ((\Inst_ClockDiv|Add2~25\) # (GND)))
-- \Inst_ClockDiv|Add2~27\ = CARRY((!\Inst_ClockDiv|Add2~25\) # (!\Inst_ClockDiv|count_5Hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(13),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~25\,
	combout => \Inst_ClockDiv|Add2~26_combout\,
	cout => \Inst_ClockDiv|Add2~27\);

-- Location: FF_X34_Y4_N5
\Inst_ClockDiv|count_5Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~26_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(13));

-- Location: LCCOMB_X34_Y4_N6
\Inst_ClockDiv|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~28_combout\ = (\Inst_ClockDiv|count_5Hz\(14) & (\Inst_ClockDiv|Add2~27\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(14) & (!\Inst_ClockDiv|Add2~27\ & VCC))
-- \Inst_ClockDiv|Add2~29\ = CARRY((\Inst_ClockDiv|count_5Hz\(14) & !\Inst_ClockDiv|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(14),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~27\,
	combout => \Inst_ClockDiv|Add2~28_combout\,
	cout => \Inst_ClockDiv|Add2~29\);

-- Location: LCCOMB_X34_Y4_N26
\Inst_ClockDiv|count_5Hz~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz~3_combout\ = (\Inst_ClockDiv|Add2~28_combout\ & (((!\Inst_ClockDiv|Equal2~4_combout\) # (!\Inst_ClockDiv|Equal2~5_combout\)) # (!\Inst_ClockDiv|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~6_combout\,
	datab => \Inst_ClockDiv|Equal2~5_combout\,
	datac => \Inst_ClockDiv|Equal2~4_combout\,
	datad => \Inst_ClockDiv|Add2~28_combout\,
	combout => \Inst_ClockDiv|count_5Hz~3_combout\);

-- Location: FF_X34_Y4_N27
\Inst_ClockDiv|count_5Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5Hz~3_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(14));

-- Location: LCCOMB_X34_Y4_N8
\Inst_ClockDiv|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~30_combout\ = (\Inst_ClockDiv|count_5Hz\(15) & (!\Inst_ClockDiv|Add2~29\)) # (!\Inst_ClockDiv|count_5Hz\(15) & ((\Inst_ClockDiv|Add2~29\) # (GND)))
-- \Inst_ClockDiv|Add2~31\ = CARRY((!\Inst_ClockDiv|Add2~29\) # (!\Inst_ClockDiv|count_5Hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(15),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~29\,
	combout => \Inst_ClockDiv|Add2~30_combout\,
	cout => \Inst_ClockDiv|Add2~31\);

-- Location: FF_X34_Y4_N9
\Inst_ClockDiv|count_5Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~30_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(15));

-- Location: LCCOMB_X34_Y4_N10
\Inst_ClockDiv|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~32_combout\ = (\Inst_ClockDiv|count_5Hz\(16) & (\Inst_ClockDiv|Add2~31\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(16) & (!\Inst_ClockDiv|Add2~31\ & VCC))
-- \Inst_ClockDiv|Add2~33\ = CARRY((\Inst_ClockDiv|count_5Hz\(16) & !\Inst_ClockDiv|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(16),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~31\,
	combout => \Inst_ClockDiv|Add2~32_combout\,
	cout => \Inst_ClockDiv|Add2~33\);

-- Location: FF_X34_Y4_N11
\Inst_ClockDiv|count_5Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~32_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(16));

-- Location: LCCOMB_X34_Y4_N12
\Inst_ClockDiv|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~34_combout\ = (\Inst_ClockDiv|count_5Hz\(17) & (!\Inst_ClockDiv|Add2~33\)) # (!\Inst_ClockDiv|count_5Hz\(17) & ((\Inst_ClockDiv|Add2~33\) # (GND)))
-- \Inst_ClockDiv|Add2~35\ = CARRY((!\Inst_ClockDiv|Add2~33\) # (!\Inst_ClockDiv|count_5Hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(17),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~33\,
	combout => \Inst_ClockDiv|Add2~34_combout\,
	cout => \Inst_ClockDiv|Add2~35\);

-- Location: FF_X34_Y4_N13
\Inst_ClockDiv|count_5Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~34_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(17));

-- Location: LCCOMB_X34_Y4_N14
\Inst_ClockDiv|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~36_combout\ = (\Inst_ClockDiv|count_5Hz\(18) & (\Inst_ClockDiv|Add2~35\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(18) & (!\Inst_ClockDiv|Add2~35\ & VCC))
-- \Inst_ClockDiv|Add2~37\ = CARRY((\Inst_ClockDiv|count_5Hz\(18) & !\Inst_ClockDiv|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(18),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~35\,
	combout => \Inst_ClockDiv|Add2~36_combout\,
	cout => \Inst_ClockDiv|Add2~37\);

-- Location: LCCOMB_X34_Y4_N28
\Inst_ClockDiv|count_5Hz~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz~2_combout\ = (\Inst_ClockDiv|Add2~36_combout\ & (((!\Inst_ClockDiv|Equal2~4_combout\) # (!\Inst_ClockDiv|Equal2~5_combout\)) # (!\Inst_ClockDiv|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~6_combout\,
	datab => \Inst_ClockDiv|Equal2~5_combout\,
	datac => \Inst_ClockDiv|Add2~36_combout\,
	datad => \Inst_ClockDiv|Equal2~4_combout\,
	combout => \Inst_ClockDiv|count_5Hz~2_combout\);

-- Location: FF_X34_Y4_N29
\Inst_ClockDiv|count_5Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5Hz~2_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(18));

-- Location: LCCOMB_X34_Y4_N16
\Inst_ClockDiv|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~38_combout\ = (\Inst_ClockDiv|count_5Hz\(19) & (!\Inst_ClockDiv|Add2~37\)) # (!\Inst_ClockDiv|count_5Hz\(19) & ((\Inst_ClockDiv|Add2~37\) # (GND)))
-- \Inst_ClockDiv|Add2~39\ = CARRY((!\Inst_ClockDiv|Add2~37\) # (!\Inst_ClockDiv|count_5Hz\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(19),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~37\,
	combout => \Inst_ClockDiv|Add2~38_combout\,
	cout => \Inst_ClockDiv|Add2~39\);

-- Location: LCCOMB_X34_Y4_N30
\Inst_ClockDiv|count_5Hz~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz~1_combout\ = (\Inst_ClockDiv|Add2~38_combout\ & (((!\Inst_ClockDiv|Equal2~4_combout\) # (!\Inst_ClockDiv|Equal2~5_combout\)) # (!\Inst_ClockDiv|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~6_combout\,
	datab => \Inst_ClockDiv|Equal2~5_combout\,
	datac => \Inst_ClockDiv|Equal2~4_combout\,
	datad => \Inst_ClockDiv|Add2~38_combout\,
	combout => \Inst_ClockDiv|count_5Hz~1_combout\);

-- Location: FF_X34_Y4_N31
\Inst_ClockDiv|count_5Hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5Hz~1_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(19));

-- Location: LCCOMB_X34_Y4_N18
\Inst_ClockDiv|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~40_combout\ = (\Inst_ClockDiv|count_5Hz\(20) & (\Inst_ClockDiv|Add2~39\ $ (GND))) # (!\Inst_ClockDiv|count_5Hz\(20) & (!\Inst_ClockDiv|Add2~39\ & VCC))
-- \Inst_ClockDiv|Add2~41\ = CARRY((\Inst_ClockDiv|count_5Hz\(20) & !\Inst_ClockDiv|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(20),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~39\,
	combout => \Inst_ClockDiv|Add2~40_combout\,
	cout => \Inst_ClockDiv|Add2~41\);

-- Location: FF_X34_Y4_N19
\Inst_ClockDiv|count_5Hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~40_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(20));

-- Location: LCCOMB_X34_Y4_N20
\Inst_ClockDiv|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~42_combout\ = (\Inst_ClockDiv|count_5Hz\(21) & (!\Inst_ClockDiv|Add2~41\)) # (!\Inst_ClockDiv|count_5Hz\(21) & ((\Inst_ClockDiv|Add2~41\) # (GND)))
-- \Inst_ClockDiv|Add2~43\ = CARRY((!\Inst_ClockDiv|Add2~41\) # (!\Inst_ClockDiv|count_5Hz\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_ClockDiv|count_5Hz\(21),
	datad => VCC,
	cin => \Inst_ClockDiv|Add2~41\,
	combout => \Inst_ClockDiv|Add2~42_combout\,
	cout => \Inst_ClockDiv|Add2~43\);

-- Location: FF_X34_Y4_N21
\Inst_ClockDiv|count_5Hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|Add2~42_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(21));

-- Location: LCCOMB_X34_Y4_N22
\Inst_ClockDiv|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Add2~44_combout\ = \Inst_ClockDiv|Add2~43\ $ (!\Inst_ClockDiv|count_5Hz\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_ClockDiv|count_5Hz\(22),
	cin => \Inst_ClockDiv|Add2~43\,
	combout => \Inst_ClockDiv|Add2~44_combout\);

-- Location: LCCOMB_X34_Y4_N24
\Inst_ClockDiv|count_5Hz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz~0_combout\ = (\Inst_ClockDiv|Add2~44_combout\ & (((!\Inst_ClockDiv|Equal2~4_combout\) # (!\Inst_ClockDiv|Equal2~5_combout\)) # (!\Inst_ClockDiv|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~6_combout\,
	datab => \Inst_ClockDiv|Equal2~5_combout\,
	datac => \Inst_ClockDiv|Add2~44_combout\,
	datad => \Inst_ClockDiv|Equal2~4_combout\,
	combout => \Inst_ClockDiv|count_5Hz~0_combout\);

-- Location: FF_X34_Y4_N25
\Inst_ClockDiv|count_5Hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5Hz~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(22));

-- Location: LCCOMB_X35_Y4_N26
\Inst_ClockDiv|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal2~0_combout\ = (\Inst_ClockDiv|count_5Hz\(0) & (\Inst_ClockDiv|count_5Hz\(22) & (!\Inst_ClockDiv|count_5Hz\(1) & !\Inst_ClockDiv|count_5Hz\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(0),
	datab => \Inst_ClockDiv|count_5Hz\(22),
	datac => \Inst_ClockDiv|count_5Hz\(1),
	datad => \Inst_ClockDiv|count_5Hz\(21),
	combout => \Inst_ClockDiv|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y4_N28
\Inst_ClockDiv|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal2~1_combout\ = (!\Inst_ClockDiv|count_5Hz\(20) & (!\Inst_ClockDiv|count_5Hz\(17) & (\Inst_ClockDiv|count_5Hz\(18) & \Inst_ClockDiv|count_5Hz\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(20),
	datab => \Inst_ClockDiv|count_5Hz\(17),
	datac => \Inst_ClockDiv|count_5Hz\(18),
	datad => \Inst_ClockDiv|count_5Hz\(19),
	combout => \Inst_ClockDiv|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y4_N8
\Inst_ClockDiv|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal2~3_combout\ = (\Inst_ClockDiv|count_5Hz\(11) & (!\Inst_ClockDiv|count_5Hz\(12) & (\Inst_ClockDiv|count_5Hz\(9) & !\Inst_ClockDiv|count_5Hz\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(11),
	datab => \Inst_ClockDiv|count_5Hz\(12),
	datac => \Inst_ClockDiv|count_5Hz\(9),
	datad => \Inst_ClockDiv|count_5Hz\(10),
	combout => \Inst_ClockDiv|Equal2~3_combout\);

-- Location: LCCOMB_X36_Y4_N18
\Inst_ClockDiv|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal2~2_combout\ = (\Inst_ClockDiv|count_5Hz\(14) & (!\Inst_ClockDiv|count_5Hz\(16) & (!\Inst_ClockDiv|count_5Hz\(15) & !\Inst_ClockDiv|count_5Hz\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(14),
	datab => \Inst_ClockDiv|count_5Hz\(16),
	datac => \Inst_ClockDiv|count_5Hz\(15),
	datad => \Inst_ClockDiv|count_5Hz\(13),
	combout => \Inst_ClockDiv|Equal2~2_combout\);

-- Location: LCCOMB_X36_Y4_N26
\Inst_ClockDiv|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal2~4_combout\ = (\Inst_ClockDiv|Equal2~0_combout\ & (\Inst_ClockDiv|Equal2~1_combout\ & (\Inst_ClockDiv|Equal2~3_combout\ & \Inst_ClockDiv|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~0_combout\,
	datab => \Inst_ClockDiv|Equal2~1_combout\,
	datac => \Inst_ClockDiv|Equal2~3_combout\,
	datad => \Inst_ClockDiv|Equal2~2_combout\,
	combout => \Inst_ClockDiv|Equal2~4_combout\);

-- Location: LCCOMB_X34_Y5_N0
\Inst_ClockDiv|count_5Hz~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|count_5Hz~7_combout\ = (\Inst_ClockDiv|Add2~12_combout\ & (((!\Inst_ClockDiv|Equal2~4_combout\) # (!\Inst_ClockDiv|Equal2~6_combout\)) # (!\Inst_ClockDiv|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~5_combout\,
	datab => \Inst_ClockDiv|Equal2~6_combout\,
	datac => \Inst_ClockDiv|Add2~12_combout\,
	datad => \Inst_ClockDiv|Equal2~4_combout\,
	combout => \Inst_ClockDiv|count_5Hz~7_combout\);

-- Location: FF_X34_Y5_N1
\Inst_ClockDiv|count_5Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|count_5Hz~7_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|count_5Hz\(6));

-- Location: LCCOMB_X34_Y5_N6
\Inst_ClockDiv|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|Equal2~5_combout\ = (\Inst_ClockDiv|count_5Hz\(6) & (!\Inst_ClockDiv|count_5Hz\(5) & (!\Inst_ClockDiv|count_5Hz\(7) & \Inst_ClockDiv|count_5Hz\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|count_5Hz\(6),
	datab => \Inst_ClockDiv|count_5Hz\(5),
	datac => \Inst_ClockDiv|count_5Hz\(7),
	datad => \Inst_ClockDiv|count_5Hz\(8),
	combout => \Inst_ClockDiv|Equal2~5_combout\);

-- Location: LCCOMB_X35_Y4_N4
\Inst_ClockDiv|clk_5Hz_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inst_ClockDiv|clk_5Hz_reg~0_combout\ = \Inst_ClockDiv|clk_5Hz_reg~q\ $ (((\Inst_ClockDiv|Equal2~5_combout\ & (\Inst_ClockDiv|Equal2~6_combout\ & \Inst_ClockDiv|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_ClockDiv|Equal2~5_combout\,
	datab => \Inst_ClockDiv|Equal2~6_combout\,
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => \Inst_ClockDiv|Equal2~4_combout\,
	combout => \Inst_ClockDiv|clk_5Hz_reg~0_combout\);

-- Location: FF_X35_Y4_N5
\Inst_ClockDiv|clk_5Hz_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Inst_ClockDiv|clk_5Hz_reg~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_ClockDiv|clk_5Hz_reg~q\);

-- Location: LCCOMB_X35_Y4_N8
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\r_Timer_State.S_PROCEED~q\ & ((r_Timer_Count(0)) # ((\r_Timer_State.S_DONE~q\ & \Inst_ClockDiv|clk_5Hz_reg~q\)))) # (!\r_Timer_State.S_PROCEED~q\ & (\r_Timer_State.S_DONE~q\ & (\Inst_ClockDiv|clk_5Hz_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_State.S_PROCEED~q\,
	datab => \r_Timer_State.S_DONE~q\,
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => r_Timer_Count(0),
	combout => \Selector22~0_combout\);

-- Location: FF_X35_Y4_N9
\o_LED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[0]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N0
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (r_Timer_Count(1) & ((\r_Timer_State.S_PROCEED~q\) # ((\r_Timer_State.S_DONE~q\ & \Inst_ClockDiv|clk_5Hz_reg~q\)))) # (!r_Timer_Count(1) & (\r_Timer_State.S_DONE~q\ & (\Inst_ClockDiv|clk_5Hz_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(1),
	datab => \r_Timer_State.S_DONE~q\,
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => \r_Timer_State.S_PROCEED~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X35_Y4_N1
\o_LED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[1]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N24
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\r_Timer_State.S_DONE~q\ & ((\Inst_ClockDiv|clk_5Hz_reg~q\) # ((r_Timer_Count(2) & \r_Timer_State.S_PROCEED~q\)))) # (!\r_Timer_State.S_DONE~q\ & (r_Timer_Count(2) & ((\r_Timer_State.S_PROCEED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_State.S_DONE~q\,
	datab => r_Timer_Count(2),
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => \r_Timer_State.S_PROCEED~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X35_Y4_N25
\o_LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[2]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N28
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (r_Timer_Count(3) & ((\r_Timer_State.S_PROCEED~q\) # ((\r_Timer_State.S_DONE~q\ & \Inst_ClockDiv|clk_5Hz_reg~q\)))) # (!r_Timer_Count(3) & (\r_Timer_State.S_DONE~q\ & (\Inst_ClockDiv|clk_5Hz_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(3),
	datab => \r_Timer_State.S_DONE~q\,
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => \r_Timer_State.S_PROCEED~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X35_Y4_N29
\o_LED[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[3]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N10
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\r_Timer_State.S_PROCEED~q\ & ((r_Timer_Count(4)) # ((\r_Timer_State.S_DONE~q\ & \Inst_ClockDiv|clk_5Hz_reg~q\)))) # (!\r_Timer_State.S_PROCEED~q\ & (\r_Timer_State.S_DONE~q\ & (\Inst_ClockDiv|clk_5Hz_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Timer_State.S_PROCEED~q\,
	datab => \r_Timer_State.S_DONE~q\,
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => r_Timer_Count(4),
	combout => \Selector18~0_combout\);

-- Location: FF_X35_Y4_N11
\o_LED[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[4]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N12
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (r_Timer_Count(5) & ((\r_Timer_State.S_PROCEED~q\) # ((\r_Timer_State.S_DONE~q\ & \Inst_ClockDiv|clk_5Hz_reg~q\)))) # (!r_Timer_Count(5) & (\r_Timer_State.S_DONE~q\ & (\Inst_ClockDiv|clk_5Hz_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(5),
	datab => \r_Timer_State.S_DONE~q\,
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => \r_Timer_State.S_PROCEED~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X35_Y4_N13
\o_LED[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[5]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N30
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (r_Timer_Count(6) & ((\r_Timer_State.S_PROCEED~q\) # ((\r_Timer_State.S_DONE~q\ & \Inst_ClockDiv|clk_5Hz_reg~q\)))) # (!r_Timer_Count(6) & (\r_Timer_State.S_DONE~q\ & (\Inst_ClockDiv|clk_5Hz_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(6),
	datab => \r_Timer_State.S_DONE~q\,
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => \r_Timer_State.S_PROCEED~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X35_Y4_N31
\o_LED[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[6]~reg0_q\);

-- Location: LCCOMB_X35_Y4_N20
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (r_Timer_Count(7) & ((\r_Timer_State.S_PROCEED~q\) # ((\r_Timer_State.S_DONE~q\ & \Inst_ClockDiv|clk_5Hz_reg~q\)))) # (!r_Timer_Count(7) & (\r_Timer_State.S_DONE~q\ & (\Inst_ClockDiv|clk_5Hz_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Timer_Count(7),
	datab => \r_Timer_State.S_DONE~q\,
	datac => \Inst_ClockDiv|clk_5Hz_reg~q\,
	datad => \r_Timer_State.S_PROCEED~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X35_Y4_N21
\o_LED[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_ClockDiv|clk_5MHz_reg~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LED[7]~reg0_q\);

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

ww_o_LED(0) <= \o_LED[0]~output_o\;

ww_o_LED(1) <= \o_LED[1]~output_o\;

ww_o_LED(2) <= \o_LED[2]~output_o\;

ww_o_LED(3) <= \o_LED[3]~output_o\;

ww_o_LED(4) <= \o_LED[4]~output_o\;

ww_o_LED(5) <= \o_LED[5]~output_o\;

ww_o_LED(6) <= \o_LED[6]~output_o\;

ww_o_LED(7) <= \o_LED[7]~output_o\;
END structure;


