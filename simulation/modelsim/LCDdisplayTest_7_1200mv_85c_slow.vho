-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/08/2017 00:37:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LCDdisplayTest IS
    PORT (
	CLK : IN std_logic;
	reset_n : IN std_logic;
	busy : OUT std_logic;
	rs : OUT std_logic;
	rw : OUT std_logic;
	e : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	data : IN std_logic_vector(7 DOWNTO 0);
	key0 : IN std_logic;
	toleds : OUT std_logic_vector(7 DOWNTO 0);
	ledcheck : OUT std_logic;
	alustate : OUT std_logic_vector(2 DOWNTO 0)
	);
END LCDdisplayTest;

-- Design Ports Information
-- busy	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toleds[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toleds[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toleds[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toleds[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toleds[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toleds[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toleds[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toleds[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledcheck	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alustate[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alustate[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alustate[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCDdisplayTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_key0 : std_logic;
SIGNAL ww_toleds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ledcheck : std_logic;
SIGNAL ww_alustate : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Add2~2_combout\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add1~2_combout\ : std_logic;
SIGNAL \u1|Add1~4_combout\ : std_logic;
SIGNAL \u1|Add2~8_combout\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Add1~8_combout\ : std_logic;
SIGNAL \u1|Add2~10_combout\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Add4~0_combout\ : std_logic;
SIGNAL \u1|Add4~6_combout\ : std_logic;
SIGNAL \u1|Add4~12_combout\ : std_logic;
SIGNAL \u1|Add4~22_combout\ : std_logic;
SIGNAL \u1|Add4~28_combout\ : std_logic;
SIGNAL \u1|Add4~38_combout\ : std_logic;
SIGNAL \u1|Add4~40_combout\ : std_logic;
SIGNAL \u1|Add4~42_combout\ : std_logic;
SIGNAL \u1|Add4~44_combout\ : std_logic;
SIGNAL \u1|Add4~54_combout\ : std_logic;
SIGNAL \u1|Add4~61\ : std_logic;
SIGNAL \u1|Add4~62_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \Add8~61\ : std_logic;
SIGNAL \Add8~62_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LessThan9~12_combout\ : std_logic;
SIGNAL \LessThan9~17_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \LessThan16~1_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \LessThan17~1_combout\ : std_logic;
SIGNAL \LessThan18~3_combout\ : std_logic;
SIGNAL \LessThan16~2_combout\ : std_logic;
SIGNAL \LessThan16~3_combout\ : std_logic;
SIGNAL \LessThan16~4_combout\ : std_logic;
SIGNAL \Selector47~6_combout\ : std_logic;
SIGNAL \LessThan15~5_combout\ : std_logic;
SIGNAL \LessThan18~4_combout\ : std_logic;
SIGNAL \LessThan18~5_combout\ : std_logic;
SIGNAL \Selector47~7_combout\ : std_logic;
SIGNAL \Selector47~8_combout\ : std_logic;
SIGNAL \display_array~0_combout\ : std_logic;
SIGNAL \display_array~1_combout\ : std_logic;
SIGNAL \display_array~2_combout\ : std_logic;
SIGNAL \display_array~3_combout\ : std_logic;
SIGNAL \display_array~4_combout\ : std_logic;
SIGNAL \Selector46~6_combout\ : std_logic;
SIGNAL \display_array~6_combout\ : std_logic;
SIGNAL \display_array~7_combout\ : std_logic;
SIGNAL \display_array~8_combout\ : std_logic;
SIGNAL \display_array~9_combout\ : std_logic;
SIGNAL \display_array~10_combout\ : std_logic;
SIGNAL \display_array~11_combout\ : std_logic;
SIGNAL \display_array~12_combout\ : std_logic;
SIGNAL \display_array~13_combout\ : std_logic;
SIGNAL \display_array~14_combout\ : std_logic;
SIGNAL \display_array~15_combout\ : std_logic;
SIGNAL \display_array~16_combout\ : std_logic;
SIGNAL \display_array~17_combout\ : std_logic;
SIGNAL \display_array~18_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \display_array~19_combout\ : std_logic;
SIGNAL \display_array~20_combout\ : std_logic;
SIGNAL \display_array~21_combout\ : std_logic;
SIGNAL \display_array~22_combout\ : std_logic;
SIGNAL \display_array~23_combout\ : std_logic;
SIGNAL \lcd_data~18_combout\ : std_logic;
SIGNAL \display_array~24_combout\ : std_logic;
SIGNAL \display_array~25_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Equal0~9_combout\ : std_logic;
SIGNAL \Equal8~7_combout\ : std_logic;
SIGNAL \arraystart~19_combout\ : std_logic;
SIGNAL \arraystart~20_combout\ : std_logic;
SIGNAL \arraystart~21_combout\ : std_logic;
SIGNAL \arraystart~28_combout\ : std_logic;
SIGNAL \arraystart~32_combout\ : std_logic;
SIGNAL \arraystart~37_combout\ : std_logic;
SIGNAL \clk_count[25]~2_combout\ : std_logic;
SIGNAL \clk_count~10_combout\ : std_logic;
SIGNAL \clk_count~24_combout\ : std_logic;
SIGNAL \clk_count~30_combout\ : std_logic;
SIGNAL \clk_count~36_combout\ : std_logic;
SIGNAL \clk_count~37_combout\ : std_logic;
SIGNAL \clk_count~38_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~7_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~5_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~6_combout\ : std_logic;
SIGNAL \u1|Selector7~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[52]~20_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[50]~22_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[48]~24_combout\ : std_logic;
SIGNAL \u1|Selector7~14_combout\ : std_logic;
SIGNAL \u1|Selector7~15_combout\ : std_logic;
SIGNAL \u1|Selector7~16_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[53]~19_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[52]~20_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[50]~22_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[48]~24_combout\ : std_logic;
SIGNAL \u1|Selector7~21_combout\ : std_logic;
SIGNAL \u1|Selector7~25_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\ : std_logic;
SIGNAL \u1|Selector7~26_combout\ : std_logic;
SIGNAL \u1|Selector7~27_combout\ : std_logic;
SIGNAL \u1|Selector7~32_combout\ : std_logic;
SIGNAL \u1|res~11_combout\ : std_logic;
SIGNAL \u1|res~17_combout\ : std_logic;
SIGNAL \u1|res[6]~22_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~2_combout\ : std_logic;
SIGNAL \u1|res~36_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~15_combout\ : std_logic;
SIGNAL \u1|Add3~2_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~16_combout\ : std_logic;
SIGNAL \u1|res~44_combout\ : std_logic;
SIGNAL \u1|res~49_combout\ : std_logic;
SIGNAL \u1|res~58_combout\ : std_logic;
SIGNAL \u1|res~60_combout\ : std_logic;
SIGNAL \u1|res~61_combout\ : std_logic;
SIGNAL \u1|res~62_combout\ : std_logic;
SIGNAL \u1|res~64_combout\ : std_logic;
SIGNAL \u1|res~67_combout\ : std_logic;
SIGNAL \u1|res~68_combout\ : std_logic;
SIGNAL \u1|res~70_combout\ : std_logic;
SIGNAL \u1|res~72_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~10_combout\ : std_logic;
SIGNAL \u1|res~81_combout\ : std_logic;
SIGNAL \u1|res~82_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~19_combout\ : std_logic;
SIGNAL \u1|res~96_combout\ : std_logic;
SIGNAL \u1|res~97_combout\ : std_logic;
SIGNAL \u1|res~100_combout\ : std_logic;
SIGNAL \u1|counter~4_combout\ : std_logic;
SIGNAL \u1|counter~7_combout\ : std_logic;
SIGNAL \u1|counter~10_combout\ : std_logic;
SIGNAL \u1|counter~12_combout\ : std_logic;
SIGNAL \Add8~67_combout\ : std_logic;
SIGNAL \Add8~73_combout\ : std_logic;
SIGNAL \Add8~74_combout\ : std_logic;
SIGNAL \Add8~85_combout\ : std_logic;
SIGNAL \statecheck~2_combout\ : std_logic;
SIGNAL \statecheck~3_combout\ : std_logic;
SIGNAL \arrayend~12_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|selnose[9]~7_combout\ : std_logic;
SIGNAL \u1|res~109_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~13_combout\ : std_logic;
SIGNAL \u1|clk_out~0_combout\ : std_logic;
SIGNAL \datacheck[1]~feeder_combout\ : std_logic;
SIGNAL \datacheck[3]~feeder_combout\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \toleds[0]~output_o\ : std_logic;
SIGNAL \toleds[1]~output_o\ : std_logic;
SIGNAL \toleds[2]~output_o\ : std_logic;
SIGNAL \toleds[3]~output_o\ : std_logic;
SIGNAL \toleds[4]~output_o\ : std_logic;
SIGNAL \toleds[5]~output_o\ : std_logic;
SIGNAL \toleds[6]~output_o\ : std_logic;
SIGNAL \toleds[7]~output_o\ : std_logic;
SIGNAL \ledcheck~output_o\ : std_logic;
SIGNAL \alustate[0]~output_o\ : std_logic;
SIGNAL \alustate[1]~output_o\ : std_logic;
SIGNAL \alustate[2]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \datacheck[7]~0_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \datacheck[7]~feeder_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \u1|Mux1~0_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|Mux2~0_combout\ : std_logic;
SIGNAL \STATE~16_combout\ : std_logic;
SIGNAL \STATE~18_combout\ : std_logic;
SIGNAL \STATE~19_combout\ : std_logic;
SIGNAL \STATE.000~q\ : std_logic;
SIGNAL \clk_count~23_combout\ : std_logic;
SIGNAL \STATE~17_combout\ : std_logic;
SIGNAL \statecheck~0_combout\ : std_logic;
SIGNAL \Add8~77_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Add8~69_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~89_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~87_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~84_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~83_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~64_combout\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \Add8~72_combout\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Add8~71_combout\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \Add8~76_combout\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Add8~80_combout\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \Add8~78_combout\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \Add8~79_combout\ : std_logic;
SIGNAL \Equal8~5_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add8~68_combout\ : std_logic;
SIGNAL \Equal8~8_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Add8~66_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Add8~65_combout\ : std_logic;
SIGNAL \LessThan14~2_combout\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add8~70_combout\ : std_logic;
SIGNAL \Equal8~4_combout\ : std_logic;
SIGNAL \Equal8~9_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~86_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~88_combout\ : std_logic;
SIGNAL \Equal8~10_combout\ : std_logic;
SIGNAL \Equal8~11_combout\ : std_logic;
SIGNAL \Equal8~12_combout\ : std_logic;
SIGNAL \answerdelay[25]~7_combout\ : std_logic;
SIGNAL \answerdelay[25]~8_combout\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~48_combout\ : std_logic;
SIGNAL \Add8~81_combout\ : std_logic;
SIGNAL \Add8~49\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \Add8~82_combout\ : std_logic;
SIGNAL \Add8~51\ : std_logic;
SIGNAL \Add8~52_combout\ : std_logic;
SIGNAL \answerdelay[26]~5_combout\ : std_logic;
SIGNAL \Add8~53\ : std_logic;
SIGNAL \Add8~54_combout\ : std_logic;
SIGNAL \answerdelay[27]~4_combout\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~56_combout\ : std_logic;
SIGNAL \answerdelay[28]~3_combout\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~58_combout\ : std_logic;
SIGNAL \answerdelay[29]~2_combout\ : std_logic;
SIGNAL \Add8~59\ : std_logic;
SIGNAL \Add8~60_combout\ : std_logic;
SIGNAL \answerdelay[30]~1_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \LessThan14~1_combout\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~75_combout\ : std_logic;
SIGNAL \Equal8~6_combout\ : std_logic;
SIGNAL \LessThan14~3_combout\ : std_logic;
SIGNAL \LessThan14~4_combout\ : std_logic;
SIGNAL \LessThan14~5_combout\ : std_logic;
SIGNAL \answerdelay[25]~6_combout\ : std_logic;
SIGNAL \answerdelay[31]~0_combout\ : std_logic;
SIGNAL \arraystart[8]~0_combout\ : std_logic;
SIGNAL \arraystart[8]~1_combout\ : std_logic;
SIGNAL \arraystart~8_combout\ : std_logic;
SIGNAL \statecheck[0]~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \arraystart[8]~2_combout\ : std_logic;
SIGNAL \arraystart~7_combout\ : std_logic;
SIGNAL \arraystart[8]~5_combout\ : std_logic;
SIGNAL \arrayend~2_combout\ : std_logic;
SIGNAL \arrayend[2]~4_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \arraystart~17_combout\ : std_logic;
SIGNAL \arraystart~18_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \arraystart~14_combout\ : std_logic;
SIGNAL \arraystart~10_combout\ : std_logic;
SIGNAL \arrayend~5_combout\ : std_logic;
SIGNAL \arrayend~8_combout\ : std_logic;
SIGNAL \arrayend~9_combout\ : std_logic;
SIGNAL \STATE~15_combout\ : std_logic;
SIGNAL \arrayend[2]~10_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \arraystart~35_combout\ : std_logic;
SIGNAL \arraystart~24_combout\ : std_logic;
SIGNAL \arraystart~9_combout\ : std_logic;
SIGNAL \arraystart~11_combout\ : std_logic;
SIGNAL \arraystart~12_combout\ : std_logic;
SIGNAL \arraystart~13_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \arraystart~43_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \arraystart~22_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \arraystart~23_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \arraystart~25_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \arraystart~27_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \arraystart~29_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \arraystart~31_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \arraystart~36_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \arraystart~38_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \arraystart~39_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \arraystart~40_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \arraystart~41_combout\ : std_logic;
SIGNAL \LessThan9~18_combout\ : std_logic;
SIGNAL \arraystart~33_combout\ : std_logic;
SIGNAL \arraystart~34_combout\ : std_logic;
SIGNAL \LessThan9~15_combout\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \arraystart~26_combout\ : std_logic;
SIGNAL \LessThan9~13_combout\ : std_logic;
SIGNAL \arraystart~30_combout\ : std_logic;
SIGNAL \LessThan9~14_combout\ : std_logic;
SIGNAL \LessThan9~16_combout\ : std_logic;
SIGNAL \LessThan9~21_combout\ : std_logic;
SIGNAL \arrayend~6_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \arrayend~7_combout\ : std_logic;
SIGNAL \arrayend[4]~3_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \clk_count~1_combout\ : std_logic;
SIGNAL \arraystart[8]~4_combout\ : std_logic;
SIGNAL \arraystart[8]~6_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \arraystart~15_combout\ : std_logic;
SIGNAL \arraystart~16_combout\ : std_logic;
SIGNAL \LessThan9~1_cout\ : std_logic;
SIGNAL \LessThan9~3_cout\ : std_logic;
SIGNAL \LessThan9~5_cout\ : std_logic;
SIGNAL \LessThan9~7_cout\ : std_logic;
SIGNAL \LessThan9~9_cout\ : std_logic;
SIGNAL \LessThan9~10_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \arraystart~42_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \arraystart~3_combout\ : std_logic;
SIGNAL \LessThan9~20_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \clk_count[25]~8_combout\ : std_logic;
SIGNAL \clk_count~25_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \clk_count~35_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \clk_count~34_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \clk_count~33_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \clk_count~32_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \clk_count~31_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \clk_count~29_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \clk_count~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \clk_count~22_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \LessThan8~3_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \clk_count~18_combout\ : std_logic;
SIGNAL \clk_count~19_combout\ : std_logic;
SIGNAL \clk_count~21_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \busy~1_combout\ : std_logic;
SIGNAL \clk_count~17_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \clk_count~15_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \busy~2_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \LessThan8~4_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \clk_count[25]~3_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \clk_count[25]~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \clk_count[25]~4_combout\ : std_logic;
SIGNAL \clk_count[25]~5_combout\ : std_logic;
SIGNAL \clk_count[25]~6_combout\ : std_logic;
SIGNAL \clk_count~14_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \clk_count~13_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \busy~3_combout\ : std_logic;
SIGNAL \busy~7_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \busy~4_combout\ : std_logic;
SIGNAL \busy~5_combout\ : std_logic;
SIGNAL \busy~6_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \busy~8_combout\ : std_logic;
SIGNAL \busy~9_combout\ : std_logic;
SIGNAL \busy~10_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \clk_count~28_combout\ : std_logic;
SIGNAL \clk_count~27_combout\ : std_logic;
SIGNAL \LessThan15~3_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \clk_count~20_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan18~0_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \clk_count~12_combout\ : std_logic;
SIGNAL \clk_count~16_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan18~1_combout\ : std_logic;
SIGNAL \LessThan18~2_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \STATE.010~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \LessThan15~4_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \STATE.011~q\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \clk_count~7_combout\ : std_logic;
SIGNAL \clk_count~9_combout\ : std_logic;
SIGNAL \clk_count~11_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \lcd_data[2]~17_combout\ : std_logic;
SIGNAL \STATE.001~q\ : std_logic;
SIGNAL \arrayend~11_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \LessThan9~19_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \busy~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \busy~reg0_q\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \rs~0_combout\ : std_logic;
SIGNAL \rs~reg0_q\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \LessThan7~5_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector47~4_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~5_combout\ : std_logic;
SIGNAL \Selector47~9_combout\ : std_logic;
SIGNAL \e~reg0_q\ : std_logic;
SIGNAL \u1|Mux1~1_combout\ : std_logic;
SIGNAL \u1|opc~2_combout\ : std_logic;
SIGNAL \u1|opc[0]~8_combout\ : std_logic;
SIGNAL \u1|opc~7_combout\ : std_logic;
SIGNAL \u1|opc[1]~feeder_combout\ : std_logic;
SIGNAL \u1|opc~3_combout\ : std_logic;
SIGNAL \u1|opc[3]~feeder_combout\ : std_logic;
SIGNAL \u1|opc~5_combout\ : std_logic;
SIGNAL \u1|opc[5]~feeder_combout\ : std_logic;
SIGNAL \u1|Selector7~1_combout\ : std_logic;
SIGNAL \u1|Selector7~2_combout\ : std_logic;
SIGNAL \u1|opc~1_combout\ : std_logic;
SIGNAL \u1|opc~0_combout\ : std_logic;
SIGNAL \u1|op2[1]~0_combout\ : std_logic;
SIGNAL \u1|op1[7]~0_combout\ : std_logic;
SIGNAL \u1|op1[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|Selector7~3_combout\ : std_logic;
SIGNAL \u1|Add3~1_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \u1|opc~4_combout\ : std_logic;
SIGNAL \u1|Add3~0_combout\ : std_logic;
SIGNAL \u1|opc~6_combout\ : std_logic;
SIGNAL \u1|op1[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|ShiftRight0~6_combout\ : std_logic;
SIGNAL \u1|Selector7~5_combout\ : std_logic;
SIGNAL \u1|Selector7~6_combout\ : std_logic;
SIGNAL \u1|Selector7~7_combout\ : std_logic;
SIGNAL \u1|Selector7~9_combout\ : std_logic;
SIGNAL \u1|opc[4]~feeder_combout\ : std_logic;
SIGNAL \u1|Selector7~8_combout\ : std_logic;
SIGNAL \u1|Selector7~10_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|Add2~0_combout\ : std_logic;
SIGNAL \u1|Selector7~11_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ : std_logic;
SIGNAL \u1|op1[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[0]~1_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|selnose[9]~1_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|selnose[9]~2_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \u1|op1[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|selnose[9]~3_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\ : std_logic;
SIGNAL \u1|op1[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \u1|Selector7~12_combout\ : std_logic;
SIGNAL \u1|Selector7~13_combout\ : std_logic;
SIGNAL \u1|Selector7~20_combout\ : std_logic;
SIGNAL \u1|Add1~0_combout\ : std_logic;
SIGNAL \u1|Selector7~22_combout\ : std_logic;
SIGNAL \u1|Selector7~17_combout\ : std_logic;
SIGNAL \u1|Selector7~23_combout\ : std_logic;
SIGNAL \u1|op1[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ : std_logic;
SIGNAL \u1|op1[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[54]~18_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[51]~21_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \u1|Selector7~18_combout\ : std_logic;
SIGNAL \u1|Selector7~19_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|selnose[0]~3_combout\ : std_logic;
SIGNAL \u1|op1[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[0]~1_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|selnose[9]~4_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[54]~18_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[53]~19_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[51]~21_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[49]~23_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \u1|Selector7~24_combout\ : std_logic;
SIGNAL \u1|Selector7~28_combout\ : std_logic;
SIGNAL \u1|Selector7~29_combout\ : std_logic;
SIGNAL \u1|Selector7~30_combout\ : std_logic;
SIGNAL \u1|Selector7~31_combout\ : std_logic;
SIGNAL \u1|Selector7~33_combout\ : std_logic;
SIGNAL \u1|Selector7~34_combout\ : std_logic;
SIGNAL \u1|ans[0]~1_combout\ : std_logic;
SIGNAL \u1|ans[0]~0_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \lcd_data~12_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~0_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~9_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~10_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~8_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~9_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~8_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~10_combout\ : std_logic;
SIGNAL \u1|res~18_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~7_combout\ : std_logic;
SIGNAL \u1|res~19_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~11_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~12_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~13_combout\ : std_logic;
SIGNAL \u1|res~5_combout\ : std_logic;
SIGNAL \u1|res[6]~6_combout\ : std_logic;
SIGNAL \u1|opc[2]~feeder_combout\ : std_logic;
SIGNAL \u1|res~14_combout\ : std_logic;
SIGNAL \u1|res~7_combout\ : std_logic;
SIGNAL \u1|res~10_combout\ : std_logic;
SIGNAL \u1|res~12_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[57]~29_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\ : std_logic;
SIGNAL \u1|res~8_combout\ : std_logic;
SIGNAL \u1|res~9_combout\ : std_logic;
SIGNAL \u1|res~13_combout\ : std_logic;
SIGNAL \u1|res~15_combout\ : std_logic;
SIGNAL \u1|res~16_combout\ : std_logic;
SIGNAL \u1|res~20_combout\ : std_logic;
SIGNAL \u1|res~21_combout\ : std_logic;
SIGNAL \u1|res[6]~23_combout\ : std_logic;
SIGNAL \u1|res[6]~24_combout\ : std_logic;
SIGNAL \u1|ans[1]~2_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~1_combout\ : std_logic;
SIGNAL \u1|res~25_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~5_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~4_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~14_combout\ : std_logic;
SIGNAL \u1|res~26_combout\ : std_logic;
SIGNAL \u1|res~33_combout\ : std_logic;
SIGNAL \u1|res~27_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|res~30_combout\ : std_logic;
SIGNAL \u1|res~31_combout\ : std_logic;
SIGNAL \u1|Add2~1\ : std_logic;
SIGNAL \u1|Add2~3\ : std_logic;
SIGNAL \u1|Add2~4_combout\ : std_logic;
SIGNAL \u1|res~28_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[58]~30_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\ : std_logic;
SIGNAL \u1|res~29_combout\ : std_logic;
SIGNAL \u1|res~32_combout\ : std_logic;
SIGNAL \u1|res~34_combout\ : std_logic;
SIGNAL \u1|res~35_combout\ : std_logic;
SIGNAL \u1|res~37_combout\ : std_logic;
SIGNAL \u1|res~38_combout\ : std_logic;
SIGNAL \u1|ans[2]~3_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~3_combout\ : std_logic;
SIGNAL \u1|res~39_combout\ : std_logic;
SIGNAL \u1|res[6]~4_combout\ : std_logic;
SIGNAL \u1|res~52_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~12_combout\ : std_logic;
SIGNAL \u1|res~53_combout\ : std_logic;
SIGNAL \u1|res~40_combout\ : std_logic;
SIGNAL \u1|res~41_combout\ : std_logic;
SIGNAL \u1|res~45_combout\ : std_logic;
SIGNAL \u1|Add1~1\ : std_logic;
SIGNAL \u1|Add1~3\ : std_logic;
SIGNAL \u1|Add1~5\ : std_logic;
SIGNAL \u1|Add1~6_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|res~46_combout\ : std_logic;
SIGNAL \u1|res~47_combout\ : std_logic;
SIGNAL \u1|res~48_combout\ : std_logic;
SIGNAL \u1|Add2~5\ : std_logic;
SIGNAL \u1|Add2~6_combout\ : std_logic;
SIGNAL \u1|res~42_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[59]~31_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[59]~31_combout\ : std_logic;
SIGNAL \u1|res~43_combout\ : std_logic;
SIGNAL \u1|res~50_combout\ : std_logic;
SIGNAL \u1|res~51_combout\ : std_logic;
SIGNAL \u1|res~54_combout\ : std_logic;
SIGNAL \u1|res~55_combout\ : std_logic;
SIGNAL \u1|ans[3]~4_combout\ : std_logic;
SIGNAL \lcd_data~13_combout\ : std_logic;
SIGNAL \lcd_data[2]~14_combout\ : std_logic;
SIGNAL \lcd_data[2]~15_combout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~5_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~6_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~4_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~17_combout\ : std_logic;
SIGNAL \u1|res~57_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[60]~32_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[60]~32_combout\ : std_logic;
SIGNAL \u1|res~59_combout\ : std_logic;
SIGNAL \u1|res~63_combout\ : std_logic;
SIGNAL \u1|res~65_combout\ : std_logic;
SIGNAL \u1|res~66_combout\ : std_logic;
SIGNAL \u1|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \u1|res~56_combout\ : std_logic;
SIGNAL \u1|res~113_combout\ : std_logic;
SIGNAL \u1|res~114_combout\ : std_logic;
SIGNAL \u1|ans[4]~5_combout\ : std_logic;
SIGNAL \lcd_data~8_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~11_combout\ : std_logic;
SIGNAL \u1|ShiftRight0~11_combout\ : std_logic;
SIGNAL \u1|Selector7~0_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~4_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~12_combout\ : std_logic;
SIGNAL \u1|res~92_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~20_combout\ : std_logic;
SIGNAL \u1|res~83_combout\ : std_logic;
SIGNAL \u1|res~89_combout\ : std_logic;
SIGNAL \u1|Add1~7\ : std_logic;
SIGNAL \u1|Add1~9\ : std_logic;
SIGNAL \u1|Add1~11\ : std_logic;
SIGNAL \u1|Add1~12_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|res~86_combout\ : std_logic;
SIGNAL \u1|res~87_combout\ : std_logic;
SIGNAL \u1|Add2~7\ : std_logic;
SIGNAL \u1|Add2~9\ : std_logic;
SIGNAL \u1|Add2~11\ : std_logic;
SIGNAL \u1|Add2~12_combout\ : std_logic;
SIGNAL \u1|res~84_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[62]~34_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[62]~34_combout\ : std_logic;
SIGNAL \u1|res~85_combout\ : std_logic;
SIGNAL \u1|res~88_combout\ : std_logic;
SIGNAL \u1|res~90_combout\ : std_logic;
SIGNAL \u1|res~91_combout\ : std_logic;
SIGNAL \u1|res~93_combout\ : std_logic;
SIGNAL \u1|res~94_combout\ : std_logic;
SIGNAL \u1|ans[6]~7_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~7_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~8_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~9_combout\ : std_logic;
SIGNAL \u1|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \u1|ShiftRight1~18_combout\ : std_logic;
SIGNAL \u1|res~69_combout\ : std_logic;
SIGNAL \u1|res~73_combout\ : std_logic;
SIGNAL \u1|Add1~10_combout\ : std_logic;
SIGNAL \u1|res~74_combout\ : std_logic;
SIGNAL \u1|res~75_combout\ : std_logic;
SIGNAL \u1|res~76_combout\ : std_logic;
SIGNAL \u1|res~77_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[61]~33_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[61]~33_combout\ : std_logic;
SIGNAL \u1|res~71_combout\ : std_logic;
SIGNAL \u1|res~78_combout\ : std_logic;
SIGNAL \u1|res~79_combout\ : std_logic;
SIGNAL \u1|res~80_combout\ : std_logic;
SIGNAL \u1|res~111_combout\ : std_logic;
SIGNAL \u1|res~112_combout\ : std_logic;
SIGNAL \u1|ans[5]~6_combout\ : std_logic;
SIGNAL \u1|res~95_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~13_combout\ : std_logic;
SIGNAL \u1|ShiftLeft1~14_combout\ : std_logic;
SIGNAL \u1|res~110_combout\ : std_logic;
SIGNAL \u1|Add1~13\ : std_logic;
SIGNAL \u1|Add1~14_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|res~101_combout\ : std_logic;
SIGNAL \u1|res~102_combout\ : std_logic;
SIGNAL \u1|res~103_combout\ : std_logic;
SIGNAL \u1|res~104_combout\ : std_logic;
SIGNAL \u1|clk_out~feeder_combout\ : std_logic;
SIGNAL \u1|counter~11_combout\ : std_logic;
SIGNAL \u1|Add4~1\ : std_logic;
SIGNAL \u1|Add4~2_combout\ : std_logic;
SIGNAL \u1|Add4~3\ : std_logic;
SIGNAL \u1|Add4~4_combout\ : std_logic;
SIGNAL \u1|Add4~5\ : std_logic;
SIGNAL \u1|Add4~7\ : std_logic;
SIGNAL \u1|Add4~8_combout\ : std_logic;
SIGNAL \u1|Add4~9\ : std_logic;
SIGNAL \u1|Add4~10_combout\ : std_logic;
SIGNAL \u1|Add4~11\ : std_logic;
SIGNAL \u1|Add4~13\ : std_logic;
SIGNAL \u1|Add4~14_combout\ : std_logic;
SIGNAL \u1|Equal0~8_combout\ : std_logic;
SIGNAL \u1|Add4~15\ : std_logic;
SIGNAL \u1|Add4~16_combout\ : std_logic;
SIGNAL \u1|Add4~17\ : std_logic;
SIGNAL \u1|Add4~18_combout\ : std_logic;
SIGNAL \u1|Add4~19\ : std_logic;
SIGNAL \u1|Add4~20_combout\ : std_logic;
SIGNAL \u1|Equal0~6_combout\ : std_logic;
SIGNAL \u1|Add4~21\ : std_logic;
SIGNAL \u1|Add4~23\ : std_logic;
SIGNAL \u1|Add4~24_combout\ : std_logic;
SIGNAL \u1|counter~9_combout\ : std_logic;
SIGNAL \u1|Add4~25\ : std_logic;
SIGNAL \u1|Add4~26_combout\ : std_logic;
SIGNAL \u1|counter~8_combout\ : std_logic;
SIGNAL \u1|Add4~27\ : std_logic;
SIGNAL \u1|Add4~29\ : std_logic;
SIGNAL \u1|Add4~30_combout\ : std_logic;
SIGNAL \u1|Equal0~5_combout\ : std_logic;
SIGNAL \u1|Equal0~7_combout\ : std_logic;
SIGNAL \u1|counter~1_combout\ : std_logic;
SIGNAL \u1|counter~3_combout\ : std_logic;
SIGNAL \u1|Add4~31\ : std_logic;
SIGNAL \u1|Add4~32_combout\ : std_logic;
SIGNAL \u1|counter~6_combout\ : std_logic;
SIGNAL \u1|Add4~33\ : std_logic;
SIGNAL \u1|Add4~34_combout\ : std_logic;
SIGNAL \u1|Add4~35\ : std_logic;
SIGNAL \u1|Add4~36_combout\ : std_logic;
SIGNAL \u1|counter~5_combout\ : std_logic;
SIGNAL \u1|Add4~37\ : std_logic;
SIGNAL \u1|Add4~39\ : std_logic;
SIGNAL \u1|Add4~41\ : std_logic;
SIGNAL \u1|Add4~43\ : std_logic;
SIGNAL \u1|Add4~45\ : std_logic;
SIGNAL \u1|Add4~46_combout\ : std_logic;
SIGNAL \u1|Add4~47\ : std_logic;
SIGNAL \u1|Add4~48_combout\ : std_logic;
SIGNAL \u1|counter~0_combout\ : std_logic;
SIGNAL \u1|Add4~49\ : std_logic;
SIGNAL \u1|Add4~50_combout\ : std_logic;
SIGNAL \u1|Add4~51\ : std_logic;
SIGNAL \u1|Add4~52_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Add4~53\ : std_logic;
SIGNAL \u1|Add4~55\ : std_logic;
SIGNAL \u1|Add4~56_combout\ : std_logic;
SIGNAL \u1|Add4~57\ : std_logic;
SIGNAL \u1|Add4~58_combout\ : std_logic;
SIGNAL \u1|Add4~59\ : std_logic;
SIGNAL \u1|Add4~60_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|counter~2_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|Equal0~10_combout\ : std_logic;
SIGNAL \u1|clk_out~q\ : std_logic;
SIGNAL \u1|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \u1|Add2~13\ : std_logic;
SIGNAL \u1|Add2~14_combout\ : std_logic;
SIGNAL \u1|res~98_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ : std_logic;
SIGNAL \u1|Mod1|auto_generated|divider|divider|StageOut[63]~35_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ : std_logic;
SIGNAL \u1|Mod0|auto_generated|divider|divider|StageOut[63]~35_combout\ : std_logic;
SIGNAL \u1|res~99_combout\ : std_logic;
SIGNAL \u1|res~105_combout\ : std_logic;
SIGNAL \u1|res~106_combout\ : std_logic;
SIGNAL \u1|res~107_combout\ : std_logic;
SIGNAL \u1|res~108_combout\ : std_logic;
SIGNAL \u1|ans[7]~8_combout\ : std_logic;
SIGNAL \lcd_data~9_combout\ : std_logic;
SIGNAL \lcd_data[2]~10_combout\ : std_logic;
SIGNAL \lcd_data[2]~11_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Selector46~4_combout\ : std_logic;
SIGNAL \lcd_data[0]~0_combout\ : std_logic;
SIGNAL \Selector46~5_combout\ : std_logic;
SIGNAL \Selector46~7_combout\ : std_logic;
SIGNAL \lcd_data[2]~16_combout\ : std_logic;
SIGNAL \lcd_data[2]~21_combout\ : std_logic;
SIGNAL \lcd_data[0]~reg0_q\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \Selector45~3_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \Selector45~4_combout\ : std_logic;
SIGNAL \lcd_data[1]~1_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \Selector45~5_combout\ : std_logic;
SIGNAL \Selector45~6_combout\ : std_logic;
SIGNAL \Selector45~7_combout\ : std_logic;
SIGNAL \lcd_data[1]~reg0_q\ : std_logic;
SIGNAL \Selector44~3_combout\ : std_logic;
SIGNAL \Selector44~4_combout\ : std_logic;
SIGNAL \Selector44~5_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \Selector44~6_combout\ : std_logic;
SIGNAL \lcd_data[2]~2_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Selector44~7_combout\ : std_logic;
SIGNAL \Selector44~8_combout\ : std_logic;
SIGNAL \Selector44~9_combout\ : std_logic;
SIGNAL \Selector44~10_combout\ : std_logic;
SIGNAL \lcd_data[2]~reg0_q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector43~3_combout\ : std_logic;
SIGNAL \Selector43~4_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Selector43~5_combout\ : std_logic;
SIGNAL \Selector43~6_combout\ : std_logic;
SIGNAL \Selector43~7_combout\ : std_logic;
SIGNAL \lcd_data[3]~3_combout\ : std_logic;
SIGNAL \Selector43~8_combout\ : std_logic;
SIGNAL \lcd_data[3]~reg0_q\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \lcd_data~19_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \lcd_data~20_combout\ : std_logic;
SIGNAL \lcd_data[4]~4_combout\ : std_logic;
SIGNAL \Selector42~2_combout\ : std_logic;
SIGNAL \lcd_data[4]~reg0_q\ : std_logic;
SIGNAL \lcd_data[5]~5_combout\ : std_logic;
SIGNAL \lcd_data[5]~reg0_q\ : std_logic;
SIGNAL \Selector40~7_combout\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \display_array~5_combout\ : std_logic;
SIGNAL \Selector40~4_combout\ : std_logic;
SIGNAL \Selector40~5_combout\ : std_logic;
SIGNAL \Selector40~6_combout\ : std_logic;
SIGNAL \Selector40~8_combout\ : std_logic;
SIGNAL \lcd_data[6]~reg0_q\ : std_logic;
SIGNAL \u1|ledcheck~0_combout\ : std_logic;
SIGNAL \u1|ledcheck~q\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \u1|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \u1|Mod1|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \u1|Mod1|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \u1|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \u1|Mod0|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);
SIGNAL arrayend : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL answerdelay : std_logic_vector(31 DOWNTO 0);
SIGNAL statecheck : std_logic_vector(2 DOWNTO 0);
SIGNAL clk_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|ans\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|op2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|res\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|opc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL arraystart : std_logic_vector(31 DOWNTO 0);
SIGNAL datacheck : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_answerdelay[25]~8_combout\ : std_logic;
SIGNAL \u1|ALT_INV_ans\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_STATE.010~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_reset_n <= reset_n;
busy <= ww_busy;
rs <= ww_rs;
rw <= ww_rw;
e <= ww_e;
lcd_data <= ww_lcd_data;
ww_data <= data;
ww_key0 <= key0;
toleds <= ww_toleds;
ledcheck <= ww_ledcheck;
alustate <= ww_alustate;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\u1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\u1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\u1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\u1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \u1|Mult0|auto_generated|mac_mult1~dataout\ & \u1|Mult0|auto_generated|mac_mult1~1\ & \u1|Mult0|auto_generated|mac_mult1~0\);

\u1|Mult0|auto_generated|mac_out2~0\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\u1|Mult0|auto_generated|mac_out2~1\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\u1|Mult0|auto_generated|mac_out2~dataout\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\u1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\u1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\u1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\u1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\u1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\u1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\u1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\u1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\u1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\u1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\u1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\u1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\u1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\u1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\u1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\u1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\u1|opc~0_combout\ & \u1|opc~1_combout\ & \u1|opc~5_combout\ & \u1|opc~6_combout\ & \u1|opc~3_combout\ & \u1|opc~4_combout\ & \u1|opc~7_combout\ & \u1|opc~2_combout\ & gnd);

\u1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\u1|op2\(7) & \u1|op2\(6) & \u1|op2\(5) & \u1|op2\(4) & \u1|op2\(3) & \u1|op2\(2) & \u1|op2\(1) & \u1|op2\(0) & gnd);

\u1|Mult0|auto_generated|mac_mult1~0\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\u1|Mult0|auto_generated|mac_mult1~1\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\u1|Mult0|auto_generated|mac_mult1~dataout\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\u1|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|clk_out~q\);
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_answerdelay[25]~8_combout\ <= NOT \answerdelay[25]~8_combout\;
\u1|ALT_INV_ans\(7) <= NOT \u1|ans\(7);
\u1|ALT_INV_ans\(6) <= NOT \u1|ans\(6);
\u1|ALT_INV_ans\(5) <= NOT \u1|ans\(5);
\u1|ALT_INV_ans\(4) <= NOT \u1|ans\(4);
\u1|ALT_INV_ans\(3) <= NOT \u1|ans\(3);
\u1|ALT_INV_ans\(2) <= NOT \u1|ans\(2);
\u1|ALT_INV_ans\(1) <= NOT \u1|ans\(1);
\u1|ALT_INV_ans\(0) <= NOT \u1|ans\(0);
\ALT_INV_STATE.010~q\ <= NOT \STATE.010~q\;

-- Location: LCCOMB_X84_Y44_N18
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (arrayend(4) & (!\Add4~5\)) # (!arrayend(4) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!arrayend(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arrayend(4),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X84_Y44_N20
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (arrayend(5) & (\Add4~7\ $ (GND))) # (!arrayend(5) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((arrayend(5) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arrayend(5),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X84_Y44_N22
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = \Add4~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add4~9\,
	combout => \Add4~10_combout\);

-- Location: LCCOMB_X89_Y47_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = clk_count(0) $ (VCC)
-- \Add1~1\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X89_Y47_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (clk_count(1) & (!\Add1~1\)) # (!clk_count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X89_Y46_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (clk_count(21) & (!\Add1~41\)) # (!clk_count(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X83_Y46_N6
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (arraystart(3) & (!\Add7~5\)) # (!arraystart(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!arraystart(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X83_Y46_N8
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (arraystart(4) & (\Add7~7\ $ (GND))) # (!arraystart(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((arraystart(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X83_Y46_N10
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (arraystart(5) & (!\Add7~9\)) # (!arraystart(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!arraystart(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X83_Y46_N14
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (arraystart(7) & (!\Add7~13\)) # (!arraystart(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!arraystart(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X83_Y46_N16
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (arraystart(8) & (\Add7~15\ $ (GND))) # (!arraystart(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((arraystart(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X83_Y46_N18
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (arraystart(9) & (!\Add7~17\)) # (!arraystart(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!arraystart(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X83_Y46_N24
\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (arraystart(12) & (\Add7~23\ $ (GND))) # (!arraystart(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((arraystart(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X83_Y45_N0
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (arraystart(16) & (\Add7~31\ $ (GND))) # (!arraystart(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((arraystart(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X83_Y45_N4
\Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (arraystart(18) & (\Add7~35\ $ (GND))) # (!arraystart(18) & (!\Add7~35\ & VCC))
-- \Add7~37\ = CARRY((arraystart(18) & !\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X83_Y45_N8
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (arraystart(20) & (\Add7~39\ $ (GND))) # (!arraystart(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((arraystart(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X83_Y45_N10
\Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (arraystart(21) & (!\Add7~41\)) # (!arraystart(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!arraystart(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X83_Y45_N12
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (arraystart(22) & (\Add7~43\ $ (GND))) # (!arraystart(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((arraystart(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X83_Y45_N14
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (arraystart(23) & (!\Add7~45\)) # (!arraystart(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!arraystart(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X83_Y45_N18
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (arraystart(25) & (!\Add7~49\)) # (!arraystart(25) & ((\Add7~49\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~49\) # (!arraystart(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(25),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X75_Y43_N24
\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\u1|op1[5]~_Duplicate_1_q\ & ((GND) # (!\u1|op2\(0)))) # (!\u1|op1[5]~_Duplicate_1_q\ & (\u1|op2\(0) $ (GND)))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\u1|op1[5]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X75_Y43_N26
\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\u1|op2\(1) & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\))) # (!\u1|op2\(1) & 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X75_Y43_N6
\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\u1|op2\(1) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\u1|op2\(1) & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # 
-- (!\u1|op2\(1) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (\u1|op2\(1) & !\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\u1|op2\(1)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datab => \u1|op2\(1),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X75_Y43_N8
\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\u1|op2\(2) $ (\u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ $ (\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\u1|op2\(2) & (\u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\u1|op2\(2) & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X75_Y43_N10
\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\u1|op2\(3) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\u1|op2\(3) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\u1|op2\(3) & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\))) # (!\u1|op2\(3) & 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X74_Y43_N10
\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\u1|op2\(4) $ (\u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\ $ (\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\u1|op2\(4) & (\u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\u1|op2\(4) & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X73_Y41_N10
\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\ $ (\u1|op2\(2) $ (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\ & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # (!\u1|op2\(2)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\ & (!\u1|op2\(2) & !\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X73_Y41_N12
\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\u1|op2\(3) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\u1|op2\(3) & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\u1|op2\(3) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # 
-- (!\u1|op2\(3) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\ & (\u1|op2\(3) & !\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\u1|op2\(3)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datab => \u1|op2\(3),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X73_Y41_N16
\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\u1|op2\(5) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\u1|op2\(5) & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)))) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\u1|op2\(5) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))) # 
-- (!\u1|op2\(5) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\ & (\u1|op2\(5) & !\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\u1|op2\(5)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datab => \u1|op2\(5),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X74_Y41_N10
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\ & ((\u1|op2\(1) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # (!\u1|op2\(1) & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ & VCC)))) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\ & ((\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND))) # 
-- (!\u1|op2\(1) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\ & (\u1|op2\(1) & !\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\ & ((\u1|op2\(1)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\,
	datab => \u1|op2\(1),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X75_Y42_N20
\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\u1|op1[2]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X75_Y42_N2
\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\u1|op2\(4) & ((GND) # (!\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(4) & (\u1|op1[0]~_Duplicate_1_q\ $ (GND)))
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\u1|op2\(4)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X75_Y42_N6
\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\u1|op1[2]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X76_Y42_N18
\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # (!\u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\ & (\u1|op1[1]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\ & ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\,
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X81_Y42_N4
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & (\u1|op2\(2) $ (VCC))) # (!\u1|op1[0]~_Duplicate_1_q\ & ((\u1|op2\(2)) # (GND)))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\u1|op2\(2)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datab => \u1|op2\(2),
	datad => VCC,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X81_Y42_N6
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # (!\u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\ & (\u1|op1[1]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\,
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X81_Y42_N10
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))))) # (!\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)) # (!\u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\u1|op1[3]~_Duplicate_1_q\ & ((!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (!\u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\))) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[3]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X80_Y42_N8
\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & (\u1|op2\(1) $ (VCC))) # (!\u1|op1[0]~_Duplicate_1_q\ & ((\u1|op2\(1)) # (GND)))
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\u1|op2\(1)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datab => \u1|op2\(1),
	datad => VCC,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X80_Y42_N12
\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # 
-- (!\u1|op1[2]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X80_Y42_N16
\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\u1|op1[4]~_Duplicate_1_q\ $ (\u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\u1|op1[4]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # 
-- (!\u1|op1[4]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X81_Y43_N10
\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\u1|op2\(0) & (\u1|op1[5]~_Duplicate_1_q\ $ (VCC))) # (!\u1|op2\(0) & ((\u1|op1[5]~_Duplicate_1_q\) # (GND)))
-- \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\u1|op1[5]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[5]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X81_Y43_N12
\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\u1|op2\(1) & (!\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\u1|op2\(1) & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\u1|op2\(1) & ((\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\u1|op2\(1) & (!\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (\u1|op2\(1) & !\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\u1|op2\(1)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datab => \u1|op2\(1),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X81_Y43_N2
\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\u1|op2\(1) & ((\u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\u1|op2\(1) & ((\u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\u1|op2\(1) & ((!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\))) # (!\u1|op2\(1) & 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X82_Y41_N0
\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\u1|op2\(0) & (\u1|op1[3]~_Duplicate_1_q\ $ (VCC))) # (!\u1|op2\(0) & ((\u1|op1[3]~_Duplicate_1_q\) # (GND)))
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X82_Y41_N2
\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\u1|op2\(1) & ((\u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\u1|op2\(1) & ((\u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\u1|op2\(1) & ((!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (!\u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\))) # (!\u1|op2\(1) & 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X82_Y41_N4
\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ $ (\u1|op2\(2) $ (\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ & ((!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\u1|op2\(2)))) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ & (!\u1|op2\(2) & !\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X82_Y41_N6
\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\u1|op2\(3) & (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\u1|op2\(3) & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\u1|op2\(3) & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\u1|op2\(3) & (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & (\u1|op2\(3) & !\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\u1|op2\(3)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datab => \u1|op2\(3),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X82_Y41_N12
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\u1|op2\(0) & (\u1|op1[2]~_Duplicate_1_q\ $ (VCC))) # (!\u1|op2\(0) & ((\u1|op1[2]~_Duplicate_1_q\) # (GND)))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\u1|op1[2]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X82_Y41_N14
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\u1|op2\(1) & (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\u1|op2\(1) & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # (!\u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\u1|op2\(1) & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # 
-- (!\u1|op2\(1) & (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ & (\u1|op2\(1) & !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\u1|op2\(1)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\,
	datab => \u1|op2\(1),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X81_Y41_N16
\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\u1|op1[1]~_Duplicate_1_q\ & ((GND) # (!\u1|op2\(0)))) # (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|op2\(0) $ (GND)))
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X81_Y41_N20
\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ $ (\u1|op2\(2) $ (\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ & ((!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # (!\u1|op2\(2)))) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ & (!\u1|op2\(2) & !\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X81_Y41_N24
\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\u1|op2\(4) $ (\u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ $ (\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\u1|op2\(4) & (\u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # (!\u1|op2\(4) & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X81_Y41_N26
\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\u1|op2\(5) & ((\u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # (!\u1|op2\(5) & ((\u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # (!\u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\u1|op2\(5) & ((!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (!\u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\))) # (!\u1|op2\(5) & 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(5),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: DSPOUT_X71_Y44_N2
\u1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X74_Y44_N2
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\u1|op2\(0) & ((GND) # (!\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(0) & (\u1|op1[0]~_Duplicate_1_q\ $ (GND)))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\u1|op2\(0)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

-- Location: LCCOMB_X75_Y45_N8
\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\ $ (\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\u1|op1[2]~_Duplicate_1_q\))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\ & (!\u1|op1[2]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X74_Y45_N6
\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\ $ (\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\u1|op1[2]~_Duplicate_1_q\))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\ & (!\u1|op1[2]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X74_Y45_N20
\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\u1|op2\(3) & ((GND) # (!\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(3) & (\u1|op1[0]~_Duplicate_1_q\ $ (GND)))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\u1|op2\(3)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X74_Y45_N26
\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))))) # (!\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\u1|op1[3]~_Duplicate_1_q\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\))) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[3]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X73_Y45_N6
\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\u1|op2\(2) & ((GND) # (!\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(2) & (\u1|op1[0]~_Duplicate_1_q\ $ (GND)))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\u1|op2\(2)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X73_Y45_N8
\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\ & (\u1|op1[1]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X73_Y45_N12
\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))))) # (!\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\u1|op1[3]~_Duplicate_1_q\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\))) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[3]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X73_Y45_N14
\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\ $ (\u1|op1[4]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\) # (!\u1|op1[4]~_Duplicate_1_q\))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\ & (!\u1|op1[4]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datab => \u1|op1[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X73_Y45_N16
\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\u1|op1[5]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))))) # (!\u1|op1[5]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\u1|op1[5]~_Duplicate_1_q\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\))) # 
-- (!\u1|op1[5]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X73_Y44_N14
\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\u1|op2\(1) & ((GND) # (!\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(1) & (\u1|op1[0]~_Duplicate_1_q\ $ (GND)))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\u1|op2\(1)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X73_Y44_N18
\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\ $ (\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # (!\u1|op1[2]~_Duplicate_1_q\))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\ & (!\u1|op1[2]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X73_Y44_N24
\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\u1|op1[5]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\u1|op1[5]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)))) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\u1|op1[5]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))) # (!\u1|op1[5]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\ & (\u1|op1[5]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\u1|op1[5]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datab => \u1|op1[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X74_Y44_N10
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = ((\u1|op1[4]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ = CARRY((\u1|op1[4]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)) # 
-- (!\u1|op1[4]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\);

-- Location: LCCOMB_X80_Y44_N6
\u1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~2_combout\ = (\u1|op2\(1) & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Add2~1\)) # (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|Add2~1\ & VCC)))) # (!\u1|op2\(1) & ((\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Add2~1\) # (GND))) # (!\u1|op1[1]~_Duplicate_1_q\ & 
-- (!\u1|Add2~1\))))
-- \u1|Add2~3\ = CARRY((\u1|op2\(1) & (\u1|op1[1]~_Duplicate_1_q\ & !\u1|Add2~1\)) # (!\u1|op2\(1) & ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add2~1\,
	combout => \u1|Add2~2_combout\,
	cout => \u1|Add2~3\);

-- Location: LCCOMB_X72_Y43_N12
\u1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = (\u1|op2\(1) & ((\u1|op1[1]~_Duplicate_1_q\ & (\u1|Add0~1\ & VCC)) # (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Add0~1\)))) # (!\u1|op2\(1) & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Add0~1\)) # (!\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Add0~1\) # 
-- (GND)))))
-- \u1|Add0~3\ = CARRY((\u1|op2\(1) & (!\u1|op1[1]~_Duplicate_1_q\ & !\u1|Add0~1\)) # (!\u1|op2\(1) & ((!\u1|Add0~1\) # (!\u1|op1[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add0~1\,
	combout => \u1|Add0~2_combout\,
	cout => \u1|Add0~3\);

-- Location: LCCOMB_X72_Y42_N12
\u1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~2_combout\ = (\u1|op2\(1) & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Add1~1\)) # (!\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Add1~1\) # (GND))))) # (!\u1|op2\(1) & ((\u1|op1[1]~_Duplicate_1_q\ & (\u1|Add1~1\ & VCC)) # (!\u1|op1[1]~_Duplicate_1_q\ & 
-- (!\u1|Add1~1\))))
-- \u1|Add1~3\ = CARRY((\u1|op2\(1) & ((!\u1|Add1~1\) # (!\u1|op1[1]~_Duplicate_1_q\))) # (!\u1|op2\(1) & (!\u1|op1[1]~_Duplicate_1_q\ & !\u1|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add1~1\,
	combout => \u1|Add1~2_combout\,
	cout => \u1|Add1~3\);

-- Location: LCCOMB_X72_Y42_N14
\u1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~4_combout\ = ((\u1|op1[2]~_Duplicate_1_q\ $ (\u1|op2\(2) $ (\u1|Add1~3\)))) # (GND)
-- \u1|Add1~5\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & ((!\u1|Add1~3\) # (!\u1|op2\(2)))) # (!\u1|op1[2]~_Duplicate_1_q\ & (!\u1|op2\(2) & !\u1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Add1~3\,
	combout => \u1|Add1~4_combout\,
	cout => \u1|Add1~5\);

-- Location: LCCOMB_X80_Y44_N12
\u1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~8_combout\ = ((\u1|op1[4]~_Duplicate_1_q\ $ (\u1|op2\(4) $ (\u1|Add2~7\)))) # (GND)
-- \u1|Add2~9\ = CARRY((\u1|op1[4]~_Duplicate_1_q\ & (\u1|op2\(4) & !\u1|Add2~7\)) # (!\u1|op1[4]~_Duplicate_1_q\ & ((\u1|op2\(4)) # (!\u1|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|op2\(4),
	datad => VCC,
	cin => \u1|Add2~7\,
	combout => \u1|Add2~8_combout\,
	cout => \u1|Add2~9\);

-- Location: LCCOMB_X72_Y43_N18
\u1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~8_combout\ = ((\u1|op2\(4) $ (\u1|op1[4]~_Duplicate_1_q\ $ (!\u1|Add0~7\)))) # (GND)
-- \u1|Add0~9\ = CARRY((\u1|op2\(4) & ((\u1|op1[4]~_Duplicate_1_q\) # (!\u1|Add0~7\))) # (!\u1|op2\(4) & (\u1|op1[4]~_Duplicate_1_q\ & !\u1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|op1[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add0~7\,
	combout => \u1|Add0~8_combout\,
	cout => \u1|Add0~9\);

-- Location: LCCOMB_X72_Y42_N18
\u1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~8_combout\ = ((\u1|op1[4]~_Duplicate_1_q\ $ (\u1|op2\(4) $ (\u1|Add1~7\)))) # (GND)
-- \u1|Add1~9\ = CARRY((\u1|op1[4]~_Duplicate_1_q\ & ((!\u1|Add1~7\) # (!\u1|op2\(4)))) # (!\u1|op1[4]~_Duplicate_1_q\ & (!\u1|op2\(4) & !\u1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|op2\(4),
	datad => VCC,
	cin => \u1|Add1~7\,
	combout => \u1|Add1~8_combout\,
	cout => \u1|Add1~9\);

-- Location: LCCOMB_X80_Y44_N14
\u1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~10_combout\ = (\u1|op2\(5) & ((\u1|op1[5]~_Duplicate_1_q\ & (!\u1|Add2~9\)) # (!\u1|op1[5]~_Duplicate_1_q\ & (\u1|Add2~9\ & VCC)))) # (!\u1|op2\(5) & ((\u1|op1[5]~_Duplicate_1_q\ & ((\u1|Add2~9\) # (GND))) # (!\u1|op1[5]~_Duplicate_1_q\ & 
-- (!\u1|Add2~9\))))
-- \u1|Add2~11\ = CARRY((\u1|op2\(5) & (\u1|op1[5]~_Duplicate_1_q\ & !\u1|Add2~9\)) # (!\u1|op2\(5) & ((\u1|op1[5]~_Duplicate_1_q\) # (!\u1|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(5),
	datab => \u1|op1[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add2~9\,
	combout => \u1|Add2~10_combout\,
	cout => \u1|Add2~11\);

-- Location: LCCOMB_X72_Y43_N20
\u1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~10_combout\ = (\u1|op1[5]~_Duplicate_1_q\ & ((\u1|op2\(5) & (\u1|Add0~9\ & VCC)) # (!\u1|op2\(5) & (!\u1|Add0~9\)))) # (!\u1|op1[5]~_Duplicate_1_q\ & ((\u1|op2\(5) & (!\u1|Add0~9\)) # (!\u1|op2\(5) & ((\u1|Add0~9\) # (GND)))))
-- \u1|Add0~11\ = CARRY((\u1|op1[5]~_Duplicate_1_q\ & (!\u1|op2\(5) & !\u1|Add0~9\)) # (!\u1|op1[5]~_Duplicate_1_q\ & ((!\u1|Add0~9\) # (!\u1|op2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datab => \u1|op2\(5),
	datad => VCC,
	cin => \u1|Add0~9\,
	combout => \u1|Add0~10_combout\,
	cout => \u1|Add0~11\);

-- Location: LCCOMB_X48_Y68_N0
\u1|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~0_combout\ = \u1|counter\(0) $ (VCC)
-- \u1|Add4~1\ = CARRY(\u1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(0),
	datad => VCC,
	combout => \u1|Add4~0_combout\,
	cout => \u1|Add4~1\);

-- Location: LCCOMB_X48_Y68_N6
\u1|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~6_combout\ = (\u1|counter\(3) & (!\u1|Add4~5\)) # (!\u1|counter\(3) & ((\u1|Add4~5\) # (GND)))
-- \u1|Add4~7\ = CARRY((!\u1|Add4~5\) # (!\u1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(3),
	datad => VCC,
	cin => \u1|Add4~5\,
	combout => \u1|Add4~6_combout\,
	cout => \u1|Add4~7\);

-- Location: LCCOMB_X48_Y68_N12
\u1|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~12_combout\ = (\u1|counter\(6) & (\u1|Add4~11\ $ (GND))) # (!\u1|counter\(6) & (!\u1|Add4~11\ & VCC))
-- \u1|Add4~13\ = CARRY((\u1|counter\(6) & !\u1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(6),
	datad => VCC,
	cin => \u1|Add4~11\,
	combout => \u1|Add4~12_combout\,
	cout => \u1|Add4~13\);

-- Location: LCCOMB_X48_Y68_N22
\u1|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~22_combout\ = (\u1|counter\(11) & (!\u1|Add4~21\)) # (!\u1|counter\(11) & ((\u1|Add4~21\) # (GND)))
-- \u1|Add4~23\ = CARRY((!\u1|Add4~21\) # (!\u1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(11),
	datad => VCC,
	cin => \u1|Add4~21\,
	combout => \u1|Add4~22_combout\,
	cout => \u1|Add4~23\);

-- Location: LCCOMB_X48_Y68_N28
\u1|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~28_combout\ = (\u1|counter\(14) & (\u1|Add4~27\ $ (GND))) # (!\u1|counter\(14) & (!\u1|Add4~27\ & VCC))
-- \u1|Add4~29\ = CARRY((\u1|counter\(14) & !\u1|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(14),
	datad => VCC,
	cin => \u1|Add4~27\,
	combout => \u1|Add4~28_combout\,
	cout => \u1|Add4~29\);

-- Location: LCCOMB_X48_Y67_N6
\u1|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~38_combout\ = (\u1|counter\(19) & (!\u1|Add4~37\)) # (!\u1|counter\(19) & ((\u1|Add4~37\) # (GND)))
-- \u1|Add4~39\ = CARRY((!\u1|Add4~37\) # (!\u1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(19),
	datad => VCC,
	cin => \u1|Add4~37\,
	combout => \u1|Add4~38_combout\,
	cout => \u1|Add4~39\);

-- Location: LCCOMB_X48_Y67_N8
\u1|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~40_combout\ = (\u1|counter\(20) & (\u1|Add4~39\ $ (GND))) # (!\u1|counter\(20) & (!\u1|Add4~39\ & VCC))
-- \u1|Add4~41\ = CARRY((\u1|counter\(20) & !\u1|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(20),
	datad => VCC,
	cin => \u1|Add4~39\,
	combout => \u1|Add4~40_combout\,
	cout => \u1|Add4~41\);

-- Location: LCCOMB_X48_Y67_N10
\u1|Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~42_combout\ = (\u1|counter\(21) & (!\u1|Add4~41\)) # (!\u1|counter\(21) & ((\u1|Add4~41\) # (GND)))
-- \u1|Add4~43\ = CARRY((!\u1|Add4~41\) # (!\u1|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(21),
	datad => VCC,
	cin => \u1|Add4~41\,
	combout => \u1|Add4~42_combout\,
	cout => \u1|Add4~43\);

-- Location: LCCOMB_X48_Y67_N12
\u1|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~44_combout\ = (\u1|counter\(22) & (\u1|Add4~43\ $ (GND))) # (!\u1|counter\(22) & (!\u1|Add4~43\ & VCC))
-- \u1|Add4~45\ = CARRY((\u1|counter\(22) & !\u1|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(22),
	datad => VCC,
	cin => \u1|Add4~43\,
	combout => \u1|Add4~44_combout\,
	cout => \u1|Add4~45\);

-- Location: LCCOMB_X48_Y67_N22
\u1|Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~54_combout\ = (\u1|counter\(27) & (!\u1|Add4~53\)) # (!\u1|counter\(27) & ((\u1|Add4~53\) # (GND)))
-- \u1|Add4~55\ = CARRY((!\u1|Add4~53\) # (!\u1|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(27),
	datad => VCC,
	cin => \u1|Add4~53\,
	combout => \u1|Add4~54_combout\,
	cout => \u1|Add4~55\);

-- Location: LCCOMB_X48_Y67_N28
\u1|Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~60_combout\ = (\u1|counter\(30) & (\u1|Add4~59\ $ (GND))) # (!\u1|counter\(30) & (!\u1|Add4~59\ & VCC))
-- \u1|Add4~61\ = CARRY((\u1|counter\(30) & !\u1|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(30),
	datad => VCC,
	cin => \u1|Add4~59\,
	combout => \u1|Add4~60_combout\,
	cout => \u1|Add4~61\);

-- Location: LCCOMB_X48_Y67_N30
\u1|Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~62_combout\ = \u1|counter\(31) $ (\u1|Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(31),
	cin => \u1|Add4~61\,
	combout => \u1|Add4~62_combout\);

-- Location: LCCOMB_X89_Y43_N8
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (answerdelay(4) & (\Add8~7\ $ (GND))) # (!answerdelay(4) & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((answerdelay(4) & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X89_Y43_N20
\Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (answerdelay(10) & (\Add8~19\ $ (GND))) # (!answerdelay(10) & (!\Add8~19\ & VCC))
-- \Add8~21\ = CARRY((answerdelay(10) & !\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(10),
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X89_Y43_N30
\Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (answerdelay(15) & (!\Add8~29\)) # (!answerdelay(15) & ((\Add8~29\) # (GND)))
-- \Add8~31\ = CARRY((!\Add8~29\) # (!answerdelay(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(15),
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

-- Location: LCCOMB_X89_Y42_N0
\Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = (answerdelay(16) & (\Add8~31\ $ (GND))) # (!answerdelay(16) & (!\Add8~31\ & VCC))
-- \Add8~33\ = CARRY((answerdelay(16) & !\Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(16),
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

-- Location: LCCOMB_X89_Y42_N2
\Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (answerdelay(17) & (!\Add8~33\)) # (!answerdelay(17) & ((\Add8~33\) # (GND)))
-- \Add8~35\ = CARRY((!\Add8~33\) # (!answerdelay(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(17),
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: LCCOMB_X89_Y42_N14
\Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = (answerdelay(23) & (!\Add8~45\)) # (!answerdelay(23) & ((\Add8~45\) # (GND)))
-- \Add8~47\ = CARRY((!\Add8~45\) # (!answerdelay(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(23),
	datad => VCC,
	cin => \Add8~45\,
	combout => \Add8~46_combout\,
	cout => \Add8~47\);

-- Location: LCCOMB_X89_Y42_N28
\Add8~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~60_combout\ = (answerdelay(30) & (\Add8~59\ $ (GND))) # (!answerdelay(30) & (!\Add8~59\ & VCC))
-- \Add8~61\ = CARRY((answerdelay(30) & !\Add8~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(30),
	datad => VCC,
	cin => \Add8~59\,
	combout => \Add8~60_combout\,
	cout => \Add8~61\);

-- Location: LCCOMB_X89_Y42_N30
\Add8~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~62_combout\ = answerdelay(31) $ (\Add8~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(31),
	cin => \Add8~61\,
	combout => \Add8~62_combout\);

-- Location: FF_X86_Y42_N23
\datacheck[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datacheck[1]~feeder_combout\,
	ena => \datacheck[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datacheck(1));

-- Location: FF_X86_Y42_N13
\datacheck[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \datacheck[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datacheck(2));

-- Location: FF_X86_Y42_N15
\datacheck[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datacheck[3]~feeder_combout\,
	ena => \datacheck[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datacheck(3));

-- Location: LCCOMB_X86_Y42_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\data[2]~input_o\ & (datacheck(2) & (datacheck(3) $ (!\data[3]~input_o\)))) # (!\data[2]~input_o\ & (!datacheck(2) & (datacheck(3) $ (!\data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => datacheck(3),
	datac => datacheck(2),
	datad => \data[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: FF_X84_Y44_N7
\arrayend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arrayend~11_combout\,
	ena => \arrayend[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arrayend(1));

-- Location: FF_X84_Y43_N21
\arraystart[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~19_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(7));

-- Location: FF_X84_Y43_N31
\arraystart[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~20_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(8));

-- Location: FF_X84_Y43_N1
\arraystart[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~21_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(9));

-- Location: LCCOMB_X84_Y43_N12
\LessThan9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~12_combout\ = (!arraystart(10) & (!arraystart(9) & (!arraystart(8) & !arraystart(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(10),
	datab => arraystart(9),
	datac => arraystart(8),
	datad => arraystart(7),
	combout => \LessThan9~12_combout\);

-- Location: FF_X84_Y43_N3
\arraystart[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~28_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(16));

-- Location: FF_X84_Y45_N7
\arraystart[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~32_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(20));

-- Location: FF_X84_Y45_N31
\arraystart[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~37_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(25));

-- Location: LCCOMB_X84_Y45_N2
\LessThan9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~17_combout\ = (!arraystart(24) & (!arraystart(26) & (!arraystart(25) & !arraystart(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(24),
	datab => arraystart(26),
	datac => arraystart(25),
	datad => arraystart(23),
	combout => \LessThan9~17_combout\);

-- Location: LCCOMB_X85_Y43_N30
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (arrayend(1) & (!arraystart(1) & (arraystart(0) $ (!arrayend(0))))) # (!arrayend(1) & (arraystart(1) & (arraystart(0) $ (!arrayend(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arrayend(1),
	datab => arraystart(0),
	datac => arrayend(0),
	datad => arraystart(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X84_Y44_N10
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (arraystart(6) & (\Add4~10_combout\ & (arraystart(5) $ (!\Add4~8_combout\)))) # (!arraystart(6) & (!\Add4~10_combout\ & (arraystart(5) $ (!\Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(6),
	datab => arraystart(5),
	datac => \Add4~10_combout\,
	datad => \Add4~8_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X84_Y44_N0
\Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (\Equal5~2_combout\ & (!arraystart(31) & (arrayend(0) $ (arraystart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => arrayend(0),
	datac => arraystart(31),
	datad => arraystart(0),
	combout => \Equal5~3_combout\);

-- Location: FF_X86_Y46_N23
\clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~10_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(28));

-- Location: FF_X88_Y47_N13
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~24_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: FF_X90_Y47_N5
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~30_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: FF_X90_Y47_N21
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~36_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: FF_X90_Y47_N3
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~37_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: FF_X88_Y47_N17
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~38_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X90_Y47_N24
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!clk_count(6) & !clk_count(5))) # (!clk_count(7))) # (!clk_count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datab => clk_count(8),
	datac => clk_count(5),
	datad => clk_count(7),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X90_Y46_N8
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!clk_count(9) & \LessThan0~0_combout\)) # (!clk_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datac => clk_count(9),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y46_N2
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!clk_count(11) & (!clk_count(12) & \LessThan0~1_combout\))) # (!clk_count(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datab => clk_count(12),
	datac => \LessThan0~1_combout\,
	datad => clk_count(13),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y46_N24
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((\LessThan0~3_combout\ & \LessThan0~2_combout\)) # (!clk_count(18))) # (!clk_count(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(17),
	datab => clk_count(18),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X90_Y46_N6
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!clk_count(19) & (!clk_count(20) & \LessThan0~4_combout\))) # (!clk_count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(19),
	datab => clk_count(20),
	datac => clk_count(21),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X88_Y46_N12
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!\Add1~24_combout\) # (!\Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~22_combout\,
	datad => \Add1~24_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X91_Y46_N8
\LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (!clk_count(11) & (!clk_count(10) & \LessThan18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(11),
	datac => clk_count(10),
	datad => \LessThan18~2_combout\,
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X90_Y47_N16
\LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (!clk_count(3) & (!clk_count(2) & (!clk_count(5) & !clk_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datab => clk_count(2),
	datac => clk_count(5),
	datad => clk_count(4),
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X91_Y47_N24
\LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = (((\LessThan15~1_combout\) # (!clk_count(7))) # (!clk_count(8))) # (!clk_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datab => clk_count(8),
	datac => \LessThan15~1_combout\,
	datad => clk_count(7),
	combout => \LessThan15~2_combout\);

-- Location: LCCOMB_X90_Y47_N6
\LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~1_combout\ = (clk_count(5) & clk_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_count(5),
	datad => clk_count(4),
	combout => \LessThan16~1_combout\);

-- Location: LCCOMB_X91_Y47_N10
\LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = (!clk_count(6) & (((!clk_count(2)) # (!clk_count(3))) # (!\LessThan16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datab => \LessThan16~1_combout\,
	datac => clk_count(3),
	datad => clk_count(2),
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X91_Y47_N0
\LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~1_combout\ = ((!clk_count(8) & ((\LessThan17~0_combout\) # (!clk_count(7))))) # (!clk_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datab => clk_count(9),
	datac => clk_count(8),
	datad => \LessThan17~0_combout\,
	combout => \LessThan17~1_combout\);

-- Location: LCCOMB_X91_Y46_N10
\LessThan18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~3_combout\ = (!clk_count(18) & (!clk_count(11) & (!clk_count(21) & \LessThan18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datab => clk_count(11),
	datac => clk_count(21),
	datad => \LessThan18~1_combout\,
	combout => \LessThan18~3_combout\);

-- Location: LCCOMB_X91_Y47_N30
\LessThan16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~2_combout\ = ((!clk_count(1) & (!clk_count(2) & !clk_count(3)))) # (!\LessThan16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datab => clk_count(2),
	datac => \LessThan16~1_combout\,
	datad => clk_count(3),
	combout => \LessThan16~2_combout\);

-- Location: LCCOMB_X91_Y47_N20
\LessThan16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~3_combout\ = (!clk_count(6) & (!clk_count(9) & (!clk_count(8) & !clk_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datab => clk_count(9),
	datac => clk_count(8),
	datad => clk_count(7),
	combout => \LessThan16~3_combout\);

-- Location: LCCOMB_X91_Y46_N12
\LessThan16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~4_combout\ = (\LessThan16~2_combout\ & (\LessThan16~3_combout\ & (!clk_count(10) & \LessThan18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~2_combout\,
	datab => \LessThan16~3_combout\,
	datac => clk_count(10),
	datad => \LessThan18~3_combout\,
	combout => \LessThan16~4_combout\);

-- Location: LCCOMB_X91_Y46_N26
\Selector47~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~6_combout\ = (\LessThan17~1_combout\ & (\LessThan15~4_combout\ & (\LessThan16~0_combout\ & !\LessThan16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~1_combout\,
	datab => \LessThan15~4_combout\,
	datac => \LessThan16~0_combout\,
	datad => \LessThan16~4_combout\,
	combout => \Selector47~6_combout\);

-- Location: LCCOMB_X90_Y47_N0
\LessThan15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~5_combout\ = (!clk_count(5) & (!clk_count(3) & !clk_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datac => clk_count(3),
	datad => clk_count(4),
	combout => \LessThan15~5_combout\);

-- Location: LCCOMB_X90_Y47_N18
\LessThan18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~4_combout\ = ((\LessThan15~5_combout\ & ((!clk_count(1)) # (!clk_count(2))))) # (!clk_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datab => clk_count(2),
	datac => clk_count(1),
	datad => \LessThan15~5_combout\,
	combout => \LessThan18~4_combout\);

-- Location: LCCOMB_X91_Y47_N22
\LessThan18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~5_combout\ = (!clk_count(9) & (((!clk_count(7) & \LessThan18~4_combout\)) # (!clk_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datab => clk_count(9),
	datac => clk_count(8),
	datad => \LessThan18~4_combout\,
	combout => \LessThan18~5_combout\);

-- Location: LCCOMB_X91_Y46_N20
\Selector47~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~7_combout\ = (!\LessThan16~4_combout\ & (((!\LessThan18~5_combout\ & clk_count(10))) # (!\LessThan18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~3_combout\,
	datab => \LessThan18~5_combout\,
	datac => clk_count(10),
	datad => \LessThan16~4_combout\,
	combout => \Selector47~7_combout\);

-- Location: LCCOMB_X91_Y46_N14
\Selector47~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~8_combout\ = (\Selector47~6_combout\) # ((\e~reg0_q\ & ((\Selector47~7_combout\) # (!\LessThan15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~reg0_q\,
	datab => \Selector47~7_combout\,
	datac => \Selector47~6_combout\,
	datad => \LessThan15~4_combout\,
	combout => \Selector47~8_combout\);

-- Location: LCCOMB_X85_Y45_N0
\display_array~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~0_combout\ = (arraystart(5) & (!arraystart(0) & !arraystart(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datab => arraystart(0),
	datac => arraystart(4),
	combout => \display_array~0_combout\);

-- Location: LCCOMB_X85_Y45_N14
\display_array~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~1_combout\ = (arraystart(4) & (!arraystart(0) & ((arraystart(2)) # (!arraystart(1))))) # (!arraystart(4) & (arraystart(0) & ((!arraystart(1)) # (!arraystart(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(2),
	datab => arraystart(1),
	datac => arraystart(4),
	datad => arraystart(0),
	combout => \display_array~1_combout\);

-- Location: LCCOMB_X85_Y45_N4
\display_array~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~2_combout\ = (arraystart(2) & (!\display_array~1_combout\ & (!arraystart(5)))) # (!arraystart(2) & ((\display_array~0_combout\) # ((!\display_array~1_combout\ & !arraystart(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(2),
	datab => \display_array~1_combout\,
	datac => arraystart(5),
	datad => \display_array~0_combout\,
	combout => \display_array~2_combout\);

-- Location: LCCOMB_X85_Y45_N10
\display_array~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~3_combout\ = (arraystart(4) & ((arraystart(0) & ((arraystart(1)))) # (!arraystart(0) & (arraystart(2))))) # (!arraystart(4) & (arraystart(0) $ (((arraystart(2)) # (arraystart(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(2),
	datab => arraystart(1),
	datac => arraystart(4),
	datad => arraystart(0),
	combout => \display_array~3_combout\);

-- Location: LCCOMB_X85_Y45_N20
\display_array~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~4_combout\ = (arraystart(3) & (!arraystart(5) & ((\display_array~3_combout\)))) # (!arraystart(3) & (((\display_array~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datab => arraystart(3),
	datac => \display_array~2_combout\,
	datad => \display_array~3_combout\,
	combout => \display_array~4_combout\);

-- Location: LCCOMB_X88_Y45_N10
\Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~6_combout\ = (\STATE.001~q\ & !\Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.001~q\,
	datad => \Add1~62_combout\,
	combout => \Selector46~6_combout\);

-- Location: LCCOMB_X85_Y45_N12
\display_array~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~6_combout\ = (arraystart(1) & (arraystart(0) $ (((!arraystart(4)) # (!arraystart(2)))))) # (!arraystart(1) & ((arraystart(2)) # ((arraystart(4)) # (arraystart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(2),
	datab => arraystart(1),
	datac => arraystart(4),
	datad => arraystart(0),
	combout => \display_array~6_combout\);

-- Location: LCCOMB_X85_Y45_N26
\display_array~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~7_combout\ = (arraystart(5) & (((!arraystart(4) & \display_array~5_combout\)))) # (!arraystart(5) & (!\display_array~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~6_combout\,
	datab => arraystart(4),
	datac => arraystart(5),
	datad => \display_array~5_combout\,
	combout => \display_array~7_combout\);

-- Location: LCCOMB_X85_Y45_N28
\display_array~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~8_combout\ = (arraystart(2) & (!arraystart(0) & ((!arraystart(4)) # (!arraystart(1))))) # (!arraystart(2) & (((arraystart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(2),
	datab => arraystart(1),
	datac => arraystart(4),
	datad => arraystart(0),
	combout => \display_array~8_combout\);

-- Location: LCCOMB_X85_Y45_N30
\display_array~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~9_combout\ = (arraystart(3) & (((!arraystart(5) & !\display_array~8_combout\)))) # (!arraystart(3) & (\display_array~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~7_combout\,
	datab => arraystart(3),
	datac => arraystart(5),
	datad => \display_array~8_combout\,
	combout => \display_array~9_combout\);

-- Location: LCCOMB_X85_Y45_N8
\display_array~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~10_combout\ = (arraystart(1) & ((arraystart(4) & (arraystart(3) & !arraystart(0))) # (!arraystart(4) & ((arraystart(0)))))) # (!arraystart(1) & (!arraystart(3) & ((arraystart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(1),
	datab => arraystart(3),
	datac => arraystart(4),
	datad => arraystart(0),
	combout => \display_array~10_combout\);

-- Location: LCCOMB_X85_Y45_N6
\display_array~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~11_combout\ = (arraystart(5) & (((!arraystart(3) & \display_array~0_combout\)))) # (!arraystart(5) & (((!arraystart(3) & \display_array~0_combout\)) # (!\display_array~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datab => \display_array~10_combout\,
	datac => arraystart(3),
	datad => \display_array~0_combout\,
	combout => \display_array~11_combout\);

-- Location: LCCOMB_X85_Y45_N16
\display_array~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~12_combout\ = (arraystart(1) & (arraystart(0) & ((arraystart(3)) # (!arraystart(4))))) # (!arraystart(1) & (arraystart(0) $ (((arraystart(3) & !arraystart(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(1),
	datab => arraystart(3),
	datac => arraystart(4),
	datad => arraystart(0),
	combout => \display_array~12_combout\);

-- Location: LCCOMB_X85_Y45_N18
\display_array~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~13_combout\ = (arraystart(2) & (((\display_array~12_combout\ & !arraystart(5))))) # (!arraystart(2) & (\display_array~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~11_combout\,
	datab => \display_array~12_combout\,
	datac => arraystart(5),
	datad => arraystart(2),
	combout => \display_array~13_combout\);

-- Location: LCCOMB_X85_Y45_N24
\display_array~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~14_combout\ = (arraystart(1) & (!arraystart(3) & \display_array~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => arraystart(1),
	datac => arraystart(3),
	datad => \display_array~0_combout\,
	combout => \display_array~14_combout\);

-- Location: LCCOMB_X86_Y45_N6
\display_array~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~15_combout\ = (arraystart(4) & (arraystart(1) $ (((arraystart(0)) # (!arraystart(3)))))) # (!arraystart(4) & ((arraystart(0) & ((arraystart(1)) # (!arraystart(3)))) # (!arraystart(0) & (arraystart(1) & !arraystart(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(4),
	datab => arraystart(0),
	datac => arraystart(1),
	datad => arraystart(3),
	combout => \display_array~15_combout\);

-- Location: LCCOMB_X86_Y45_N12
\display_array~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~16_combout\ = (!arraystart(2) & ((\display_array~14_combout\) # ((!arraystart(5) & !\display_array~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datab => \display_array~14_combout\,
	datac => arraystart(2),
	datad => \display_array~15_combout\,
	combout => \display_array~16_combout\);

-- Location: LCCOMB_X86_Y45_N18
\display_array~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~17_combout\ = (arraystart(3) & (arraystart(0) & (arraystart(1) $ (arraystart(4))))) # (!arraystart(3) & (((arraystart(1) & !arraystart(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(3),
	datab => arraystart(0),
	datac => arraystart(1),
	datad => arraystart(4),
	combout => \display_array~17_combout\);

-- Location: LCCOMB_X86_Y45_N8
\display_array~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~18_combout\ = (\display_array~16_combout\) # ((!arraystart(5) & (\display_array~17_combout\ & arraystart(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datab => \display_array~17_combout\,
	datac => arraystart(2),
	datad => \display_array~16_combout\,
	combout => \display_array~18_combout\);

-- Location: LCCOMB_X89_Y44_N14
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \u1|ans\(7) $ (((\u1|ans\(5) & (\u1|ans\(4) & \u1|ans\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ans\(5),
	datab => \u1|ans\(4),
	datac => \u1|ans\(7),
	datad => \u1|ans\(6),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X87_Y44_N12
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \data[3]~input_o\ $ (((\data[1]~input_o\) # ((\data[0]~input_o\) # (\data[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[2]~input_o\,
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X86_Y45_N2
\display_array~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~19_combout\ = (!arraystart(3) & (!arraystart(4) & (arraystart(0) $ (arraystart(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(3),
	datab => arraystart(0),
	datac => arraystart(1),
	datad => arraystart(4),
	combout => \display_array~19_combout\);

-- Location: LCCOMB_X86_Y45_N16
\display_array~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~20_combout\ = (arraystart(4) & (arraystart(1) $ (((!arraystart(3) & arraystart(0)))))) # (!arraystart(4) & (((arraystart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(3),
	datab => arraystart(0),
	datac => arraystart(1),
	datad => arraystart(4),
	combout => \display_array~20_combout\);

-- Location: LCCOMB_X86_Y45_N10
\display_array~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~21_combout\ = (!arraystart(2) & ((arraystart(5) & ((\display_array~19_combout\))) # (!arraystart(5) & (\display_array~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datab => \display_array~20_combout\,
	datac => arraystart(2),
	datad => \display_array~19_combout\,
	combout => \display_array~21_combout\);

-- Location: LCCOMB_X86_Y45_N28
\display_array~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~22_combout\ = (arraystart(4) & ((arraystart(3) & ((arraystart(1)))) # (!arraystart(3) & (!arraystart(0))))) # (!arraystart(4) & (((arraystart(0) & !arraystart(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(3),
	datab => arraystart(0),
	datac => arraystart(1),
	datad => arraystart(4),
	combout => \display_array~22_combout\);

-- Location: LCCOMB_X86_Y45_N30
\display_array~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~23_combout\ = (\display_array~21_combout\) # ((!arraystart(5) & (\display_array~22_combout\ & arraystart(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datab => \display_array~22_combout\,
	datac => arraystart(2),
	datad => \display_array~21_combout\,
	combout => \display_array~23_combout\);

-- Location: LCCOMB_X87_Y44_N22
\lcd_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data~18_combout\ = (\lcd_data~12_combout\ & ((\data[2]~input_o\) # ((\data[1]~input_o\) # (\data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[1]~input_o\,
	datac => \lcd_data~12_combout\,
	datad => \data[0]~input_o\,
	combout => \lcd_data~18_combout\);

-- Location: LCCOMB_X86_Y45_N4
\display_array~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~24_combout\ = (arraystart(1) & (arraystart(4) & ((arraystart(3)) # (!arraystart(0))))) # (!arraystart(1) & (arraystart(0) & (arraystart(3) $ (arraystart(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(3),
	datab => arraystart(0),
	datac => arraystart(1),
	datad => arraystart(4),
	combout => \display_array~24_combout\);

-- Location: LCCOMB_X86_Y45_N22
\display_array~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~25_combout\ = (!arraystart(2) & ((\display_array~14_combout\) # ((!arraystart(5) & \display_array~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(5),
	datab => \display_array~24_combout\,
	datac => arraystart(2),
	datad => \display_array~14_combout\,
	combout => \display_array~25_combout\);

-- Location: FF_X48_Y67_N31
\u1|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(31));

-- Location: FF_X48_Y67_N23
\u1|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(27));

-- Location: FF_X49_Y67_N31
\u1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(19));

-- Location: LCCOMB_X49_Y67_N24
\u1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (\u1|counter\(16) & (\u1|counter\(18) & (\u1|counter\(19) & !\u1|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(16),
	datab => \u1|counter\(18),
	datac => \u1|counter\(19),
	datad => \u1|counter\(17),
	combout => \u1|Equal0~3_combout\);

-- Location: FF_X49_Y68_N7
\u1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(14));

-- Location: FF_X49_Y68_N31
\u1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(11));

-- Location: FF_X48_Y68_N7
\u1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(3));

-- Location: FF_X48_Y68_N27
\u1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u1|counter~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(0));

-- Location: LCCOMB_X49_Y68_N26
\u1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~9_combout\ = (!\u1|counter\(1) & (!\u1|counter\(3) & (!\u1|counter\(2) & !\u1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(3),
	datac => \u1|counter\(2),
	datad => \u1|counter\(0),
	combout => \u1|Equal0~9_combout\);

-- Location: FF_X88_Y43_N7
\answerdelay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~67_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(10));

-- Location: FF_X87_Y43_N15
\answerdelay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~73_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(16));

-- Location: FF_X87_Y43_N31
\answerdelay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~74_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(17));

-- Location: LCCOMB_X87_Y43_N10
\Equal8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~7_combout\ = ((answerdelay(24)) # ((answerdelay(18)) # (!answerdelay(17)))) # (!answerdelay(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(25),
	datab => answerdelay(24),
	datac => answerdelay(17),
	datad => answerdelay(18),
	combout => \Equal8~7_combout\);

-- Location: FF_X88_Y43_N13
\answerdelay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~85_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(4));

-- Location: FF_X85_Y44_N3
\statecheck[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \statecheck~2_combout\,
	ena => \statecheck[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => statecheck(0));

-- Location: FF_X85_Y44_N17
\statecheck[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \statecheck~3_combout\,
	ena => \statecheck[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => statecheck(2));

-- Location: LCCOMB_X84_Y43_N20
\arraystart~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~19_combout\ = (\arraystart[8]~2_combout\ & \Add7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~14_combout\,
	combout => \arraystart~19_combout\);

-- Location: LCCOMB_X84_Y43_N30
\arraystart~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~20_combout\ = (\Add7~16_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datac => \arraystart[8]~2_combout\,
	combout => \arraystart~20_combout\);

-- Location: LCCOMB_X84_Y43_N0
\arraystart~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~21_combout\ = (\arraystart[8]~2_combout\ & \Add7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~18_combout\,
	combout => \arraystart~21_combout\);

-- Location: LCCOMB_X84_Y43_N2
\arraystart~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~28_combout\ = (\arraystart[8]~2_combout\ & \Add7~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~32_combout\,
	combout => \arraystart~28_combout\);

-- Location: LCCOMB_X84_Y45_N6
\arraystart~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~32_combout\ = (\Add7~40_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~40_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~32_combout\);

-- Location: LCCOMB_X84_Y45_N30
\arraystart~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~37_combout\ = (\Add7~50_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~50_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~37_combout\);

-- Location: LCCOMB_X85_Y46_N14
\clk_count[25]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[25]~2_combout\ = (\STATE.010~q\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datac => \reset_n~input_o\,
	combout => \clk_count[25]~2_combout\);

-- Location: LCCOMB_X86_Y46_N22
\clk_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~10_combout\ = (\Add1~56_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~56_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~10_combout\);

-- Location: LCCOMB_X88_Y47_N12
\clk_count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~24_combout\ = (\Add1~28_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~28_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~24_combout\);

-- Location: LCCOMB_X90_Y47_N4
\clk_count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~30_combout\ = (!\clk_count[25]~6_combout\ & \Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_count[25]~6_combout\,
	datad => \Add1~16_combout\,
	combout => \clk_count~30_combout\);

-- Location: LCCOMB_X90_Y47_N20
\clk_count~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~36_combout\ = (\Add1~4_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~36_combout\);

-- Location: LCCOMB_X90_Y47_N2
\clk_count~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~37_combout\ = (!\clk_count[25]~6_combout\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_count[25]~6_combout\,
	datad => \Add1~2_combout\,
	combout => \clk_count~37_combout\);

-- Location: LCCOMB_X88_Y47_N16
\clk_count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~38_combout\ = (\Add1~0_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~38_combout\);

-- Location: LCCOMB_X72_Y44_N26
\u1|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~7_combout\ = (\u1|op2\(0) & \u1|op1[1]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|op2\(0),
	datad => \u1|op1[1]~_Duplicate_1_q\,
	combout => \u1|ShiftRight0~7_combout\);

-- Location: LCCOMB_X72_Y44_N20
\u1|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~5_combout\ = (\u1|op2\(2) & (((\u1|ShiftRight0~6_combout\)))) # (!\u1|op2\(2) & ((\u1|ShiftRight0~7_combout\) # ((\u1|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight0~7_combout\,
	datab => \u1|ShiftRight0~6_combout\,
	datac => \u1|op2\(2),
	datad => \u1|Selector7~0_combout\,
	combout => \u1|ShiftRight1~5_combout\);

-- Location: LCCOMB_X72_Y44_N22
\u1|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~6_combout\ = (\u1|op2\(1) & (\u1|ShiftRight1~4_combout\)) # (!\u1|op2\(1) & ((\u1|ShiftRight1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|ShiftRight1~4_combout\,
	datad => \u1|ShiftRight1~5_combout\,
	combout => \u1|ShiftRight1~6_combout\);

-- Location: LCCOMB_X72_Y44_N12
\u1|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~4_combout\ = (\u1|Add3~0_combout\ & (\u1|ShiftRight0~4_combout\)) # (!\u1|Add3~0_combout\ & ((\u1|ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight0~4_combout\,
	datac => \u1|Add3~0_combout\,
	datad => \u1|ShiftRight0~5_combout\,
	combout => \u1|Selector7~4_combout\);

-- Location: LCCOMB_X76_Y43_N22
\u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\u1|op1[6]~_Duplicate_1_q\) # (!\u1|op2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(0),
	datad => \u1|op1[6]~_Duplicate_1_q\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X75_Y43_N22
\u1|Mod0|auto_generated|divider|divider|StageOut[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|op1[5]~_Duplicate_1_q\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|sel\(18) & (\u1|op1[5]~_Duplicate_1_q\)) # (!\u1|Mod0|auto_generated|divider|divider|sel\(18) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datab => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|sel\(18),
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X75_Y43_N2
\u1|Mod0|auto_generated|divider|divider|StageOut[26]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\);

-- Location: LCCOMB_X75_Y43_N20
\u1|Mod0|auto_generated|divider|divider|StageOut[25]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & (((\u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\);

-- Location: LCCOMB_X73_Y41_N22
\u1|Mod0|auto_generated|divider|divider|StageOut[44]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\);

-- Location: LCCOMB_X73_Y41_N0
\u1|Mod0|auto_generated|divider|divider|StageOut[53]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\ = (\u1|op2\(7) & (((\u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\)))) # (!\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\);

-- Location: LCCOMB_X74_Y45_N16
\u1|Mod1|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[0]~0_combout\ = ((\u1|op1[2]~_Duplicate_1_q\) # (\u1|op1[3]~_Duplicate_1_q\)) # (!\u1|op1[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datac => \u1|op1[2]~_Duplicate_1_q\,
	datad => \u1|op1[3]~_Duplicate_1_q\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X75_Y42_N12
\u1|Div1|auto_generated|divider|divider|StageOut[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\u1|Mod1|auto_generated|divider|divider|sel\(18) & (\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|sel\(18),
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X75_Y42_N26
\u1|Div1|auto_generated|divider|divider|StageOut[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\))) # (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & (((\u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\);

-- Location: LCCOMB_X76_Y42_N10
\u1|Div1|auto_generated|divider|divider|StageOut[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|op2\(4)))) # 
-- (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))) # (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & (((\u1|op2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datac => \u1|op2\(4),
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\);

-- Location: LCCOMB_X76_Y42_N14
\u1|Div1|auto_generated|divider|divider|StageOut[33]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[24]~6_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\);

-- Location: LCCOMB_X80_Y42_N26
\u1|Div1|auto_generated|divider|divider|StageOut[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|op2\(2)))) # 
-- (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\)))) # (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (((\u1|op2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datab => \u1|op2\(2),
	datac => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\);

-- Location: LCCOMB_X79_Y42_N10
\u1|Div1|auto_generated|divider|divider|StageOut[52]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[52]~20_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (((\u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\)))) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\))) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[52]~20_combout\);

-- Location: LCCOMB_X80_Y42_N2
\u1|Div1|auto_generated|divider|divider|StageOut[50]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[50]~22_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\)) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[50]~22_combout\);

-- Location: LCCOMB_X80_Y42_N30
\u1|Div1|auto_generated|divider|divider|StageOut[48]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[48]~24_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (\u1|op2\(1))) # (!\u1|op1[7]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|op2\(1))) # 
-- (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|op2\(1),
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[48]~24_combout\);

-- Location: LCCOMB_X76_Y41_N0
\u1|Selector7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~14_combout\ = ((\u1|op2\(0) & (!\u1|op1[0]~_Duplicate_1_q\ & !\u1|opc\(0))) # (!\u1|op2\(0) & ((!\u1|opc\(0)) # (!\u1|op1[0]~_Duplicate_1_q\)))) # (!\u1|opc\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datac => \u1|opc\(0),
	datad => \u1|opc\(4),
	combout => \u1|Selector7~14_combout\);

-- Location: LCCOMB_X76_Y41_N22
\u1|Selector7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~15_combout\ = (\u1|Add1~0_combout\ & ((\u1|opc\(2) $ (!\u1|Selector7~14_combout\)) # (!\u1|opc\(4)))) # (!\u1|Add1~0_combout\ & (\u1|opc\(2) $ ((!\u1|Selector7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|Selector7~14_combout\,
	datac => \u1|Add1~0_combout\,
	datad => \u1|opc\(4),
	combout => \u1|Selector7~15_combout\);

-- Location: LCCOMB_X76_Y41_N12
\u1|Selector7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~16_combout\ = \u1|opc\(2) $ (((\u1|op2\(0) & ((\u1|op1[0]~_Duplicate_1_q\) # (\u1|opc\(0)))) # (!\u1|op2\(0) & (\u1|op1[0]~_Duplicate_1_q\ & \u1|opc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datac => \u1|opc\(0),
	datad => \u1|opc\(2),
	combout => \u1|Selector7~16_combout\);

-- Location: LCCOMB_X81_Y43_N30
\u1|Div0|auto_generated|divider|divider|StageOut[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ = (\u1|Mod0|auto_generated|divider|divider|sel\(18) & (((\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\)))) # (!\u1|Mod0|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\))) # (!\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|sel\(18),
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LCCOMB_X81_Y43_N28
\u1|Div0|auto_generated|divider|divider|StageOut[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & (\u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\);

-- Location: LCCOMB_X82_Y41_N30
\u1|Div0|auto_generated|divider|divider|StageOut[34]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (\u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\);

-- Location: LCCOMB_X81_Y41_N8
\u1|Div0|auto_generated|divider|divider|StageOut[32]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ = (\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\u1|op1[3]~_Duplicate_1_q\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ 
-- & ((\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (\u1|op1[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[3]~_Duplicate_1_q\,
	datab => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\);

-- Location: LCCOMB_X81_Y41_N6
\u1|Div0|auto_generated|divider|divider|StageOut[41]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (\u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[32]~11_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\);

-- Location: LCCOMB_X81_Y41_N2
\u1|Div0|auto_generated|divider|divider|StageOut[53]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[53]~19_combout\ = (\u1|op2\(7) & (((\u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)))) # (!\u1|op2\(7) & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\))) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datab => \u1|op2\(7),
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[53]~19_combout\);

-- Location: LCCOMB_X80_Y41_N30
\u1|Div0|auto_generated|divider|divider|StageOut[52]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[52]~20_combout\ = (\u1|op2\(7) & (\u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\)) # (!\u1|op2\(7) & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[52]~20_combout\);

-- Location: LCCOMB_X80_Y41_N22
\u1|Div0|auto_generated|divider|divider|StageOut[50]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[50]~22_combout\ = (\u1|op2\(7) & (((\u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\)))) # (!\u1|op2\(7) & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\))) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datab => \u1|op2\(7),
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|StageOut[41]~16_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[50]~22_combout\);

-- Location: LCCOMB_X80_Y41_N26
\u1|Div0|auto_generated|divider|divider|StageOut[48]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[48]~24_combout\ = (\u1|op2\(7) & (\u1|op1[1]~_Duplicate_1_q\)) # (!\u1|op2\(7) & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|op1[1]~_Duplicate_1_q\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[48]~24_combout\);

-- Location: LCCOMB_X76_Y41_N10
\u1|Selector7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~21_combout\ = (\u1|Selector7~20_combout\ & ((\u1|opc\(2)) # ((!\u1|Add1~0_combout\ & !\u1|opc\(4))))) # (!\u1|Selector7~20_combout\ & (\u1|opc\(2) $ (((\u1|opc\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|Selector7~20_combout\,
	datac => \u1|Add1~0_combout\,
	datad => \u1|opc\(4),
	combout => \u1|Selector7~21_combout\);

-- Location: LCCOMB_X76_Y41_N4
\u1|Selector7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~25_combout\ = (\u1|opc\(2) & (!\u1|Add0~0_combout\)) # (!\u1|opc\(2) & ((\u1|Mult0|auto_generated|mac_out2~dataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Add0~0_combout\,
	datac => \u1|Mult0|auto_generated|mac_out2~dataout\,
	datad => \u1|opc\(2),
	combout => \u1|Selector7~25_combout\);

-- Location: LCCOMB_X75_Y45_N30
\u1|Mod1|auto_generated|divider|divider|StageOut[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\u1|Mod1|auto_generated|divider|divider|sel\(18) & (\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|sel\(18),
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X73_Y45_N22
\u1|Mod1|auto_generated|divider|divider|StageOut[35]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LCCOMB_X73_Y45_N26
\u1|Mod1|auto_generated|divider|divider|StageOut[32]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\ = (\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\u1|op2\(3))))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|op2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datab => \u1|op2\(3),
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\);

-- Location: LCCOMB_X73_Y44_N12
\u1|Mod1|auto_generated|divider|divider|StageOut[45]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\);

-- Location: LCCOMB_X73_Y45_N20
\u1|Mod1|auto_generated|divider|divider|StageOut[44]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\);

-- Location: LCCOMB_X73_Y45_N4
\u1|Mod1|auto_generated|divider|divider|StageOut[41]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\);

-- Location: LCCOMB_X73_Y44_N2
\u1|Mod1|auto_generated|divider|divider|StageOut[53]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (((\u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\)))) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\);

-- Location: LCCOMB_X73_Y44_N8
\u1|Mod1|auto_generated|divider|divider|StageOut[50]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (((\u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\)))) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\);

-- Location: LCCOMB_X79_Y44_N6
\u1|Selector7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~26_combout\ = (\u1|opc\(2) & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|op2\(0)))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))) # (!\u1|opc\(2) & (((\u1|op2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => \u1|op2\(0),
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Selector7~26_combout\);

-- Location: LCCOMB_X79_Y41_N6
\u1|Selector7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~27_combout\ = (\u1|opc\(2) & ((\u1|opc\(4) & (\u1|Selector7~25_combout\)) # (!\u1|opc\(4) & ((\u1|Selector7~26_combout\))))) # (!\u1|opc\(2) & ((\u1|opc\(4) & ((!\u1|Selector7~26_combout\))) # (!\u1|opc\(4) & (\u1|Selector7~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|opc\(4),
	datac => \u1|Selector7~25_combout\,
	datad => \u1|Selector7~26_combout\,
	combout => \u1|Selector7~27_combout\);

-- Location: LCCOMB_X80_Y44_N22
\u1|Selector7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~32_combout\ = (\u1|opc\(0) & ((\u1|Selector7~1_combout\ & (\u1|Selector7~3_combout\)) # (!\u1|Selector7~1_combout\ & ((\u1|res\(0)))))) # (!\u1|opc\(0) & (((\u1|res\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~3_combout\,
	datab => \u1|opc\(0),
	datac => \u1|res\(0),
	datad => \u1|Selector7~1_combout\,
	combout => \u1|Selector7~32_combout\);

-- Location: LCCOMB_X72_Y42_N30
\u1|res~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~11_combout\ = (\u1|opc\(0) & ((\u1|Add1~2_combout\) # ((\u1|opc\(2))))) # (!\u1|opc\(0) & (((\u1|Add0~2_combout\ & !\u1|opc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~2_combout\,
	datab => \u1|Add0~2_combout\,
	datac => \u1|opc\(0),
	datad => \u1|opc\(2),
	combout => \u1|res~11_combout\);

-- Location: LCCOMB_X77_Y43_N6
\u1|res~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~17_combout\ = (!\u1|Add3~0_combout\ & ((\u1|Add3~1_combout\ & (\u1|ShiftRight0~9_combout\)) # (!\u1|Add3~1_combout\ & ((\u1|ShiftRight1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add3~1_combout\,
	datab => \u1|ShiftRight0~9_combout\,
	datac => \u1|ShiftRight1~12_combout\,
	datad => \u1|Add3~0_combout\,
	combout => \u1|res~17_combout\);

-- Location: LCCOMB_X79_Y41_N22
\u1|res[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res[6]~22_combout\ = (!\u1|opc\(6) & ((\u1|opc\(5) & ((!\u1|opc\(3)) # (!\u1|Selector7~8_combout\))) # (!\u1|opc\(5) & ((\u1|opc\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(6),
	datab => \u1|opc\(5),
	datac => \u1|Selector7~8_combout\,
	datad => \u1|opc\(3),
	combout => \u1|res[6]~22_combout\);

-- Location: LCCOMB_X72_Y44_N10
\u1|ShiftLeft1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~2_combout\ = (!\u1|op2\(2) & ((\u1|op2\(1) & ((\u1|Selector7~0_combout\))) # (!\u1|op2\(1) & (\u1|ShiftLeft1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(1),
	datac => \u1|ShiftLeft1~1_combout\,
	datad => \u1|Selector7~0_combout\,
	combout => \u1|ShiftLeft1~2_combout\);

-- Location: LCCOMB_X72_Y44_N18
\u1|res~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~36_combout\ = (\u1|ShiftRight0~13_combout\) # ((\u1|ShiftLeft1~2_combout\) # ((\u1|Selector7~4_combout\ & !\u1|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~4_combout\,
	datab => \u1|ShiftRight0~13_combout\,
	datac => \u1|Add3~1_combout\,
	datad => \u1|ShiftLeft1~2_combout\,
	combout => \u1|res~36_combout\);

-- Location: LCCOMB_X77_Y43_N24
\u1|ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~15_combout\ = (!\u1|op2\(2) & ((\u1|op2\(1) & (\u1|ShiftRight0~10_combout\)) # (!\u1|op2\(1) & ((\u1|ShiftRight0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(1),
	datac => \u1|ShiftRight0~10_combout\,
	datad => \u1|ShiftRight0~9_combout\,
	combout => \u1|ShiftRight1~15_combout\);

-- Location: LCCOMB_X77_Y42_N24
\u1|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add3~2_combout\ = (\u1|op2\(1)) # (\u1|op2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|op2\(1),
	datad => \u1|op2\(0),
	combout => \u1|Add3~2_combout\);

-- Location: LCCOMB_X77_Y42_N22
\u1|ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~16_combout\ = (\u1|ShiftRight1~15_combout\) # ((!\u1|Add3~2_combout\ & (\u1|op2\(2) & \u1|op1[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~15_combout\,
	datab => \u1|Add3~2_combout\,
	datac => \u1|op2\(2),
	datad => \u1|op1[7]~_Duplicate_1_q\,
	combout => \u1|ShiftRight1~16_combout\);

-- Location: LCCOMB_X74_Y42_N22
\u1|res~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~44_combout\ = \u1|opc\(2) $ (((\u1|opc\(0) & ((\u1|op1[3]~_Duplicate_1_q\) # (\u1|op2\(3)))) # (!\u1|opc\(0) & (\u1|op1[3]~_Duplicate_1_q\ & \u1|op2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(0),
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datac => \u1|opc\(2),
	datad => \u1|op2\(3),
	combout => \u1|res~44_combout\);

-- Location: LCCOMB_X74_Y42_N12
\u1|res~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~49_combout\ = (\u1|opc\(0) & (\u1|op2\(3) $ (((!\u1|opc\(2)) # (!\u1|op1[3]~_Duplicate_1_q\))))) # (!\u1|opc\(0) & (\u1|op1[3]~_Duplicate_1_q\ $ (((\u1|op2\(3)) # (!\u1|opc\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(0),
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datac => \u1|opc\(2),
	datad => \u1|op2\(3),
	combout => \u1|res~49_combout\);

-- Location: LCCOMB_X77_Y44_N10
\u1|res~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~58_combout\ = (\u1|opc\(0) & (((\u1|opc\(2)) # (\u1|Mult0|auto_generated|mac_out2~DATAOUT4\)))) # (!\u1|opc\(0) & (\u1|Add2~8_combout\ & (!\u1|opc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add2~8_combout\,
	datab => \u1|opc\(0),
	datac => \u1|opc\(2),
	datad => \u1|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \u1|res~58_combout\);

-- Location: LCCOMB_X75_Y42_N28
\u1|res~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~60_combout\ = (\u1|opc\(0) & (((\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\)))) # (!\u1|opc\(0) & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \u1|opc\(0),
	combout => \u1|res~60_combout\);

-- Location: LCCOMB_X72_Y42_N0
\u1|res~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~61_combout\ = (\u1|opc\(0) & ((\u1|Add1~8_combout\) # ((\u1|opc\(2))))) # (!\u1|opc\(0) & (((\u1|Add0~8_combout\ & !\u1|opc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(0),
	datab => \u1|Add1~8_combout\,
	datac => \u1|Add0~8_combout\,
	datad => \u1|opc\(2),
	combout => \u1|res~61_combout\);

-- Location: LCCOMB_X74_Y42_N4
\u1|res~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~62_combout\ = (\u1|opc\(2) & (!\u1|res~60_combout\ & ((\u1|res~61_combout\) # (\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\)))) # (!\u1|opc\(2) & (\u1|res~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~61_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	datac => \u1|opc\(2),
	datad => \u1|res~60_combout\,
	combout => \u1|res~62_combout\);

-- Location: LCCOMB_X72_Y42_N26
\u1|res~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~64_combout\ = (\u1|opc\(0) & (\u1|op2\(4) $ (((!\u1|opc\(2)) # (!\u1|op1[4]~_Duplicate_1_q\))))) # (!\u1|opc\(0) & (\u1|op1[4]~_Duplicate_1_q\ $ (((\u1|op2\(4)) # (!\u1|opc\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|op2\(4),
	datac => \u1|opc\(0),
	datad => \u1|opc\(2),
	combout => \u1|res~64_combout\);

-- Location: LCCOMB_X73_Y42_N12
\u1|res~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~67_combout\ = (!\u1|Add3~0_combout\ & ((\u1|Add3~1_combout\ & ((\u1|ShiftRight0~4_combout\))) # (!\u1|Add3~1_combout\ & (\u1|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight0~6_combout\,
	datab => \u1|Add3~1_combout\,
	datac => \u1|ShiftRight0~4_combout\,
	datad => \u1|Add3~0_combout\,
	combout => \u1|res~67_combout\);

-- Location: LCCOMB_X76_Y44_N26
\u1|res~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~68_combout\ = (\u1|Add3~0_combout\ & (\u1|ShiftLeft1~0_combout\)) # (!\u1|Add3~0_combout\ & ((\u1|ShiftLeft1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftLeft1~0_combout\,
	datab => \u1|ShiftLeft1~7_combout\,
	datac => \u1|Add3~0_combout\,
	combout => \u1|res~68_combout\);

-- Location: LCCOMB_X77_Y44_N8
\u1|res~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~70_combout\ = (\u1|opc\(0) & (((\u1|opc\(2)) # (\u1|Mult0|auto_generated|mac_out2~DATAOUT5\)))) # (!\u1|opc\(0) & (\u1|Add2~10_combout\ & (!\u1|opc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add2~10_combout\,
	datab => \u1|opc\(0),
	datac => \u1|opc\(2),
	datad => \u1|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \u1|res~70_combout\);

-- Location: LCCOMB_X77_Y44_N6
\u1|res~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~72_combout\ = \u1|opc\(2) $ (((\u1|op2\(5) & ((\u1|opc\(0)) # (\u1|op1[5]~_Duplicate_1_q\))) # (!\u1|op2\(5) & (\u1|opc\(0) & \u1|op1[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(5),
	datab => \u1|opc\(0),
	datac => \u1|opc\(2),
	datad => \u1|op1[5]~_Duplicate_1_q\,
	combout => \u1|res~72_combout\);

-- Location: LCCOMB_X72_Y42_N2
\u1|ShiftLeft1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~10_combout\ = (\u1|op2\(0) & (\u1|op1[5]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datac => \u1|op1[6]~_Duplicate_1_q\,
	combout => \u1|ShiftLeft1~10_combout\);

-- Location: LCCOMB_X73_Y42_N14
\u1|res~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~81_combout\ = (!\u1|Add3~1_combout\ & ((\u1|Add3~0_combout\ & ((\u1|ShiftLeft1~1_combout\))) # (!\u1|Add3~0_combout\ & (\u1|ShiftLeft1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftLeft1~10_combout\,
	datab => \u1|ShiftLeft1~1_combout\,
	datac => \u1|Add3~1_combout\,
	datad => \u1|Add3~0_combout\,
	combout => \u1|res~81_combout\);

-- Location: LCCOMB_X74_Y42_N2
\u1|res~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~82_combout\ = (\u1|res~81_combout\) # ((\u1|ShiftRight1~20_combout\) # ((\u1|Add3~1_combout\ & \u1|res~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~81_combout\,
	datab => \u1|Add3~1_combout\,
	datac => \u1|res~109_combout\,
	datad => \u1|ShiftRight1~20_combout\,
	combout => \u1|res~82_combout\);

-- Location: LCCOMB_X76_Y44_N10
\u1|ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~19_combout\ = (!\u1|op2\(1) & (\u1|op1[7]~_Duplicate_1_q\ & (!\u1|op2\(0) & !\u1|op2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|op1[7]~_Duplicate_1_q\,
	datac => \u1|op2\(0),
	datad => \u1|op2\(2),
	combout => \u1|ShiftRight1~19_combout\);

-- Location: LCCOMB_X72_Y44_N16
\u1|res~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~96_combout\ = (!\u1|Add3~1_combout\ & ((\u1|Add3~0_combout\ & ((\u1|ShiftLeft1~3_combout\))) # (!\u1|Add3~0_combout\ & (\u1|res~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~95_combout\,
	datab => \u1|Add3~1_combout\,
	datac => \u1|Add3~0_combout\,
	datad => \u1|ShiftLeft1~3_combout\,
	combout => \u1|res~96_combout\);

-- Location: LCCOMB_X76_Y44_N12
\u1|res~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~97_combout\ = (\u1|res~96_combout\) # ((\u1|ShiftRight1~19_combout\) # ((\u1|res~68_combout\ & \u1|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~68_combout\,
	datab => \u1|Add3~1_combout\,
	datac => \u1|res~96_combout\,
	datad => \u1|ShiftRight1~19_combout\,
	combout => \u1|res~97_combout\);

-- Location: LCCOMB_X73_Y43_N22
\u1|res~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~100_combout\ = \u1|opc\(2) $ (((\u1|opc\(0) & ((\u1|op2\(7)) # (\u1|op1[7]~_Duplicate_1_q\))) # (!\u1|opc\(0) & (\u1|op2\(7) & \u1|op1[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(0),
	datab => \u1|opc\(2),
	datac => \u1|op2\(7),
	datad => \u1|op1[7]~_Duplicate_1_q\,
	combout => \u1|res~100_combout\);

-- Location: LCCOMB_X72_Y43_N6
\u1|Mod1|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|selnose\(0) = (\u1|op1[1]~_Duplicate_1_q\) # (((!\u1|op2\(7) & \u1|op1[0]~_Duplicate_1_q\)) # (!\u1|Mod1|auto_generated|divider|divider|selnose[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datac => \u1|Mod1|auto_generated|divider|divider|selnose[0]~3_combout\,
	datad => \u1|op1[0]~_Duplicate_1_q\,
	combout => \u1|Mod1|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X49_Y67_N30
\u1|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~4_combout\ = (\u1|Add4~38_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add4~38_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~4_combout\);

-- Location: LCCOMB_X49_Y68_N6
\u1|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~7_combout\ = (!\u1|Equal0~10_combout\ & \u1|Add4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Equal0~10_combout\,
	datad => \u1|Add4~28_combout\,
	combout => \u1|counter~7_combout\);

-- Location: LCCOMB_X49_Y68_N30
\u1|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~10_combout\ = (!\u1|Equal0~10_combout\ & \u1|Add4~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Equal0~10_combout\,
	datad => \u1|Add4~22_combout\,
	combout => \u1|counter~10_combout\);

-- Location: LCCOMB_X49_Y68_N8
\u1|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~12_combout\ = (\u1|Add4~0_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add4~0_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~12_combout\);

-- Location: LCCOMB_X88_Y43_N6
\Add8~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~67_combout\ = (\reset_n~input_o\ & ((\Add8~20_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(31),
	datab => \reset_n~input_o\,
	datac => \Add8~20_combout\,
	datad => \LessThan14~5_combout\,
	combout => \Add8~67_combout\);

-- Location: LCCOMB_X87_Y43_N14
\Add8~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~73_combout\ = (\reset_n~input_o\ & ((\Add8~32_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => answerdelay(31),
	datac => \reset_n~input_o\,
	datad => \Add8~32_combout\,
	combout => \Add8~73_combout\);

-- Location: LCCOMB_X87_Y43_N30
\Add8~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~74_combout\ = (\reset_n~input_o\ & ((\Add8~34_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \Add8~34_combout\,
	datad => \LessThan14~5_combout\,
	combout => \Add8~74_combout\);

-- Location: LCCOMB_X88_Y43_N12
\Add8~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~85_combout\ = (\reset_n~input_o\ & ((\Add8~8_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \Add8~8_combout\,
	datac => answerdelay(31),
	datad => \reset_n~input_o\,
	combout => \Add8~85_combout\);

-- Location: LCCOMB_X85_Y44_N2
\statecheck~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \statecheck~2_combout\ = (\u1|state\(0) & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state\(0),
	datac => \reset_n~input_o\,
	combout => \statecheck~2_combout\);

-- Location: LCCOMB_X85_Y44_N16
\statecheck~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \statecheck~3_combout\ = (\reset_n~input_o\ & \u1|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \u1|state\(2),
	combout => \statecheck~3_combout\);

-- Location: LCCOMB_X83_Y44_N26
\arrayend~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend~12_combout\ = (\reset_n~input_o\ & (!\Equal0~4_combout\ & ((\u1|state\(2)) # (\u1|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Equal0~4_combout\,
	datac => \u1|state\(2),
	datad => \u1|state\(1),
	combout => \arrayend~12_combout\);

-- Location: LCCOMB_X75_Y45_N18
\u1|Mod1|auto_generated|divider|divider|selnose[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|selnose[9]~7_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & (((!\u1|op2\(7) & \u1|op1[1]~_Duplicate_1_q\)) # (!\u1|op2\(6)))) # (!\u1|op1[0]~_Duplicate_1_q\ & (((!\u1|op2\(7) & \u1|op1[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datab => \u1|op2\(6),
	datac => \u1|op2\(7),
	datad => \u1|op1[1]~_Duplicate_1_q\,
	combout => \u1|Mod1|auto_generated|divider|divider|selnose[9]~7_combout\);

-- Location: LCCOMB_X73_Y42_N26
\u1|res~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~109_combout\ = (\u1|Add3~0_combout\ & (((\u1|op1[0]~_Duplicate_1_q\ & !\u1|op2\(0))))) # (!\u1|Add3~0_combout\ & (\u1|ShiftLeft1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftLeft1~4_combout\,
	datab => \u1|Add3~0_combout\,
	datac => \u1|op1[0]~_Duplicate_1_q\,
	datad => \u1|op2\(0),
	combout => \u1|res~109_combout\);

-- Location: LCCOMB_X72_Y44_N2
\u1|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~13_combout\ = (\u1|op2\(2) & (\u1|ShiftRight0~6_combout\ & (\u1|op2\(0) $ (\u1|op2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(0),
	datac => \u1|op2\(1),
	datad => \u1|ShiftRight0~6_combout\,
	combout => \u1|ShiftRight0~13_combout\);

-- Location: LCCOMB_X50_Y68_N4
\u1|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clk_out~0_combout\ = !\u1|clk_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|clk_out~q\,
	combout => \u1|clk_out~0_combout\);

-- Location: LCCOMB_X86_Y42_N22
\datacheck[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datacheck[1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \datacheck[1]~feeder_combout\);

-- Location: LCCOMB_X86_Y42_N14
\datacheck[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datacheck[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \datacheck[3]~feeder_combout\);

-- Location: IOOBUF_X60_Y73_N16
\busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busy~reg0_q\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs~reg0_q\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e~reg0_q\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\toleds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_ans\(0),
	devoe => ww_devoe,
	o => \toleds[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\toleds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_ans\(1),
	devoe => ww_devoe,
	o => \toleds[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\toleds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_ans\(2),
	devoe => ww_devoe,
	o => \toleds[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\toleds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_ans\(3),
	devoe => ww_devoe,
	o => \toleds[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\toleds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_ans\(4),
	devoe => ww_devoe,
	o => \toleds[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\toleds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_ans\(5),
	devoe => ww_devoe,
	o => \toleds[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\toleds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_ans\(6),
	devoe => ww_devoe,
	o => \toleds[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\toleds[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_ans\(7),
	devoe => ww_devoe,
	o => \toleds[7]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\ledcheck~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ledcheck~q\,
	devoe => ww_devoe,
	o => \ledcheck~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\alustate[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|state\(0),
	devoe => ww_devoe,
	o => \alustate[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\alustate[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|state\(1),
	devoe => ww_devoe,
	o => \alustate[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\alustate[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|state\(2),
	devoe => ww_devoe,
	o => \alustate[2]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y18_N8
\data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: LCCOMB_X85_Y46_N28
\datacheck[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datacheck[7]~0_combout\ = (\STATE.010~q\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datac => \Equal0~4_combout\,
	combout => \datacheck[7]~0_combout\);

-- Location: FF_X86_Y42_N21
\datacheck[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \datacheck[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datacheck(4));

-- Location: IOIBUF_X115_Y11_N8
\data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: FF_X86_Y42_N11
\datacheck[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \datacheck[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datacheck(5));

-- Location: LCCOMB_X86_Y42_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\data[5]~input_o\ & (datacheck(5) & (\data[4]~input_o\ $ (!datacheck(4))))) # (!\data[5]~input_o\ & (!datacheck(5) & (\data[4]~input_o\ $ (!datacheck(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~input_o\,
	datab => \data[4]~input_o\,
	datac => datacheck(4),
	datad => datacheck(5),
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X115_Y15_N1
\data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: FF_X86_Y42_N5
\datacheck[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \datacheck[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datacheck(6));

-- Location: LCCOMB_X86_Y42_N18
\datacheck[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datacheck[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[7]~input_o\,
	combout => \datacheck[7]~feeder_combout\);

-- Location: FF_X86_Y42_N19
\datacheck[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datacheck[7]~feeder_combout\,
	ena => \datacheck[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datacheck(7));

-- Location: LCCOMB_X86_Y42_N4
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\data[6]~input_o\ & (datacheck(6) & (\data[7]~input_o\ $ (!datacheck(7))))) # (!\data[6]~input_o\ & (!datacheck(6) & (\data[7]~input_o\ $ (!datacheck(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~input_o\,
	datab => \data[7]~input_o\,
	datac => datacheck(6),
	datad => datacheck(7),
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X115_Y17_N1
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: FF_X86_Y42_N1
\datacheck[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \datacheck[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datacheck(0));

-- Location: IOIBUF_X115_Y14_N1
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X86_Y42_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (datacheck(1) & (\data[1]~input_o\ & (\data[0]~input_o\ $ (!datacheck(0))))) # (!datacheck(1) & (!\data[1]~input_o\ & (\data[0]~input_o\ $ (!datacheck(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => datacheck(1),
	datab => \data[0]~input_o\,
	datac => datacheck(0),
	datad => \data[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X86_Y42_N8
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X115_Y53_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\key0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: LCCOMB_X86_Y44_N6
\u1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~0_combout\ = (\u1|state\(2) & (((\u1|state\(1))))) # (!\u1|state\(2) & ((\u1|state\(1) & ((!\u1|state\(0)))) # (!\u1|state\(1) & (!\key0~input_o\ & \u1|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(2),
	datab => \key0~input_o\,
	datac => \u1|state\(1),
	datad => \u1|state\(0),
	combout => \u1|Mux1~0_combout\);

-- Location: FF_X86_Y44_N7
\u1|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|Mux1~0_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state\(1));

-- Location: LCCOMB_X86_Y44_N16
\u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = (\u1|state\(1) & (((\u1|state\(2)) # (\u1|state\(0))))) # (!\u1|state\(1) & (\u1|state\(2) & ((\key0~input_o\) # (\u1|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0~input_o\,
	datab => \u1|state\(1),
	datac => \u1|state\(2),
	datad => \u1|state\(0),
	combout => \u1|Mux0~0_combout\);

-- Location: FF_X86_Y44_N17
\u1|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|Mux0~0_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state\(2));

-- Location: LCCOMB_X86_Y44_N12
\u1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux2~0_combout\ = (\key0~input_o\ & (\u1|state\(0) & ((\u1|state\(2)) # (!\u1|state\(1))))) # (!\key0~input_o\ & ((\u1|state\(0) $ (!\u1|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0~input_o\,
	datab => \u1|state\(1),
	datac => \u1|state\(0),
	datad => \u1|state\(2),
	combout => \u1|Mux2~0_combout\);

-- Location: FF_X86_Y44_N13
\u1|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|Mux2~0_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state\(0));

-- Location: LCCOMB_X85_Y44_N10
\STATE~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~16_combout\ = (!\u1|state\(2) & ((!\u1|state\(0)) # (!\u1|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(1),
	datac => \u1|state\(0),
	datad => \u1|state\(2),
	combout => \STATE~16_combout\);

-- Location: LCCOMB_X85_Y46_N10
\STATE~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~18_combout\ = (\STATE.010~q\ & ((\Equal0~4_combout\ & (!\STATE~15_combout\)) # (!\Equal0~4_combout\ & ((\STATE~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE~15_combout\,
	datab => \STATE.010~q\,
	datac => \Equal0~4_combout\,
	datad => \STATE~16_combout\,
	combout => \STATE~18_combout\);

-- Location: LCCOMB_X85_Y46_N20
\STATE~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~19_combout\ = (\reset_n~input_o\ & (!\STATE~18_combout\ & ((\STATE.000~q\) # (!\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \reset_n~input_o\,
	datac => \STATE.000~q\,
	datad => \STATE~18_combout\,
	combout => \STATE~19_combout\);

-- Location: FF_X85_Y46_N21
\STATE.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.000~q\);

-- Location: LCCOMB_X88_Y47_N6
\clk_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~23_combout\ = (\Add1~30_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~23_combout\);

-- Location: LCCOMB_X86_Y44_N14
\STATE~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~17_combout\ = (!\Equal0~4_combout\ & ((\u1|state\(2)) # ((\u1|state\(1) & \u1|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \u1|state\(2),
	datac => \u1|state\(1),
	datad => \u1|state\(0),
	combout => \STATE~17_combout\);

-- Location: LCCOMB_X85_Y44_N24
\statecheck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \statecheck~0_combout\ = (\reset_n~input_o\ & \u1|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \u1|state\(1),
	combout => \statecheck~0_combout\);

-- Location: LCCOMB_X86_Y43_N26
\Add8~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~77_combout\ = (\reset_n~input_o\ & ((\Add8~46_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~46_combout\,
	datab => \LessThan14~5_combout\,
	datac => \reset_n~input_o\,
	datad => answerdelay(31),
	combout => \Add8~77_combout\);

-- Location: LCCOMB_X89_Y44_N20
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\u1|state\(0) & (\u1|state\(2) & !\u1|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(0),
	datac => \u1|state\(2),
	datad => \u1|state\(1),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X88_Y43_N18
\Add8~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~69_combout\ = (\reset_n~input_o\ & ((\Add8~30_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~30_combout\,
	datab => \reset_n~input_o\,
	datac => answerdelay(31),
	datad => \LessThan14~5_combout\,
	combout => \Add8~69_combout\);

-- Location: FF_X88_Y43_N19
\answerdelay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~69_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(15));

-- Location: LCCOMB_X89_Y43_N0
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = answerdelay(0) $ (VCC)
-- \Add8~1\ = CARRY(answerdelay(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(0),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X88_Y43_N20
\Add8~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~89_combout\ = (\reset_n~input_o\ & ((\Add8~0_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \Add8~0_combout\,
	datac => answerdelay(31),
	datad => \reset_n~input_o\,
	combout => \Add8~89_combout\);

-- Location: FF_X88_Y43_N21
\answerdelay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~89_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(0));

-- Location: LCCOMB_X89_Y43_N2
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (answerdelay(1) & (!\Add8~1\)) # (!answerdelay(1) & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!answerdelay(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(1),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X89_Y43_N4
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (answerdelay(2) & (\Add8~3\ $ (GND))) # (!answerdelay(2) & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((answerdelay(2) & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X88_Y43_N28
\Add8~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~87_combout\ = (\reset_n~input_o\ & ((\Add8~4_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \reset_n~input_o\,
	datac => answerdelay(31),
	datad => \Add8~4_combout\,
	combout => \Add8~87_combout\);

-- Location: FF_X88_Y43_N29
\answerdelay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~87_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(2));

-- Location: LCCOMB_X89_Y43_N6
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (answerdelay(3) & (!\Add8~5\)) # (!answerdelay(3) & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!answerdelay(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(3),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X89_Y43_N10
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (answerdelay(5) & (!\Add8~9\)) # (!answerdelay(5) & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!answerdelay(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(5),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X87_Y43_N2
\Add8~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~84_combout\ = (\reset_n~input_o\ & ((\Add8~10_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => answerdelay(31),
	datac => \reset_n~input_o\,
	datad => \Add8~10_combout\,
	combout => \Add8~84_combout\);

-- Location: FF_X87_Y43_N3
\answerdelay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~84_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(5));

-- Location: LCCOMB_X89_Y43_N12
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (answerdelay(6) & (\Add8~11\ $ (GND))) # (!answerdelay(6) & (!\Add8~11\ & VCC))
-- \Add8~13\ = CARRY((answerdelay(6) & !\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(6),
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X87_Y43_N4
\Add8~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~83_combout\ = (\reset_n~input_o\ & ((\Add8~12_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \Add8~12_combout\,
	datad => \LessThan14~5_combout\,
	combout => \Add8~83_combout\);

-- Location: FF_X87_Y43_N5
\answerdelay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~83_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(6));

-- Location: LCCOMB_X89_Y43_N14
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (answerdelay(7) & (!\Add8~13\)) # (!answerdelay(7) & ((\Add8~13\) # (GND)))
-- \Add8~15\ = CARRY((!\Add8~13\) # (!answerdelay(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(7),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X89_Y43_N16
\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (answerdelay(8) & (\Add8~15\ $ (GND))) # (!answerdelay(8) & (!\Add8~15\ & VCC))
-- \Add8~17\ = CARRY((answerdelay(8) & !\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(8),
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X89_Y43_N18
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (answerdelay(9) & (!\Add8~17\)) # (!answerdelay(9) & ((\Add8~17\) # (GND)))
-- \Add8~19\ = CARRY((!\Add8~17\) # (!answerdelay(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(9),
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X88_Y43_N24
\Add8~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~64_combout\ = (\reset_n~input_o\ & ((\Add8~18_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(31),
	datab => \reset_n~input_o\,
	datac => \Add8~18_combout\,
	datad => \LessThan14~5_combout\,
	combout => \Add8~64_combout\);

-- Location: FF_X88_Y43_N25
\answerdelay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~64_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(9));

-- Location: LCCOMB_X89_Y43_N22
\Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (answerdelay(11) & (!\Add8~21\)) # (!answerdelay(11) & ((\Add8~21\) # (GND)))
-- \Add8~23\ = CARRY((!\Add8~21\) # (!answerdelay(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(11),
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X89_Y43_N24
\Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (answerdelay(12) & (\Add8~23\ $ (GND))) # (!answerdelay(12) & (!\Add8~23\ & VCC))
-- \Add8~25\ = CARRY((answerdelay(12) & !\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(12),
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X88_Y43_N4
\Add8~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~72_combout\ = (\reset_n~input_o\ & ((\Add8~24_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \Add8~24_combout\,
	datac => answerdelay(31),
	datad => \reset_n~input_o\,
	combout => \Add8~72_combout\);

-- Location: FF_X88_Y43_N5
\answerdelay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~72_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(12));

-- Location: LCCOMB_X89_Y43_N26
\Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (answerdelay(13) & (!\Add8~25\)) # (!answerdelay(13) & ((\Add8~25\) # (GND)))
-- \Add8~27\ = CARRY((!\Add8~25\) # (!answerdelay(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(13),
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X88_Y43_N22
\Add8~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~71_combout\ = (\reset_n~input_o\ & ((\Add8~26_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \reset_n~input_o\,
	datac => answerdelay(31),
	datad => \Add8~26_combout\,
	combout => \Add8~71_combout\);

-- Location: FF_X88_Y43_N23
\answerdelay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~71_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(13));

-- Location: LCCOMB_X89_Y43_N28
\Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (answerdelay(14) & (\Add8~27\ $ (GND))) # (!answerdelay(14) & (!\Add8~27\ & VCC))
-- \Add8~29\ = CARRY((answerdelay(14) & !\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(14),
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: LCCOMB_X89_Y42_N4
\Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = (answerdelay(18) & (\Add8~35\ $ (GND))) # (!answerdelay(18) & (!\Add8~35\ & VCC))
-- \Add8~37\ = CARRY((answerdelay(18) & !\Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(18),
	datad => VCC,
	cin => \Add8~35\,
	combout => \Add8~36_combout\,
	cout => \Add8~37\);

-- Location: LCCOMB_X89_Y42_N6
\Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~38_combout\ = (answerdelay(19) & (!\Add8~37\)) # (!answerdelay(19) & ((\Add8~37\) # (GND)))
-- \Add8~39\ = CARRY((!\Add8~37\) # (!answerdelay(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(19),
	datad => VCC,
	cin => \Add8~37\,
	combout => \Add8~38_combout\,
	cout => \Add8~39\);

-- Location: LCCOMB_X86_Y43_N0
\Add8~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~76_combout\ = (\reset_n~input_o\ & ((\Add8~38_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \LessThan14~5_combout\,
	datad => \Add8~38_combout\,
	combout => \Add8~76_combout\);

-- Location: FF_X86_Y43_N1
\answerdelay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~76_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(19));

-- Location: LCCOMB_X89_Y42_N8
\Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (answerdelay(20) & (\Add8~39\ $ (GND))) # (!answerdelay(20) & (!\Add8~39\ & VCC))
-- \Add8~41\ = CARRY((answerdelay(20) & !\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(20),
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

-- Location: LCCOMB_X86_Y43_N24
\Add8~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~80_combout\ = (\reset_n~input_o\ & ((\Add8~40_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \LessThan14~5_combout\,
	datad => \Add8~40_combout\,
	combout => \Add8~80_combout\);

-- Location: FF_X86_Y43_N25
\answerdelay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~80_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(20));

-- Location: LCCOMB_X89_Y42_N10
\Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (answerdelay(21) & (!\Add8~41\)) # (!answerdelay(21) & ((\Add8~41\) # (GND)))
-- \Add8~43\ = CARRY((!\Add8~41\) # (!answerdelay(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(21),
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

-- Location: LCCOMB_X89_Y42_N12
\Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~44_combout\ = (answerdelay(22) & (\Add8~43\ $ (GND))) # (!answerdelay(22) & (!\Add8~43\ & VCC))
-- \Add8~45\ = CARRY((answerdelay(22) & !\Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(22),
	datad => VCC,
	cin => \Add8~43\,
	combout => \Add8~44_combout\,
	cout => \Add8~45\);

-- Location: LCCOMB_X86_Y43_N20
\Add8~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~78_combout\ = (\reset_n~input_o\ & ((\Add8~44_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \LessThan14~5_combout\,
	datad => \Add8~44_combout\,
	combout => \Add8~78_combout\);

-- Location: FF_X86_Y43_N21
\answerdelay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~78_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(22));

-- Location: LCCOMB_X86_Y43_N30
\Add8~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~79_combout\ = (\reset_n~input_o\ & ((\Add8~42_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \LessThan14~5_combout\,
	datad => \Add8~42_combout\,
	combout => \Add8~79_combout\);

-- Location: FF_X86_Y43_N31
\answerdelay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~79_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(21));

-- Location: LCCOMB_X86_Y43_N14
\Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~5_combout\ = (answerdelay(23) & (answerdelay(22) & (answerdelay(21) & answerdelay(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(23),
	datab => answerdelay(22),
	datac => answerdelay(21),
	datad => answerdelay(20),
	combout => \Equal8~5_combout\);

-- Location: LCCOMB_X86_Y43_N6
\Add8~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~68_combout\ = (\reset_n~input_o\ & ((\Add8~14_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \LessThan14~5_combout\,
	datad => \Add8~14_combout\,
	combout => \Add8~68_combout\);

-- Location: FF_X87_Y43_N9
\answerdelay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Add8~68_combout\,
	sload => VCC,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(7));

-- Location: LCCOMB_X87_Y43_N24
\Equal8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~8_combout\ = (answerdelay(16)) # (((answerdelay(6)) # (answerdelay(5))) # (!answerdelay(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(16),
	datab => answerdelay(7),
	datac => answerdelay(6),
	datad => answerdelay(5),
	combout => \Equal8~8_combout\);

-- Location: LCCOMB_X88_Y43_N0
\Add8~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~66_combout\ = (\reset_n~input_o\ & ((\Add8~22_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \Add8~22_combout\,
	datac => answerdelay(31),
	datad => \reset_n~input_o\,
	combout => \Add8~66_combout\);

-- Location: FF_X88_Y43_N1
\answerdelay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~66_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(11));

-- Location: LCCOMB_X88_Y43_N14
\Add8~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~65_combout\ = (\reset_n~input_o\ & ((\Add8~16_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \Add8~16_combout\,
	datac => answerdelay(31),
	datad => \reset_n~input_o\,
	combout => \Add8~65_combout\);

-- Location: FF_X88_Y43_N15
\answerdelay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~65_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(8));

-- Location: LCCOMB_X88_Y43_N8
\LessThan14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~2_combout\ = (!answerdelay(10) & (!answerdelay(11) & (!answerdelay(8) & !answerdelay(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(10),
	datab => answerdelay(11),
	datac => answerdelay(8),
	datad => answerdelay(9),
	combout => \LessThan14~2_combout\);

-- Location: LCCOMB_X88_Y43_N16
\Add8~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~70_combout\ = (\reset_n~input_o\ & ((\Add8~28_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \Add8~28_combout\,
	datac => answerdelay(31),
	datad => \reset_n~input_o\,
	combout => \Add8~70_combout\);

-- Location: FF_X88_Y43_N17
\answerdelay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~70_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(14));

-- Location: LCCOMB_X88_Y43_N26
\Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~4_combout\ = (answerdelay(13) & (answerdelay(15) & (answerdelay(12) & answerdelay(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(13),
	datab => answerdelay(15),
	datac => answerdelay(12),
	datad => answerdelay(14),
	combout => \Equal8~4_combout\);

-- Location: LCCOMB_X87_Y43_N26
\Equal8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~9_combout\ = (\Equal8~7_combout\) # ((\Equal8~8_combout\) # ((!\Equal8~4_combout\) # (!\LessThan14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~7_combout\,
	datab => \Equal8~8_combout\,
	datac => \LessThan14~2_combout\,
	datad => \Equal8~4_combout\,
	combout => \Equal8~9_combout\);

-- Location: LCCOMB_X87_Y43_N6
\Add8~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~86_combout\ = (\reset_n~input_o\ & ((\Add8~6_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \Add8~6_combout\,
	datac => \reset_n~input_o\,
	datad => answerdelay(31),
	combout => \Add8~86_combout\);

-- Location: FF_X88_Y43_N3
\answerdelay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Add8~86_combout\,
	sload => VCC,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(3));

-- Location: LCCOMB_X88_Y43_N10
\Add8~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~88_combout\ = (\reset_n~input_o\ & ((\Add8~2_combout\) # ((!\LessThan14~5_combout\ & !answerdelay(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => \reset_n~input_o\,
	datac => answerdelay(31),
	datad => \Add8~2_combout\,
	combout => \Add8~88_combout\);

-- Location: FF_X88_Y43_N11
\answerdelay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~88_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(1));

-- Location: LCCOMB_X88_Y43_N2
\Equal8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~10_combout\ = (answerdelay(4)) # ((answerdelay(2)) # ((answerdelay(3)) # (answerdelay(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(4),
	datab => answerdelay(2),
	datac => answerdelay(3),
	datad => answerdelay(1),
	combout => \Equal8~10_combout\);

-- Location: LCCOMB_X87_Y43_N28
\Equal8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~11_combout\ = (answerdelay(0)) # ((answerdelay(31)) # ((\Equal8~9_combout\) # (\Equal8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(0),
	datab => answerdelay(31),
	datac => \Equal8~9_combout\,
	datad => \Equal8~10_combout\,
	combout => \Equal8~11_combout\);

-- Location: LCCOMB_X86_Y43_N10
\Equal8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~12_combout\ = (((\Equal8~11_combout\) # (!\Equal8~5_combout\)) # (!answerdelay(19))) # (!\LessThan14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~1_combout\,
	datab => answerdelay(19),
	datac => \Equal8~5_combout\,
	datad => \Equal8~11_combout\,
	combout => \Equal8~12_combout\);

-- Location: LCCOMB_X87_Y43_N8
\answerdelay[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[25]~7_combout\ = (!\LessThan14~5_combout\ & (!answerdelay(31) & \Equal8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~5_combout\,
	datab => answerdelay(31),
	datad => \Equal8~12_combout\,
	combout => \answerdelay[25]~7_combout\);

-- Location: LCCOMB_X88_Y43_N30
\answerdelay[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[25]~8_combout\ = ((\Selector36~0_combout\ & (\Equal6~0_combout\ & !\answerdelay[25]~7_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal6~0_combout\,
	datad => \answerdelay[25]~7_combout\,
	combout => \answerdelay[25]~8_combout\);

-- Location: FF_X86_Y43_N27
\answerdelay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~77_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(23));

-- Location: LCCOMB_X89_Y42_N16
\Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~48_combout\ = (answerdelay(24) & (\Add8~47\ $ (GND))) # (!answerdelay(24) & (!\Add8~47\ & VCC))
-- \Add8~49\ = CARRY((answerdelay(24) & !\Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(24),
	datad => VCC,
	cin => \Add8~47\,
	combout => \Add8~48_combout\,
	cout => \Add8~49\);

-- Location: LCCOMB_X87_Y43_N0
\Add8~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~81_combout\ = (\reset_n~input_o\ & ((\Add8~48_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \Add8~48_combout\,
	datad => \LessThan14~5_combout\,
	combout => \Add8~81_combout\);

-- Location: FF_X87_Y43_N1
\answerdelay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~81_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(24));

-- Location: LCCOMB_X89_Y42_N18
\Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~50_combout\ = (answerdelay(25) & (!\Add8~49\)) # (!answerdelay(25) & ((\Add8~49\) # (GND)))
-- \Add8~51\ = CARRY((!\Add8~49\) # (!answerdelay(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(25),
	datad => VCC,
	cin => \Add8~49\,
	combout => \Add8~50_combout\,
	cout => \Add8~51\);

-- Location: LCCOMB_X87_Y43_N22
\Add8~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~82_combout\ = (\reset_n~input_o\ & ((\Add8~50_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \Add8~50_combout\,
	datad => \LessThan14~5_combout\,
	combout => \Add8~82_combout\);

-- Location: FF_X87_Y43_N23
\answerdelay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~82_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(25));

-- Location: LCCOMB_X89_Y42_N20
\Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~52_combout\ = (answerdelay(26) & (\Add8~51\ $ (GND))) # (!answerdelay(26) & (!\Add8~51\ & VCC))
-- \Add8~53\ = CARRY((answerdelay(26) & !\Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(26),
	datad => VCC,
	cin => \Add8~51\,
	combout => \Add8~52_combout\,
	cout => \Add8~53\);

-- Location: LCCOMB_X88_Y42_N18
\answerdelay[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[26]~5_combout\ = (\answerdelay[25]~6_combout\ & ((\Add8~52_combout\))) # (!\answerdelay[25]~6_combout\ & (\reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answerdelay[25]~6_combout\,
	datab => \reset_n~input_o\,
	datad => \Add8~52_combout\,
	combout => \answerdelay[26]~5_combout\);

-- Location: FF_X88_Y42_N19
\answerdelay[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \answerdelay[26]~5_combout\,
	asdata => answerdelay(26),
	sload => \ALT_INV_answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(26));

-- Location: LCCOMB_X89_Y42_N22
\Add8~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~54_combout\ = (answerdelay(27) & (!\Add8~53\)) # (!answerdelay(27) & ((\Add8~53\) # (GND)))
-- \Add8~55\ = CARRY((!\Add8~53\) # (!answerdelay(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(27),
	datad => VCC,
	cin => \Add8~53\,
	combout => \Add8~54_combout\,
	cout => \Add8~55\);

-- Location: LCCOMB_X88_Y42_N28
\answerdelay[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[27]~4_combout\ = (\answerdelay[25]~6_combout\ & ((\Add8~54_combout\))) # (!\answerdelay[25]~6_combout\ & (\reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answerdelay[25]~6_combout\,
	datab => \reset_n~input_o\,
	datad => \Add8~54_combout\,
	combout => \answerdelay[27]~4_combout\);

-- Location: FF_X88_Y42_N29
\answerdelay[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \answerdelay[27]~4_combout\,
	asdata => answerdelay(27),
	sload => \ALT_INV_answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(27));

-- Location: LCCOMB_X89_Y42_N24
\Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~56_combout\ = (answerdelay(28) & (\Add8~55\ $ (GND))) # (!answerdelay(28) & (!\Add8~55\ & VCC))
-- \Add8~57\ = CARRY((answerdelay(28) & !\Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(28),
	datad => VCC,
	cin => \Add8~55\,
	combout => \Add8~56_combout\,
	cout => \Add8~57\);

-- Location: LCCOMB_X88_Y42_N22
\answerdelay[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[28]~3_combout\ = (\answerdelay[25]~6_combout\ & ((\Add8~56_combout\))) # (!\answerdelay[25]~6_combout\ & (\reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answerdelay[25]~6_combout\,
	datab => \reset_n~input_o\,
	datad => \Add8~56_combout\,
	combout => \answerdelay[28]~3_combout\);

-- Location: FF_X88_Y42_N23
\answerdelay[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \answerdelay[28]~3_combout\,
	asdata => answerdelay(28),
	sload => \ALT_INV_answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(28));

-- Location: LCCOMB_X89_Y42_N26
\Add8~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~58_combout\ = (answerdelay(29) & (!\Add8~57\)) # (!answerdelay(29) & ((\Add8~57\) # (GND)))
-- \Add8~59\ = CARRY((!\Add8~57\) # (!answerdelay(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(29),
	datad => VCC,
	cin => \Add8~57\,
	combout => \Add8~58_combout\,
	cout => \Add8~59\);

-- Location: LCCOMB_X88_Y42_N20
\answerdelay[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[29]~2_combout\ = (\answerdelay[25]~6_combout\ & ((\Add8~58_combout\))) # (!\answerdelay[25]~6_combout\ & (\reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answerdelay[25]~6_combout\,
	datab => \reset_n~input_o\,
	datad => \Add8~58_combout\,
	combout => \answerdelay[29]~2_combout\);

-- Location: FF_X88_Y42_N21
\answerdelay[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \answerdelay[29]~2_combout\,
	asdata => answerdelay(29),
	sload => \ALT_INV_answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(29));

-- Location: LCCOMB_X88_Y42_N26
\answerdelay[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[30]~1_combout\ = (\answerdelay[25]~6_combout\ & ((\Add8~60_combout\))) # (!\answerdelay[25]~6_combout\ & (\reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answerdelay[25]~6_combout\,
	datab => \reset_n~input_o\,
	datad => \Add8~60_combout\,
	combout => \answerdelay[30]~1_combout\);

-- Location: FF_X88_Y42_N27
\answerdelay[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \answerdelay[30]~1_combout\,
	asdata => answerdelay(30),
	sload => \ALT_INV_answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(30));

-- Location: LCCOMB_X88_Y42_N24
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (!answerdelay(28) & (!answerdelay(27) & (!answerdelay(30) & !answerdelay(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(28),
	datab => answerdelay(27),
	datac => answerdelay(30),
	datad => answerdelay(29),
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X88_Y42_N30
\LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~1_combout\ = (!answerdelay(26) & \LessThan14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(26),
	datad => \LessThan14~0_combout\,
	combout => \LessThan14~1_combout\);

-- Location: LCCOMB_X87_Y43_N20
\Add8~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~75_combout\ = (\reset_n~input_o\ & ((\Add8~36_combout\) # ((!answerdelay(31) & !\LessThan14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datac => \Add8~36_combout\,
	datad => \LessThan14~5_combout\,
	combout => \Add8~75_combout\);

-- Location: FF_X87_Y43_N21
\answerdelay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~75_combout\,
	ena => \answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(18));

-- Location: LCCOMB_X86_Y43_N16
\Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~6_combout\ = (\Equal8~5_combout\ & answerdelay(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal8~5_combout\,
	datad => answerdelay(19),
	combout => \Equal8~6_combout\);

-- Location: LCCOMB_X87_Y43_N16
\LessThan14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~3_combout\ = (!answerdelay(16) & (((!answerdelay(7) & \LessThan14~2_combout\)) # (!\Equal8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(16),
	datab => answerdelay(7),
	datac => \LessThan14~2_combout\,
	datad => \Equal8~4_combout\,
	combout => \LessThan14~3_combout\);

-- Location: LCCOMB_X87_Y43_N18
\LessThan14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~4_combout\ = ((!answerdelay(18) & ((\LessThan14~3_combout\) # (!answerdelay(17))))) # (!\Equal8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(17),
	datab => answerdelay(18),
	datac => \Equal8~6_combout\,
	datad => \LessThan14~3_combout\,
	combout => \LessThan14~4_combout\);

-- Location: LCCOMB_X87_Y43_N12
\LessThan14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~5_combout\ = (\LessThan14~1_combout\ & (((!answerdelay(24) & \LessThan14~4_combout\)) # (!answerdelay(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => answerdelay(25),
	datab => answerdelay(24),
	datac => \LessThan14~1_combout\,
	datad => \LessThan14~4_combout\,
	combout => \LessThan14~5_combout\);

-- Location: LCCOMB_X88_Y42_N12
\answerdelay[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[25]~6_combout\ = (\reset_n~input_o\ & ((answerdelay(31)) # (\LessThan14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => answerdelay(31),
	datad => \LessThan14~5_combout\,
	combout => \answerdelay[25]~6_combout\);

-- Location: LCCOMB_X88_Y42_N0
\answerdelay[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \answerdelay[31]~0_combout\ = (\answerdelay[25]~6_combout\ & (\Add8~62_combout\)) # (!\answerdelay[25]~6_combout\ & ((\reset_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~62_combout\,
	datab => \reset_n~input_o\,
	datad => \answerdelay[25]~6_combout\,
	combout => \answerdelay[31]~0_combout\);

-- Location: FF_X88_Y42_N1
\answerdelay[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \answerdelay[31]~0_combout\,
	asdata => answerdelay(31),
	sload => \ALT_INV_answerdelay[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => answerdelay(31));

-- Location: LCCOMB_X86_Y43_N2
\arraystart[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart[8]~0_combout\ = (answerdelay(31)) # ((\LessThan14~5_combout\) # (\Equal8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => answerdelay(31),
	datac => \LessThan14~5_combout\,
	datad => \Equal8~12_combout\,
	combout => \arraystart[8]~0_combout\);

-- Location: LCCOMB_X86_Y44_N0
\arraystart[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart[8]~1_combout\ = (\u1|state\(0)) # ((\arraystart[8]~0_combout\) # ((\u1|state\(1)) # (!\u1|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(0),
	datab => \arraystart[8]~0_combout\,
	datac => \u1|state\(1),
	datad => \u1|state\(2),
	combout => \arraystart[8]~1_combout\);

-- Location: LCCOMB_X85_Y44_N0
\arraystart~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~8_combout\ = (\Equal0~4_combout\ & \arraystart[8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \arraystart[8]~1_combout\,
	combout => \arraystart~8_combout\);

-- Location: LCCOMB_X85_Y44_N18
\statecheck[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \statecheck[0]~1_combout\ = ((\STATE.010~q\ & ((!\arraystart~8_combout\) # (!\Equal7~1_combout\)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \STATE.010~q\,
	datac => \Equal7~1_combout\,
	datad => \arraystart~8_combout\,
	combout => \statecheck[0]~1_combout\);

-- Location: FF_X85_Y44_N25
\statecheck[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \statecheck~0_combout\,
	ena => \statecheck[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => statecheck(1));

-- Location: LCCOMB_X86_Y44_N30
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (statecheck(0) & (\u1|state\(0) & (statecheck(1) $ (!\u1|state\(1))))) # (!statecheck(0) & (!\u1|state\(0) & (statecheck(1) $ (!\u1|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => statecheck(0),
	datab => statecheck(1),
	datac => \u1|state\(1),
	datad => \u1|state\(0),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X86_Y44_N8
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal7~0_combout\ & (statecheck(2) $ (!\u1|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => statecheck(2),
	datac => \Equal7~0_combout\,
	datad => \u1|state\(2),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X86_Y44_N10
\arraystart[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart[8]~2_combout\ = (\Equal0~4_combout\ & (\reset_n~input_o\ & (\Equal7~1_combout\ & \arraystart[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal7~1_combout\,
	datad => \arraystart[8]~1_combout\,
	combout => \arraystart[8]~2_combout\);

-- Location: LCCOMB_X84_Y44_N28
\arraystart~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~7_combout\ = (\Add7~10_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~7_combout\);

-- Location: LCCOMB_X85_Y44_N8
\arraystart[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart[8]~5_combout\ = (\STATE.010~q\ & ((\Equal0~4_combout\) # (\STATE~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datac => \Equal0~4_combout\,
	datad => \STATE~16_combout\,
	combout => \arraystart[8]~5_combout\);

-- Location: LCCOMB_X85_Y44_N20
\arrayend~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend~2_combout\ = (\Equal0~4_combout\ & !\arraystart[8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \arraystart[8]~1_combout\,
	combout => \arrayend~2_combout\);

-- Location: LCCOMB_X84_Y44_N8
\arrayend[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend[2]~4_combout\ = (\Equal0~4_combout\ & (\arraystart[8]~1_combout\ & \reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \arraystart[8]~1_combout\,
	datad => \reset_n~input_o\,
	combout => \arrayend[2]~4_combout\);

-- Location: LCCOMB_X83_Y46_N0
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = arraystart(0) $ (VCC)
-- \Add7~1\ = CARRY(arraystart(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => arraystart(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X83_Y44_N4
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\u1|state\(2) & (!\u1|state\(0) & \u1|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(2),
	datab => \u1|state\(0),
	datad => \u1|state\(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X83_Y44_N10
\arraystart~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~17_combout\ = (\Equal7~1_combout\ & (\Add7~0_combout\)) # (!\Equal7~1_combout\ & ((\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~0_combout\,
	datac => \Equal7~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \arraystart~17_combout\);

-- Location: LCCOMB_X83_Y44_N30
\arraystart~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~18_combout\ = (\arrayend~12_combout\) # ((\arrayend[2]~4_combout\ & \arraystart~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrayend~12_combout\,
	datac => \arrayend[2]~4_combout\,
	datad => \arraystart~17_combout\,
	combout => \arraystart~18_combout\);

-- Location: FF_X83_Y44_N31
\arraystart[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~18_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(0));

-- Location: LCCOMB_X83_Y46_N2
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (arraystart(1) & (!\Add7~1\)) # (!arraystart(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!arraystart(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X83_Y46_N4
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (arraystart(2) & (\Add7~3\ $ (GND))) # (!arraystart(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((arraystart(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X84_Y44_N4
\arraystart~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~14_combout\ = (\arraystart[8]~2_combout\ & ((\Add7~4_combout\) # ((\arrayend~2_combout\ & \reset_n~input_o\)))) # (!\arraystart[8]~2_combout\ & (\arrayend~2_combout\ & (\reset_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arraystart[8]~2_combout\,
	datab => \arrayend~2_combout\,
	datac => \reset_n~input_o\,
	datad => \Add7~4_combout\,
	combout => \arraystart~14_combout\);

-- Location: FF_X84_Y44_N5
\arraystart[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~14_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(2));

-- Location: LCCOMB_X83_Y44_N8
\arraystart~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~10_combout\ = (\reset_n~input_o\ & ((!\arraystart[8]~1_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \reset_n~input_o\,
	datad => \arraystart[8]~1_combout\,
	combout => \arraystart~10_combout\);

-- Location: LCCOMB_X83_Y44_N6
\arrayend~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend~5_combout\ = (!\u1|state\(2) & !\u1|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state\(2),
	datad => \u1|state\(1),
	combout => \arrayend~5_combout\);

-- Location: LCCOMB_X83_Y44_N12
\arrayend~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend~8_combout\ = (\arraystart~10_combout\ & ((\Equal0~4_combout\) # ((\u1|state\(0) & \arrayend~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \u1|state\(0),
	datac => \arraystart~10_combout\,
	datad => \arrayend~5_combout\,
	combout => \arrayend~8_combout\);

-- Location: LCCOMB_X84_Y44_N26
\arrayend~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend~9_combout\ = (\arrayend~8_combout\) # ((\arrayend[2]~4_combout\ & !\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrayend[2]~4_combout\,
	datac => \Equal3~0_combout\,
	datad => \arrayend~8_combout\,
	combout => \arrayend~9_combout\);

-- Location: LCCOMB_X86_Y44_N28
\STATE~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~15_combout\ = (\Equal7~0_combout\ & (\arraystart[8]~1_combout\ & (statecheck(2) $ (!\u1|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => statecheck(2),
	datab => \u1|state\(2),
	datac => \Equal7~0_combout\,
	datad => \arraystart[8]~1_combout\,
	combout => \STATE~15_combout\);

-- Location: LCCOMB_X84_Y44_N2
\arrayend[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend[2]~10_combout\ = ((\arraystart[8]~5_combout\ & ((!\STATE~15_combout\) # (!\Equal0~4_combout\)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \reset_n~input_o\,
	datac => \STATE~15_combout\,
	datad => \arraystart[8]~5_combout\,
	combout => \arrayend[2]~10_combout\);

-- Location: FF_X84_Y44_N9
\arrayend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \arrayend~9_combout\,
	sload => VCC,
	ena => \arrayend[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arrayend(0));

-- Location: LCCOMB_X84_Y44_N12
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (arrayend(1) & (arrayend(0) & VCC)) # (!arrayend(1) & (arrayend(0) $ (VCC)))
-- \Add4~1\ = CARRY((!arrayend(1) & arrayend(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arrayend(1),
	datab => arrayend(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X84_Y44_N14
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (arrayend(2) & (!\Add4~1\)) # (!arrayend(2) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!arrayend(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arrayend(2),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X84_Y44_N30
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (arraystart(1) & (\Add4~0_combout\ & (arraystart(2) $ (!\Add4~2_combout\)))) # (!arraystart(1) & (!\Add4~0_combout\ & (arraystart(2) $ (!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(1),
	datab => arraystart(2),
	datac => \Add4~2_combout\,
	datad => \Add4~0_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X84_Y45_N18
\arraystart~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~35_combout\ = (\Add7~46_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~46_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~35_combout\);

-- Location: FF_X84_Y45_N19
\arraystart[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~35_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(23));

-- Location: LCCOMB_X84_Y43_N28
\arraystart~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~24_combout\ = (\Add7~24_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~24_combout\,
	datac => \arraystart[8]~2_combout\,
	combout => \arraystart~24_combout\);

-- Location: FF_X84_Y43_N29
\arraystart[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~24_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(12));

-- Location: LCCOMB_X83_Y44_N18
\arraystart~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~9_combout\ = (\arrayend[2]~4_combout\ & ((\Equal7~1_combout\ & (\Add7~8_combout\)) # (!\Equal7~1_combout\ & ((\Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Equal7~1_combout\,
	datac => \arrayend[2]~4_combout\,
	datad => \Equal3~0_combout\,
	combout => \arraystart~9_combout\);

-- Location: LCCOMB_X83_Y44_N28
\arraystart~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~11_combout\ = (\arraystart~9_combout\) # ((\arraystart~10_combout\ & ((\Equal0~4_combout\) # (!\arrayend~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \arraystart~9_combout\,
	datac => \arraystart~10_combout\,
	datad => \arrayend~5_combout\,
	combout => \arraystart~11_combout\);

-- Location: FF_X83_Y44_N29
\arraystart[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~11_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(4));

-- Location: LCCOMB_X83_Y44_N2
\arraystart~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~12_combout\ = (\Equal7~1_combout\ & (\Add7~6_combout\)) # (!\Equal7~1_combout\ & ((!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal7~1_combout\,
	combout => \arraystart~12_combout\);

-- Location: LCCOMB_X83_Y44_N22
\arraystart~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~13_combout\ = (\arrayend~8_combout\) # ((\arrayend[2]~4_combout\ & \arraystart~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrayend~8_combout\,
	datac => \arrayend[2]~4_combout\,
	datad => \arraystart~12_combout\,
	combout => \arraystart~13_combout\);

-- Location: FF_X83_Y44_N23
\arraystart[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~13_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(3));

-- Location: LCCOMB_X83_Y46_N12
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (arraystart(6) & (\Add7~11\ $ (GND))) # (!arraystart(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((arraystart(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X85_Y43_N16
\arraystart~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~43_combout\ = (\Add7~12_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~12_combout\,
	datac => \arraystart[8]~2_combout\,
	combout => \arraystart~43_combout\);

-- Location: FF_X85_Y43_N17
\arraystart[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~43_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(6));

-- Location: LCCOMB_X83_Y46_N20
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (arraystart(10) & (\Add7~19\ $ (GND))) # (!arraystart(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((arraystart(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X84_Y43_N22
\arraystart~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~22_combout\ = (\arraystart[8]~2_combout\ & \Add7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~20_combout\,
	combout => \arraystart~22_combout\);

-- Location: FF_X84_Y43_N23
\arraystart[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~22_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(10));

-- Location: LCCOMB_X83_Y46_N22
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (arraystart(11) & (!\Add7~21\)) # (!arraystart(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!arraystart(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X84_Y43_N10
\arraystart~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~23_combout\ = (\arraystart[8]~2_combout\ & \Add7~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~22_combout\,
	combout => \arraystart~23_combout\);

-- Location: FF_X84_Y43_N11
\arraystart[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~23_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(11));

-- Location: LCCOMB_X83_Y46_N26
\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (arraystart(13) & (!\Add7~25\)) # (!arraystart(13) & ((\Add7~25\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~25\) # (!arraystart(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X84_Y43_N6
\arraystart~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~25_combout\ = (\arraystart[8]~2_combout\ & \Add7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~26_combout\,
	combout => \arraystart~25_combout\);

-- Location: FF_X84_Y43_N7
\arraystart[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~25_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(13));

-- Location: LCCOMB_X83_Y46_N28
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (arraystart(14) & (\Add7~27\ $ (GND))) # (!arraystart(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((arraystart(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X83_Y46_N30
\Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (arraystart(15) & (!\Add7~29\)) # (!arraystart(15) & ((\Add7~29\) # (GND)))
-- \Add7~31\ = CARRY((!\Add7~29\) # (!arraystart(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X84_Y43_N16
\arraystart~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~27_combout\ = (\arraystart[8]~2_combout\ & \Add7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~30_combout\,
	combout => \arraystart~27_combout\);

-- Location: FF_X84_Y43_N17
\arraystart[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~27_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(15));

-- Location: LCCOMB_X83_Y45_N2
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (arraystart(17) & (!\Add7~33\)) # (!arraystart(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!arraystart(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X84_Y43_N24
\arraystart~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~29_combout\ = (\arraystart[8]~2_combout\ & \Add7~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~34_combout\,
	combout => \arraystart~29_combout\);

-- Location: FF_X84_Y43_N25
\arraystart[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~29_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(17));

-- Location: LCCOMB_X83_Y45_N6
\Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (arraystart(19) & (!\Add7~37\)) # (!arraystart(19) & ((\Add7~37\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~37\) # (!arraystart(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X84_Y45_N24
\arraystart~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~31_combout\ = (\Add7~38_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~38_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~31_combout\);

-- Location: FF_X84_Y45_N25
\arraystart[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~31_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(19));

-- Location: LCCOMB_X83_Y45_N16
\Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (arraystart(24) & (\Add7~47\ $ (GND))) # (!arraystart(24) & (!\Add7~47\ & VCC))
-- \Add7~49\ = CARRY((arraystart(24) & !\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X84_Y45_N12
\arraystart~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~36_combout\ = (\Add7~48_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~48_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~36_combout\);

-- Location: FF_X84_Y45_N13
\arraystart[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~36_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(24));

-- Location: LCCOMB_X83_Y45_N20
\Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (arraystart(26) & (\Add7~51\ $ (GND))) # (!arraystart(26) & (!\Add7~51\ & VCC))
-- \Add7~53\ = CARRY((arraystart(26) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(26),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: LCCOMB_X84_Y45_N0
\arraystart~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~38_combout\ = (\Add7~52_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~52_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~38_combout\);

-- Location: FF_X84_Y45_N1
\arraystart[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~38_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(26));

-- Location: LCCOMB_X83_Y45_N22
\Add7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (arraystart(27) & (!\Add7~53\)) # (!arraystart(27) & ((\Add7~53\) # (GND)))
-- \Add7~55\ = CARRY((!\Add7~53\) # (!arraystart(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(27),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X84_Y45_N28
\arraystart~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~39_combout\ = (\Add7~54_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~54_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~39_combout\);

-- Location: FF_X84_Y45_N29
\arraystart[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~39_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(27));

-- Location: LCCOMB_X83_Y45_N24
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (arraystart(28) & (\Add7~55\ $ (GND))) # (!arraystart(28) & (!\Add7~55\ & VCC))
-- \Add7~57\ = CARRY((arraystart(28) & !\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(28),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X84_Y45_N22
\arraystart~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~40_combout\ = (\Add7~56_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~56_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~40_combout\);

-- Location: FF_X84_Y45_N23
\arraystart[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~40_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(28));

-- Location: LCCOMB_X83_Y45_N26
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (arraystart(29) & (!\Add7~57\)) # (!arraystart(29) & ((\Add7~57\) # (GND)))
-- \Add7~59\ = CARRY((!\Add7~57\) # (!arraystart(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(29),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: LCCOMB_X84_Y45_N16
\arraystart~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~41_combout\ = (\Add7~58_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~58_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~41_combout\);

-- Location: FF_X84_Y45_N17
\arraystart[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~41_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(29));

-- Location: LCCOMB_X84_Y45_N8
\LessThan9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~18_combout\ = (!arraystart(30) & (!arraystart(29) & (!arraystart(28) & !arraystart(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(30),
	datab => arraystart(29),
	datac => arraystart(28),
	datad => arraystart(27),
	combout => \LessThan9~18_combout\);

-- Location: LCCOMB_X84_Y45_N4
\arraystart~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~33_combout\ = (\Add7~42_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~33_combout\);

-- Location: FF_X84_Y45_N5
\arraystart[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~33_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(21));

-- Location: LCCOMB_X84_Y45_N26
\arraystart~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~34_combout\ = (\Add7~44_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~44_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~34_combout\);

-- Location: FF_X84_Y45_N27
\arraystart[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~34_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(22));

-- Location: LCCOMB_X84_Y45_N20
\LessThan9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~15_combout\ = (!arraystart(20) & (!arraystart(21) & (!arraystart(22) & !arraystart(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(20),
	datab => arraystart(21),
	datac => arraystart(22),
	datad => arraystart(19),
	combout => \LessThan9~15_combout\);

-- Location: LCCOMB_X84_Y43_N4
\arraystart~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~26_combout\ = (\arraystart[8]~2_combout\ & \Add7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~28_combout\,
	combout => \arraystart~26_combout\);

-- Location: FF_X84_Y43_N5
\arraystart[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~26_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(14));

-- Location: LCCOMB_X84_Y43_N26
\LessThan9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~13_combout\ = (!arraystart(13) & (!arraystart(12) & (!arraystart(14) & !arraystart(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(13),
	datab => arraystart(12),
	datac => arraystart(14),
	datad => arraystart(11),
	combout => \LessThan9~13_combout\);

-- Location: LCCOMB_X84_Y43_N14
\arraystart~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~30_combout\ = (\Add7~36_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~36_combout\,
	datac => \arraystart[8]~2_combout\,
	combout => \arraystart~30_combout\);

-- Location: FF_X84_Y43_N15
\arraystart[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~30_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(18));

-- Location: LCCOMB_X84_Y43_N8
\LessThan9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~14_combout\ = (!arraystart(16) & (!arraystart(17) & (!arraystart(18) & !arraystart(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(16),
	datab => arraystart(17),
	datac => arraystart(18),
	datad => arraystart(15),
	combout => \LessThan9~14_combout\);

-- Location: LCCOMB_X85_Y43_N22
\LessThan9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~16_combout\ = (\LessThan9~12_combout\ & (\LessThan9~15_combout\ & (\LessThan9~13_combout\ & \LessThan9~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~12_combout\,
	datab => \LessThan9~15_combout\,
	datac => \LessThan9~13_combout\,
	datad => \LessThan9~14_combout\,
	combout => \LessThan9~16_combout\);

-- Location: LCCOMB_X85_Y44_N4
\LessThan9~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~21_combout\ = (\LessThan9~17_combout\ & (\LessThan9~18_combout\ & \LessThan9~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~17_combout\,
	datac => \LessThan9~18_combout\,
	datad => \LessThan9~16_combout\,
	combout => \LessThan9~21_combout\);

-- Location: LCCOMB_X86_Y43_N12
\arrayend~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend~6_combout\ = (\Equal8~12_combout\) # ((answerdelay(31)) # ((\LessThan14~5_combout\) # (!\u1|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~12_combout\,
	datab => answerdelay(31),
	datac => \LessThan14~5_combout\,
	datad => \u1|state\(2),
	combout => \arrayend~6_combout\);

-- Location: LCCOMB_X85_Y44_N12
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\u1|state\(1) & !\u1|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(1),
	datac => \u1|state\(0),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X85_Y44_N26
\arrayend~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend~7_combout\ = ((\Equal0~4_combout\ & ((\arrayend~6_combout\))) # (!\Equal0~4_combout\ & (\u1|state\(2)))) # (!\Equal6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \u1|state\(2),
	datac => \arrayend~6_combout\,
	datad => \Equal6~1_combout\,
	combout => \arrayend~7_combout\);

-- Location: LCCOMB_X85_Y44_N22
\arrayend[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend[4]~3_combout\ = ((\arraystart[8]~5_combout\ & ((!\arraystart~8_combout\) # (!\Equal7~1_combout\)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \arraystart[8]~5_combout\,
	datac => \Equal7~1_combout\,
	datad => \arraystart~8_combout\,
	combout => \arrayend[4]~3_combout\);

-- Location: FF_X85_Y44_N27
\arrayend[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arrayend~7_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \arrayend[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arrayend(4));

-- Location: FF_X84_Y44_N27
\arrayend[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arrayend~9_combout\,
	ena => \arrayend[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arrayend(3));

-- Location: LCCOMB_X84_Y44_N16
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (arrayend(3) & (!\Add4~3\ & VCC)) # (!arrayend(3) & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((!arrayend(3) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arrayend(3),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X84_Y44_N24
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (arraystart(3) & (\Add4~4_combout\ & (\Add4~6_combout\ $ (!arraystart(4))))) # (!arraystart(3) & (!\Add4~4_combout\ & (\Add4~6_combout\ $ (!arraystart(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(3),
	datab => \Add4~6_combout\,
	datac => arraystart(4),
	datad => \Add4~4_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X85_Y44_N6
\Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~3_combout\ & (\Equal5~0_combout\ & (\LessThan9~21_combout\ & \Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Equal5~0_combout\,
	datac => \LessThan9~21_combout\,
	datad => \Equal5~1_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X85_Y44_N14
\clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~1_combout\ = (!\Equal4~4_combout\ & !\Equal5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datad => \Equal5~4_combout\,
	combout => \clk_count~1_combout\);

-- Location: LCCOMB_X85_Y44_N28
\arraystart[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart[8]~4_combout\ = (!\LessThan9~20_combout\ & (\Equal0~4_combout\ & (\clk_count~1_combout\ & \STATE~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~20_combout\,
	datab => \Equal0~4_combout\,
	datac => \clk_count~1_combout\,
	datad => \STATE~15_combout\,
	combout => \arraystart[8]~4_combout\);

-- Location: LCCOMB_X85_Y44_N30
\arraystart[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart[8]~6_combout\ = ((\arraystart[8]~5_combout\ & !\arraystart[8]~4_combout\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \arraystart[8]~5_combout\,
	datad => \arraystart[8]~4_combout\,
	combout => \arraystart[8]~6_combout\);

-- Location: FF_X84_Y44_N29
\arraystart[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~7_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(5));

-- Location: LCCOMB_X83_Y44_N16
\arraystart~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~15_combout\ = (\Equal0~4_combout\ & (\arraystart[8]~1_combout\)) # (!\Equal0~4_combout\ & (((\u1|state\(0)) # (!\arrayend~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \arraystart[8]~1_combout\,
	datac => \u1|state\(0),
	datad => \arrayend~5_combout\,
	combout => \arraystart~15_combout\);

-- Location: LCCOMB_X83_Y44_N0
\arraystart~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~16_combout\ = (\arraystart[8]~2_combout\ & (((\Add7~2_combout\)))) # (!\arraystart[8]~2_combout\ & (\reset_n~input_o\ & ((\arraystart~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Add7~2_combout\,
	datac => \arraystart[8]~2_combout\,
	datad => \arraystart~15_combout\,
	combout => \arraystart~16_combout\);

-- Location: FF_X83_Y44_N1
\arraystart[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~16_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(1));

-- Location: LCCOMB_X85_Y43_N4
\LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~1_cout\ = CARRY((arrayend(0) & !arraystart(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arrayend(0),
	datab => arraystart(0),
	datad => VCC,
	cout => \LessThan9~1_cout\);

-- Location: LCCOMB_X85_Y43_N6
\LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~3_cout\ = CARRY((arrayend(1) & ((arraystart(1)) # (!\LessThan9~1_cout\))) # (!arrayend(1) & (arraystart(1) & !\LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arrayend(1),
	datab => arraystart(1),
	datad => VCC,
	cin => \LessThan9~1_cout\,
	cout => \LessThan9~3_cout\);

-- Location: LCCOMB_X85_Y43_N8
\LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~5_cout\ = CARRY((arrayend(2) & ((!\LessThan9~3_cout\) # (!arraystart(2)))) # (!arrayend(2) & (!arraystart(2) & !\LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arrayend(2),
	datab => arraystart(2),
	datad => VCC,
	cin => \LessThan9~3_cout\,
	cout => \LessThan9~5_cout\);

-- Location: LCCOMB_X85_Y43_N10
\LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~7_cout\ = CARRY((arraystart(3) & ((arrayend(3)) # (!\LessThan9~5_cout\))) # (!arraystart(3) & (arrayend(3) & !\LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(3),
	datab => arrayend(3),
	datad => VCC,
	cin => \LessThan9~5_cout\,
	cout => \LessThan9~7_cout\);

-- Location: LCCOMB_X85_Y43_N12
\LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~9_cout\ = CARRY((arraystart(4) & (arrayend(4) & !\LessThan9~7_cout\)) # (!arraystart(4) & ((arrayend(4)) # (!\LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(4),
	datab => arrayend(4),
	datad => VCC,
	cin => \LessThan9~7_cout\,
	cout => \LessThan9~9_cout\);

-- Location: LCCOMB_X85_Y43_N14
\LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~10_combout\ = (arrayend(5) & ((\LessThan9~9_cout\) # (!arraystart(5)))) # (!arrayend(5) & (\LessThan9~9_cout\ & !arraystart(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => arrayend(5),
	datad => arraystart(5),
	cin => \LessThan9~9_cout\,
	combout => \LessThan9~10_combout\);

-- Location: LCCOMB_X83_Y45_N28
\Add7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (arraystart(30) & (\Add7~59\ $ (GND))) # (!arraystart(30) & (!\Add7~59\ & VCC))
-- \Add7~61\ = CARRY((arraystart(30) & !\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(30),
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: LCCOMB_X84_Y45_N10
\arraystart~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~42_combout\ = (\Add7~60_combout\ & \arraystart[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~60_combout\,
	datad => \arraystart[8]~2_combout\,
	combout => \arraystart~42_combout\);

-- Location: FF_X84_Y45_N11
\arraystart[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~42_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(30));

-- Location: LCCOMB_X83_Y45_N30
\Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = arraystart(31) $ (\Add7~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => arraystart(31),
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: LCCOMB_X85_Y43_N28
\arraystart~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arraystart~3_combout\ = (\arraystart[8]~2_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arraystart[8]~2_combout\,
	datad => \Add7~62_combout\,
	combout => \arraystart~3_combout\);

-- Location: FF_X85_Y43_N29
\arraystart[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arraystart~3_combout\,
	ena => \arraystart[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arraystart(31));

-- Location: LCCOMB_X85_Y43_N24
\LessThan9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~20_combout\ = (arraystart(31)) # ((\LessThan9~19_combout\ & \LessThan9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~19_combout\,
	datac => \LessThan9~10_combout\,
	datad => arraystart(31),
	combout => \LessThan9~20_combout\);

-- Location: LCCOMB_X86_Y44_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\clk_count~1_combout\ & (\Equal0~4_combout\ & (!\LessThan9~20_combout\ & \STATE~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \LessThan9~20_combout\,
	datad => \STATE~15_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X86_Y44_N26
\clk_count[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[25]~8_combout\ = (((!\STATE~17_combout\ & !\Selector1~0_combout\)) # (!\reset_n~input_o\)) # (!\STATE.010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datab => \reset_n~input_o\,
	datac => \STATE~17_combout\,
	datad => \Selector1~0_combout\,
	combout => \clk_count[25]~8_combout\);

-- Location: FF_X88_Y47_N7
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~23_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X90_Y47_N8
\clk_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~25_combout\ = (\Add1~26_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~25_combout\);

-- Location: FF_X90_Y47_N9
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~25_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: LCCOMB_X89_Y47_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (clk_count(2) & (\Add1~3\ $ (GND))) # (!clk_count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((clk_count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X89_Y47_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (clk_count(3) & (!\Add1~5\)) # (!clk_count(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X90_Y47_N22
\clk_count~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~35_combout\ = (\Add1~6_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~35_combout\);

-- Location: FF_X90_Y47_N23
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~35_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X89_Y47_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (clk_count(4) & (\Add1~7\ $ (GND))) # (!clk_count(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((clk_count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X90_Y47_N28
\clk_count~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~34_combout\ = (!\clk_count[25]~6_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_count[25]~6_combout\,
	datad => \Add1~8_combout\,
	combout => \clk_count~34_combout\);

-- Location: FF_X90_Y47_N29
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~34_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: LCCOMB_X89_Y47_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (clk_count(5) & (!\Add1~9\)) # (!clk_count(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X90_Y47_N26
\clk_count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~33_combout\ = (!\clk_count[25]~6_combout\ & \Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_count[25]~6_combout\,
	datad => \Add1~10_combout\,
	combout => \clk_count~33_combout\);

-- Location: FF_X90_Y47_N27
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~33_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X89_Y47_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (clk_count(6) & (\Add1~11\ $ (GND))) # (!clk_count(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((clk_count(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X90_Y47_N12
\clk_count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~32_combout\ = (!\clk_count[25]~6_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_count[25]~6_combout\,
	datad => \Add1~12_combout\,
	combout => \clk_count~32_combout\);

-- Location: FF_X90_Y47_N13
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~32_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: LCCOMB_X89_Y47_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (clk_count(7) & (!\Add1~13\)) # (!clk_count(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X90_Y47_N10
\clk_count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~31_combout\ = (\Add1~14_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~31_combout\);

-- Location: FF_X90_Y47_N11
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~31_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X89_Y47_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (clk_count(8) & (\Add1~15\ $ (GND))) # (!clk_count(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((clk_count(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X89_Y47_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (clk_count(9) & (!\Add1~17\)) # (!clk_count(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X88_Y47_N30
\clk_count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~29_combout\ = (\Add1~18_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~18_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~29_combout\);

-- Location: FF_X88_Y47_N31
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~29_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: LCCOMB_X89_Y47_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (clk_count(10) & (\Add1~19\ $ (GND))) # (!clk_count(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((clk_count(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X89_Y47_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (clk_count(11) & (!\Add1~21\)) # (!clk_count(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X89_Y47_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (clk_count(12) & (\Add1~23\ $ (GND))) # (!clk_count(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((clk_count(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X90_Y46_N0
\clk_count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~26_combout\ = (\Add1~24_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~24_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~26_combout\);

-- Location: FF_X90_Y46_N1
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~26_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: LCCOMB_X89_Y47_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (clk_count(13) & (!\Add1~25\)) # (!clk_count(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X89_Y47_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (clk_count(14) & (\Add1~27\ $ (GND))) # (!clk_count(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((clk_count(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X89_Y47_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (clk_count(15) & (!\Add1~29\)) # (!clk_count(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X88_Y47_N28
\clk_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~22_combout\ = (\Add1~32_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~32_combout\,
	datac => \clk_count[25]~6_combout\,
	combout => \clk_count~22_combout\);

-- Location: FF_X88_Y47_N29
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~22_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: LCCOMB_X89_Y46_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (clk_count(16) & (\Add1~31\ $ (GND))) # (!clk_count(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((clk_count(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X88_Y47_N14
\LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\Add1~30_combout\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~30_combout\,
	datad => \Add1~32_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X87_Y47_N6
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\Add1~14_combout\ & \Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Add1~16_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X87_Y47_N24
\LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = ((!\Add1~12_combout\ & ((!\Add1~8_combout\) # (!\Add1~10_combout\)))) # (!\LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~12_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X87_Y47_N2
\LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (((!\Add1~18_combout\ & \LessThan8~1_combout\)) # (!\Add1~20_combout\)) # (!\Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Add1~22_combout\,
	datac => \Add1~20_combout\,
	datad => \LessThan8~1_combout\,
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X87_Y46_N26
\LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~3_combout\ = (!\Add1~28_combout\ & (((!\Add1~24_combout\ & \LessThan8~2_combout\)) # (!\Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add1~28_combout\,
	datac => \Add1~26_combout\,
	datad => \LessThan8~2_combout\,
	combout => \LessThan8~3_combout\);

-- Location: LCCOMB_X89_Y46_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (clk_count(29) & (!\Add1~57\)) # (!clk_count(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!clk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X89_Y46_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (clk_count(28) & (\Add1~55\ $ (GND))) # (!clk_count(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((clk_count(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X90_Y46_N28
\clk_count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~18_combout\ = (\Add1~40_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~18_combout\);

-- Location: FF_X90_Y46_N29
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~18_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X90_Y46_N22
\clk_count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~19_combout\ = (\Add1~38_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~19_combout\);

-- Location: FF_X90_Y46_N23
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~19_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X90_Y46_N26
\clk_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~21_combout\ = (\Add1~34_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~21_combout\);

-- Location: FF_X90_Y46_N27
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~21_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: LCCOMB_X89_Y46_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (clk_count(17) & (!\Add1~33\)) # (!clk_count(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X89_Y46_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (clk_count(18) & (\Add1~35\ $ (GND))) # (!clk_count(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((clk_count(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X89_Y46_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (clk_count(19) & (!\Add1~37\)) # (!clk_count(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X89_Y46_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (clk_count(20) & (\Add1~39\ $ (GND))) # (!clk_count(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((clk_count(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X88_Y46_N4
\busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~1_combout\ = (!\Add1~36_combout\ & (!\Add1~40_combout\ & (!\Add1~34_combout\ & !\Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \Add1~40_combout\,
	datac => \Add1~34_combout\,
	datad => \Add1~38_combout\,
	combout => \busy~1_combout\);

-- Location: LCCOMB_X90_Y46_N14
\clk_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~17_combout\ = (\Add1~42_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~17_combout\);

-- Location: FF_X90_Y46_N15
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~17_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: LCCOMB_X89_Y46_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (clk_count(22) & (\Add1~43\ $ (GND))) # (!clk_count(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((clk_count(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X86_Y46_N8
\clk_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~15_combout\ = (\Add1~46_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~46_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~15_combout\);

-- Location: FF_X86_Y46_N9
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~15_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X89_Y46_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (clk_count(23) & (!\Add1~45\)) # (!clk_count(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X89_Y46_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (clk_count(24) & (\Add1~47\ $ (GND))) # (!clk_count(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((clk_count(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X88_Y46_N6
\busy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~2_combout\ = (!\Add1~42_combout\ & (!\Add1~44_combout\ & (!\Add1~46_combout\ & !\Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datab => \Add1~44_combout\,
	datac => \Add1~46_combout\,
	datad => \Add1~48_combout\,
	combout => \busy~2_combout\);

-- Location: LCCOMB_X88_Y46_N24
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (!\Add1~52_combout\ & (!\Add1~50_combout\ & (\busy~1_combout\ & \busy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datab => \Add1~50_combout\,
	datac => \busy~1_combout\,
	datad => \busy~2_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X88_Y46_N18
\LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = (!\Add1~54_combout\ & (!\Add1~58_combout\ & (!\Add1~56_combout\ & \LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \Add1~58_combout\,
	datac => \Add1~56_combout\,
	datad => \LessThan7~2_combout\,
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X87_Y46_N8
\LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~4_combout\ = (!\Add1~60_combout\ & (\LessThan7~3_combout\ & ((\LessThan8~3_combout\) # (!\LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => \LessThan8~0_combout\,
	datac => \LessThan8~3_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan8~4_combout\);

-- Location: LCCOMB_X89_Y46_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (clk_count(30) & (\Add1~59\ $ (GND))) # (!clk_count(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((clk_count(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X89_Y46_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (clk_count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_count(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X86_Y46_N26
\clk_count[25]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[25]~3_combout\ = (\STATE.011~q\ & (!\Selector35~1_combout\)) # (!\STATE.011~q\ & (((\LessThan8~4_combout\) # (\Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~1_combout\,
	datab => \LessThan8~4_combout\,
	datac => \Add1~62_combout\,
	datad => \STATE.011~q\,
	combout => \clk_count[25]~3_combout\);

-- Location: LCCOMB_X88_Y47_N22
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (!\Add1~14_combout\ & (!\Add1~12_combout\ & !\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \Add1~12_combout\,
	datad => \Add1~16_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X88_Y47_N0
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!\Add1~6_combout\ & (!\Add1~8_combout\ & !\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \Add1~8_combout\,
	datad => \Add1~4_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X88_Y47_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\Add1~20_combout\ & (!\Add1~18_combout\ & (!\Add1~24_combout\ & !\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add1~18_combout\,
	datac => \Add1~24_combout\,
	datad => \Add1~22_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X87_Y47_N0
\LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (!\Add1~10_combout\ & (\LessThan6~1_combout\ & (\LessThan6~0_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \LessThan6~1_combout\,
	datac => \LessThan6~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X87_Y47_N30
\clk_count[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[25]~0_combout\ = (\LessThan8~0_combout\ & ((\Add1~28_combout\) # ((\Add1~26_combout\ & !\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~28_combout\,
	datac => \LessThan8~0_combout\,
	datad => \LessThan6~2_combout\,
	combout => \clk_count[25]~0_combout\);

-- Location: LCCOMB_X88_Y47_N18
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\Add1~8_combout\ & (\Add1~12_combout\ & \Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datac => \Add1~12_combout\,
	datad => \Add1~10_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X87_Y47_N4
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\LessThan1~0_combout\ & (((!\Add1~6_combout\) # (!\LessThan4~0_combout\)) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \Add1~6_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X87_Y47_N18
\LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = (!\Add1~28_combout\ & ((\LessThan7~0_combout\) # (!\Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~28_combout\,
	datac => \LessThan7~0_combout\,
	combout => \LessThan7~4_combout\);

-- Location: LCCOMB_X86_Y46_N28
\clk_count[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[25]~4_combout\ = (!\Add1~60_combout\ & (\LessThan7~3_combout\ & ((\LessThan7~4_combout\) # (!\clk_count[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => \clk_count[25]~0_combout\,
	datac => \LessThan7~3_combout\,
	datad => \LessThan7~4_combout\,
	combout => \clk_count[25]~4_combout\);

-- Location: LCCOMB_X86_Y46_N10
\clk_count[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[25]~5_combout\ = (\Selector33~0_combout\) # ((\STATE.001~q\ & ((\Add1~62_combout\) # (\clk_count[25]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \STATE.001~q\,
	datac => \Add1~62_combout\,
	datad => \clk_count[25]~4_combout\,
	combout => \clk_count[25]~5_combout\);

-- Location: LCCOMB_X86_Y46_N0
\clk_count[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[25]~6_combout\ = (\clk_count[25]~2_combout\) # ((!\clk_count[25]~5_combout\ & ((!\clk_count[25]~3_combout\) # (!\STATE.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[25]~2_combout\,
	datab => \STATE.000~q\,
	datac => \clk_count[25]~3_combout\,
	datad => \clk_count[25]~5_combout\,
	combout => \clk_count[25]~6_combout\);

-- Location: LCCOMB_X87_Y47_N16
\clk_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~14_combout\ = (!\clk_count[25]~6_combout\ & \Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_count[25]~6_combout\,
	datad => \Add1~48_combout\,
	combout => \clk_count~14_combout\);

-- Location: FF_X87_Y47_N17
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~14_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: LCCOMB_X89_Y46_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (clk_count(25) & (!\Add1~49\)) # (!clk_count(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!clk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X86_Y46_N2
\clk_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~13_combout\ = (\Add1~50_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~50_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~13_combout\);

-- Location: FF_X86_Y46_N3
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~13_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: LCCOMB_X89_Y46_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (clk_count(26) & (\Add1~51\ $ (GND))) # (!clk_count(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((clk_count(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X89_Y46_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (clk_count(27) & (!\Add1~53\)) # (!clk_count(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!clk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X87_Y47_N10
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (\LessThan8~0_combout\ & ((\Add1~28_combout\) # ((\Add1~26_combout\ & !\LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \LessThan8~0_combout\,
	datac => \LessThan7~0_combout\,
	datad => \Add1~28_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X87_Y46_N4
\busy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~3_combout\ = (\Add1~60_combout\) # (((\clk_count[25]~0_combout\ & \LessThan7~1_combout\)) # (!\LessThan7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[25]~0_combout\,
	datab => \Add1~60_combout\,
	datac => \LessThan7~1_combout\,
	datad => \LessThan7~3_combout\,
	combout => \busy~3_combout\);

-- Location: LCCOMB_X88_Y46_N20
\busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~7_combout\ = (!\Add1~30_combout\ & (!\Add1~32_combout\ & (!\Add1~28_combout\ & !\Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add1~32_combout\,
	datac => \Add1~28_combout\,
	datad => \Add1~26_combout\,
	combout => \busy~7_combout\);

-- Location: LCCOMB_X88_Y46_N8
\busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~4_combout\ = (!\Add1~52_combout\ & (!\Add1~50_combout\ & (!\Add1~54_combout\ & \busy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datab => \Add1~50_combout\,
	datac => \Add1~54_combout\,
	datad => \busy~2_combout\,
	combout => \busy~4_combout\);

-- Location: LCCOMB_X88_Y47_N20
\busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~5_combout\ = ((!\Add1~8_combout\ & ((!\Add1~6_combout\) # (!\Add1~4_combout\)))) # (!\Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~10_combout\,
	datad => \Add1~6_combout\,
	combout => \busy~5_combout\);

-- Location: LCCOMB_X87_Y47_N28
\busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~6_combout\ = (!\Add1~18_combout\ & (((!\Add1~12_combout\ & \busy~5_combout\)) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Add1~12_combout\,
	datac => \busy~5_combout\,
	datad => \LessThan2~0_combout\,
	combout => \busy~6_combout\);

-- Location: LCCOMB_X88_Y46_N10
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\Add1~24_combout\ & (((\busy~6_combout\) # (!\Add1~22_combout\)) # (!\Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add1~20_combout\,
	datac => \Add1~22_combout\,
	datad => \busy~6_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X88_Y46_N2
\busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~8_combout\ = (\busy~1_combout\ & (\busy~7_combout\ & (\busy~4_combout\ & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~1_combout\,
	datab => \busy~7_combout\,
	datac => \busy~4_combout\,
	datad => \LessThan3~0_combout\,
	combout => \busy~8_combout\);

-- Location: LCCOMB_X88_Y46_N16
\busy~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~9_combout\ = (!\Add1~56_combout\ & (!\Add1~60_combout\ & (!\Add1~58_combout\ & \busy~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~60_combout\,
	datac => \Add1~58_combout\,
	datad => \busy~8_combout\,
	combout => \busy~9_combout\);

-- Location: LCCOMB_X87_Y46_N2
\busy~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~10_combout\ = (!\Add1~62_combout\ & (\busy~3_combout\ & (!\LessThan8~4_combout\ & !\busy~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \busy~3_combout\,
	datac => \LessThan8~4_combout\,
	datad => \busy~9_combout\,
	combout => \busy~10_combout\);

-- Location: LCCOMB_X87_Y46_N0
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\busy~10_combout\) # (!\STATE.001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STATE.001~q\,
	datad => \busy~10_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X90_Y47_N30
\clk_count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~28_combout\ = (!\clk_count[25]~6_combout\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_count[25]~6_combout\,
	datad => \Add1~20_combout\,
	combout => \clk_count~28_combout\);

-- Location: FF_X90_Y47_N31
\clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~28_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(10));

-- Location: LCCOMB_X90_Y46_N18
\clk_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~27_combout\ = (\Add1~22_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~22_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~27_combout\);

-- Location: FF_X90_Y46_N19
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~27_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X91_Y46_N22
\LessThan15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~3_combout\ = ((\LessThan15~2_combout\ & (!clk_count(10) & !clk_count(9)))) # (!clk_count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~2_combout\,
	datab => clk_count(10),
	datac => clk_count(9),
	datad => clk_count(11),
	combout => \LessThan15~3_combout\);

-- Location: LCCOMB_X90_Y46_N20
\clk_count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~20_combout\ = (\Add1~36_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~36_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~20_combout\);

-- Location: FF_X90_Y46_N21
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~20_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: LCCOMB_X88_Y47_N26
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!clk_count(14) & (!clk_count(16) & !clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datab => clk_count(16),
	datad => clk_count(15),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X90_Y46_N16
\LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~0_combout\ = (!clk_count(19) & (!clk_count(13) & (!clk_count(17) & !clk_count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(19),
	datab => clk_count(13),
	datac => clk_count(17),
	datad => clk_count(20),
	combout => \LessThan18~0_combout\);

-- Location: LCCOMB_X90_Y46_N4
\clk_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~12_combout\ = (\Add1~52_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~52_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~12_combout\);

-- Location: FF_X90_Y46_N5
\clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~12_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(26));

-- Location: LCCOMB_X86_Y46_N18
\clk_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~16_combout\ = (\Add1~44_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~16_combout\);

-- Location: FF_X86_Y46_N19
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~16_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: LCCOMB_X87_Y47_N26
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!clk_count(23) & (!clk_count(24) & (!clk_count(22) & !clk_count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(23),
	datab => clk_count(24),
	datac => clk_count(22),
	datad => clk_count(25),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X90_Y46_N12
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!clk_count(26) & \LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_count(26),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X91_Y46_N0
\LessThan18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~1_combout\ = (!clk_count(12) & (\LessThan0~3_combout\ & (\LessThan18~0_combout\ & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(12),
	datab => \LessThan0~3_combout\,
	datac => \LessThan18~0_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan18~1_combout\);

-- Location: LCCOMB_X91_Y46_N2
\LessThan18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~2_combout\ = (!clk_count(18) & (!clk_count(21) & \LessThan18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(18),
	datac => clk_count(21),
	datad => \LessThan18~1_combout\,
	combout => \LessThan18~2_combout\);

-- Location: LCCOMB_X91_Y46_N4
\Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (!clk_count(31) & (((!\LessThan18~2_combout\) # (!\LessThan15~3_combout\)) # (!\LessThan15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datab => clk_count(31),
	datac => \LessThan15~3_combout\,
	datad => \LessThan18~2_combout\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X86_Y46_N20
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\STATE.010~q\ & ((\STATE~17_combout\) # (\arraystart[8]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.010~q\,
	datac => \STATE~17_combout\,
	datad => \arraystart[8]~4_combout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X87_Y46_N28
\Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = ((\Selector35~0_combout\) # ((\STATE.011~q\ & \Selector35~1_combout\))) # (!\Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.011~q\,
	datab => \Selector0~2_combout\,
	datac => \Selector35~1_combout\,
	datad => \Selector35~0_combout\,
	combout => \Selector35~2_combout\);

-- Location: FF_X87_Y46_N29
\STATE.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector35~2_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.010~q\);

-- Location: LCCOMB_X86_Y45_N20
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Equal0~4_combout\ & \STATE.010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \STATE.010~q\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X91_Y46_N28
\LessThan15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~4_combout\ = (\LessThan15~0_combout\ & (\LessThan15~3_combout\ & \LessThan18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datac => \LessThan15~3_combout\,
	datad => \LessThan18~2_combout\,
	combout => \LessThan15~4_combout\);

-- Location: LCCOMB_X85_Y46_N8
\Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\STATE.011~q\ & ((clk_count(31)) # (\LessThan15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(31),
	datac => \STATE.011~q\,
	datad => \LessThan15~4_combout\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X85_Y46_N4
\Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (\Selector36~1_combout\) # ((!\busy~0_combout\ & (\Selector36~0_combout\ & \STATE~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~0_combout\,
	datab => \Selector36~0_combout\,
	datac => \Selector36~1_combout\,
	datad => \STATE~15_combout\,
	combout => \Selector36~2_combout\);

-- Location: FF_X85_Y46_N5
\STATE.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector36~2_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.011~q\);

-- Location: LCCOMB_X85_Y46_N24
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\STATE.001~q\) # ((\STATE.011~q\ & !\Selector35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.001~q\,
	datac => \STATE.011~q\,
	datad => \Selector35~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X86_Y46_N30
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\STATE.010~q\ & (clk_count(31) & ((\STATE~17_combout\) # (\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datab => clk_count(31),
	datac => \STATE~17_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X86_Y46_N6
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\STATE.000~q\ & \LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.000~q\,
	datad => \LessThan0~8_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X86_Y46_N24
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector1~1_combout\) # ((\Add1~62_combout\ & ((\Selector1~2_combout\) # (\Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Selector1~2_combout\,
	datac => \Selector1~1_combout\,
	datad => \Selector33~0_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X86_Y46_N25
\clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(31));

-- Location: LCCOMB_X86_Y46_N14
\clk_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~7_combout\ = (\Add1~60_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~60_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~7_combout\);

-- Location: FF_X86_Y46_N15
\clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~7_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(30));

-- Location: LCCOMB_X86_Y46_N4
\clk_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~9_combout\ = (\Add1~58_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~58_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~9_combout\);

-- Location: FF_X86_Y46_N5
\clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~9_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(29));

-- Location: LCCOMB_X86_Y46_N12
\clk_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~11_combout\ = (\Add1~54_combout\ & !\clk_count[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~54_combout\,
	datad => \clk_count[25]~6_combout\,
	combout => \clk_count~11_combout\);

-- Location: FF_X86_Y46_N13
\clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk_count~11_combout\,
	ena => \clk_count[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(27));

-- Location: LCCOMB_X86_Y46_N16
\LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (!clk_count(28) & (!clk_count(30) & (!clk_count(29) & !clk_count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(28),
	datab => clk_count(30),
	datac => clk_count(29),
	datad => clk_count(27),
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X90_Y46_N30
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (clk_count(31)) # ((\LessThan0~5_combout\ & (\LessThan15~0_combout\ & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => clk_count(31),
	datac => \LessThan15~0_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X87_Y46_N6
\lcd_data[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[2]~17_combout\ = (\STATE.000~q\ & (((\STATE.001~q\ & !\busy~10_combout\)))) # (!\STATE.000~q\ & (((\STATE.001~q\ & !\busy~10_combout\)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.000~q\,
	datab => \LessThan0~8_combout\,
	datac => \STATE.001~q\,
	datad => \busy~10_combout\,
	combout => \lcd_data[2]~17_combout\);

-- Location: FF_X87_Y46_N7
\STATE.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcd_data[2]~17_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.001~q\);

-- Location: LCCOMB_X84_Y44_N6
\arrayend~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrayend~11_combout\ = (\arrayend~12_combout\) # ((\Equal3~0_combout\ & \arrayend[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrayend~12_combout\,
	datac => \Equal3~0_combout\,
	datad => \arrayend[2]~4_combout\,
	combout => \arrayend~11_combout\);

-- Location: FF_X84_Y44_N13
\arrayend[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \arrayend~11_combout\,
	sload => VCC,
	ena => \arrayend[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arrayend(2));

-- Location: LCCOMB_X85_Y43_N0
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (arraystart(3) & (!arrayend(3) & (arrayend(2) $ (!arraystart(2))))) # (!arraystart(3) & (arrayend(3) & (arrayend(2) $ (!arraystart(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(3),
	datab => arrayend(3),
	datac => arrayend(2),
	datad => arraystart(2),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X85_Y43_N26
\LessThan9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~19_combout\ = (\LessThan9~17_combout\ & (!arraystart(6) & (\LessThan9~16_combout\ & \LessThan9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~17_combout\,
	datab => arraystart(6),
	datac => \LessThan9~16_combout\,
	datad => \LessThan9~18_combout\,
	combout => \LessThan9~19_combout\);

-- Location: FF_X85_Y44_N21
\arrayend[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \arrayend~2_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \arrayend[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arrayend(5));

-- Location: LCCOMB_X85_Y43_N18
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (arraystart(4) & (arrayend(4) & (arraystart(5) $ (!arrayend(5))))) # (!arraystart(4) & (!arrayend(4) & (arraystart(5) $ (!arrayend(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(4),
	datab => arraystart(5),
	datac => arrayend(5),
	datad => arrayend(4),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X85_Y43_N20
\Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!arraystart(31) & \Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => arraystart(31),
	datad => \Equal4~2_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X85_Y43_N2
\Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~0_combout\ & (\Equal4~1_combout\ & (\LessThan9~19_combout\ & \Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal4~1_combout\,
	datac => \LessThan9~19_combout\,
	datad => \Equal4~3_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X85_Y46_N12
\busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~0_combout\ = (!\LessThan9~20_combout\ & (!\Equal4~4_combout\ & !\Equal5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan9~20_combout\,
	datac => \Equal4~4_combout\,
	datad => \Equal5~4_combout\,
	combout => \busy~0_combout\);

-- Location: LCCOMB_X85_Y46_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\Equal0~4_combout\ & ((!\busy~0_combout\))) # (!\Equal0~4_combout\ & (\busy~reg0_q\))) # (!\STATE.010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datab => \busy~reg0_q\,
	datac => \Equal0~4_combout\,
	datad => \busy~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X87_Y46_N12
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\ & ((!\busy~10_combout\) # (!\STATE.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.001~q\,
	datac => \Selector0~0_combout\,
	datad => \busy~10_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X87_Y46_N13
\busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busy~reg0_q\);

-- Location: LCCOMB_X85_Y46_N2
\Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\STATE.000~q\ & (\STATE.010~q\ & (\Equal0~4_combout\))) # (!\STATE.000~q\ & (((!\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datab => \STATE.000~q\,
	datac => \Equal0~4_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X85_Y46_N22
\rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs~0_combout\ = (\Selector37~2_combout\ & (!\busy~0_combout\ & (\STATE.000~q\))) # (!\Selector37~2_combout\ & (((\rs~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~0_combout\,
	datab => \STATE.000~q\,
	datac => \rs~reg0_q\,
	datad => \Selector37~2_combout\,
	combout => \rs~0_combout\);

-- Location: FF_X85_Y46_N23
\rs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs~reg0_q\);

-- Location: LCCOMB_X88_Y47_N24
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ((!\Add1~18_combout\) # (!\Add1~20_combout\)) # (!\Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datac => \Add1~20_combout\,
	datad => \Add1~18_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X88_Y47_N10
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (!\Add1~22_combout\ & ((\LessThan4~1_combout\) # ((!\LessThan4~0_combout\ & !\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \LessThan4~0_combout\,
	datac => \Add1~14_combout\,
	datad => \LessThan4~1_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X88_Y46_N0
\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (\busy~7_combout\ & (\LessThan7~3_combout\ & ((\LessThan4~2_combout\) # (!\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~7_combout\,
	datab => \LessThan4~2_combout\,
	datac => \Add1~24_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X90_Y47_N14
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!\Add1~12_combout\ & (((!\Add1~10_combout\) # (!\Add1~6_combout\)) # (!\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~6_combout\,
	datac => \Add1~10_combout\,
	datad => \Add1~12_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X91_Y47_N12
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (((\LessThan2~1_combout\) # (!\Add1~18_combout\)) # (!\Add1~16_combout\)) # (!\Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~16_combout\,
	datac => \Add1~18_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X91_Y47_N14
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!\Add1~24_combout\ & (((!\Add1~20_combout\ & \LessThan2~2_combout\)) # (!\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add1~22_combout\,
	datac => \Add1~24_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X88_Y46_N22
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\busy~7_combout\ & (\LessThan2~3_combout\ & \LessThan7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~7_combout\,
	datac => \LessThan2~3_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X87_Y46_N22
\Selector47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (!\LessThan4~3_combout\ & (!\LessThan2~4_combout\ & ((\clk_count[25]~0_combout\) # (!\LessThan7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[25]~0_combout\,
	datab => \LessThan7~3_combout\,
	datac => \LessThan4~3_combout\,
	datad => \LessThan2~4_combout\,
	combout => \Selector47~3_combout\);

-- Location: LCCOMB_X87_Y46_N14
\LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~5_combout\ = (!\Add1~60_combout\ & (\LessThan7~3_combout\ & ((\LessThan7~4_combout\) # (!\LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => \LessThan8~0_combout\,
	datac => \LessThan7~4_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan7~5_combout\);

-- Location: LCCOMB_X87_Y46_N24
\Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\LessThan7~5_combout\) # ((\e~reg0_q\ & !\LessThan8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~reg0_q\,
	datac => \LessThan7~5_combout\,
	datad => \LessThan8~4_combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X87_Y46_N20
\Selector47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~4_combout\ = (\Add1~62_combout\) # ((\Selector47~2_combout\ & ((\Add1~60_combout\) # (\Selector47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~60_combout\,
	datac => \Selector47~3_combout\,
	datad => \Selector47~2_combout\,
	combout => \Selector47~4_combout\);

-- Location: LCCOMB_X87_Y47_N20
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!\Add1~6_combout\ & !\Add1~4_combout\)) # (!\LessThan4~0_combout\)) # (!\LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~4_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X88_Y46_N30
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\busy~7_combout\ & (\LessThan1~0_combout\ & (\LessThan1~1_combout\ & \LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~7_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X88_Y47_N8
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\Add1~14_combout\ & (((\LessThan6~0_combout\) # (!\Add1~12_combout\)) # (!\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~12_combout\,
	datad => \LessThan6~0_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X88_Y47_N2
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (!\Add1~20_combout\ & (!\Add1~18_combout\ & ((\LessThan5~0_combout\) # (!\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add1~18_combout\,
	datac => \LessThan5~0_combout\,
	datad => \Add1~16_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X88_Y46_N14
\LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (\busy~7_combout\ & (\LessThan7~3_combout\ & ((\LessThan5~2_combout\) # (\LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \busy~7_combout\,
	datac => \LessThan5~1_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X88_Y46_N28
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (!\LessThan2~4_combout\ & ((\LessThan3~1_combout\) # ((\LessThan5~3_combout\ & !\LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \LessThan5~3_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan4~3_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X87_Y46_N16
\Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (!\Add1~60_combout\ & ((\LessThan1~2_combout\) # (\Selector47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~60_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Selector47~0_combout\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X87_Y46_N18
\Selector47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~5_combout\ = (\STATE.001~q\ & (((\Selector47~4_combout\) # (\Selector47~1_combout\)))) # (!\STATE.001~q\ & (\e~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~reg0_q\,
	datab => \Selector47~4_combout\,
	datac => \STATE.001~q\,
	datad => \Selector47~1_combout\,
	combout => \Selector47~5_combout\);

-- Location: LCCOMB_X87_Y46_N10
\Selector47~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~9_combout\ = (\STATE.011~q\ & (\Selector47~8_combout\ & (!clk_count(31)))) # (!\STATE.011~q\ & (((\Selector47~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~8_combout\,
	datab => clk_count(31),
	datac => \STATE.011~q\,
	datad => \Selector47~5_combout\,
	combout => \Selector47~9_combout\);

-- Location: FF_X87_Y46_N11
\e~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector47~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e~reg0_q\);

-- Location: LCCOMB_X86_Y44_N24
\u1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~1_combout\ = (!\u1|state\(2) & (\u1|state\(1) & \u1|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(2),
	datab => \u1|state\(1),
	datad => \u1|state\(0),
	combout => \u1|Mux1~1_combout\);

-- Location: LCCOMB_X79_Y44_N14
\u1|opc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc~2_combout\ = (\reset_n~input_o\ & \data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \data[0]~input_o\,
	combout => \u1|opc~2_combout\);

-- Location: LCCOMB_X83_Y44_N24
\u1|opc[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc[0]~8_combout\ = ((\arrayend~5_combout\ & (!\key0~input_o\ & !\u1|state\(0)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrayend~5_combout\,
	datab => \key0~input_o\,
	datac => \reset_n~input_o\,
	datad => \u1|state\(0),
	combout => \u1|opc[0]~8_combout\);

-- Location: FF_X79_Y44_N15
\u1|opc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|opc~2_combout\,
	ena => \u1|opc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|opc\(0));

-- Location: LCCOMB_X86_Y42_N6
\u1|opc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc~7_combout\ = (\reset_n~input_o\ & \data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \data[1]~input_o\,
	combout => \u1|opc~7_combout\);

-- Location: LCCOMB_X79_Y44_N0
\u1|opc[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc[1]~feeder_combout\ = \u1|opc~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|opc~7_combout\,
	combout => \u1|opc[1]~feeder_combout\);

-- Location: FF_X79_Y44_N1
\u1|opc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|opc[1]~feeder_combout\,
	ena => \u1|opc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|opc\(1));

-- Location: LCCOMB_X86_Y42_N16
\u1|opc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc~3_combout\ = (\data[3]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datad => \reset_n~input_o\,
	combout => \u1|opc~3_combout\);

-- Location: LCCOMB_X79_Y44_N30
\u1|opc[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc[3]~feeder_combout\ = \u1|opc~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|opc~3_combout\,
	combout => \u1|opc[3]~feeder_combout\);

-- Location: FF_X79_Y44_N31
\u1|opc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|opc[3]~feeder_combout\,
	ena => \u1|opc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|opc\(3));

-- Location: LCCOMB_X86_Y43_N28
\u1|opc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc~5_combout\ = (\reset_n~input_o\ & \data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \data[5]~input_o\,
	combout => \u1|opc~5_combout\);

-- Location: LCCOMB_X79_Y44_N28
\u1|opc[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc[5]~feeder_combout\ = \u1|opc~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|opc~5_combout\,
	combout => \u1|opc[5]~feeder_combout\);

-- Location: FF_X79_Y44_N29
\u1|opc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|opc[5]~feeder_combout\,
	ena => \u1|opc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|opc\(5));

-- Location: LCCOMB_X79_Y44_N24
\u1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~1_combout\ = (!\u1|opc\(2) & (\u1|opc\(1) & (\u1|opc\(3) & \u1|opc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|opc\(1),
	datac => \u1|opc\(3),
	datad => \u1|opc\(5),
	combout => \u1|Selector7~1_combout\);

-- Location: LCCOMB_X80_Y44_N20
\u1|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~2_combout\ = (\u1|opc\(0) & (((\u1|res\(0))))) # (!\u1|opc\(0) & ((\u1|Selector7~1_combout\ & (\u1|ShiftRight1~6_combout\)) # (!\u1|Selector7~1_combout\ & ((\u1|res\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~6_combout\,
	datab => \u1|opc\(0),
	datac => \u1|res\(0),
	datad => \u1|Selector7~1_combout\,
	combout => \u1|Selector7~2_combout\);

-- Location: LCCOMB_X86_Y44_N18
\u1|opc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc~1_combout\ = (\data[6]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data[6]~input_o\,
	datad => \reset_n~input_o\,
	combout => \u1|opc~1_combout\);

-- Location: FF_X79_Y44_N21
\u1|opc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~1_combout\,
	sload => VCC,
	ena => \u1|opc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|opc\(6));

-- Location: LCCOMB_X79_Y44_N22
\u1|opc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc~0_combout\ = (\reset_n~input_o\ & \data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \data[7]~input_o\,
	combout => \u1|opc~0_combout\);

-- Location: FF_X79_Y44_N27
\u1|opc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~0_combout\,
	sload => VCC,
	ena => \u1|opc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|opc\(7));

-- Location: LCCOMB_X83_Y44_N14
\u1|op2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|op2[1]~0_combout\ = ((\Equal3~0_combout\ & !\key0~input_o\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Equal3~0_combout\,
	datac => \key0~input_o\,
	combout => \u1|op2[1]~0_combout\);

-- Location: FF_X76_Y43_N1
\u1|op2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~2_combout\,
	sload => VCC,
	ena => \u1|op2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op2\(0));

-- Location: LCCOMB_X83_Y44_N20
\u1|op1[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|op1[7]~0_combout\ = ((\arrayend~5_combout\ & (!\key0~input_o\ & \u1|state\(0)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrayend~5_combout\,
	datab => \key0~input_o\,
	datac => \reset_n~input_o\,
	datad => \u1|state\(0),
	combout => \u1|op1[7]~0_combout\);

-- Location: FF_X75_Y45_N27
\u1|op1[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~2_combout\,
	sload => VCC,
	ena => \u1|op1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op1[0]~_Duplicate_1_q\);

-- Location: FF_X76_Y43_N31
\u1|op2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~7_combout\,
	sload => VCC,
	ena => \u1|op2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op2\(1));

-- Location: LCCOMB_X80_Y44_N26
\u1|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~3_combout\ = (!\u1|op2\(2) & (!\u1|op2\(0) & (\u1|op1[0]~_Duplicate_1_q\ & !\u1|op2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(0),
	datac => \u1|op1[0]~_Duplicate_1_q\,
	datad => \u1|op2\(1),
	combout => \u1|Selector7~3_combout\);

-- Location: LCCOMB_X72_Y42_N28
\u1|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add3~1_combout\ = \u1|op2\(0) $ (\u1|op2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|op2\(0),
	datad => \u1|op2\(1),
	combout => \u1|Add3~1_combout\);

-- Location: IOIBUF_X115_Y15_N8
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: LCCOMB_X86_Y42_N2
\u1|opc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc~4_combout\ = (\data[2]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data[2]~input_o\,
	datad => \reset_n~input_o\,
	combout => \u1|opc~4_combout\);

-- Location: FF_X76_Y43_N23
\u1|op2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~4_combout\,
	sload => VCC,
	ena => \u1|op2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op2\(2));

-- Location: LCCOMB_X73_Y43_N18
\u1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add3~0_combout\ = \u1|op2\(2) $ (((\u1|op2\(0)) # (\u1|op2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(0),
	datac => \u1|op2\(2),
	datad => \u1|op2\(1),
	combout => \u1|Add3~0_combout\);

-- Location: LCCOMB_X86_Y42_N24
\u1|opc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc~6_combout\ = (\data[4]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datad => \reset_n~input_o\,
	combout => \u1|opc~6_combout\);

-- Location: FF_X76_Y43_N13
\u1|op1[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~6_combout\,
	sload => VCC,
	ena => \u1|op1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op1[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X72_Y43_N2
\u1|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~6_combout\ = (\u1|op2\(0) & (\u1|op1[5]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datac => \u1|op2\(0),
	datad => \u1|op1[4]~_Duplicate_1_q\,
	combout => \u1|ShiftRight0~6_combout\);

-- Location: LCCOMB_X72_Y44_N6
\u1|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~5_combout\ = (\u1|ShiftRight0~7_combout\ & ((\u1|op2\(2)) # ((\u1|Add3~0_combout\ & \u1|ShiftRight0~6_combout\)))) # (!\u1|ShiftRight0~7_combout\ & (\u1|Add3~0_combout\ & ((\u1|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight0~7_combout\,
	datab => \u1|Add3~0_combout\,
	datac => \u1|op2\(2),
	datad => \u1|ShiftRight0~6_combout\,
	combout => \u1|Selector7~5_combout\);

-- Location: LCCOMB_X72_Y44_N4
\u1|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~6_combout\ = (\u1|Selector7~3_combout\) # ((\u1|Add3~1_combout\ & (\u1|Selector7~4_combout\)) # (!\u1|Add3~1_combout\ & ((\u1|Selector7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~4_combout\,
	datab => \u1|Selector7~3_combout\,
	datac => \u1|Add3~1_combout\,
	datad => \u1|Selector7~5_combout\,
	combout => \u1|Selector7~6_combout\);

-- Location: LCCOMB_X80_Y44_N24
\u1|Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~7_combout\ = (\u1|Selector7~3_combout\) # ((\u1|opc\(0) & ((\u1|Selector7~6_combout\))) # (!\u1|opc\(0) & (\u1|ShiftRight1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~6_combout\,
	datab => \u1|opc\(0),
	datac => \u1|Selector7~3_combout\,
	datad => \u1|Selector7~6_combout\,
	combout => \u1|Selector7~7_combout\);

-- Location: LCCOMB_X79_Y44_N12
\u1|Selector7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~9_combout\ = (\u1|Selector7~8_combout\ & (\u1|opc\(5) & (\u1|opc\(3) & \u1|Selector7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~8_combout\,
	datab => \u1|opc\(5),
	datac => \u1|opc\(3),
	datad => \u1|Selector7~7_combout\,
	combout => \u1|Selector7~9_combout\);

-- Location: LCCOMB_X79_Y44_N4
\u1|opc[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc[4]~feeder_combout\ = \u1|opc~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|opc~6_combout\,
	combout => \u1|opc[4]~feeder_combout\);

-- Location: FF_X79_Y44_N5
\u1|opc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|opc[4]~feeder_combout\,
	ena => \u1|opc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|opc\(4));

-- Location: LCCOMB_X79_Y44_N2
\u1|Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~8_combout\ = (!\u1|opc\(2) & (!\u1|opc\(1) & \u1|opc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|opc\(1),
	datac => \u1|opc\(4),
	combout => \u1|Selector7~8_combout\);

-- Location: LCCOMB_X79_Y41_N26
\u1|Selector7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~10_combout\ = (\u1|res\(0) & ((\u1|opc\(3) & ((!\u1|opc\(5)) # (!\u1|Selector7~8_combout\))) # (!\u1|opc\(3) & ((\u1|opc\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res\(0),
	datab => \u1|opc\(3),
	datac => \u1|Selector7~8_combout\,
	datad => \u1|opc\(5),
	combout => \u1|Selector7~10_combout\);

-- Location: LCCOMB_X72_Y43_N10
\u1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & (\u1|op2\(0) $ (VCC))) # (!\u1|op1[0]~_Duplicate_1_q\ & (\u1|op2\(0) & VCC))
-- \u1|Add0~1\ = CARRY((\u1|op1[0]~_Duplicate_1_q\ & \u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Add0~0_combout\,
	cout => \u1|Add0~1\);

-- Location: LCCOMB_X80_Y44_N4
\u1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~0_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & (\u1|op2\(0) $ (VCC))) # (!\u1|op1[0]~_Duplicate_1_q\ & ((\u1|op2\(0)) # (GND)))
-- \u1|Add2~1\ = CARRY((\u1|op2\(0)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Add2~0_combout\,
	cout => \u1|Add2~1\);

-- Location: LCCOMB_X79_Y41_N8
\u1|Selector7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~11_combout\ = (\u1|opc\(2) & (\u1|Add0~0_combout\)) # (!\u1|opc\(2) & ((\u1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datac => \u1|Add0~0_combout\,
	datad => \u1|Add2~0_combout\,
	combout => \u1|Selector7~11_combout\);

-- Location: LCCOMB_X74_Y41_N8
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & ((GND) # (!\u1|op2\(0)))) # (!\u1|op1[0]~_Duplicate_1_q\ & (\u1|op2\(0) $ (GND)))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\u1|op1[0]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

-- Location: FF_X75_Y45_N19
\u1|op2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~0_combout\,
	sload => VCC,
	ena => \u1|op2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op2\(7));

-- Location: FF_X75_Y45_N25
\u1|op2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~1_combout\,
	sload => VCC,
	ena => \u1|op2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op2\(6));

-- Location: LCCOMB_X80_Y41_N18
\u1|Mod0|auto_generated|divider|divider|selnose[45]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ = (!\u1|op2\(7) & !\u1|op2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|op2\(7),
	datad => \u1|op2\(6),
	combout => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\);

-- Location: FF_X75_Y45_N1
\u1|op2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~6_combout\,
	sload => VCC,
	ena => \u1|op2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op2\(4));

-- Location: LCCOMB_X75_Y45_N0
\u1|Mod0|auto_generated|divider|divider|selnose[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ = (!\u1|op2\(5) & (!\u1|op2\(7) & (!\u1|op2\(4) & !\u1|op2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(5),
	datab => \u1|op2\(7),
	datac => \u1|op2\(4),
	datad => \u1|op2\(6),
	combout => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\);

-- Location: LCCOMB_X76_Y43_N18
\u1|Mod0|auto_generated|divider|divider|sel[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|sel\(18) = (\u1|op2\(3)) # (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|sel\(18));

-- Location: FF_X76_Y43_N21
\u1|op1[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~0_combout\,
	sload => VCC,
	ena => \u1|op1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op1[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X76_Y43_N26
\u1|Mod0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\u1|op2\(3)) # (!\u1|op2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datad => \u1|op2\(0),
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X76_Y43_N4
\u1|Mod0|auto_generated|divider|divider|StageOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[0]~1_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (((\u1|Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\) # (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\)) # 
-- (!\u1|ShiftRight1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~7_combout\,
	datab => \u1|op1[7]~_Duplicate_1_q\,
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[0]~1_combout\);

-- Location: FF_X76_Y43_N9
\u1|op2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~3_combout\,
	sload => VCC,
	ena => \u1|op2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op2\(3));

-- Location: LCCOMB_X76_Y43_N8
\u1|Mod0|auto_generated|divider|divider|selnose[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|selnose[9]~1_combout\ = (\u1|op2\(3)) # (\u1|op2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|op2\(3),
	datad => \u1|op2\(2),
	combout => \u1|Mod0|auto_generated|divider|divider|selnose[9]~1_combout\);

-- Location: LCCOMB_X76_Y43_N6
\u1|Mod0|auto_generated|divider|divider|selnose[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|selnose[9]~2_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[9]~1_combout\) # (((!\u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\ & \u1|op2\(1))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datab => \u1|op2\(1),
	datac => \u1|Mod0|auto_generated|divider|divider|selnose[9]~1_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|selnose[9]~2_combout\);

-- Location: LCCOMB_X76_Y43_N28
\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[0]~1_combout\ & ((\u1|Mod0|auto_generated|divider|divider|selnose[9]~2_combout\) # 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\ $ (\u1|op2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datab => \u1|op2\(1),
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[0]~1_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[9]~2_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\);

-- Location: FF_X76_Y43_N19
\u1|op1[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~1_combout\,
	sload => VCC,
	ena => \u1|op1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op1[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X76_Y43_N10
\u1|Mod0|auto_generated|divider|divider|selnose[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|selnose[9]~3_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[9]~2_combout\) # ((!\u1|Mod0|auto_generated|divider|divider|StageOut[0]~1_combout\ & ((\u1|op2\(1)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datab => \u1|op2\(1),
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[0]~1_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[9]~2_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|selnose[9]~3_combout\);

-- Location: LCCOMB_X76_Y43_N16
\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ = \u1|op1[6]~_Duplicate_1_q\ $ (((\u1|op2\(0) & !\u1|Mod0|auto_generated|divider|divider|selnose[9]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(0),
	datac => \u1|op1[6]~_Duplicate_1_q\,
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[9]~3_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\);

-- Location: LCCOMB_X75_Y43_N28
\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\u1|op2\(2) $ (\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\ $ (\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\u1|op2\(2) & (\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\u1|op2\(2) & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X75_Y43_N30
\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X75_Y43_N0
\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\u1|Mod0|auto_generated|divider|divider|sel\(18) & (\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|sel\(18),
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X75_Y43_N18
\u1|Mod0|auto_generated|divider|divider|StageOut[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\u1|Mod0|auto_generated|divider|divider|sel\(18) & (((\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\)))) # (!\u1|Mod0|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|sel\(18),
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X75_Y43_N4
\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\u1|op1[4]~_Duplicate_1_q\ & ((GND) # (!\u1|op2\(0)))) # (!\u1|op1[4]~_Duplicate_1_q\ & (\u1|op2\(0) $ (GND)))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\u1|op1[4]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X75_Y43_N12
\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X75_Y43_N16
\u1|Mod0|auto_generated|divider|divider|StageOut[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & (((\u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\);

-- Location: LCCOMB_X75_Y43_N14
\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|op1[4]~_Duplicate_1_q\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))) # (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & 
-- (\u1|op1[4]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\);

-- Location: LCCOMB_X74_Y43_N18
\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\u1|op1[3]~_Duplicate_1_q\ & ((GND) # (!\u1|op2\(0)))) # (!\u1|op1[3]~_Duplicate_1_q\ & (\u1|op2\(0) $ (GND)))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[3]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X74_Y43_N20
\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\u1|op2\(1) & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\))) # (!\u1|op2\(1) & 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X74_Y43_N22
\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\ $ (\u1|op2\(2) $ (\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\ & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\u1|op2\(2)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\ & (!\u1|op2\(2) & !\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X74_Y43_N24
\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\u1|op2\(3) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\u1|op2\(3) & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\u1|op2\(3) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\u1|op2\(3) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\ & (\u1|op2\(3) & !\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\u1|op2\(3)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datab => \u1|op2\(3),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X74_Y43_N26
\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\u1|op2\(4) $ (\u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\ $ (\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\u1|op2\(4) & (\u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)) # (!\u1|op2\(4) & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X74_Y43_N28
\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X74_Y43_N0
\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\);

-- Location: FF_X75_Y45_N3
\u1|op2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~5_combout\,
	sload => VCC,
	ena => \u1|op2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op2\(5));

-- Location: LCCOMB_X76_Y45_N16
\u1|Mod0|auto_generated|divider|divider|selnose[36]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ = (!\u1|op2\(6) & (!\u1|op2\(7) & !\u1|op2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(6),
	datac => \u1|op2\(7),
	datad => \u1|op2\(5),
	combout => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\);

-- Location: LCCOMB_X74_Y43_N16
\u1|Mod0|auto_generated|divider|divider|StageOut[35]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LCCOMB_X73_Y43_N6
\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\u1|op1[3]~_Duplicate_1_q\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))) # (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & 
-- (\u1|op1[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[3]~_Duplicate_1_q\,
	datab => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\);

-- Location: LCCOMB_X74_Y43_N2
\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\u1|op1[2]~_Duplicate_1_q\ & ((GND) # (!\u1|op2\(0)))) # (!\u1|op1[2]~_Duplicate_1_q\ & (\u1|op2\(0) $ (GND)))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\u1|op1[2]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X74_Y43_N4
\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))))) # (!\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\u1|op2\(1) & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\))) # (!\u1|op2\(1) & 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X74_Y43_N6
\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\ $ (\u1|op2\(2) $ (\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\ & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\u1|op2\(2)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\ & (!\u1|op2\(2) & !\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X74_Y43_N8
\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\u1|op2\(3) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\u1|op2\(3) & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\u1|op2\(3) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\u1|op2\(3) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\ & (\u1|op2\(3) & !\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\u1|op2\(3)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datab => \u1|op2\(3),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X74_Y43_N12
\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\u1|op2\(5) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))))) # (!\u1|op2\(5) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\u1|op2\(5) & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\))) # (!\u1|op2\(5) & 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(5),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X74_Y43_N14
\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X73_Y41_N4
\u1|Mod0|auto_generated|divider|divider|StageOut[45]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\);

-- Location: LCCOMB_X74_Y43_N30
\u1|Mod0|auto_generated|divider|divider|StageOut[34]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\);

-- Location: LCCOMB_X73_Y41_N24
\u1|Mod0|auto_generated|divider|divider|StageOut[43]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (((\u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\);

-- Location: FF_X74_Y45_N17
\u1|op1[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~4_combout\,
	sload => VCC,
	ena => \u1|op1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op1[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X73_Y41_N28
\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|op1[2]~_Duplicate_1_q\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))) # (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & 
-- (\u1|op1[2]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\);

-- Location: LCCOMB_X73_Y41_N6
\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\u1|op1[1]~_Duplicate_1_q\ & ((GND) # (!\u1|op2\(0)))) # (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|op2\(0) $ (GND)))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X73_Y41_N8
\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))))) # (!\u1|op2\(1) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\u1|op2\(1) & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\))) # (!\u1|op2\(1) & 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X73_Y41_N14
\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\u1|op2\(4) $ (\u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\ $ (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\u1|op2\(4) & (\u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # (!\u1|op2\(4) & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X73_Y41_N18
\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\u1|op2\(6) $ (\u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\ $ (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\u1|op2\(6) & (\u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)) # (!\u1|op2\(6) & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(6),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X73_Y41_N20
\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X73_Y41_N30
\u1|Mod0|auto_generated|divider|divider|StageOut[54]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ = (\u1|op2\(7) & (((\u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\)))) # (!\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\);

-- Location: LCCOMB_X74_Y41_N4
\u1|Mod0|auto_generated|divider|divider|StageOut[41]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\);

-- Location: LCCOMB_X74_Y41_N28
\u1|Mod0|auto_generated|divider|divider|StageOut[50]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\ = (\u1|op2\(7) & (((\u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\)))) # (!\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datab => \u1|op2\(7),
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\);

-- Location: LCCOMB_X74_Y41_N12
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = ((\u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\ $ (\u1|op2\(2) $ (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\ & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\) # (!\u1|op2\(2)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\ & (!\u1|op2\(2) & !\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X74_Y41_N14
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\u1|op2\(3) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND))))) # (!\u1|op2\(3) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & VCC)) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((\u1|op2\(3) & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\))) # (!\u1|op2\(3) & 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X74_Y41_N16
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = ((\u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\ $ (\u1|op2\(4) $ (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\ & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\) # (!\u1|op2\(4)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\ & (!\u1|op2\(4) & !\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\,
	datab => \u1|op2\(4),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\);

-- Location: LCCOMB_X74_Y41_N18
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = (\u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\ & ((\u1|op2\(5) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # (!\u1|op2\(5) & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ & VCC)))) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\ & ((\u1|op2\(5) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (GND))) # 
-- (!\u1|op2\(5) & (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\ & (\u1|op2\(5) & !\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\ & ((\u1|op2\(5)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\,
	datab => \u1|op2\(5),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\);

-- Location: LCCOMB_X74_Y41_N20
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ = ((\u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\ $ (\u1|op2\(6) $ (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))) # (GND)
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ = CARRY((\u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\ & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\) # (!\u1|op2\(6)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\ & (!\u1|op2\(6) & !\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\,
	datab => \u1|op2\(6),
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\);

-- Location: LCCOMB_X74_Y41_N22
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ = (\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # (GND))))) # (!\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ & VCC)) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ & (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\))))
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ = CARRY((\u1|op2\(7) & ((!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # (!\u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\))) # (!\u1|op2\(7) & 
-- (!\u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ & !\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datad => VCC,
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	cout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\);

-- Location: LCCOMB_X74_Y41_N24
\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\,
	combout => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X74_Y41_N2
\u1|Selector7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~12_combout\ = (\u1|opc\(2) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))) # (!\u1|opc\(2) & (((\u1|op1[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => \u1|op1[0]~_Duplicate_1_q\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Selector7~12_combout\);

-- Location: LCCOMB_X79_Y41_N30
\u1|Selector7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~13_combout\ = (\u1|opc\(2) & ((\u1|opc\(4) & (\u1|Selector7~11_combout\)) # (!\u1|opc\(4) & ((\u1|Selector7~12_combout\))))) # (!\u1|opc\(2) & ((\u1|opc\(4) & ((!\u1|Selector7~12_combout\))) # (!\u1|opc\(4) & (\u1|Selector7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|opc\(4),
	datac => \u1|Selector7~11_combout\,
	datad => \u1|Selector7~12_combout\,
	combout => \u1|Selector7~13_combout\);

-- Location: LCCOMB_X76_Y41_N20
\u1|Selector7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~20_combout\ = (\u1|op2\(0) & ((\u1|opc\(0)) # ((\u1|op1[0]~_Duplicate_1_q\ & \u1|opc\(4))))) # (!\u1|op2\(0) & (\u1|opc\(0) & ((\u1|op1[0]~_Duplicate_1_q\) # (!\u1|opc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datac => \u1|opc\(0),
	datad => \u1|opc\(4),
	combout => \u1|Selector7~20_combout\);

-- Location: LCCOMB_X72_Y42_N10
\u1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~0_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & ((GND) # (!\u1|op2\(0)))) # (!\u1|op1[0]~_Duplicate_1_q\ & (\u1|op2\(0) $ (GND)))
-- \u1|Add1~1\ = CARRY((\u1|op1[0]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => VCC,
	combout => \u1|Add1~0_combout\,
	cout => \u1|Add1~1\);

-- Location: LCCOMB_X76_Y41_N8
\u1|Selector7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~22_combout\ = (\u1|opc\(4) & (\u1|opc\(2) $ ((\u1|Selector7~20_combout\)))) # (!\u1|opc\(4) & (!\u1|opc\(2) & ((\u1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|Selector7~20_combout\,
	datac => \u1|Add1~0_combout\,
	datad => \u1|opc\(4),
	combout => \u1|Selector7~22_combout\);

-- Location: LCCOMB_X76_Y41_N2
\u1|Selector7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~17_combout\ = (\u1|opc\(1) & (((\u1|opc\(0))))) # (!\u1|opc\(1) & ((\u1|opc\(4) & (\u1|Selector7~16_combout\)) # (!\u1|opc\(4) & ((!\u1|opc\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~16_combout\,
	datab => \u1|opc\(0),
	datac => \u1|opc\(1),
	datad => \u1|opc\(4),
	combout => \u1|Selector7~17_combout\);

-- Location: LCCOMB_X76_Y41_N18
\u1|Selector7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~23_combout\ = (\u1|Selector7~17_combout\ & ((\u1|Add0~0_combout\) # (\u1|Selector7~21_combout\ $ (\u1|Selector7~22_combout\)))) # (!\u1|Selector7~17_combout\ & (!\u1|Selector7~21_combout\ & ((\u1|Selector7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~21_combout\,
	datab => \u1|Add0~0_combout\,
	datac => \u1|Selector7~22_combout\,
	datad => \u1|Selector7~17_combout\,
	combout => \u1|Selector7~23_combout\);

-- Location: FF_X81_Y43_N19
\u1|op1[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~5_combout\,
	sload => VCC,
	ena => \u1|op1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op1[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X81_Y43_N14
\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\u1|op2\(2) $ (\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\ $ (\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\u1|op2\(2) & (\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\u1|op2\(2) & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\) # (!\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X81_Y43_N16
\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X81_Y43_N24
\u1|Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\u1|Mod0|auto_generated|divider|divider|sel\(18) & (\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|sel\(18),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X81_Y43_N18
\u1|Div0|auto_generated|divider|divider|StageOut[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ = (\u1|Mod0|auto_generated|divider|divider|sel\(18) & (((\u1|op1[5]~_Duplicate_1_q\)))) # (!\u1|Mod0|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\u1|op1[5]~_Duplicate_1_q\))) # (!\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|sel\(18),
	datac => \u1|op1[5]~_Duplicate_1_q\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: LCCOMB_X81_Y43_N0
\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\u1|op2\(0) & (\u1|op1[4]~_Duplicate_1_q\ $ (VCC))) # (!\u1|op2\(0) & ((\u1|op1[4]~_Duplicate_1_q\) # (GND)))
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\u1|op1[4]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[4]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X81_Y43_N4
\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ $ (\u1|op2\(2) $ (\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ & ((!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\u1|op2\(2)))) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ & (!\u1|op2\(2) & !\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X81_Y43_N6
\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\u1|op2\(3) & ((\u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\u1|op2\(3) & ((\u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\u1|op2\(3) & ((!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\))) # (!\u1|op2\(3) & 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X81_Y43_N8
\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X81_Y43_N22
\u1|Div0|auto_generated|divider|divider|StageOut[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & (\u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\);

-- Location: LCCOMB_X81_Y43_N20
\u1|Div0|auto_generated|divider|divider|StageOut[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & (\u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\);

-- Location: LCCOMB_X81_Y43_N26
\u1|Div0|auto_generated|divider|divider|StageOut[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ = (\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|op1[4]~_Duplicate_1_q\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\ & (\u1|op1[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[27]~0_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\);

-- Location: FF_X75_Y45_N29
\u1|op1[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~3_combout\,
	sload => VCC,
	ena => \u1|op1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op1[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X82_Y41_N8
\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\u1|op2\(4) $ (\u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ $ (\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\u1|op2\(4) & (\u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)) # (!\u1|op2\(4) & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\) # (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X82_Y41_N10
\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X82_Y41_N28
\u1|Div0|auto_generated|divider|divider|StageOut[35]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\))) # (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (((\u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\);

-- Location: LCCOMB_X82_Y41_N16
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ $ (\u1|op2\(2) $ (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ & ((!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\u1|op2\(2)))) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ & (!\u1|op2\(2) & !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X82_Y41_N18
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ & ((\u1|op2\(3) & (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\u1|op2\(3) & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # (!\u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ & ((\u1|op2\(3) & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\u1|op2\(3) & (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ & (\u1|op2\(3) & !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ & ((\u1|op2\(3)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\,
	datab => \u1|op2\(3),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X82_Y41_N20
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\u1|op2\(4) $ (\u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ $ (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\u1|op2\(4) & (\u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\u1|op2\(4) & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X82_Y41_N22
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & ((\u1|op2\(5) & (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\u1|op2\(5) & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) # (!\u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & ((\u1|op2\(5) & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) # 
-- (!\u1|op2\(5) & (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & (\u1|op2\(5) & !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & ((\u1|op2\(5)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\,
	datab => \u1|op2\(5),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X82_Y41_N26
\u1|Div0|auto_generated|divider|divider|StageOut[36]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (\u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\);

-- Location: LCCOMB_X82_Y41_N24
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X81_Y41_N10
\u1|Div0|auto_generated|divider|divider|StageOut[45]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\))) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (((\u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datab => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|StageOut[36]~7_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\);

-- Location: LCCOMB_X81_Y41_N0
\u1|Div0|auto_generated|divider|divider|StageOut[44]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (\u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[35]~8_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\);

-- Location: LCCOMB_X81_Y41_N14
\u1|Div0|auto_generated|divider|divider|StageOut[43]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (\u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[34]~9_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[43]~14_combout\);

-- Location: LCCOMB_X83_Y41_N20
\u1|Div0|auto_generated|divider|divider|StageOut[33]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\))) # (!\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (((\u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|StageOut[24]~6_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\);

-- Location: LCCOMB_X81_Y41_N4
\u1|Div0|auto_generated|divider|divider|StageOut[42]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\))) # (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\)))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (((\u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datab => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|StageOut[33]~10_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\);

-- Location: LCCOMB_X81_Y41_N18
\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\u1|op2\(1) & (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\u1|op2\(1) & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # (!\u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\u1|op2\(1) & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\u1|op2\(1) & (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ & (\u1|op2\(1) & !\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\u1|op2\(1)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\,
	datab => \u1|op2\(1),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X81_Y41_N22
\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\u1|op2\(3) & ((\u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))))) # (!\u1|op2\(3) & ((\u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)) # (!\u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\u1|op2\(3) & ((!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (!\u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\))) # (!\u1|op2\(3) & 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X81_Y41_N28
\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ $ (\u1|op2\(6) $ (\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ & ((!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\) # (!\u1|op2\(6)))) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ & (!\u1|op2\(6) & !\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\,
	datab => \u1|op2\(6),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X81_Y41_N30
\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X80_Y41_N20
\u1|Div0|auto_generated|divider|divider|StageOut[54]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[54]~18_combout\ = (\u1|op2\(7) & (\u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\)) # (!\u1|op2\(7) & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[45]~12_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[54]~18_combout\);

-- Location: LCCOMB_X80_Y41_N28
\u1|Div0|auto_generated|divider|divider|StageOut[51]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[51]~21_combout\ = (\u1|op2\(7) & (\u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\)) # (!\u1|op2\(7) & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[42]~15_combout\,
	datab => \u1|op2\(7),
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[51]~21_combout\);

-- Location: LCCOMB_X81_Y41_N12
\u1|Div0|auto_generated|divider|divider|StageOut[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|op1[2]~_Duplicate_1_q\))) # 
-- (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\)))) # (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & 
-- (((\u1|op1[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datac => \u1|op1[2]~_Duplicate_1_q\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\);

-- Location: LCCOMB_X80_Y41_N24
\u1|Div0|auto_generated|divider|divider|StageOut[49]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ = (\u1|op2\(7) & (\u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\)) # (!\u1|op2\(7) & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[40]~17_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\);

-- Location: LCCOMB_X80_Y41_N0
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\u1|op1[0]~_Duplicate_1_q\) # (!\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X80_Y41_N2
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[48]~24_combout\ & (\u1|op2\(1) & !\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[48]~24_combout\ & ((\u1|op2\(1)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[48]~24_combout\,
	datab => \u1|op2\(1),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X80_Y41_N4
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\u1|op2\(2) & (\u1|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)) # (!\u1|op2\(2) & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\) # (!\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X80_Y41_N6
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[50]~22_combout\ & (\u1|op2\(3) & !\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[50]~22_combout\ & ((\u1|op2\(3)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[50]~22_combout\,
	datab => \u1|op2\(3),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X80_Y41_N8
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\u1|op2\(4) & (\u1|Div0|auto_generated|divider|divider|StageOut[51]~21_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)) # (!\u1|op2\(4) & 
-- ((\u1|Div0|auto_generated|divider|divider|StageOut[51]~21_combout\) # (!\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[51]~21_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X80_Y41_N10
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[52]~20_combout\ & (\u1|op2\(5) & !\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[52]~20_combout\ & ((\u1|op2\(5)) # (!\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[52]~20_combout\,
	datab => \u1|op2\(5),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X80_Y41_N12
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\u1|Div0|auto_generated|divider|divider|StageOut[53]~19_combout\ & ((!\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\) # (!\u1|op2\(6)))) # 
-- (!\u1|Div0|auto_generated|divider|divider|StageOut[53]~19_combout\ & (!\u1|op2\(6) & !\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|StageOut[53]~19_combout\,
	datab => \u1|op2\(6),
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X80_Y41_N14
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\u1|op2\(7) & ((!\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\) # (!\u1|Div0|auto_generated|divider|divider|StageOut[54]~18_combout\))) # 
-- (!\u1|op2\(7) & (!\u1|Div0|auto_generated|divider|divider|StageOut[54]~18_combout\ & !\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Div0|auto_generated|divider|divider|StageOut[54]~18_combout\,
	datad => VCC,
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X80_Y41_N16
\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X79_Y41_N24
\u1|Selector7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~18_combout\ = (\u1|opc\(2) & ((!\u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\))) # (!\u1|opc\(2) & (\u1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datac => \u1|Add0~0_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Selector7~18_combout\);

-- Location: LCCOMB_X79_Y41_N14
\u1|Selector7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~19_combout\ = (\u1|opc\(0)) # ((\u1|Selector7~17_combout\ & ((\u1|opc\(4)) # (\u1|Selector7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(0),
	datab => \u1|opc\(4),
	datac => \u1|Selector7~17_combout\,
	datad => \u1|Selector7~18_combout\,
	combout => \u1|Selector7~19_combout\);

-- Location: LCCOMB_X76_Y43_N0
\u1|Mod1|auto_generated|divider|divider|selnose[45]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ = (!\u1|op1[6]~_Duplicate_1_q\ & !\u1|op1[7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datad => \u1|op1[7]~_Duplicate_1_q\,
	combout => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\);

-- Location: LCCOMB_X76_Y43_N14
\u1|Mod1|auto_generated|divider|divider|selnose[27]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ = (!\u1|op1[4]~_Duplicate_1_q\ & (!\u1|op1[6]~_Duplicate_1_q\ & (!\u1|op1[7]~_Duplicate_1_q\ & !\u1|op1[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|op1[6]~_Duplicate_1_q\,
	datac => \u1|op1[7]~_Duplicate_1_q\,
	datad => \u1|op1[5]~_Duplicate_1_q\,
	combout => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\);

-- Location: LCCOMB_X75_Y45_N24
\u1|Mod1|auto_generated|divider|divider|sel[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|sel\(18) = (\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|sel\(18));

-- Location: LCCOMB_X75_Y45_N2
\u1|Mod1|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\u1|op2\(6)) # (!\u1|op1[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datad => \u1|op2\(6),
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X75_Y45_N26
\u1|Mod1|auto_generated|divider|divider|selnose[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|selnose[0]~3_combout\ = (!\u1|op1[2]~_Duplicate_1_q\ & (!\u1|op1[3]~_Duplicate_1_q\ & \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|selnose[0]~3_combout\);

-- Location: FF_X75_Y45_N17
\u1|op1[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|opc~7_combout\,
	sload => VCC,
	ena => \u1|op1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|op1[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X75_Y45_N16
\u1|Mod1|auto_generated|divider|divider|StageOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[0]~1_combout\ = (\u1|op2\(7) & ((\u1|Mod1|auto_generated|divider|divider|StageOut[0]~0_combout\) # ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datab => \u1|op2\(7),
	datac => \u1|op1[1]~_Duplicate_1_q\,
	datad => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[0]~1_combout\);

-- Location: LCCOMB_X75_Y45_N22
\u1|Mod1|auto_generated|divider|divider|StageOut[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[0]~1_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_1|_~0_combout\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|selnose[0]~3_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|StageOut[0]~1_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[9]~2_combout\);

-- Location: LCCOMB_X75_Y45_N28
\u1|Mod1|auto_generated|divider|divider|selnose[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|selnose[9]~4_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[9]~7_combout\) # ((\u1|op1[2]~_Duplicate_1_q\) # ((\u1|op1[3]~_Duplicate_1_q\) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[9]~7_combout\,
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datac => \u1|op1[3]~_Duplicate_1_q\,
	datad => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|selnose[9]~4_combout\);

-- Location: LCCOMB_X75_Y45_N12
\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ = \u1|op2\(6) $ (((\u1|op1[0]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|selnose[9]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(6),
	datac => \u1|op1[0]~_Duplicate_1_q\,
	datad => \u1|Mod1|auto_generated|divider|divider|selnose[9]~4_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\);

-- Location: LCCOMB_X75_Y42_N16
\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\u1|op2\(5) & ((GND) # (!\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(5) & (\u1|op1[0]~_Duplicate_1_q\ $ (GND)))
-- \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\u1|op2\(5)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(5),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X75_Y42_N18
\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\u1|op1[1]~_Duplicate_1_q\ & ((!\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\))) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X75_Y42_N22
\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X75_Y42_N0
\u1|Div1|auto_generated|divider|divider|StageOut[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\ = (\u1|Mod1|auto_generated|divider|divider|sel\(18) & (\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|sel\(18),
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LCCOMB_X75_Y42_N14
\u1|Div1|auto_generated|divider|divider|StageOut[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\ = (\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|op2\(5))) # (!\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|sel\(18) & (\u1|op2\(5))) # (!\u1|Mod1|auto_generated|divider|divider|sel\(18) & ((\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(5),
	datab => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|sel\(18),
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: LCCOMB_X75_Y42_N4
\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\u1|op1[1]~_Duplicate_1_q\ & ((!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\))) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X75_Y42_N8
\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ & (\u1|op1[3]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X75_Y42_N10
\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X75_Y42_N24
\u1|Div1|auto_generated|divider|divider|StageOut[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\);

-- Location: LCCOMB_X76_Y42_N8
\u1|Div1|auto_generated|divider|divider|StageOut[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\))) # (!\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & (((\u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\);

-- Location: LCCOMB_X76_Y42_N16
\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\u1|op2\(3) & ((GND) # (!\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(3) & (\u1|op1[0]~_Duplicate_1_q\ $ (GND)))
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\u1|op2\(3)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X76_Y42_N20
\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # 
-- (!\u1|op1[2]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X76_Y42_N22
\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\ & (\u1|op1[3]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X76_Y42_N24
\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\u1|op1[4]~_Duplicate_1_q\ $ (\u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\u1|op1[4]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)) # 
-- (!\u1|op1[4]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X76_Y42_N26
\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X76_Y42_N28
\u1|Div1|auto_generated|divider|divider|StageOut[36]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\);

-- Location: LCCOMB_X76_Y43_N12
\u1|Mod1|auto_generated|divider|divider|selnose[36]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ = (!\u1|op1[6]~_Duplicate_1_q\ & (!\u1|op1[7]~_Duplicate_1_q\ & !\u1|op1[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|op1[7]~_Duplicate_1_q\,
	datad => \u1|op1[5]~_Duplicate_1_q\,
	combout => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\);

-- Location: LCCOMB_X76_Y42_N0
\u1|Div1|auto_generated|divider|divider|StageOut[34]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[25]~5_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\);

-- Location: LCCOMB_X81_Y42_N8
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\ $ (\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\ & ((!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\u1|op1[2]~_Duplicate_1_q\))) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\ & (!\u1|op1[2]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\,
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X81_Y42_N12
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\ $ (\u1|op1[4]~_Duplicate_1_q\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\ & ((!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\) # (!\u1|op1[4]~_Duplicate_1_q\))) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\ & (!\u1|op1[4]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\,
	datab => \u1|op1[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X81_Y42_N14
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\u1|op1[5]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))))) # (!\u1|op1[5]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)) # (!\u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\u1|op1[5]~_Duplicate_1_q\ & ((!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (!\u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\))) # 
-- (!\u1|op1[5]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X81_Y42_N16
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X81_Y42_N24
\u1|Div1|auto_generated|divider|divider|StageOut[45]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[36]~7_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\);

-- Location: LCCOMB_X76_Y42_N6
\u1|Div1|auto_generated|divider|divider|StageOut[35]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\);

-- Location: LCCOMB_X80_Y42_N28
\u1|Div1|auto_generated|divider|divider|StageOut[44]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[35]~8_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\);

-- Location: LCCOMB_X81_Y42_N18
\u1|Div1|auto_generated|divider|divider|StageOut[43]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\))) # (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (((\u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|StageOut[34]~9_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[43]~14_combout\);

-- Location: LCCOMB_X76_Y42_N12
\u1|Div1|auto_generated|divider|divider|StageOut[32]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\u1|op2\(3))) # 
-- (!\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))) # (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|op2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\);

-- Location: LCCOMB_X81_Y42_N28
\u1|Div1|auto_generated|divider|divider|StageOut[41]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\))) # (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (((\u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|StageOut[32]~11_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[41]~16_combout\);

-- Location: LCCOMB_X80_Y42_N10
\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # (!\u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\ & (\u1|op1[1]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\,
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X80_Y42_N14
\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # (!\u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\ & (\u1|op1[3]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\ & ((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X80_Y42_N18
\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\u1|op1[5]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # (!\u1|op1[5]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # (!\u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\ & (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\u1|op1[5]~_Duplicate_1_q\ & ((!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (!\u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\))) # 
-- (!\u1|op1[5]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X80_Y42_N20
\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\u1|op1[6]~_Duplicate_1_q\ $ (\u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\ $ (\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # 
-- (GND)
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\u1|op1[6]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)) # 
-- (!\u1|op1[6]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X80_Y42_N22
\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X79_Y42_N4
\u1|Div1|auto_generated|divider|divider|StageOut[54]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[54]~18_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\)) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[45]~12_combout\,
	datab => \u1|op1[7]~_Duplicate_1_q\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[54]~18_combout\);

-- Location: LCCOMB_X80_Y42_N24
\u1|Div1|auto_generated|divider|divider|StageOut[53]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[53]~19_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\)) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[44]~13_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[53]~19_combout\);

-- Location: LCCOMB_X81_Y42_N2
\u1|Div1|auto_generated|divider|divider|StageOut[42]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[33]~10_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\);

-- Location: LCCOMB_X79_Y42_N8
\u1|Div1|auto_generated|divider|divider|StageOut[51]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[51]~21_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\)) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[42]~15_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[51]~21_combout\);

-- Location: LCCOMB_X80_Y42_N0
\u1|Div1|auto_generated|divider|divider|StageOut[49]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[49]~23_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\)) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\)) # (!\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\,
	datab => \u1|op1[7]~_Duplicate_1_q\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[49]~23_combout\);

-- Location: LCCOMB_X79_Y42_N12
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\u1|op2\(0)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X79_Y42_N14
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[48]~24_combout\ & (\u1|op1[1]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[48]~24_combout\ & ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[48]~24_combout\,
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X79_Y42_N16
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[49]~23_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)) # 
-- (!\u1|op1[2]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[49]~23_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[49]~23_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X79_Y42_N18
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[50]~22_combout\ & (\u1|op1[3]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[50]~22_combout\ & ((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[50]~22_combout\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X79_Y42_N20
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\u1|op1[4]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[51]~21_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)) # 
-- (!\u1|op1[4]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[51]~21_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[51]~21_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X79_Y42_N22
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\u1|Div1|auto_generated|divider|divider|StageOut[52]~20_combout\ & (\u1|op1[5]~_Duplicate_1_q\ & !\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[52]~20_combout\ & ((\u1|op1[5]~_Duplicate_1_q\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|StageOut[52]~20_combout\,
	datab => \u1|op1[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X79_Y42_N24
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\u1|op1[6]~_Duplicate_1_q\ & (\u1|Div1|auto_generated|divider|divider|StageOut[53]~19_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)) 
-- # (!\u1|op1[6]~_Duplicate_1_q\ & ((\u1|Div1|auto_generated|divider|divider|StageOut[53]~19_combout\) # (!\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[53]~19_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X79_Y42_N26
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\u1|op1[7]~_Duplicate_1_q\ & ((!\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\) # 
-- (!\u1|Div1|auto_generated|divider|divider|StageOut[54]~18_combout\))) # (!\u1|op1[7]~_Duplicate_1_q\ & (!\u1|Div1|auto_generated|divider|divider|StageOut[54]~18_combout\ & !\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Div1|auto_generated|divider|divider|StageOut[54]~18_combout\,
	datad => VCC,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X79_Y42_N28
\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X79_Y41_N20
\u1|Selector7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~24_combout\ = (\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\u1|Selector7~23_combout\ & \u1|Selector7~19_combout\)))) # (!\u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\u1|Selector7~15_combout\ & ((\u1|Selector7~19_combout\))) # (!\u1|Selector7~15_combout\ & (\u1|Selector7~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~15_combout\,
	datab => \u1|Selector7~23_combout\,
	datac => \u1|Selector7~19_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Selector7~24_combout\);

-- Location: LCCOMB_X79_Y41_N12
\u1|Selector7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~28_combout\ = (\u1|opc\(1) & ((\u1|Selector7~24_combout\ & (\u1|Selector7~27_combout\)) # (!\u1|Selector7~24_combout\ & ((\u1|Selector7~13_combout\))))) # (!\u1|opc\(1) & (((\u1|Selector7~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~27_combout\,
	datab => \u1|opc\(1),
	datac => \u1|Selector7~13_combout\,
	datad => \u1|Selector7~24_combout\,
	combout => \u1|Selector7~28_combout\);

-- Location: LCCOMB_X79_Y41_N10
\u1|Selector7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~29_combout\ = (!\u1|opc\(5) & (!\u1|opc\(3) & \u1|Selector7~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|opc\(5),
	datac => \u1|opc\(3),
	datad => \u1|Selector7~28_combout\,
	combout => \u1|Selector7~29_combout\);

-- Location: LCCOMB_X79_Y41_N28
\u1|Selector7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~30_combout\ = (\u1|Selector7~9_combout\) # ((\u1|Selector7~10_combout\) # (\u1|Selector7~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Selector7~9_combout\,
	datac => \u1|Selector7~10_combout\,
	datad => \u1|Selector7~29_combout\,
	combout => \u1|Selector7~30_combout\);

-- Location: LCCOMB_X79_Y41_N2
\u1|Selector7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~31_combout\ = (\u1|opc\(7) & ((\u1|res\(0)) # ((\u1|opc\(6))))) # (!\u1|opc\(7) & (((!\u1|opc\(6) & \u1|Selector7~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res\(0),
	datab => \u1|opc\(7),
	datac => \u1|opc\(6),
	datad => \u1|Selector7~30_combout\,
	combout => \u1|Selector7~31_combout\);

-- Location: LCCOMB_X79_Y41_N0
\u1|Selector7~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~33_combout\ = (\u1|opc\(6) & ((\u1|Selector7~31_combout\ & (\u1|Selector7~32_combout\)) # (!\u1|Selector7~31_combout\ & ((\u1|Selector7~2_combout\))))) # (!\u1|opc\(6) & (((\u1|Selector7~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~32_combout\,
	datab => \u1|Selector7~2_combout\,
	datac => \u1|opc\(6),
	datad => \u1|Selector7~31_combout\,
	combout => \u1|Selector7~33_combout\);

-- Location: LCCOMB_X79_Y41_N16
\u1|Selector7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~34_combout\ = (\u1|Mux1~1_combout\ & ((\u1|Selector7~33_combout\))) # (!\u1|Mux1~1_combout\ & (\u1|res\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mux1~1_combout\,
	datac => \u1|res\(0),
	datad => \u1|Selector7~33_combout\,
	combout => \u1|Selector7~34_combout\);

-- Location: FF_X79_Y41_N17
\u1|res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|Selector7~34_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|res\(0));

-- Location: LCCOMB_X87_Y44_N26
\u1|ans[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[0]~1_combout\ = !\u1|res\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|res\(0),
	combout => \u1|ans[0]~1_combout\);

-- Location: LCCOMB_X89_Y44_N26
\u1|ans[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[0]~0_combout\ = (!\u1|state\(1) & (\u1|state\(2) & (\reset_n~input_o\ & !\u1|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(1),
	datab => \u1|state\(2),
	datac => \reset_n~input_o\,
	datad => \u1|state\(0),
	combout => \u1|ans[0]~0_combout\);

-- Location: FF_X87_Y44_N27
\u1|ans[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|ans[0]~1_combout\,
	ena => \u1|ans[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ans\(0));

-- Location: IOIBUF_X115_Y13_N8
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X86_Y44_N4
\lcd_data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data~12_combout\ = (\data[3]~input_o\ & ((\u1|state\(0)) # ((\u1|state\(1)) # (!\u1|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(0),
	datab => \data[3]~input_o\,
	datac => \u1|state\(1),
	datad => \u1|state\(2),
	combout => \lcd_data~12_combout\);

-- Location: LCCOMB_X76_Y42_N30
\u1|ShiftLeft1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~0_combout\ = (\u1|op2\(0) & ((\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(0) & (\u1|op1[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(0),
	datac => \u1|op1[1]~_Duplicate_1_q\,
	datad => \u1|op1[0]~_Duplicate_1_q\,
	combout => \u1|ShiftLeft1~0_combout\);

-- Location: LCCOMB_X77_Y42_N18
\u1|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~9_combout\ = (\u1|op2\(0) & (\u1|op1[4]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(0),
	datac => \u1|op1[4]~_Duplicate_1_q\,
	datad => \u1|op1[3]~_Duplicate_1_q\,
	combout => \u1|ShiftRight0~9_combout\);

-- Location: LCCOMB_X76_Y43_N20
\u1|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~10_combout\ = (\u1|op2\(0) & (\u1|op1[6]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datad => \u1|op1[5]~_Duplicate_1_q\,
	combout => \u1|ShiftRight0~10_combout\);

-- Location: LCCOMB_X77_Y43_N2
\u1|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~8_combout\ = (\u1|op2\(0) & (\u1|op1[2]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datac => \u1|op1[1]~_Duplicate_1_q\,
	datad => \u1|op2\(0),
	combout => \u1|ShiftRight1~8_combout\);

-- Location: LCCOMB_X77_Y43_N4
\u1|ShiftRight1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~9_combout\ = (\u1|op2\(2) & ((\u1|op2\(1)) # ((\u1|ShiftRight0~10_combout\)))) # (!\u1|op2\(2) & (!\u1|op2\(1) & ((\u1|ShiftRight1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(1),
	datac => \u1|ShiftRight0~10_combout\,
	datad => \u1|ShiftRight1~8_combout\,
	combout => \u1|ShiftRight1~9_combout\);

-- Location: LCCOMB_X77_Y43_N16
\u1|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~8_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & !\u1|op2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datad => \u1|op2\(0),
	combout => \u1|ShiftRight0~8_combout\);

-- Location: LCCOMB_X77_Y43_N14
\u1|ShiftRight1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~10_combout\ = (\u1|op2\(1) & ((\u1|ShiftRight1~9_combout\ & ((\u1|ShiftRight0~8_combout\))) # (!\u1|ShiftRight1~9_combout\ & (\u1|ShiftRight0~9_combout\)))) # (!\u1|op2\(1) & (((\u1|ShiftRight1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|ShiftRight0~9_combout\,
	datac => \u1|ShiftRight1~9_combout\,
	datad => \u1|ShiftRight0~8_combout\,
	combout => \u1|ShiftRight1~10_combout\);

-- Location: LCCOMB_X77_Y43_N12
\u1|res~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~18_combout\ = (\u1|Add3~0_combout\ & ((\u1|Add3~1_combout\ & ((\u1|ShiftRight0~8_combout\))) # (!\u1|Add3~1_combout\ & (\u1|ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add3~1_combout\,
	datab => \u1|Add3~0_combout\,
	datac => \u1|ShiftRight0~10_combout\,
	datad => \u1|ShiftRight0~8_combout\,
	combout => \u1|res~18_combout\);

-- Location: LCCOMB_X76_Y43_N30
\u1|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~7_combout\ = (!\u1|op2\(1) & !\u1|op2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|op2\(1),
	datad => \u1|op2\(2),
	combout => \u1|ShiftRight1~7_combout\);

-- Location: LCCOMB_X76_Y43_N2
\u1|res~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~19_combout\ = (\u1|res~17_combout\) # ((\u1|res~18_combout\) # ((\u1|ShiftLeft1~0_combout\ & \u1|ShiftRight1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~17_combout\,
	datab => \u1|ShiftLeft1~0_combout\,
	datac => \u1|res~18_combout\,
	datad => \u1|ShiftRight1~7_combout\,
	combout => \u1|res~19_combout\);

-- Location: LCCOMB_X77_Y43_N8
\u1|ShiftRight1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~11_combout\ = (\u1|op2\(1) & ((\u1|op2\(2) & ((\u1|ShiftRight0~8_combout\))) # (!\u1|op2\(2) & (\u1|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|ShiftRight0~9_combout\,
	datac => \u1|op2\(1),
	datad => \u1|ShiftRight0~8_combout\,
	combout => \u1|ShiftRight1~11_combout\);

-- Location: LCCOMB_X77_Y43_N30
\u1|ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~12_combout\ = (\u1|op2\(0) & (\u1|op1[2]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datac => \u1|op1[1]~_Duplicate_1_q\,
	datad => \u1|op2\(0),
	combout => \u1|ShiftRight1~12_combout\);

-- Location: LCCOMB_X77_Y43_N20
\u1|ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~13_combout\ = (!\u1|op2\(1) & ((\u1|op2\(2) & (\u1|ShiftRight0~10_combout\)) # (!\u1|op2\(2) & ((\u1|ShiftRight1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|ShiftRight0~10_combout\,
	datac => \u1|ShiftRight1~12_combout\,
	datad => \u1|op2\(2),
	combout => \u1|ShiftRight1~13_combout\);

-- Location: LCCOMB_X76_Y43_N24
\u1|res~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~5_combout\ = (\u1|ShiftRight1~11_combout\) # ((\u1|ShiftRight1~13_combout\) # ((\u1|ShiftRight0~11_combout\ & \u1|ShiftLeft1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight0~11_combout\,
	datab => \u1|ShiftLeft1~0_combout\,
	datac => \u1|ShiftRight1~11_combout\,
	datad => \u1|ShiftRight1~13_combout\,
	combout => \u1|res~5_combout\);

-- Location: LCCOMB_X79_Y44_N18
\u1|res[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res[6]~6_combout\ = (\u1|opc\(5) & !\u1|opc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|opc\(5),
	datad => \u1|opc\(6),
	combout => \u1|res[6]~6_combout\);

-- Location: LCCOMB_X79_Y44_N10
\u1|opc[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|opc[2]~feeder_combout\ = \u1|opc~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|opc~4_combout\,
	combout => \u1|opc[2]~feeder_combout\);

-- Location: FF_X79_Y44_N11
\u1|opc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|opc[2]~feeder_combout\,
	ena => \u1|opc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|opc\(2));

-- Location: LCCOMB_X75_Y41_N2
\u1|res~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~14_combout\ = (\u1|opc\(0) & (\u1|op2\(1) $ (((!\u1|opc\(2)) # (!\u1|op1[1]~_Duplicate_1_q\))))) # (!\u1|opc\(0) & (\u1|op1[1]~_Duplicate_1_q\ $ (((\u1|op2\(1)) # (!\u1|opc\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datac => \u1|opc\(0),
	datad => \u1|opc\(2),
	combout => \u1|res~14_combout\);

-- Location: LCCOMB_X75_Y41_N8
\u1|res~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~7_combout\ = \u1|opc\(2) $ (((\u1|op2\(1) & ((\u1|op1[1]~_Duplicate_1_q\) # (\u1|opc\(0)))) # (!\u1|op2\(1) & (\u1|op1[1]~_Duplicate_1_q\ & \u1|opc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datac => \u1|opc\(0),
	datad => \u1|opc\(2),
	combout => \u1|res~7_combout\);

-- Location: LCCOMB_X79_Y42_N30
\u1|res~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~10_combout\ = (\u1|opc\(0) & (((\u1|op1[7]~_Duplicate_1_q\) # (\u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\)))) # (!\u1|opc\(0) & (\u1|op2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|op1[7]~_Duplicate_1_q\,
	datac => \u1|opc\(0),
	datad => \u1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|res~10_combout\);

-- Location: LCCOMB_X75_Y41_N14
\u1|res~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~12_combout\ = (\u1|opc\(2) & (!\u1|res~10_combout\ & ((\u1|res~11_combout\) # (!\u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\)))) # (!\u1|opc\(2) & (\u1|res~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~11_combout\,
	datab => \u1|opc\(2),
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \u1|res~10_combout\,
	combout => \u1|res~12_combout\);

-- Location: LCCOMB_X75_Y45_N4
\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & (\u1|op2\(5) $ (VCC))) # (!\u1|op1[0]~_Duplicate_1_q\ & ((\u1|op2\(5)) # (GND)))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\u1|op2\(5)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[0]~_Duplicate_1_q\,
	datab => \u1|op2\(5),
	datad => VCC,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X75_Y45_N6
\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & (\u1|op1[1]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X75_Y45_N10
\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X75_Y45_N14
\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\u1|Mod1|auto_generated|divider|divider|sel\(18) & (\u1|op2\(5))) # (!\u1|Mod1|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|op2\(5))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|sel\(18),
	datab => \u1|op2\(5),
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X74_Y45_N2
\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\u1|op2\(4) & ((GND) # (!\u1|op1[0]~_Duplicate_1_q\))) # (!\u1|op2\(4) & (\u1|op1[0]~_Duplicate_1_q\ $ (GND)))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\u1|op2\(4)) # (!\u1|op1[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(4),
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X74_Y45_N4
\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\u1|op1[1]~_Duplicate_1_q\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\))) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X74_Y45_N8
\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\ & (\u1|op1[3]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X74_Y45_N10
\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X74_Y45_N12
\u1|Mod1|auto_generated|divider|divider|StageOut[25]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\);

-- Location: LCCOMB_X74_Y45_N0
\u1|Mod1|auto_generated|divider|divider|StageOut[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\);

-- Location: LCCOMB_X75_Y45_N20
\u1|Mod1|auto_generated|divider|divider|StageOut[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\u1|Mod1|auto_generated|divider|divider|sel\(18) & (\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|sel\(18) & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|sel\(18),
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X74_Y45_N14
\u1|Mod1|auto_generated|divider|divider|StageOut[26]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & (((\u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[26]~8_combout\);

-- Location: LCCOMB_X74_Y45_N18
\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\u1|op2\(4)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))) # (!\u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\ & (((\u1|op2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[27]~2_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \u1|op2\(4),
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\);

-- Location: LCCOMB_X74_Y45_N22
\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\u1|op1[1]~_Duplicate_1_q\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\))) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X74_Y45_N24
\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\ $ (\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\u1|op1[2]~_Duplicate_1_q\))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\ & (!\u1|op1[2]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X74_Y45_N28
\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\u1|op1[4]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\u1|op1[4]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)) # 
-- (!\u1|op1[4]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X74_Y45_N30
\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X73_Y45_N0
\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\);

-- Location: LCCOMB_X73_Y45_N24
\u1|Mod1|auto_generated|divider|divider|StageOut[36]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[36]~11_combout\);

-- Location: LCCOMB_X73_Y45_N28
\u1|Mod1|auto_generated|divider|divider|StageOut[33]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\);

-- Location: LCCOMB_X73_Y45_N10
\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)) # 
-- (!\u1|op1[2]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X73_Y45_N18
\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X73_Y45_N2
\u1|Mod1|auto_generated|divider|divider|StageOut[43]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (((\u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\);

-- Location: LCCOMB_X73_Y44_N16
\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\u1|op1[1]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\ & (\u1|op1[1]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\u1|op1[1]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X73_Y44_N20
\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\ & (\u1|op1[3]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X73_Y44_N22
\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\u1|op1[4]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\u1|op1[4]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # 
-- (!\u1|op1[4]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X73_Y44_N26
\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\ $ (\u1|op1[6]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # 
-- (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\) # (!\u1|op1[6]~_Duplicate_1_q\))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\ & (!\u1|op1[6]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datab => \u1|op1[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X73_Y44_N28
\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X74_Y44_N28
\u1|Mod1|auto_generated|divider|divider|StageOut[48]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (((\u1|op2\(1))))) # (!\u1|op1[7]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|op2\(1)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datab => \u1|op2\(1),
	datac => \u1|op1[7]~_Duplicate_1_q\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\);

-- Location: LCCOMB_X74_Y44_N4
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND))))) # (!\u1|op1[1]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ & VCC)) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\u1|op1[1]~_Duplicate_1_q\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\))) # 
-- (!\u1|op1[1]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X73_Y44_N4
\u1|Mod1|auto_generated|divider|divider|StageOut[54]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\)) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datab => \u1|op1[7]~_Duplicate_1_q\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\);

-- Location: LCCOMB_X73_Y44_N10
\u1|Mod1|auto_generated|divider|divider|StageOut[42]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\);

-- Location: LCCOMB_X73_Y44_N30
\u1|Mod1|auto_generated|divider|divider|StageOut[51]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (((\u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\)))) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\);

-- Location: LCCOMB_X73_Y45_N30
\u1|Mod1|auto_generated|divider|divider|StageOut[40]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\ = (\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|op2\(2)))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\)))) # (!\u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\ & (((\u1|op2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[45]~6_combout\,
	datac => \u1|op2\(2),
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\);

-- Location: LCCOMB_X73_Y44_N6
\u1|Mod1|auto_generated|divider|divider|StageOut[49]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (((\u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\)))) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\))) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\);

-- Location: LCCOMB_X74_Y44_N6
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = ((\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))) # (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)) # 
-- (!\u1|op1[2]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X74_Y44_N8
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # 
-- (!\u1|op1[3]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & VCC)))) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\ & ((\u1|op1[3]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND))) # (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\ & (\u1|op1[3]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\ & ((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X74_Y44_N12
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = (\u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\ & ((\u1|op1[5]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # 
-- (!\u1|op1[5]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ & VCC)))) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\ & ((\u1|op1[5]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (GND))) # (!\u1|op1[5]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\ & (\u1|op1[5]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\ & ((\u1|op1[5]~_Duplicate_1_q\) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\,
	datab => \u1|op1[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\);

-- Location: LCCOMB_X74_Y44_N14
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ = ((\u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\ $ (\u1|op1[6]~_Duplicate_1_q\ $ (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))) # 
-- (GND)
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ = CARRY((\u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\) # (!\u1|op1[6]~_Duplicate_1_q\))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\ & (!\u1|op1[6]~_Duplicate_1_q\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\,
	datab => \u1|op1[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\);

-- Location: LCCOMB_X74_Y44_N16
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # (GND))))) # (!\u1|op1[7]~_Duplicate_1_q\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\ & 
-- (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ & VCC)) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\ & (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\))))
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ = CARRY((\u1|op1[7]~_Duplicate_1_q\ & ((!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # (!\u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\))) # 
-- (!\u1|op1[7]~_Duplicate_1_q\ & (!\u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\ & !\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datad => VCC,
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	cout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\);

-- Location: LCCOMB_X74_Y44_N18
\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\,
	combout => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X75_Y41_N22
\u1|Mod1|auto_generated|divider|divider|StageOut[57]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[57]~29_combout\ = (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[48]~28_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[57]~29_combout\);

-- Location: LCCOMB_X75_Y41_N30
\u1|Mod0|auto_generated|divider|divider|StageOut[48]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\ = (\u1|op2\(7) & (\u1|op1[1]~_Duplicate_1_q\)) # (!\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|op1[1]~_Duplicate_1_q\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|op1[1]~_Duplicate_1_q\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\);

-- Location: LCCOMB_X75_Y41_N10
\u1|Mod0|auto_generated|divider|divider|StageOut[57]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\ = (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[48]~28_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\);

-- Location: LCCOMB_X75_Y41_N24
\u1|res~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~8_combout\ = (\u1|opc\(2) & (((\u1|opc\(0)) # (\u1|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\)))) # (!\u1|opc\(2) & (\u1|Add2~2_combout\ & (!\u1|opc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add2~2_combout\,
	datab => \u1|opc\(2),
	datac => \u1|opc\(0),
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\,
	combout => \u1|res~8_combout\);

-- Location: LCCOMB_X75_Y41_N0
\u1|res~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~9_combout\ = (\u1|opc\(0) & ((\u1|res~8_combout\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[57]~29_combout\))) # (!\u1|res~8_combout\ & (\u1|Mult0|auto_generated|mac_out2~DATAOUT1\)))) # (!\u1|opc\(0) & (((\u1|res~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \u1|opc\(0),
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[57]~29_combout\,
	datad => \u1|res~8_combout\,
	combout => \u1|res~9_combout\);

-- Location: LCCOMB_X75_Y41_N16
\u1|res~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~13_combout\ = (\u1|opc\(4) & (\u1|opc\(1))) # (!\u1|opc\(4) & ((\u1|opc\(1) & ((\u1|res~9_combout\))) # (!\u1|opc\(1) & (\u1|res~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(4),
	datab => \u1|opc\(1),
	datac => \u1|res~12_combout\,
	datad => \u1|res~9_combout\,
	combout => \u1|res~13_combout\);

-- Location: LCCOMB_X75_Y41_N20
\u1|res~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~15_combout\ = (\u1|opc\(4) & ((\u1|res~13_combout\ & (\u1|res~14_combout\)) # (!\u1|res~13_combout\ & ((\u1|res~7_combout\))))) # (!\u1|opc\(4) & (((\u1|res~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(4),
	datab => \u1|res~14_combout\,
	datac => \u1|res~7_combout\,
	datad => \u1|res~13_combout\,
	combout => \u1|res~15_combout\);

-- Location: LCCOMB_X75_Y41_N18
\u1|res~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~16_combout\ = (\u1|res[6]~4_combout\ & (((\u1|res[6]~6_combout\)))) # (!\u1|res[6]~4_combout\ & ((\u1|res[6]~6_combout\ & (\u1|res~5_combout\)) # (!\u1|res[6]~6_combout\ & ((\u1|res~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res[6]~4_combout\,
	datab => \u1|res~5_combout\,
	datac => \u1|res[6]~6_combout\,
	datad => \u1|res~15_combout\,
	combout => \u1|res~16_combout\);

-- Location: LCCOMB_X75_Y41_N28
\u1|res~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~20_combout\ = (\u1|res[6]~4_combout\ & ((\u1|res~16_combout\ & ((\u1|res~19_combout\))) # (!\u1|res~16_combout\ & (\u1|ShiftRight1~10_combout\)))) # (!\u1|res[6]~4_combout\ & (((\u1|res~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res[6]~4_combout\,
	datab => \u1|ShiftRight1~10_combout\,
	datac => \u1|res~19_combout\,
	datad => \u1|res~16_combout\,
	combout => \u1|res~20_combout\);

-- Location: LCCOMB_X75_Y41_N4
\u1|res~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~21_combout\ = (\u1|opc\(7) & (\u1|ShiftRight1~7_combout\ & (\u1|ShiftLeft1~0_combout\))) # (!\u1|opc\(7) & (((\u1|res~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~7_combout\,
	datab => \u1|opc\(7),
	datac => \u1|ShiftLeft1~0_combout\,
	datad => \u1|res~20_combout\,
	combout => \u1|res~21_combout\);

-- Location: LCCOMB_X79_Y44_N20
\u1|res[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res[6]~23_combout\ = (\u1|opc\(7) & (((!\u1|Selector7~1_combout\)) # (!\u1|opc\(0)))) # (!\u1|opc\(7) & (\u1|opc\(6) & ((\u1|opc\(0)) # (!\u1|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(7),
	datab => \u1|opc\(0),
	datac => \u1|opc\(6),
	datad => \u1|Selector7~1_combout\,
	combout => \u1|res[6]~23_combout\);

-- Location: LCCOMB_X79_Y41_N4
\u1|res[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res[6]~24_combout\ = ((!\u1|res[6]~22_combout\ & (!\u1|res[6]~23_combout\ & \u1|Mux1~1_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res[6]~22_combout\,
	datab => \u1|res[6]~23_combout\,
	datac => \reset_n~input_o\,
	datad => \u1|Mux1~1_combout\,
	combout => \u1|res[6]~24_combout\);

-- Location: FF_X75_Y41_N5
\u1|res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|res~21_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u1|res[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|res\(1));

-- Location: LCCOMB_X87_Y44_N20
\u1|ans[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[1]~2_combout\ = !\u1|res\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|res\(1),
	combout => \u1|ans[1]~2_combout\);

-- Location: FF_X87_Y44_N21
\u1|ans[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|ans[1]~2_combout\,
	ena => \u1|ans[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ans\(1));

-- Location: LCCOMB_X73_Y43_N24
\u1|ShiftLeft1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~1_combout\ = (\u1|op2\(0) & (\u1|op1[1]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[2]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[1]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datac => \u1|op1[2]~_Duplicate_1_q\,
	combout => \u1|ShiftLeft1~1_combout\);

-- Location: LCCOMB_X72_Y44_N30
\u1|res~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~25_combout\ = (!\u1|Add3~0_combout\ & ((\u1|Add3~1_combout\ & (\u1|Selector7~0_combout\)) # (!\u1|Add3~1_combout\ & ((\u1|ShiftLeft1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector7~0_combout\,
	datab => \u1|ShiftLeft1~1_combout\,
	datac => \u1|Add3~0_combout\,
	datad => \u1|Add3~1_combout\,
	combout => \u1|res~25_combout\);

-- Location: LCCOMB_X72_Y43_N0
\u1|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~5_combout\ = (\u1|op2\(0) & ((\u1|op1[3]~_Duplicate_1_q\))) # (!\u1|op2\(0) & (\u1|op1[2]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datac => \u1|op2\(0),
	combout => \u1|ShiftRight0~5_combout\);

-- Location: LCCOMB_X72_Y44_N8
\u1|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~4_combout\ = (\u1|op2\(2) & (\u1|ShiftRight0~4_combout\)) # (!\u1|op2\(2) & ((\u1|ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight0~4_combout\,
	datab => \u1|ShiftRight0~5_combout\,
	datac => \u1|op2\(2),
	combout => \u1|ShiftRight1~4_combout\);

-- Location: LCCOMB_X72_Y44_N0
\u1|ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~14_combout\ = (\u1|op2\(1) & (!\u1|op2\(2) & ((\u1|ShiftRight0~6_combout\)))) # (!\u1|op2\(1) & (((\u1|ShiftRight1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(1),
	datac => \u1|ShiftRight1~4_combout\,
	datad => \u1|ShiftRight0~6_combout\,
	combout => \u1|ShiftRight1~14_combout\);

-- Location: LCCOMB_X72_Y44_N28
\u1|res~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~26_combout\ = (\u1|res~25_combout\) # (\u1|ShiftRight1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|res~25_combout\,
	datad => \u1|ShiftRight1~14_combout\,
	combout => \u1|res~26_combout\);

-- Location: LCCOMB_X75_Y41_N12
\u1|res~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~33_combout\ = (\u1|opc\(2) & (\u1|op2\(2) $ (\u1|opc\(0) $ (\u1|op1[2]~_Duplicate_1_q\)))) # (!\u1|opc\(2) & ((\u1|opc\(0) & (!\u1|op2\(2))) # (!\u1|opc\(0) & ((!\u1|op1[2]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|opc\(2),
	datac => \u1|opc\(0),
	datad => \u1|op1[2]~_Duplicate_1_q\,
	combout => \u1|res~33_combout\);

-- Location: LCCOMB_X75_Y41_N26
\u1|res~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~27_combout\ = \u1|opc\(2) $ (((\u1|op2\(2) & ((\u1|opc\(0)) # (\u1|op1[2]~_Duplicate_1_q\))) # (!\u1|op2\(2) & (\u1|opc\(0) & \u1|op1[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|opc\(2),
	datac => \u1|opc\(0),
	datad => \u1|op1[2]~_Duplicate_1_q\,
	combout => \u1|res~27_combout\);

-- Location: LCCOMB_X80_Y44_N30
\u1|Div1|auto_generated|divider|divider|selnose[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|selnose\(45) = (\u1|op1[7]~_Duplicate_1_q\) # ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\) # (\u1|op1[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datac => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \u1|op1[6]~_Duplicate_1_q\,
	combout => \u1|Div1|auto_generated|divider|divider|selnose\(45));

-- Location: LCCOMB_X72_Y43_N14
\u1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~4_combout\ = ((\u1|op1[2]~_Duplicate_1_q\ $ (\u1|op2\(2) $ (!\u1|Add0~3\)))) # (GND)
-- \u1|Add0~5\ = CARRY((\u1|op1[2]~_Duplicate_1_q\ & ((\u1|op2\(2)) # (!\u1|Add0~3\))) # (!\u1|op1[2]~_Duplicate_1_q\ & (\u1|op2\(2) & !\u1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|op2\(2),
	datad => VCC,
	cin => \u1|Add0~3\,
	combout => \u1|Add0~4_combout\,
	cout => \u1|Add0~5\);

-- Location: LCCOMB_X80_Y44_N0
\u1|Div0|auto_generated|divider|divider|selnose[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|selnose\(45) = (\u1|op2\(7)) # ((\u1|op2\(6)) # (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datac => \u1|op2\(6),
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|selnose\(45));

-- Location: LCCOMB_X80_Y44_N2
\u1|res~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~30_combout\ = (\u1|opc\(2) & (((\u1|opc\(0)) # (!\u1|Div0|auto_generated|divider|divider|selnose\(45))))) # (!\u1|opc\(2) & (\u1|Add0~4_combout\ & (!\u1|opc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|Add0~4_combout\,
	datac => \u1|opc\(0),
	datad => \u1|Div0|auto_generated|divider|divider|selnose\(45),
	combout => \u1|res~30_combout\);

-- Location: LCCOMB_X80_Y44_N28
\u1|res~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~31_combout\ = (\u1|opc\(0) & ((\u1|res~30_combout\ & ((!\u1|Div1|auto_generated|divider|divider|selnose\(45)))) # (!\u1|res~30_combout\ & (\u1|Add1~4_combout\)))) # (!\u1|opc\(0) & (((\u1|res~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~4_combout\,
	datab => \u1|opc\(0),
	datac => \u1|Div1|auto_generated|divider|divider|selnose\(45),
	datad => \u1|res~30_combout\,
	combout => \u1|res~31_combout\);

-- Location: LCCOMB_X80_Y44_N8
\u1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~4_combout\ = ((\u1|op2\(2) $ (\u1|op1[2]~_Duplicate_1_q\ $ (\u1|Add2~3\)))) # (GND)
-- \u1|Add2~5\ = CARRY((\u1|op2\(2) & ((!\u1|Add2~3\) # (!\u1|op1[2]~_Duplicate_1_q\))) # (!\u1|op2\(2) & (!\u1|op1[2]~_Duplicate_1_q\ & !\u1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op1[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add2~3\,
	combout => \u1|Add2~4_combout\,
	cout => \u1|Add2~5\);

-- Location: LCCOMB_X79_Y44_N8
\u1|res~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~28_combout\ = (\u1|opc\(0) & ((\u1|Mult0|auto_generated|mac_out2~DATAOUT2\) # ((\u1|opc\(2))))) # (!\u1|opc\(0) & (((\u1|Add2~4_combout\ & !\u1|opc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \u1|opc\(0),
	datac => \u1|Add2~4_combout\,
	datad => \u1|opc\(2),
	combout => \u1|res~28_combout\);

-- Location: LCCOMB_X75_Y44_N4
\u1|Mod1|auto_generated|divider|divider|StageOut[58]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[58]~30_combout\ = (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[49]~27_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[58]~30_combout\);

-- Location: LCCOMB_X74_Y41_N30
\u1|Mod0|auto_generated|divider|divider|StageOut[49]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\ = (\u1|op2\(7) & (\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\)) # (!\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\);

-- Location: LCCOMB_X75_Y44_N6
\u1|Mod0|auto_generated|divider|divider|StageOut[58]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\ = (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\);

-- Location: LCCOMB_X75_Y44_N2
\u1|res~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~29_combout\ = (\u1|opc\(2) & ((\u1|res~28_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[58]~30_combout\)) # (!\u1|res~28_combout\ & ((\u1|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\))))) # (!\u1|opc\(2) & 
-- (\u1|res~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|res~28_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[58]~30_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\,
	combout => \u1|res~29_combout\);

-- Location: LCCOMB_X75_Y44_N28
\u1|res~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~32_combout\ = (\u1|opc\(4) & (\u1|opc\(1))) # (!\u1|opc\(4) & ((\u1|opc\(1) & ((\u1|res~29_combout\))) # (!\u1|opc\(1) & (\u1|res~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(4),
	datab => \u1|opc\(1),
	datac => \u1|res~31_combout\,
	datad => \u1|res~29_combout\,
	combout => \u1|res~32_combout\);

-- Location: LCCOMB_X75_Y44_N26
\u1|res~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~34_combout\ = (\u1|opc\(4) & ((\u1|res~32_combout\ & (\u1|res~33_combout\)) # (!\u1|res~32_combout\ & ((\u1|res~27_combout\))))) # (!\u1|opc\(4) & (((\u1|res~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(4),
	datab => \u1|res~33_combout\,
	datac => \u1|res~27_combout\,
	datad => \u1|res~32_combout\,
	combout => \u1|res~34_combout\);

-- Location: LCCOMB_X75_Y44_N16
\u1|res~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~35_combout\ = (\u1|res[6]~4_combout\ & ((\u1|ShiftRight1~14_combout\) # ((\u1|res[6]~6_combout\)))) # (!\u1|res[6]~4_combout\ & (((\u1|res~34_combout\ & !\u1|res[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res[6]~4_combout\,
	datab => \u1|ShiftRight1~14_combout\,
	datac => \u1|res~34_combout\,
	datad => \u1|res[6]~6_combout\,
	combout => \u1|res~35_combout\);

-- Location: LCCOMB_X75_Y44_N30
\u1|res~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~37_combout\ = (\u1|res[6]~6_combout\ & ((\u1|res~35_combout\ & (\u1|res~36_combout\)) # (!\u1|res~35_combout\ & ((\u1|res~26_combout\))))) # (!\u1|res[6]~6_combout\ & (((\u1|res~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~36_combout\,
	datab => \u1|res~26_combout\,
	datac => \u1|res[6]~6_combout\,
	datad => \u1|res~35_combout\,
	combout => \u1|res~37_combout\);

-- Location: LCCOMB_X75_Y44_N8
\u1|res~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~38_combout\ = (\u1|opc\(7) & (\u1|ShiftLeft1~2_combout\)) # (!\u1|opc\(7) & ((\u1|res~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftLeft1~2_combout\,
	datab => \u1|opc\(7),
	datac => \u1|res~37_combout\,
	combout => \u1|res~38_combout\);

-- Location: FF_X75_Y44_N9
\u1|res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|res~38_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u1|res[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|res\(2));

-- Location: LCCOMB_X87_Y44_N6
\u1|ans[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[2]~3_combout\ = !\u1|res\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|res\(2),
	combout => \u1|ans[2]~3_combout\);

-- Location: FF_X87_Y44_N7
\u1|ans[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|ans[2]~3_combout\,
	ena => \u1|ans[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ans\(2));

-- Location: LCCOMB_X77_Y42_N2
\u1|ShiftLeft1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~3_combout\ = (\u1|op2\(0) & (\u1|op1[2]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[2]~_Duplicate_1_q\,
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => \u1|op2\(0),
	combout => \u1|ShiftLeft1~3_combout\);

-- Location: LCCOMB_X77_Y43_N10
\u1|res~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~39_combout\ = (!\u1|op2\(2) & ((\u1|op2\(1) & (\u1|ShiftLeft1~0_combout\)) # (!\u1|op2\(1) & ((\u1|ShiftLeft1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(1),
	datac => \u1|ShiftLeft1~0_combout\,
	datad => \u1|ShiftLeft1~3_combout\,
	combout => \u1|res~39_combout\);

-- Location: LCCOMB_X79_Y44_N16
\u1|res[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res[6]~4_combout\ = (\u1|opc\(6)) # ((\u1|opc\(5) & \u1|opc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|opc\(5),
	datac => \u1|opc\(0),
	datad => \u1|opc\(6),
	combout => \u1|res[6]~4_combout\);

-- Location: LCCOMB_X77_Y43_N18
\u1|res~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~52_combout\ = (!\u1|Add3~1_combout\ & ((\u1|Add3~0_combout\ & ((\u1|ShiftRight0~8_combout\))) # (!\u1|Add3~0_combout\ & (\u1|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add3~1_combout\,
	datab => \u1|Add3~0_combout\,
	datac => \u1|ShiftRight0~9_combout\,
	datad => \u1|ShiftRight0~8_combout\,
	combout => \u1|res~52_combout\);

-- Location: LCCOMB_X77_Y43_N28
\u1|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~12_combout\ = (\u1|op2\(2) & (\u1|op2\(1) $ (\u1|op2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datac => \u1|op2\(2),
	datad => \u1|op2\(0),
	combout => \u1|ShiftRight0~12_combout\);

-- Location: LCCOMB_X77_Y43_N26
\u1|res~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~53_combout\ = (\u1|res~39_combout\) # ((\u1|res~52_combout\) # ((\u1|ShiftRight0~10_combout\ & \u1|ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~39_combout\,
	datab => \u1|res~52_combout\,
	datac => \u1|ShiftRight0~10_combout\,
	datad => \u1|ShiftRight0~12_combout\,
	combout => \u1|res~53_combout\);

-- Location: LCCOMB_X74_Y42_N30
\u1|res~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~40_combout\ = (!\u1|Add3~0_combout\ & ((\u1|Add3~1_combout\ & ((\u1|ShiftLeft1~0_combout\))) # (!\u1|Add3~1_combout\ & (\u1|ShiftLeft1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add3~0_combout\,
	datab => \u1|Add3~1_combout\,
	datac => \u1|ShiftLeft1~3_combout\,
	datad => \u1|ShiftLeft1~0_combout\,
	combout => \u1|res~40_combout\);

-- Location: LCCOMB_X74_Y42_N8
\u1|res~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~41_combout\ = (\u1|ShiftRight1~16_combout\) # (\u1|res~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~16_combout\,
	datac => \u1|res~40_combout\,
	combout => \u1|res~41_combout\);

-- Location: LCCOMB_X76_Y42_N4
\u1|res~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~45_combout\ = (\u1|opc\(0) & ((\u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\) # ((!\u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\)))) # (!\u1|opc\(0) & 
-- (((\u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|selnose[36]~5_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \u1|opc\(0),
	combout => \u1|res~45_combout\);

-- Location: LCCOMB_X72_Y42_N16
\u1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~6_combout\ = (\u1|op2\(3) & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Add1~5\)) # (!\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Add1~5\) # (GND))))) # (!\u1|op2\(3) & ((\u1|op1[3]~_Duplicate_1_q\ & (\u1|Add1~5\ & VCC)) # (!\u1|op1[3]~_Duplicate_1_q\ & 
-- (!\u1|Add1~5\))))
-- \u1|Add1~7\ = CARRY((\u1|op2\(3) & ((!\u1|Add1~5\) # (!\u1|op1[3]~_Duplicate_1_q\))) # (!\u1|op2\(3) & (!\u1|op1[3]~_Duplicate_1_q\ & !\u1|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add1~5\,
	combout => \u1|Add1~6_combout\,
	cout => \u1|Add1~7\);

-- Location: LCCOMB_X72_Y43_N16
\u1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~6_combout\ = (\u1|op2\(3) & ((\u1|op1[3]~_Duplicate_1_q\ & (\u1|Add0~5\ & VCC)) # (!\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Add0~5\)))) # (!\u1|op2\(3) & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Add0~5\)) # (!\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Add0~5\) # 
-- (GND)))))
-- \u1|Add0~7\ = CARRY((\u1|op2\(3) & (!\u1|op1[3]~_Duplicate_1_q\ & !\u1|Add0~5\)) # (!\u1|op2\(3) & ((!\u1|Add0~5\) # (!\u1|op1[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add0~5\,
	combout => \u1|Add0~6_combout\,
	cout => \u1|Add0~7\);

-- Location: LCCOMB_X72_Y42_N8
\u1|res~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~46_combout\ = (\u1|opc\(0) & ((\u1|Add1~6_combout\) # ((\u1|opc\(2))))) # (!\u1|opc\(0) & (((\u1|Add0~6_combout\ & !\u1|opc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(0),
	datab => \u1|Add1~6_combout\,
	datac => \u1|Add0~6_combout\,
	datad => \u1|opc\(2),
	combout => \u1|res~46_combout\);

-- Location: LCCOMB_X74_Y42_N0
\u1|res~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~47_combout\ = (\u1|opc\(2) & (!\u1|res~45_combout\ & ((\u1|res~46_combout\) # (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\)))) # (!\u1|opc\(2) & (((\u1|res~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|res~45_combout\,
	datac => \u1|res~46_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	combout => \u1|res~47_combout\);

-- Location: LCCOMB_X74_Y42_N26
\u1|res~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~48_combout\ = (\u1|opc\(1) & (((\u1|opc\(4))))) # (!\u1|opc\(1) & ((\u1|opc\(4) & (\u1|res~44_combout\)) # (!\u1|opc\(4) & ((\u1|res~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~44_combout\,
	datab => \u1|opc\(1),
	datac => \u1|opc\(4),
	datad => \u1|res~47_combout\,
	combout => \u1|res~48_combout\);

-- Location: LCCOMB_X80_Y44_N10
\u1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~6_combout\ = (\u1|op2\(3) & ((\u1|op1[3]~_Duplicate_1_q\ & (!\u1|Add2~5\)) # (!\u1|op1[3]~_Duplicate_1_q\ & (\u1|Add2~5\ & VCC)))) # (!\u1|op2\(3) & ((\u1|op1[3]~_Duplicate_1_q\ & ((\u1|Add2~5\) # (GND))) # (!\u1|op1[3]~_Duplicate_1_q\ & 
-- (!\u1|Add2~5\))))
-- \u1|Add2~7\ = CARRY((\u1|op2\(3) & (\u1|op1[3]~_Duplicate_1_q\ & !\u1|Add2~5\)) # (!\u1|op2\(3) & ((\u1|op1[3]~_Duplicate_1_q\) # (!\u1|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(3),
	datab => \u1|op1[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \u1|Add2~5\,
	combout => \u1|Add2~6_combout\,
	cout => \u1|Add2~7\);

-- Location: LCCOMB_X77_Y44_N16
\u1|res~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~42_combout\ = (\u1|opc\(0) & ((\u1|Mult0|auto_generated|mac_out2~DATAOUT3\) # ((\u1|opc\(2))))) # (!\u1|opc\(0) & (((!\u1|opc\(2) & \u1|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \u1|opc\(0),
	datac => \u1|opc\(2),
	datad => \u1|Add2~6_combout\,
	combout => \u1|res~42_combout\);

-- Location: LCCOMB_X74_Y42_N14
\u1|Mod1|auto_generated|divider|divider|StageOut[59]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[59]~31_combout\ = (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[50]~26_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[59]~31_combout\);

-- Location: LCCOMB_X74_Y41_N0
\u1|Mod0|auto_generated|divider|divider|StageOut[59]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[59]~31_combout\ = (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[50]~26_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[59]~31_combout\);

-- Location: LCCOMB_X74_Y42_N28
\u1|res~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~43_combout\ = (\u1|opc\(2) & ((\u1|res~42_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[59]~31_combout\)) # (!\u1|res~42_combout\ & ((\u1|Mod0|auto_generated|divider|divider|StageOut[59]~31_combout\))))) # (!\u1|opc\(2) & 
-- (\u1|res~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|res~42_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[59]~31_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[59]~31_combout\,
	combout => \u1|res~43_combout\);

-- Location: LCCOMB_X74_Y42_N18
\u1|res~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~50_combout\ = (\u1|opc\(1) & ((\u1|res~48_combout\ & (\u1|res~49_combout\)) # (!\u1|res~48_combout\ & ((\u1|res~43_combout\))))) # (!\u1|opc\(1) & (((\u1|res~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~49_combout\,
	datab => \u1|opc\(1),
	datac => \u1|res~48_combout\,
	datad => \u1|res~43_combout\,
	combout => \u1|res~50_combout\);

-- Location: LCCOMB_X74_Y42_N20
\u1|res~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~51_combout\ = (\u1|res[6]~6_combout\ & ((\u1|res[6]~4_combout\) # ((\u1|res~41_combout\)))) # (!\u1|res[6]~6_combout\ & (!\u1|res[6]~4_combout\ & ((\u1|res~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res[6]~6_combout\,
	datab => \u1|res[6]~4_combout\,
	datac => \u1|res~41_combout\,
	datad => \u1|res~50_combout\,
	combout => \u1|res~51_combout\);

-- Location: LCCOMB_X74_Y42_N10
\u1|res~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~54_combout\ = (\u1|res[6]~4_combout\ & ((\u1|res~51_combout\ & ((\u1|res~53_combout\))) # (!\u1|res~51_combout\ & (\u1|ShiftRight1~16_combout\)))) # (!\u1|res[6]~4_combout\ & (((\u1|res~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~16_combout\,
	datab => \u1|res[6]~4_combout\,
	datac => \u1|res~53_combout\,
	datad => \u1|res~51_combout\,
	combout => \u1|res~54_combout\);

-- Location: LCCOMB_X74_Y42_N16
\u1|res~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~55_combout\ = (\u1|opc\(7) & (\u1|res~39_combout\)) # (!\u1|opc\(7) & ((\u1|res~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(7),
	datac => \u1|res~39_combout\,
	datad => \u1|res~54_combout\,
	combout => \u1|res~55_combout\);

-- Location: FF_X74_Y42_N17
\u1|res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|res~55_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u1|res[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|res\(3));

-- Location: LCCOMB_X82_Y42_N16
\u1|ans[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[3]~4_combout\ = !\u1|res\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|res\(3),
	combout => \u1|ans[3]~4_combout\);

-- Location: FF_X87_Y44_N5
\u1|ans[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|ans[3]~4_combout\,
	sload => VCC,
	ena => \u1|ans[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ans\(3));

-- Location: LCCOMB_X87_Y44_N14
\lcd_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data~13_combout\ = (!\u1|state\(1) & (!\u1|ans\(3) & (\u1|state\(2) & !\u1|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(1),
	datab => \u1|ans\(3),
	datac => \u1|state\(2),
	datad => \u1|state\(0),
	combout => \lcd_data~13_combout\);

-- Location: LCCOMB_X88_Y44_N12
\lcd_data[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[2]~14_combout\ = (\lcd_data~13_combout\ & ((!\u1|ans\(2)) # (!\u1|ans\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|ans\(1),
	datac => \u1|ans\(2),
	datad => \lcd_data~13_combout\,
	combout => \lcd_data[2]~14_combout\);

-- Location: LCCOMB_X88_Y44_N2
\lcd_data[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[2]~15_combout\ = (\lcd_data[2]~14_combout\) # ((\lcd_data~12_combout\ & ((\data[2]~input_o\) # (\data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[1]~input_o\,
	datac => \lcd_data~12_combout\,
	datad => \lcd_data[2]~14_combout\,
	combout => \lcd_data[2]~15_combout\);

-- Location: LCCOMB_X88_Y45_N8
\Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = \lcd_data[2]~15_combout\ $ (((\Equal6~0_combout\ & ((!\u1|ans\(0)))) # (!\Equal6~0_combout\ & (\data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \u1|ans\(0),
	datad => \lcd_data[2]~15_combout\,
	combout => \Selector46~3_combout\);

-- Location: LCCOMB_X73_Y42_N22
\u1|ShiftLeft1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~5_combout\ = (!\u1|op2\(2) & ((\u1|op2\(1) & ((\u1|ShiftLeft1~1_combout\))) # (!\u1|op2\(1) & (\u1|ShiftLeft1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftLeft1~4_combout\,
	datab => \u1|ShiftLeft1~1_combout\,
	datac => \u1|op2\(1),
	datad => \u1|op2\(2),
	combout => \u1|ShiftLeft1~5_combout\);

-- Location: LCCOMB_X73_Y42_N20
\u1|ShiftLeft1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~6_combout\ = (\u1|ShiftLeft1~5_combout\) # ((!\u1|Add3~2_combout\ & (\u1|op1[0]~_Duplicate_1_q\ & \u1|op2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add3~2_combout\,
	datab => \u1|op1[0]~_Duplicate_1_q\,
	datac => \u1|ShiftLeft1~5_combout\,
	datad => \u1|op2\(2),
	combout => \u1|ShiftLeft1~6_combout\);

-- Location: LCCOMB_X73_Y43_N28
\u1|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~4_combout\ = (\u1|op2\(0) & ((\u1|op1[7]~_Duplicate_1_q\))) # (!\u1|op2\(0) & (\u1|op1[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(0),
	datac => \u1|op1[6]~_Duplicate_1_q\,
	datad => \u1|op1[7]~_Duplicate_1_q\,
	combout => \u1|ShiftRight0~4_combout\);

-- Location: LCCOMB_X73_Y42_N30
\u1|ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~17_combout\ = (!\u1|op2\(2) & ((\u1|op2\(1) & ((\u1|ShiftRight0~4_combout\))) # (!\u1|op2\(1) & (\u1|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight0~6_combout\,
	datab => \u1|ShiftRight0~4_combout\,
	datac => \u1|op2\(1),
	datad => \u1|op2\(2),
	combout => \u1|ShiftRight1~17_combout\);

-- Location: LCCOMB_X72_Y42_N6
\u1|res~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~57_combout\ = \u1|opc\(2) $ (((\u1|op1[4]~_Duplicate_1_q\ & ((\u1|op2\(4)) # (\u1|opc\(0)))) # (!\u1|op1[4]~_Duplicate_1_q\ & (\u1|op2\(4) & \u1|opc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[4]~_Duplicate_1_q\,
	datab => \u1|op2\(4),
	datac => \u1|opc\(0),
	datad => \u1|opc\(2),
	combout => \u1|res~57_combout\);

-- Location: LCCOMB_X74_Y44_N20
\u1|Mod1|auto_generated|divider|divider|StageOut[60]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[60]~32_combout\ = (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\))) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[51]~25_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[60]~32_combout\);

-- Location: LCCOMB_X73_Y43_N16
\u1|Mod0|auto_generated|divider|divider|StageOut[33]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[36]~4_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\);

-- Location: LCCOMB_X73_Y41_N26
\u1|Mod0|auto_generated|divider|divider|StageOut[42]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\ = (\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))) # 
-- (!\u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|selnose[45]~5_combout\,
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\);

-- Location: LCCOMB_X74_Y41_N6
\u1|Mod0|auto_generated|divider|divider|StageOut[51]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\ = (\u1|op2\(7) & (((\u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\)))) # (!\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\))) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datab => \u1|op2\(7),
	datac => \u1|Mod0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\);

-- Location: LCCOMB_X73_Y42_N10
\u1|Mod0|auto_generated|divider|divider|StageOut[60]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[60]~32_combout\ = (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[51]~25_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[60]~32_combout\);

-- Location: LCCOMB_X73_Y42_N16
\u1|res~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~59_combout\ = (\u1|res~58_combout\ & (((\u1|Mod1|auto_generated|divider|divider|StageOut[60]~32_combout\)) # (!\u1|opc\(2)))) # (!\u1|res~58_combout\ & (\u1|opc\(2) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[60]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~58_combout\,
	datab => \u1|opc\(2),
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[60]~32_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[60]~32_combout\,
	combout => \u1|res~59_combout\);

-- Location: LCCOMB_X73_Y42_N6
\u1|res~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~63_combout\ = (\u1|opc\(1) & (((\u1|opc\(4)) # (\u1|res~59_combout\)))) # (!\u1|opc\(1) & (\u1|res~62_combout\ & (!\u1|opc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~62_combout\,
	datab => \u1|opc\(1),
	datac => \u1|opc\(4),
	datad => \u1|res~59_combout\,
	combout => \u1|res~63_combout\);

-- Location: LCCOMB_X73_Y42_N24
\u1|res~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~65_combout\ = (\u1|opc\(4) & ((\u1|res~63_combout\ & (\u1|res~64_combout\)) # (!\u1|res~63_combout\ & ((\u1|res~57_combout\))))) # (!\u1|opc\(4) & (((\u1|res~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~64_combout\,
	datab => \u1|res~57_combout\,
	datac => \u1|opc\(4),
	datad => \u1|res~63_combout\,
	combout => \u1|res~65_combout\);

-- Location: LCCOMB_X73_Y42_N2
\u1|res~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~66_combout\ = (\u1|res[6]~4_combout\ & ((\u1|res[6]~6_combout\) # ((\u1|ShiftRight1~17_combout\)))) # (!\u1|res[6]~4_combout\ & (!\u1|res[6]~6_combout\ & ((\u1|res~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res[6]~4_combout\,
	datab => \u1|res[6]~6_combout\,
	datac => \u1|ShiftRight1~17_combout\,
	datad => \u1|res~65_combout\,
	combout => \u1|res~66_combout\);

-- Location: LCCOMB_X73_Y42_N0
\u1|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft0~8_combout\ = (\u1|ShiftLeft1~1_combout\ & (\u1|op2\(2) & (\u1|op2\(0) $ (\u1|op2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|ShiftLeft1~1_combout\,
	datac => \u1|op2\(1),
	datad => \u1|op2\(2),
	combout => \u1|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X73_Y42_N8
\u1|res~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~56_combout\ = (\u1|ShiftRight1~17_combout\) # ((\u1|ShiftLeft0~8_combout\) # ((\u1|res~109_combout\ & !\u1|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~109_combout\,
	datab => \u1|Add3~1_combout\,
	datac => \u1|ShiftRight1~17_combout\,
	datad => \u1|ShiftLeft0~8_combout\,
	combout => \u1|res~56_combout\);

-- Location: LCCOMB_X73_Y42_N18
\u1|res~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~113_combout\ = (\u1|res[6]~6_combout\ & ((\u1|res~66_combout\ & (\u1|res~67_combout\)) # (!\u1|res~66_combout\ & ((\u1|res~56_combout\))))) # (!\u1|res[6]~6_combout\ & (((\u1|res~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~67_combout\,
	datab => \u1|res[6]~6_combout\,
	datac => \u1|res~56_combout\,
	datad => \u1|res~66_combout\,
	combout => \u1|res~113_combout\);

-- Location: LCCOMB_X73_Y42_N28
\u1|res~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~114_combout\ = (\u1|opc\(7) & (\u1|ShiftLeft1~6_combout\)) # (!\u1|opc\(7) & ((\u1|res~113_combout\) # ((\u1|ShiftLeft1~6_combout\ & \u1|res~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(7),
	datab => \u1|ShiftLeft1~6_combout\,
	datac => \u1|res~66_combout\,
	datad => \u1|res~113_combout\,
	combout => \u1|res~114_combout\);

-- Location: FF_X73_Y42_N29
\u1|res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|res~114_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u1|res[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|res\(4));

-- Location: LCCOMB_X88_Y42_N14
\u1|ans[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[4]~5_combout\ = !\u1|res\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|res\(4),
	combout => \u1|ans[4]~5_combout\);

-- Location: FF_X89_Y44_N5
\u1|ans[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|ans[4]~5_combout\,
	sload => VCC,
	ena => \u1|ans[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ans\(4));

-- Location: LCCOMB_X86_Y44_N2
\lcd_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data~8_combout\ = (\data[7]~input_o\ & ((\u1|state\(0)) # ((\u1|state\(1)) # (!\u1|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(0),
	datab => \data[7]~input_o\,
	datac => \u1|state\(1),
	datad => \u1|state\(2),
	combout => \lcd_data~8_combout\);

-- Location: LCCOMB_X73_Y42_N4
\u1|ShiftLeft1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~11_combout\ = (!\u1|op2\(1) & ((\u1|op2\(2) & ((\u1|ShiftLeft1~1_combout\))) # (!\u1|op2\(2) & (\u1|ShiftLeft1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftLeft1~10_combout\,
	datab => \u1|ShiftLeft1~1_combout\,
	datac => \u1|op2\(1),
	datad => \u1|op2\(2),
	combout => \u1|ShiftLeft1~11_combout\);

-- Location: LCCOMB_X77_Y42_N0
\u1|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight0~11_combout\ = (\u1|op2\(2) & (\u1|op2\(1) & \u1|op2\(0))) # (!\u1|op2\(2) & (!\u1|op2\(1) & !\u1|op2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(1),
	datad => \u1|op2\(0),
	combout => \u1|ShiftRight0~11_combout\);

-- Location: LCCOMB_X77_Y42_N8
\u1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector7~0_combout\ = (\u1|op1[0]~_Duplicate_1_q\ & !\u1|op2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|op1[0]~_Duplicate_1_q\,
	datad => \u1|op2\(0),
	combout => \u1|Selector7~0_combout\);

-- Location: LCCOMB_X77_Y42_N12
\u1|ShiftLeft1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~4_combout\ = (\u1|op2\(0) & ((\u1|op1[3]~_Duplicate_1_q\))) # (!\u1|op2\(0) & (\u1|op1[4]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(0),
	datac => \u1|op1[4]~_Duplicate_1_q\,
	datad => \u1|op1[3]~_Duplicate_1_q\,
	combout => \u1|ShiftLeft1~4_combout\);

-- Location: LCCOMB_X77_Y42_N6
\u1|ShiftLeft1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~12_combout\ = (\u1|op2\(1) & ((\u1|op2\(2) & (\u1|Selector7~0_combout\)) # (!\u1|op2\(2) & ((\u1|ShiftLeft1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|Selector7~0_combout\,
	datac => \u1|op2\(1),
	datad => \u1|ShiftLeft1~4_combout\,
	combout => \u1|ShiftLeft1~12_combout\);

-- Location: LCCOMB_X76_Y44_N22
\u1|res~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~92_combout\ = (\u1|ShiftLeft1~11_combout\) # ((\u1|ShiftLeft1~12_combout\) # ((\u1|ShiftRight0~4_combout\ & \u1|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight0~4_combout\,
	datab => \u1|ShiftRight0~11_combout\,
	datac => \u1|ShiftLeft1~11_combout\,
	datad => \u1|ShiftLeft1~12_combout\,
	combout => \u1|res~92_combout\);

-- Location: LCCOMB_X73_Y43_N30
\u1|ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~20_combout\ = (\u1|ShiftRight1~7_combout\ & ((\u1|op2\(0) & (\u1|op1[7]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[6]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datac => \u1|op1[6]~_Duplicate_1_q\,
	datad => \u1|ShiftRight1~7_combout\,
	combout => \u1|ShiftRight1~20_combout\);

-- Location: LCCOMB_X77_Y44_N28
\u1|res~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~83_combout\ = \u1|opc\(2) $ (((\u1|op1[6]~_Duplicate_1_q\ & ((\u1|opc\(0)) # (\u1|op2\(6)))) # (!\u1|op1[6]~_Duplicate_1_q\ & (\u1|opc\(0) & \u1|op2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|opc\(2),
	datac => \u1|opc\(0),
	datad => \u1|op2\(6),
	combout => \u1|res~83_combout\);

-- Location: LCCOMB_X77_Y44_N24
\u1|res~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~89_combout\ = (\u1|opc\(2) & (\u1|op1[6]~_Duplicate_1_q\ $ (\u1|opc\(0) $ (\u1|op2\(6))))) # (!\u1|opc\(2) & ((\u1|opc\(0) & ((!\u1|op2\(6)))) # (!\u1|opc\(0) & (!\u1|op1[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|opc\(2),
	datac => \u1|opc\(0),
	datad => \u1|op2\(6),
	combout => \u1|res~89_combout\);

-- Location: LCCOMB_X72_Y42_N20
\u1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~10_combout\ = (\u1|op1[5]~_Duplicate_1_q\ & ((\u1|op2\(5) & (!\u1|Add1~9\)) # (!\u1|op2\(5) & (\u1|Add1~9\ & VCC)))) # (!\u1|op1[5]~_Duplicate_1_q\ & ((\u1|op2\(5) & ((\u1|Add1~9\) # (GND))) # (!\u1|op2\(5) & (!\u1|Add1~9\))))
-- \u1|Add1~11\ = CARRY((\u1|op1[5]~_Duplicate_1_q\ & (\u1|op2\(5) & !\u1|Add1~9\)) # (!\u1|op1[5]~_Duplicate_1_q\ & ((\u1|op2\(5)) # (!\u1|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[5]~_Duplicate_1_q\,
	datab => \u1|op2\(5),
	datad => VCC,
	cin => \u1|Add1~9\,
	combout => \u1|Add1~10_combout\,
	cout => \u1|Add1~11\);

-- Location: LCCOMB_X72_Y42_N22
\u1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~12_combout\ = ((\u1|op1[6]~_Duplicate_1_q\ $ (\u1|op2\(6) $ (\u1|Add1~11\)))) # (GND)
-- \u1|Add1~13\ = CARRY((\u1|op1[6]~_Duplicate_1_q\ & ((!\u1|Add1~11\) # (!\u1|op2\(6)))) # (!\u1|op1[6]~_Duplicate_1_q\ & (!\u1|op2\(6) & !\u1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|op2\(6),
	datad => VCC,
	cin => \u1|Add1~11\,
	combout => \u1|Add1~12_combout\,
	cout => \u1|Add1~13\);

-- Location: LCCOMB_X72_Y43_N22
\u1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~12_combout\ = ((\u1|op1[6]~_Duplicate_1_q\ $ (\u1|op2\(6) $ (!\u1|Add0~11\)))) # (GND)
-- \u1|Add0~13\ = CARRY((\u1|op1[6]~_Duplicate_1_q\ & ((\u1|op2\(6)) # (!\u1|Add0~11\))) # (!\u1|op1[6]~_Duplicate_1_q\ & (\u1|op2\(6) & !\u1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|op2\(6),
	datad => VCC,
	cin => \u1|Add0~11\,
	combout => \u1|Add0~12_combout\,
	cout => \u1|Add0~13\);

-- Location: LCCOMB_X72_Y43_N4
\u1|res~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~86_combout\ = (\u1|opc\(2) & (((\u1|opc\(0))) # (!\u1|Mod0|auto_generated|divider|divider|selnose[9]~3_combout\))) # (!\u1|opc\(2) & (((\u1|Add0~12_combout\ & !\u1|opc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|Mod0|auto_generated|divider|divider|selnose[9]~3_combout\,
	datac => \u1|Add0~12_combout\,
	datad => \u1|opc\(0),
	combout => \u1|res~86_combout\);

-- Location: LCCOMB_X72_Y43_N30
\u1|res~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~87_combout\ = (\u1|res~86_combout\ & (((!\u1|opc\(0))) # (!\u1|Mod1|auto_generated|divider|divider|selnose[9]~4_combout\))) # (!\u1|res~86_combout\ & (((\u1|Add1~12_combout\ & \u1|opc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose[9]~4_combout\,
	datab => \u1|Add1~12_combout\,
	datac => \u1|res~86_combout\,
	datad => \u1|opc\(0),
	combout => \u1|res~87_combout\);

-- Location: LCCOMB_X80_Y44_N16
\u1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~12_combout\ = ((\u1|op1[6]~_Duplicate_1_q\ $ (\u1|op2\(6) $ (\u1|Add2~11\)))) # (GND)
-- \u1|Add2~13\ = CARRY((\u1|op1[6]~_Duplicate_1_q\ & (\u1|op2\(6) & !\u1|Add2~11\)) # (!\u1|op1[6]~_Duplicate_1_q\ & ((\u1|op2\(6)) # (!\u1|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[6]~_Duplicate_1_q\,
	datab => \u1|op2\(6),
	datad => VCC,
	cin => \u1|Add2~11\,
	combout => \u1|Add2~12_combout\,
	cout => \u1|Add2~13\);

-- Location: LCCOMB_X77_Y44_N22
\u1|res~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~84_combout\ = (\u1|opc\(0) & ((\u1|Mult0|auto_generated|mac_out2~DATAOUT6\) # ((\u1|opc\(2))))) # (!\u1|opc\(0) & (((!\u1|opc\(2) & \u1|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \u1|opc\(0),
	datac => \u1|opc\(2),
	datad => \u1|Add2~12_combout\,
	combout => \u1|res~84_combout\);

-- Location: LCCOMB_X74_Y44_N26
\u1|Mod1|auto_generated|divider|divider|StageOut[62]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[62]~34_combout\ = (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|StageOut[53]~23_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[62]~34_combout\);

-- Location: LCCOMB_X75_Y44_N12
\u1|Mod0|auto_generated|divider|divider|StageOut[62]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[62]~34_combout\ = (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod0|auto_generated|divider|divider|StageOut[53]~23_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[62]~34_combout\);

-- Location: LCCOMB_X75_Y44_N18
\u1|res~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~85_combout\ = (\u1|opc\(2) & ((\u1|res~84_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[62]~34_combout\)) # (!\u1|res~84_combout\ & ((\u1|Mod0|auto_generated|divider|divider|StageOut[62]~34_combout\))))) # (!\u1|opc\(2) & 
-- (\u1|res~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|res~84_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[62]~34_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[62]~34_combout\,
	combout => \u1|res~85_combout\);

-- Location: LCCOMB_X75_Y44_N24
\u1|res~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~88_combout\ = (\u1|opc\(4) & (((\u1|opc\(1))))) # (!\u1|opc\(4) & ((\u1|opc\(1) & ((\u1|res~85_combout\))) # (!\u1|opc\(1) & (\u1|res~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(4),
	datab => \u1|res~87_combout\,
	datac => \u1|opc\(1),
	datad => \u1|res~85_combout\,
	combout => \u1|res~88_combout\);

-- Location: LCCOMB_X75_Y44_N10
\u1|res~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~90_combout\ = (\u1|opc\(4) & ((\u1|res~88_combout\ & ((\u1|res~89_combout\))) # (!\u1|res~88_combout\ & (\u1|res~83_combout\)))) # (!\u1|opc\(4) & (((\u1|res~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(4),
	datab => \u1|res~83_combout\,
	datac => \u1|res~89_combout\,
	datad => \u1|res~88_combout\,
	combout => \u1|res~90_combout\);

-- Location: LCCOMB_X75_Y44_N20
\u1|res~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~91_combout\ = (\u1|res[6]~4_combout\ & ((\u1|ShiftRight1~20_combout\) # ((\u1|res[6]~6_combout\)))) # (!\u1|res[6]~4_combout\ & (((!\u1|res[6]~6_combout\ & \u1|res~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res[6]~4_combout\,
	datab => \u1|ShiftRight1~20_combout\,
	datac => \u1|res[6]~6_combout\,
	datad => \u1|res~90_combout\,
	combout => \u1|res~91_combout\);

-- Location: LCCOMB_X75_Y44_N14
\u1|res~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~93_combout\ = (\u1|res[6]~6_combout\ & ((\u1|res~91_combout\ & ((\u1|res~92_combout\))) # (!\u1|res~91_combout\ & (\u1|res~82_combout\)))) # (!\u1|res[6]~6_combout\ & (((\u1|res~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~82_combout\,
	datab => \u1|res~92_combout\,
	datac => \u1|res[6]~6_combout\,
	datad => \u1|res~91_combout\,
	combout => \u1|res~93_combout\);

-- Location: LCCOMB_X76_Y44_N14
\u1|res~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~94_combout\ = (\u1|opc\(7) & ((\u1|ShiftLeft1~12_combout\) # ((\u1|ShiftLeft1~11_combout\)))) # (!\u1|opc\(7) & (((\u1|res~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftLeft1~12_combout\,
	datab => \u1|ShiftLeft1~11_combout\,
	datac => \u1|opc\(7),
	datad => \u1|res~93_combout\,
	combout => \u1|res~94_combout\);

-- Location: FF_X76_Y44_N15
\u1|res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|res~94_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u1|res[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|res\(6));

-- Location: LCCOMB_X88_Y44_N6
\u1|ans[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[6]~7_combout\ = !\u1|res\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|res\(6),
	combout => \u1|ans[6]~7_combout\);

-- Location: FF_X89_Y44_N17
\u1|ans[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|ans[6]~7_combout\,
	sload => VCC,
	ena => \u1|ans[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ans\(6));

-- Location: LCCOMB_X77_Y44_N0
\u1|ShiftLeft1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~7_combout\ = (\u1|op2\(0) & (\u1|op1[4]~_Duplicate_1_q\)) # (!\u1|op2\(0) & ((\u1|op1[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(0),
	datac => \u1|op1[4]~_Duplicate_1_q\,
	datad => \u1|op1[5]~_Duplicate_1_q\,
	combout => \u1|ShiftLeft1~7_combout\);

-- Location: LCCOMB_X76_Y44_N30
\u1|ShiftLeft1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~8_combout\ = (\u1|op2\(2) & (\u1|ShiftLeft1~0_combout\)) # (!\u1|op2\(2) & ((\u1|ShiftLeft1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftLeft1~0_combout\,
	datab => \u1|ShiftLeft1~7_combout\,
	datac => \u1|op2\(2),
	combout => \u1|ShiftLeft1~8_combout\);

-- Location: LCCOMB_X76_Y44_N8
\u1|ShiftLeft1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~9_combout\ = (\u1|op2\(1) & (!\u1|op2\(2) & ((\u1|ShiftLeft1~3_combout\)))) # (!\u1|op2\(1) & (((\u1|ShiftLeft1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|op2\(2),
	datac => \u1|ShiftLeft1~8_combout\,
	datad => \u1|ShiftLeft1~3_combout\,
	combout => \u1|ShiftLeft1~9_combout\);

-- Location: LCCOMB_X76_Y44_N20
\u1|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft0~9_combout\ = (\u1|op2\(2) & (\u1|ShiftLeft1~3_combout\ & (\u1|op2\(0) $ (\u1|op2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(0),
	datac => \u1|op2\(1),
	datad => \u1|ShiftLeft1~3_combout\,
	combout => \u1|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X77_Y43_N0
\u1|ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftRight1~18_combout\ = (!\u1|op2\(2) & ((\u1|op2\(1) & ((\u1|ShiftRight0~8_combout\))) # (!\u1|op2\(1) & (\u1|ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(2),
	datab => \u1|op2\(1),
	datac => \u1|ShiftRight0~10_combout\,
	datad => \u1|ShiftRight0~8_combout\,
	combout => \u1|ShiftRight1~18_combout\);

-- Location: LCCOMB_X76_Y44_N0
\u1|res~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~69_combout\ = (\u1|ShiftLeft0~9_combout\) # ((\u1|ShiftRight1~18_combout\) # ((\u1|res~68_combout\ & !\u1|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~68_combout\,
	datab => \u1|ShiftLeft0~9_combout\,
	datac => \u1|Add3~1_combout\,
	datad => \u1|ShiftRight1~18_combout\,
	combout => \u1|res~69_combout\);

-- Location: LCCOMB_X75_Y42_N30
\u1|res~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~73_combout\ = (\u1|opc\(0) & ((\u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # ((\u1|Mod1|auto_generated|divider|divider|sel\(18))))) # (!\u1|opc\(0) & (((\u1|Mod0|auto_generated|divider|divider|sel\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \u1|opc\(0),
	datac => \u1|Mod0|auto_generated|divider|divider|sel\(18),
	datad => \u1|Mod1|auto_generated|divider|divider|sel\(18),
	combout => \u1|res~73_combout\);

-- Location: LCCOMB_X72_Y42_N4
\u1|res~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~74_combout\ = (\u1|opc\(0) & (((\u1|Add1~10_combout\) # (\u1|opc\(2))))) # (!\u1|opc\(0) & (\u1|Add0~10_combout\ & ((!\u1|opc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~10_combout\,
	datab => \u1|Add1~10_combout\,
	datac => \u1|opc\(0),
	datad => \u1|opc\(2),
	combout => \u1|res~74_combout\);

-- Location: LCCOMB_X76_Y42_N2
\u1|res~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~75_combout\ = (\u1|opc\(2) & (!\u1|res~73_combout\ & ((\u1|res~74_combout\) # (!\u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)))) # (!\u1|opc\(2) & (((\u1|res~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|res~73_combout\,
	datac => \u1|res~74_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \u1|res~75_combout\);

-- Location: LCCOMB_X77_Y44_N4
\u1|res~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~76_combout\ = (\u1|opc\(4) & ((\u1|res~72_combout\) # ((\u1|opc\(1))))) # (!\u1|opc\(4) & (((\u1|res~75_combout\ & !\u1|opc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~72_combout\,
	datab => \u1|opc\(4),
	datac => \u1|res~75_combout\,
	datad => \u1|opc\(1),
	combout => \u1|res~76_combout\);

-- Location: LCCOMB_X77_Y44_N14
\u1|res~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~77_combout\ = (\u1|opc\(0) & (\u1|op2\(5) $ (((!\u1|op1[5]~_Duplicate_1_q\) # (!\u1|opc\(2)))))) # (!\u1|opc\(0) & (\u1|op1[5]~_Duplicate_1_q\ $ (((\u1|op2\(5)) # (!\u1|opc\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(5),
	datab => \u1|opc\(0),
	datac => \u1|opc\(2),
	datad => \u1|op1[5]~_Duplicate_1_q\,
	combout => \u1|res~77_combout\);

-- Location: LCCOMB_X73_Y44_N0
\u1|Mod1|auto_generated|divider|divider|StageOut[52]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\ = (\u1|op1[7]~_Duplicate_1_q\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\)) # (!\u1|op1[7]~_Duplicate_1_q\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\)) # (!\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\);

-- Location: LCCOMB_X77_Y44_N26
\u1|Mod1|auto_generated|divider|divider|StageOut[61]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[61]~33_combout\ = (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mod1|auto_generated|divider|divider|StageOut[52]~24_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[61]~33_combout\);

-- Location: LCCOMB_X73_Y41_N2
\u1|Mod0|auto_generated|divider|divider|StageOut[52]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\ = (\u1|op2\(7) & (\u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\)) # (!\u1|op2\(7) & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\)) # (!\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\);

-- Location: LCCOMB_X77_Y44_N18
\u1|Mod0|auto_generated|divider|divider|StageOut[61]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[61]~33_combout\ = (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[52]~24_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[61]~33_combout\);

-- Location: LCCOMB_X77_Y44_N20
\u1|res~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~71_combout\ = (\u1|res~70_combout\ & (((\u1|Mod1|auto_generated|divider|divider|StageOut[61]~33_combout\)) # (!\u1|opc\(2)))) # (!\u1|res~70_combout\ & (\u1|opc\(2) & ((\u1|Mod0|auto_generated|divider|divider|StageOut[61]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~70_combout\,
	datab => \u1|opc\(2),
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[61]~33_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[61]~33_combout\,
	combout => \u1|res~71_combout\);

-- Location: LCCOMB_X77_Y44_N12
\u1|res~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~78_combout\ = (\u1|opc\(1) & ((\u1|res~76_combout\ & (\u1|res~77_combout\)) # (!\u1|res~76_combout\ & ((\u1|res~71_combout\))))) # (!\u1|opc\(1) & (\u1|res~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(1),
	datab => \u1|res~76_combout\,
	datac => \u1|res~77_combout\,
	datad => \u1|res~71_combout\,
	combout => \u1|res~78_combout\);

-- Location: LCCOMB_X77_Y44_N30
\u1|res~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~79_combout\ = (\u1|res[6]~4_combout\ & (\u1|res[6]~6_combout\)) # (!\u1|res[6]~4_combout\ & ((\u1|res[6]~6_combout\ & (\u1|res~69_combout\)) # (!\u1|res[6]~6_combout\ & ((\u1|res~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res[6]~4_combout\,
	datab => \u1|res[6]~6_combout\,
	datac => \u1|res~69_combout\,
	datad => \u1|res~78_combout\,
	combout => \u1|res~79_combout\);

-- Location: LCCOMB_X77_Y43_N22
\u1|res~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~80_combout\ = (!\u1|Add3~0_combout\ & ((\u1|Add3~1_combout\ & ((\u1|ShiftRight0~8_combout\))) # (!\u1|Add3~1_combout\ & (\u1|ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add3~1_combout\,
	datab => \u1|Add3~0_combout\,
	datac => \u1|ShiftRight0~10_combout\,
	datad => \u1|ShiftRight0~8_combout\,
	combout => \u1|res~80_combout\);

-- Location: LCCOMB_X76_Y44_N18
\u1|res~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~111_combout\ = (\u1|res~79_combout\ & (((\u1|res~80_combout\) # (!\u1|res[6]~4_combout\)))) # (!\u1|res~79_combout\ & (\u1|ShiftRight1~18_combout\ & ((\u1|res[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~18_combout\,
	datab => \u1|res~80_combout\,
	datac => \u1|res~79_combout\,
	datad => \u1|res[6]~4_combout\,
	combout => \u1|res~111_combout\);

-- Location: LCCOMB_X76_Y44_N4
\u1|res~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~112_combout\ = (\u1|opc\(7) & (\u1|ShiftLeft1~9_combout\)) # (!\u1|opc\(7) & ((\u1|res~111_combout\) # ((\u1|ShiftLeft1~9_combout\ & \u1|res~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(7),
	datab => \u1|ShiftLeft1~9_combout\,
	datac => \u1|res~79_combout\,
	datad => \u1|res~111_combout\,
	combout => \u1|res~112_combout\);

-- Location: FF_X76_Y44_N5
\u1|res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|res~112_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u1|res[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|res\(5));

-- Location: LCCOMB_X89_Y44_N30
\u1|ans[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[5]~6_combout\ = !\u1|res\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|res\(5),
	combout => \u1|ans[5]~6_combout\);

-- Location: FF_X89_Y44_N31
\u1|ans[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|ans[5]~6_combout\,
	ena => \u1|ans[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ans\(5));

-- Location: LCCOMB_X72_Y44_N24
\u1|res~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~95_combout\ = (\u1|op2\(0) & ((\u1|op1[6]~_Duplicate_1_q\))) # (!\u1|op2\(0) & (\u1|op1[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|op2\(0),
	datac => \u1|op1[6]~_Duplicate_1_q\,
	combout => \u1|res~95_combout\);

-- Location: LCCOMB_X72_Y44_N14
\u1|ShiftLeft1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~13_combout\ = (!\u1|op2\(1) & ((\u1|op2\(2) & ((\u1|ShiftLeft1~3_combout\))) # (!\u1|op2\(2) & (\u1|res~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datab => \u1|res~95_combout\,
	datac => \u1|op2\(2),
	datad => \u1|ShiftLeft1~3_combout\,
	combout => \u1|ShiftLeft1~13_combout\);

-- Location: LCCOMB_X76_Y44_N24
\u1|ShiftLeft1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ShiftLeft1~14_combout\ = (\u1|ShiftLeft1~13_combout\) # ((\u1|op2\(1) & \u1|ShiftLeft1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(1),
	datac => \u1|ShiftLeft1~8_combout\,
	datad => \u1|ShiftLeft1~13_combout\,
	combout => \u1|ShiftLeft1~14_combout\);

-- Location: LCCOMB_X76_Y44_N2
\u1|res~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~110_combout\ = (\u1|ShiftLeft1~14_combout\) # ((!\u1|op2\(0) & (\u1|op1[7]~_Duplicate_1_q\ & \u1|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(0),
	datab => \u1|ShiftLeft1~14_combout\,
	datac => \u1|op1[7]~_Duplicate_1_q\,
	datad => \u1|ShiftRight0~11_combout\,
	combout => \u1|res~110_combout\);

-- Location: LCCOMB_X72_Y42_N24
\u1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~14_combout\ = \u1|op2\(7) $ (\u1|Add1~13\ $ (!\u1|op1[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|op2\(7),
	datad => \u1|op1[7]~_Duplicate_1_q\,
	cin => \u1|Add1~13\,
	combout => \u1|Add1~14_combout\);

-- Location: LCCOMB_X72_Y43_N24
\u1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~14_combout\ = \u1|op1[7]~_Duplicate_1_q\ $ (\u1|Add0~13\ $ (\u1|op2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datad => \u1|op2\(7),
	cin => \u1|Add0~13\,
	combout => \u1|Add0~14_combout\);

-- Location: LCCOMB_X73_Y43_N12
\u1|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|selnose\(0) = ((\u1|Mod0|auto_generated|divider|divider|sel\(18)) # ((!\u1|op1[7]~_Duplicate_1_q\ & \u1|op2\(0)))) # (!\u1|ShiftRight1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op1[7]~_Duplicate_1_q\,
	datab => \u1|ShiftRight1~7_combout\,
	datac => \u1|op2\(0),
	datad => \u1|Mod0|auto_generated|divider|divider|sel\(18),
	combout => \u1|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X72_Y43_N8
\u1|res~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~101_combout\ = (\u1|opc\(2) & (((\u1|opc\(0)) # (!\u1|Mod0|auto_generated|divider|divider|selnose\(0))))) # (!\u1|opc\(2) & (\u1|Add0~14_combout\ & ((!\u1|opc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|Add0~14_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|selnose\(0),
	datad => \u1|opc\(0),
	combout => \u1|res~101_combout\);

-- Location: LCCOMB_X72_Y43_N28
\u1|res~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~102_combout\ = (\u1|res~101_combout\ & (((!\u1|opc\(0))) # (!\u1|Mod1|auto_generated|divider|divider|selnose\(0)))) # (!\u1|res~101_combout\ & (((\u1|Add1~14_combout\ & \u1|opc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mod1|auto_generated|divider|divider|selnose\(0),
	datab => \u1|Add1~14_combout\,
	datac => \u1|res~101_combout\,
	datad => \u1|opc\(0),
	combout => \u1|res~102_combout\);

-- Location: LCCOMB_X73_Y43_N26
\u1|res~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~103_combout\ = (\u1|opc\(1) & (((\u1|opc\(4))))) # (!\u1|opc\(1) & ((\u1|opc\(4) & (\u1|res~100_combout\)) # (!\u1|opc\(4) & ((\u1|res~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~100_combout\,
	datab => \u1|opc\(1),
	datac => \u1|res~102_combout\,
	datad => \u1|opc\(4),
	combout => \u1|res~103_combout\);

-- Location: LCCOMB_X73_Y43_N20
\u1|res~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~104_combout\ = (\u1|opc\(0) & (\u1|op2\(7) $ (((!\u1|op1[7]~_Duplicate_1_q\) # (!\u1|opc\(2)))))) # (!\u1|opc\(0) & (\u1|op1[7]~_Duplicate_1_q\ $ (((\u1|op2\(7)) # (!\u1|opc\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(0),
	datab => \u1|opc\(2),
	datac => \u1|op2\(7),
	datad => \u1|op1[7]~_Duplicate_1_q\,
	combout => \u1|res~104_combout\);

-- Location: LCCOMB_X50_Y68_N0
\u1|clk_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clk_out~feeder_combout\ = \u1|clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|clk_out~0_combout\,
	combout => \u1|clk_out~feeder_combout\);

-- Location: LCCOMB_X49_Y68_N10
\u1|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~11_combout\ = (\u1|Add4~12_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add4~12_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~11_combout\);

-- Location: FF_X48_Y68_N23
\u1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u1|counter~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(6));

-- Location: LCCOMB_X48_Y68_N2
\u1|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~2_combout\ = (\u1|counter\(1) & (!\u1|Add4~1\)) # (!\u1|counter\(1) & ((\u1|Add4~1\) # (GND)))
-- \u1|Add4~3\ = CARRY((!\u1|Add4~1\) # (!\u1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(1),
	datad => VCC,
	cin => \u1|Add4~1\,
	combout => \u1|Add4~2_combout\,
	cout => \u1|Add4~3\);

-- Location: FF_X48_Y68_N3
\u1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(1));

-- Location: LCCOMB_X48_Y68_N4
\u1|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~4_combout\ = (\u1|counter\(2) & (\u1|Add4~3\ $ (GND))) # (!\u1|counter\(2) & (!\u1|Add4~3\ & VCC))
-- \u1|Add4~5\ = CARRY((\u1|counter\(2) & !\u1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(2),
	datad => VCC,
	cin => \u1|Add4~3\,
	combout => \u1|Add4~4_combout\,
	cout => \u1|Add4~5\);

-- Location: FF_X48_Y68_N5
\u1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(2));

-- Location: LCCOMB_X48_Y68_N8
\u1|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~8_combout\ = (\u1|counter\(4) & (\u1|Add4~7\ $ (GND))) # (!\u1|counter\(4) & (!\u1|Add4~7\ & VCC))
-- \u1|Add4~9\ = CARRY((\u1|counter\(4) & !\u1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(4),
	datad => VCC,
	cin => \u1|Add4~7\,
	combout => \u1|Add4~8_combout\,
	cout => \u1|Add4~9\);

-- Location: FF_X48_Y68_N9
\u1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(4));

-- Location: LCCOMB_X48_Y68_N10
\u1|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~10_combout\ = (\u1|counter\(5) & (!\u1|Add4~9\)) # (!\u1|counter\(5) & ((\u1|Add4~9\) # (GND)))
-- \u1|Add4~11\ = CARRY((!\u1|Add4~9\) # (!\u1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(5),
	datad => VCC,
	cin => \u1|Add4~9\,
	combout => \u1|Add4~10_combout\,
	cout => \u1|Add4~11\);

-- Location: FF_X48_Y68_N11
\u1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(5));

-- Location: LCCOMB_X48_Y68_N14
\u1|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~14_combout\ = (\u1|counter\(7) & (!\u1|Add4~13\)) # (!\u1|counter\(7) & ((\u1|Add4~13\) # (GND)))
-- \u1|Add4~15\ = CARRY((!\u1|Add4~13\) # (!\u1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(7),
	datad => VCC,
	cin => \u1|Add4~13\,
	combout => \u1|Add4~14_combout\,
	cout => \u1|Add4~15\);

-- Location: FF_X48_Y68_N15
\u1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(7));

-- Location: LCCOMB_X49_Y68_N28
\u1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~8_combout\ = (!\u1|counter\(4) & (\u1|counter\(6) & (!\u1|counter\(5) & !\u1|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(4),
	datab => \u1|counter\(6),
	datac => \u1|counter\(5),
	datad => \u1|counter\(7),
	combout => \u1|Equal0~8_combout\);

-- Location: LCCOMB_X48_Y68_N16
\u1|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~16_combout\ = (\u1|counter\(8) & (\u1|Add4~15\ $ (GND))) # (!\u1|counter\(8) & (!\u1|Add4~15\ & VCC))
-- \u1|Add4~17\ = CARRY((\u1|counter\(8) & !\u1|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(8),
	datad => VCC,
	cin => \u1|Add4~15\,
	combout => \u1|Add4~16_combout\,
	cout => \u1|Add4~17\);

-- Location: FF_X48_Y68_N17
\u1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(8));

-- Location: LCCOMB_X48_Y68_N18
\u1|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~18_combout\ = (\u1|counter\(9) & (!\u1|Add4~17\)) # (!\u1|counter\(9) & ((\u1|Add4~17\) # (GND)))
-- \u1|Add4~19\ = CARRY((!\u1|Add4~17\) # (!\u1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(9),
	datad => VCC,
	cin => \u1|Add4~17\,
	combout => \u1|Add4~18_combout\,
	cout => \u1|Add4~19\);

-- Location: FF_X48_Y68_N19
\u1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(9));

-- Location: LCCOMB_X48_Y68_N20
\u1|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~20_combout\ = (\u1|counter\(10) & (\u1|Add4~19\ $ (GND))) # (!\u1|counter\(10) & (!\u1|Add4~19\ & VCC))
-- \u1|Add4~21\ = CARRY((\u1|counter\(10) & !\u1|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(10),
	datad => VCC,
	cin => \u1|Add4~19\,
	combout => \u1|Add4~20_combout\,
	cout => \u1|Add4~21\);

-- Location: FF_X48_Y68_N21
\u1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(10));

-- Location: LCCOMB_X49_Y68_N20
\u1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~6_combout\ = (\u1|counter\(11) & (!\u1|counter\(9) & (!\u1|counter\(8) & !\u1|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(11),
	datab => \u1|counter\(9),
	datac => \u1|counter\(8),
	datad => \u1|counter\(10),
	combout => \u1|Equal0~6_combout\);

-- Location: LCCOMB_X48_Y68_N24
\u1|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~24_combout\ = (\u1|counter\(12) & (\u1|Add4~23\ $ (GND))) # (!\u1|counter\(12) & (!\u1|Add4~23\ & VCC))
-- \u1|Add4~25\ = CARRY((\u1|counter\(12) & !\u1|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(12),
	datad => VCC,
	cin => \u1|Add4~23\,
	combout => \u1|Add4~24_combout\,
	cout => \u1|Add4~25\);

-- Location: LCCOMB_X49_Y68_N4
\u1|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~9_combout\ = (!\u1|Equal0~10_combout\ & \u1|Add4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Equal0~10_combout\,
	datad => \u1|Add4~24_combout\,
	combout => \u1|counter~9_combout\);

-- Location: FF_X49_Y68_N5
\u1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(12));

-- Location: LCCOMB_X48_Y68_N26
\u1|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~26_combout\ = (\u1|counter\(13) & (!\u1|Add4~25\)) # (!\u1|counter\(13) & ((\u1|Add4~25\) # (GND)))
-- \u1|Add4~27\ = CARRY((!\u1|Add4~25\) # (!\u1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(13),
	datad => VCC,
	cin => \u1|Add4~25\,
	combout => \u1|Add4~26_combout\,
	cout => \u1|Add4~27\);

-- Location: LCCOMB_X49_Y68_N22
\u1|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~8_combout\ = (\u1|Add4~26_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add4~26_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~8_combout\);

-- Location: FF_X49_Y68_N23
\u1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(13));

-- Location: LCCOMB_X48_Y68_N30
\u1|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~30_combout\ = (\u1|counter\(15) & (!\u1|Add4~29\)) # (!\u1|counter\(15) & ((\u1|Add4~29\) # (GND)))
-- \u1|Add4~31\ = CARRY((!\u1|Add4~29\) # (!\u1|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(15),
	datad => VCC,
	cin => \u1|Add4~29\,
	combout => \u1|Add4~30_combout\,
	cout => \u1|Add4~31\);

-- Location: FF_X48_Y68_N31
\u1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(15));

-- Location: LCCOMB_X49_Y68_N12
\u1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~5_combout\ = (\u1|counter\(14) & !\u1|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(14),
	datad => \u1|counter\(15),
	combout => \u1|Equal0~5_combout\);

-- Location: LCCOMB_X49_Y68_N14
\u1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~7_combout\ = (\u1|counter\(13) & (\u1|Equal0~6_combout\ & (\u1|counter\(12) & \u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(13),
	datab => \u1|Equal0~6_combout\,
	datac => \u1|counter\(12),
	datad => \u1|Equal0~5_combout\,
	combout => \u1|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y67_N26
\u1|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~1_combout\ = (\u1|Add4~44_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add4~44_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~1_combout\);

-- Location: FF_X49_Y67_N27
\u1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(22));

-- Location: LCCOMB_X49_Y67_N18
\u1|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~3_combout\ = (\u1|Add4~40_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add4~40_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~3_combout\);

-- Location: FF_X49_Y67_N19
\u1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(20));

-- Location: LCCOMB_X48_Y67_N0
\u1|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~32_combout\ = (\u1|counter\(16) & (\u1|Add4~31\ $ (GND))) # (!\u1|counter\(16) & (!\u1|Add4~31\ & VCC))
-- \u1|Add4~33\ = CARRY((\u1|counter\(16) & !\u1|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(16),
	datad => VCC,
	cin => \u1|Add4~31\,
	combout => \u1|Add4~32_combout\,
	cout => \u1|Add4~33\);

-- Location: LCCOMB_X49_Y67_N22
\u1|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~6_combout\ = (\u1|Add4~32_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add4~32_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~6_combout\);

-- Location: FF_X49_Y67_N23
\u1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(16));

-- Location: LCCOMB_X48_Y67_N2
\u1|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~34_combout\ = (\u1|counter\(17) & (!\u1|Add4~33\)) # (!\u1|counter\(17) & ((\u1|Add4~33\) # (GND)))
-- \u1|Add4~35\ = CARRY((!\u1|Add4~33\) # (!\u1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(17),
	datad => VCC,
	cin => \u1|Add4~33\,
	combout => \u1|Add4~34_combout\,
	cout => \u1|Add4~35\);

-- Location: FF_X48_Y67_N3
\u1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(17));

-- Location: LCCOMB_X48_Y67_N4
\u1|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~36_combout\ = (\u1|counter\(18) & (\u1|Add4~35\ $ (GND))) # (!\u1|counter\(18) & (!\u1|Add4~35\ & VCC))
-- \u1|Add4~37\ = CARRY((\u1|counter\(18) & !\u1|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(18),
	datad => VCC,
	cin => \u1|Add4~35\,
	combout => \u1|Add4~36_combout\,
	cout => \u1|Add4~37\);

-- Location: LCCOMB_X49_Y67_N28
\u1|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~5_combout\ = (\u1|Add4~36_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add4~36_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~5_combout\);

-- Location: FF_X49_Y67_N29
\u1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(18));

-- Location: LCCOMB_X48_Y67_N14
\u1|Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~46_combout\ = (\u1|counter\(23) & (!\u1|Add4~45\)) # (!\u1|counter\(23) & ((\u1|Add4~45\) # (GND)))
-- \u1|Add4~47\ = CARRY((!\u1|Add4~45\) # (!\u1|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(23),
	datad => VCC,
	cin => \u1|Add4~45\,
	combout => \u1|Add4~46_combout\,
	cout => \u1|Add4~47\);

-- Location: FF_X48_Y67_N15
\u1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(23));

-- Location: LCCOMB_X48_Y67_N16
\u1|Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~48_combout\ = (\u1|counter\(24) & (\u1|Add4~47\ $ (GND))) # (!\u1|counter\(24) & (!\u1|Add4~47\ & VCC))
-- \u1|Add4~49\ = CARRY((\u1|counter\(24) & !\u1|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(24),
	datad => VCC,
	cin => \u1|Add4~47\,
	combout => \u1|Add4~48_combout\,
	cout => \u1|Add4~49\);

-- Location: LCCOMB_X49_Y67_N14
\u1|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~0_combout\ = (\u1|Add4~48_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add4~48_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~0_combout\);

-- Location: FF_X49_Y67_N15
\u1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(24));

-- Location: LCCOMB_X48_Y67_N18
\u1|Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~50_combout\ = (\u1|counter\(25) & (!\u1|Add4~49\)) # (!\u1|counter\(25) & ((\u1|Add4~49\) # (GND)))
-- \u1|Add4~51\ = CARRY((!\u1|Add4~49\) # (!\u1|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(25),
	datad => VCC,
	cin => \u1|Add4~49\,
	combout => \u1|Add4~50_combout\,
	cout => \u1|Add4~51\);

-- Location: FF_X48_Y67_N19
\u1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(25));

-- Location: LCCOMB_X48_Y67_N20
\u1|Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~52_combout\ = (\u1|counter\(26) & (\u1|Add4~51\ $ (GND))) # (!\u1|counter\(26) & (!\u1|Add4~51\ & VCC))
-- \u1|Add4~53\ = CARRY((\u1|counter\(26) & !\u1|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(26),
	datad => VCC,
	cin => \u1|Add4~51\,
	combout => \u1|Add4~52_combout\,
	cout => \u1|Add4~53\);

-- Location: FF_X48_Y67_N21
\u1|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(26));

-- Location: LCCOMB_X49_Y67_N16
\u1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (!\u1|counter\(27) & (!\u1|counter\(25) & (\u1|counter\(24) & !\u1|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(27),
	datab => \u1|counter\(25),
	datac => \u1|counter\(24),
	datad => \u1|counter\(26),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y67_N24
\u1|Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~56_combout\ = (\u1|counter\(28) & (\u1|Add4~55\ $ (GND))) # (!\u1|counter\(28) & (!\u1|Add4~55\ & VCC))
-- \u1|Add4~57\ = CARRY((\u1|counter\(28) & !\u1|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(28),
	datad => VCC,
	cin => \u1|Add4~55\,
	combout => \u1|Add4~56_combout\,
	cout => \u1|Add4~57\);

-- Location: FF_X48_Y67_N25
\u1|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(28));

-- Location: LCCOMB_X48_Y67_N26
\u1|Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add4~58_combout\ = (\u1|counter\(29) & (!\u1|Add4~57\)) # (!\u1|counter\(29) & ((\u1|Add4~57\) # (GND)))
-- \u1|Add4~59\ = CARRY((!\u1|Add4~57\) # (!\u1|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(29),
	datad => VCC,
	cin => \u1|Add4~57\,
	combout => \u1|Add4~58_combout\,
	cout => \u1|Add4~59\);

-- Location: FF_X48_Y67_N27
\u1|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(29));

-- Location: FF_X48_Y67_N29
\u1|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add4~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(30));

-- Location: LCCOMB_X49_Y67_N8
\u1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (!\u1|counter\(31) & (!\u1|counter\(28) & (!\u1|counter\(29) & !\u1|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(31),
	datab => \u1|counter\(28),
	datac => \u1|counter\(29),
	datad => \u1|counter\(30),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y67_N20
\u1|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter~2_combout\ = (\u1|Add4~42_combout\ & !\u1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add4~42_combout\,
	datad => \u1|Equal0~10_combout\,
	combout => \u1|counter~2_combout\);

-- Location: FF_X49_Y67_N21
\u1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(21));

-- Location: LCCOMB_X49_Y67_N12
\u1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (\u1|counter\(20) & (\u1|counter\(21) & (\u1|counter\(22) & !\u1|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(20),
	datab => \u1|counter\(21),
	datac => \u1|counter\(22),
	datad => \u1|counter\(23),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y67_N2
\u1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = (\u1|Equal0~3_combout\ & (\u1|Equal0~1_combout\ & (\u1|Equal0~0_combout\ & \u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Equal0~2_combout\,
	combout => \u1|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y68_N24
\u1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~10_combout\ = (\u1|Equal0~9_combout\ & (\u1|Equal0~8_combout\ & (\u1|Equal0~7_combout\ & \u1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~9_combout\,
	datab => \u1|Equal0~8_combout\,
	datac => \u1|Equal0~7_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|Equal0~10_combout\);

-- Location: FF_X50_Y68_N1
\u1|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|clk_out~feeder_combout\,
	ena => \u1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clk_out~q\);

-- Location: CLKCTRL_G14
\u1|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|clk_out~clkctrl_outclk\);

-- Location: DSPMULT_X71_Y44_N0
\u1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \u1|clk_out~clkctrl_outclk\,
	aclr => GND,
	ena => \u1|op1[7]~0_combout\,
	dataa => \u1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \u1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X80_Y44_N18
\u1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~14_combout\ = \u1|op2\(7) $ (\u1|Add2~13\ $ (!\u1|op1[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|op2\(7),
	datad => \u1|op1[7]~_Duplicate_1_q\,
	cin => \u1|Add2~13\,
	combout => \u1|Add2~14_combout\);

-- Location: LCCOMB_X74_Y44_N0
\u1|res~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~98_combout\ = (\u1|opc\(2) & (\u1|opc\(0))) # (!\u1|opc\(2) & ((\u1|opc\(0) & (\u1|Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!\u1|opc\(0) & ((\u1|Add2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|opc\(0),
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \u1|Add2~14_combout\,
	combout => \u1|res~98_combout\);

-- Location: LCCOMB_X74_Y44_N30
\u1|Mod1|auto_generated|divider|divider|StageOut[63]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod1|auto_generated|divider|divider|StageOut[63]~35_combout\ = (\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\)) # 
-- (!\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datad => \u1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	combout => \u1|Mod1|auto_generated|divider|divider|StageOut[63]~35_combout\);

-- Location: LCCOMB_X74_Y41_N26
\u1|Mod0|auto_generated|divider|divider|StageOut[63]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mod0|auto_generated|divider|divider|StageOut[63]~35_combout\ = (\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\)) # 
-- (!\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datac => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \u1|Mod0|auto_generated|divider|divider|StageOut[63]~35_combout\);

-- Location: LCCOMB_X74_Y44_N24
\u1|res~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~99_combout\ = (\u1|opc\(2) & ((\u1|res~98_combout\ & (\u1|Mod1|auto_generated|divider|divider|StageOut[63]~35_combout\)) # (!\u1|res~98_combout\ & ((\u1|Mod0|auto_generated|divider|divider|StageOut[63]~35_combout\))))) # (!\u1|opc\(2) & 
-- (\u1|res~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(2),
	datab => \u1|res~98_combout\,
	datac => \u1|Mod1|auto_generated|divider|divider|StageOut[63]~35_combout\,
	datad => \u1|Mod0|auto_generated|divider|divider|StageOut[63]~35_combout\,
	combout => \u1|res~99_combout\);

-- Location: LCCOMB_X74_Y44_N22
\u1|res~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~105_combout\ = (\u1|opc\(1) & ((\u1|res~103_combout\ & (\u1|res~104_combout\)) # (!\u1|res~103_combout\ & ((\u1|res~99_combout\))))) # (!\u1|opc\(1) & (\u1|res~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|opc\(1),
	datab => \u1|res~103_combout\,
	datac => \u1|res~104_combout\,
	datad => \u1|res~99_combout\,
	combout => \u1|res~105_combout\);

-- Location: LCCOMB_X76_Y44_N6
\u1|res~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~106_combout\ = (\u1|res[6]~6_combout\ & ((\u1|res~97_combout\) # ((\u1|res[6]~4_combout\)))) # (!\u1|res[6]~6_combout\ & (((!\u1|res[6]~4_combout\ & \u1|res~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|res~97_combout\,
	datab => \u1|res[6]~6_combout\,
	datac => \u1|res[6]~4_combout\,
	datad => \u1|res~105_combout\,
	combout => \u1|res~106_combout\);

-- Location: LCCOMB_X76_Y44_N28
\u1|res~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~107_combout\ = (\u1|res[6]~4_combout\ & ((\u1|res~106_combout\ & ((\u1|res~110_combout\))) # (!\u1|res~106_combout\ & (\u1|ShiftRight1~19_combout\)))) # (!\u1|res[6]~4_combout\ & (((\u1|res~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ShiftRight1~19_combout\,
	datab => \u1|res~110_combout\,
	datac => \u1|res[6]~4_combout\,
	datad => \u1|res~106_combout\,
	combout => \u1|res~107_combout\);

-- Location: LCCOMB_X76_Y44_N16
\u1|res~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|res~108_combout\ = (\u1|opc\(7) & (\u1|ShiftLeft1~14_combout\)) # (!\u1|opc\(7) & ((\u1|res~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|ShiftLeft1~14_combout\,
	datac => \u1|opc\(7),
	datad => \u1|res~107_combout\,
	combout => \u1|res~108_combout\);

-- Location: FF_X76_Y44_N17
\u1|res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	d => \u1|res~108_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u1|res[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|res\(7));

-- Location: LCCOMB_X81_Y44_N16
\u1|ans[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ans[7]~8_combout\ = !\u1|res\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|res\(7),
	combout => \u1|ans[7]~8_combout\);

-- Location: FF_X89_Y44_N15
\u1|ans[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out~clkctrl_outclk\,
	asdata => \u1|ans[7]~8_combout\,
	sload => VCC,
	ena => \u1|ans[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ans\(7));

-- Location: LCCOMB_X89_Y44_N18
\lcd_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data~9_combout\ = (\u1|state\(2) & (!\u1|ans\(7) & (!\u1|state\(1) & !\u1|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state\(2),
	datab => \u1|ans\(7),
	datac => \u1|state\(1),
	datad => \u1|state\(0),
	combout => \lcd_data~9_combout\);

-- Location: LCCOMB_X89_Y44_N24
\lcd_data[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[2]~10_combout\ = (\lcd_data~9_combout\ & ((!\u1|ans\(5)) # (!\u1|ans\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|ans\(6),
	datac => \u1|ans\(5),
	datad => \lcd_data~9_combout\,
	combout => \lcd_data[2]~10_combout\);

-- Location: LCCOMB_X89_Y44_N6
\lcd_data[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[2]~11_combout\ = (\lcd_data[2]~10_combout\) # ((\lcd_data~8_combout\ & ((\data[6]~input_o\) # (\data[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~input_o\,
	datab => \data[5]~input_o\,
	datac => \lcd_data~8_combout\,
	datad => \lcd_data[2]~10_combout\,
	combout => \lcd_data[2]~11_combout\);

-- Location: LCCOMB_X89_Y44_N4
\Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = \lcd_data[2]~11_combout\ $ (((\Equal6~0_combout\ & ((!\u1|ans\(4)))) # (!\Equal6~0_combout\ & (\data[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \u1|ans\(4),
	datad => \lcd_data[2]~11_combout\,
	combout => \Selector46~2_combout\);

-- Location: LCCOMB_X88_Y45_N6
\Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~4_combout\ = (\Equal4~4_combout\ & ((\Selector46~2_combout\))) # (!\Equal4~4_combout\ & (\Selector46~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~4_combout\,
	datac => \Selector46~3_combout\,
	datad => \Selector46~2_combout\,
	combout => \Selector46~4_combout\);

-- Location: LCCOMB_X88_Y45_N24
\lcd_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[0]~0_combout\ = (\LessThan9~20_combout\ & (\display_array~4_combout\)) # (!\LessThan9~20_combout\ & ((\Selector46~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~4_combout\,
	datab => \LessThan9~20_combout\,
	datad => \Selector46~4_combout\,
	combout => \lcd_data[0]~0_combout\);

-- Location: LCCOMB_X88_Y45_N0
\Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~5_combout\ = (!\Add1~60_combout\ & (!\LessThan4~3_combout\ & \LessThan5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~60_combout\,
	datac => \LessThan4~3_combout\,
	datad => \LessThan5~3_combout\,
	combout => \Selector46~5_combout\);

-- Location: LCCOMB_X88_Y45_N4
\Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~7_combout\ = (!\busy~8_combout\ & (!\Add1~62_combout\ & (\STATE.001~q\ & \Selector46~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~8_combout\,
	datab => \Add1~62_combout\,
	datac => \STATE.001~q\,
	datad => \Selector46~5_combout\,
	combout => \Selector46~7_combout\);

-- Location: LCCOMB_X87_Y45_N28
\lcd_data[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[2]~16_combout\ = (!\Equal4~4_combout\ & (\STATE.010~q\ & (!\LessThan9~20_combout\ & !\Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datab => \STATE.010~q\,
	datac => \LessThan9~20_combout\,
	datad => \Equal5~4_combout\,
	combout => \lcd_data[2]~16_combout\);

-- Location: LCCOMB_X87_Y46_N30
\lcd_data[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[2]~21_combout\ = (\lcd_data[2]~17_combout\) # ((\STATE.010~q\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datac => \Equal0~4_combout\,
	datad => \lcd_data[2]~17_combout\,
	combout => \lcd_data[2]~21_combout\);

-- Location: FF_X88_Y45_N25
\lcd_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcd_data[0]~0_combout\,
	asdata => \Selector46~7_combout\,
	sclr => \lcd_data[2]~16_combout\,
	sload => \ALT_INV_STATE.010~q\,
	ena => \lcd_data[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_data[0]~reg0_q\);

-- Location: LCCOMB_X88_Y44_N16
\Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (\Equal6~0_combout\ & (\u1|ans\(1) $ (((\u1|ans\(0) & \lcd_data[2]~15_combout\))))) # (!\Equal6~0_combout\ & (((\lcd_data[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ans\(0),
	datab => \u1|ans\(1),
	datac => \Equal6~0_combout\,
	datad => \lcd_data[2]~15_combout\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X88_Y44_N30
\Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~3_combout\ = (\Equal6~0_combout\ & (((!\Selector45~2_combout\)))) # (!\Equal6~0_combout\ & (\data[1]~input_o\ $ (((!\data[0]~input_o\ & \Selector45~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~input_o\,
	datab => \data[1]~input_o\,
	datac => \Equal6~0_combout\,
	datad => \Selector45~2_combout\,
	combout => \Selector45~3_combout\);

-- Location: LCCOMB_X89_Y44_N12
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\Equal6~0_combout\ & (\u1|ans\(5) $ (((\u1|ans\(4) & \lcd_data[2]~11_combout\))))) # (!\Equal6~0_combout\ & (((\lcd_data[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ans\(5),
	datab => \Equal6~0_combout\,
	datac => \u1|ans\(4),
	datad => \lcd_data[2]~11_combout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X89_Y44_N22
\Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\Equal6~0_combout\ & (((!\Selector45~0_combout\)))) # (!\Equal6~0_combout\ & (\data[5]~input_o\ $ (((!\data[4]~input_o\ & \Selector45~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \data[5]~input_o\,
	datad => \Selector45~0_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X88_Y44_N24
\Selector45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~4_combout\ = (\Equal4~4_combout\ & ((\Selector45~1_combout\))) # (!\Equal4~4_combout\ & (\Selector45~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~4_combout\,
	datac => \Selector45~3_combout\,
	datad => \Selector45~1_combout\,
	combout => \Selector45~4_combout\);

-- Location: LCCOMB_X88_Y44_N20
\lcd_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[1]~1_combout\ = (\LessThan9~20_combout\ & (\display_array~9_combout\)) # (!\LessThan9~20_combout\ & ((\Selector45~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~9_combout\,
	datab => \LessThan9~20_combout\,
	datad => \Selector45~4_combout\,
	combout => \lcd_data[1]~1_combout\);

-- Location: LCCOMB_X88_Y45_N28
\Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (\Selector46~6_combout\ & (!\Add1~60_combout\ & (!\LessThan1~2_combout\ & !\LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~6_combout\,
	datab => \Add1~60_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan2~4_combout\,
	combout => \Selector43~2_combout\);

-- Location: LCCOMB_X87_Y47_N8
\Selector45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~5_combout\ = (!\LessThan7~1_combout\ & (\LessThan7~3_combout\ & ((\Add1~60_combout\) # (\clk_count[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \Add1~60_combout\,
	datac => \clk_count[25]~0_combout\,
	datad => \LessThan7~3_combout\,
	combout => \Selector45~5_combout\);

-- Location: LCCOMB_X87_Y47_N14
\Selector45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~6_combout\ = (\Selector45~5_combout\ & ((\Add1~60_combout\) # ((!\LessThan4~3_combout\ & !\LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~3_combout\,
	datab => \Add1~60_combout\,
	datac => \Selector45~5_combout\,
	datad => \LessThan5~3_combout\,
	combout => \Selector45~6_combout\);

-- Location: LCCOMB_X88_Y44_N26
\Selector45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~7_combout\ = (\Selector43~2_combout\ & ((\LessThan3~1_combout\) # (\Selector45~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datac => \Selector43~2_combout\,
	datad => \Selector45~6_combout\,
	combout => \Selector45~7_combout\);

-- Location: FF_X88_Y44_N21
\lcd_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcd_data[1]~1_combout\,
	asdata => \Selector45~7_combout\,
	sclr => \lcd_data[2]~16_combout\,
	sload => \ALT_INV_STATE.010~q\,
	ena => \lcd_data[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_data[1]~reg0_q\);

-- Location: LCCOMB_X88_Y44_N0
\Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~3_combout\ = (\Equal6~0_combout\ & (\u1|ans\(0) & (\u1|ans\(1)))) # (!\Equal6~0_combout\ & (((\data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ans\(0),
	datab => \u1|ans\(1),
	datac => \Equal6~0_combout\,
	datad => \data[0]~input_o\,
	combout => \Selector44~3_combout\);

-- Location: LCCOMB_X88_Y44_N18
\Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~4_combout\ = (\Equal6~0_combout\ & (\u1|ans\(2) $ (((\lcd_data[2]~15_combout\ & \Selector44~3_combout\))))) # (!\Equal6~0_combout\ & (\lcd_data[2]~15_combout\ & ((!\Selector44~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \lcd_data[2]~15_combout\,
	datac => \u1|ans\(2),
	datad => \Selector44~3_combout\,
	combout => \Selector44~4_combout\);

-- Location: LCCOMB_X88_Y44_N4
\Selector44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~5_combout\ = (\Equal6~0_combout\ & (((!\Selector44~4_combout\)))) # (!\Equal6~0_combout\ & (\data[2]~input_o\ $ (((!\data[1]~input_o\ & \Selector44~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[1]~input_o\,
	datac => \Equal6~0_combout\,
	datad => \Selector44~4_combout\,
	combout => \Selector44~5_combout\);

-- Location: LCCOMB_X89_Y44_N8
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Equal6~0_combout\ & (((\u1|ans\(4) & \u1|ans\(5))))) # (!\Equal6~0_combout\ & (\data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \u1|ans\(4),
	datac => \u1|ans\(5),
	datad => \Equal6~0_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X89_Y44_N2
\Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\Equal6~0_combout\ & (\u1|ans\(6) $ (((\Selector44~0_combout\ & \lcd_data[2]~11_combout\))))) # (!\Equal6~0_combout\ & (((!\Selector44~0_combout\ & \lcd_data[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ans\(6),
	datab => \Equal6~0_combout\,
	datac => \Selector44~0_combout\,
	datad => \lcd_data[2]~11_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X89_Y44_N28
\Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (\Equal6~0_combout\ & (((!\Selector44~1_combout\)))) # (!\Equal6~0_combout\ & (\data[6]~input_o\ $ (((!\data[5]~input_o\ & \Selector44~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \data[5]~input_o\,
	datad => \Selector44~1_combout\,
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X88_Y44_N22
\Selector44~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~6_combout\ = (\Equal4~4_combout\ & ((\Selector44~2_combout\))) # (!\Equal4~4_combout\ & (\Selector44~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~4_combout\,
	datac => \Selector44~5_combout\,
	datad => \Selector44~2_combout\,
	combout => \Selector44~6_combout\);

-- Location: LCCOMB_X88_Y44_N14
\lcd_data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[2]~2_combout\ = (\LessThan9~20_combout\ & (\display_array~13_combout\)) # (!\LessThan9~20_combout\ & ((\Selector44~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~13_combout\,
	datab => \LessThan9~20_combout\,
	datad => \Selector44~6_combout\,
	combout => \lcd_data[2]~2_combout\);

-- Location: LCCOMB_X88_Y46_N26
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\LessThan3~0_combout\ & (\busy~7_combout\ & \LessThan7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \busy~7_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X87_Y47_N12
\Selector44~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~7_combout\ = (!\LessThan7~1_combout\ & (!\Add1~60_combout\ & (\clk_count[25]~0_combout\ & \LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \Add1~60_combout\,
	datac => \clk_count[25]~0_combout\,
	datad => \LessThan7~3_combout\,
	combout => \Selector44~7_combout\);

-- Location: LCCOMB_X88_Y44_N28
\Selector44~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~8_combout\ = (\Selector44~7_combout\ & ((\Add1~60_combout\) # ((!\LessThan5~3_combout\ & !\LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~3_combout\,
	datab => \Add1~60_combout\,
	datac => \LessThan4~3_combout\,
	datad => \Selector44~7_combout\,
	combout => \Selector44~8_combout\);

-- Location: LCCOMB_X88_Y44_N10
\Selector44~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~9_combout\ = (\LessThan1~2_combout\) # ((!\LessThan2~4_combout\ & ((\LessThan3~1_combout\) # (\Selector44~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => \LessThan1~2_combout\,
	datac => \LessThan3~1_combout\,
	datad => \Selector44~8_combout\,
	combout => \Selector44~9_combout\);

-- Location: LCCOMB_X88_Y44_N8
\Selector44~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~10_combout\ = (\STATE.001~q\ & ((\Add1~62_combout\) # ((!\Add1~60_combout\ & \Selector44~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.001~q\,
	datab => \Add1~60_combout\,
	datac => \Add1~62_combout\,
	datad => \Selector44~9_combout\,
	combout => \Selector44~10_combout\);

-- Location: FF_X88_Y44_N15
\lcd_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcd_data[2]~2_combout\,
	asdata => \Selector44~10_combout\,
	sclr => \lcd_data[2]~16_combout\,
	sload => \ALT_INV_STATE.010~q\,
	ena => \lcd_data[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_data[2]~reg0_q\);

-- Location: LCCOMB_X86_Y42_N26
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \data[7]~input_o\ $ (((\data[5]~input_o\) # ((\data[4]~input_o\) # (\data[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~input_o\,
	datab => \data[4]~input_o\,
	datac => \data[6]~input_o\,
	datad => \data[7]~input_o\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X89_Y44_N10
\Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~3_combout\ = (\Equal6~0_combout\ & (((\lcd_data[2]~11_combout\) # (!\u1|ans\(7))))) # (!\Equal6~0_combout\ & (\data[7]~input_o\ & ((!\lcd_data[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \u1|ans\(7),
	datad => \lcd_data[2]~11_combout\,
	combout => \Selector43~3_combout\);

-- Location: LCCOMB_X89_Y44_N0
\Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~4_combout\ = (\lcd_data[2]~11_combout\ & ((\Selector43~3_combout\ & (\Add2~0_combout\)) # (!\Selector43~3_combout\ & ((\Add3~0_combout\))))) # (!\lcd_data[2]~11_combout\ & (((\Selector43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add3~0_combout\,
	datac => \lcd_data[2]~11_combout\,
	datad => \Selector43~3_combout\,
	combout => \Selector43~4_combout\);

-- Location: LCCOMB_X87_Y44_N4
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \u1|ans\(3) $ (((\u1|ans\(0) & (\u1|ans\(1) & \u1|ans\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ans\(0),
	datab => \u1|ans\(1),
	datac => \u1|ans\(3),
	datad => \u1|ans\(2),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X87_Y44_N2
\Selector43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~5_combout\ = (\Equal6~0_combout\ & (((\lcd_data[2]~15_combout\) # (!\u1|ans\(3))))) # (!\Equal6~0_combout\ & (\data[3]~input_o\ & ((!\lcd_data[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \u1|ans\(3),
	datac => \Equal6~0_combout\,
	datad => \lcd_data[2]~15_combout\,
	combout => \Selector43~5_combout\);

-- Location: LCCOMB_X87_Y44_N0
\Selector43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~6_combout\ = (\lcd_data[2]~15_combout\ & ((\Selector43~5_combout\ & ((\Add5~0_combout\))) # (!\Selector43~5_combout\ & (\Add6~0_combout\)))) # (!\lcd_data[2]~15_combout\ & (((\Selector43~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add5~0_combout\,
	datac => \lcd_data[2]~15_combout\,
	datad => \Selector43~5_combout\,
	combout => \Selector43~6_combout\);

-- Location: LCCOMB_X88_Y45_N18
\Selector43~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~7_combout\ = (\Equal4~4_combout\ & (\Selector43~4_combout\)) # (!\Equal4~4_combout\ & ((\Selector43~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~4_combout\,
	datac => \Selector43~4_combout\,
	datad => \Selector43~6_combout\,
	combout => \Selector43~7_combout\);

-- Location: LCCOMB_X88_Y45_N2
\lcd_data[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[3]~3_combout\ = (\LessThan9~20_combout\ & (\display_array~18_combout\)) # (!\LessThan9~20_combout\ & ((\Selector43~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~18_combout\,
	datab => \LessThan9~20_combout\,
	datad => \Selector43~7_combout\,
	combout => \lcd_data[3]~3_combout\);

-- Location: LCCOMB_X88_Y45_N22
\Selector43~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~8_combout\ = (\LessThan7~3_combout\ & (\LessThan3~0_combout\ & (\busy~7_combout\ & \Selector43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~3_combout\,
	datab => \LessThan3~0_combout\,
	datac => \busy~7_combout\,
	datad => \Selector43~2_combout\,
	combout => \Selector43~8_combout\);

-- Location: FF_X88_Y45_N3
\lcd_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcd_data[3]~3_combout\,
	asdata => \Selector43~8_combout\,
	sclr => \lcd_data[2]~16_combout\,
	sload => \ALT_INV_STATE.010~q\,
	ena => \lcd_data[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_data[3]~reg0_q\);

-- Location: LCCOMB_X87_Y44_N8
\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = ((!\u1|ans\(2)) # (!\u1|ans\(1))) # (!\u1|ans\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ans\(0),
	datab => \u1|ans\(1),
	datad => \u1|ans\(2),
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X87_Y44_N30
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\lcd_data[2]~15_combout\ & ((\lcd_data~18_combout\) # ((\Add5~1_combout\ & \lcd_data~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~18_combout\,
	datab => \Add5~1_combout\,
	datac => \lcd_data~13_combout\,
	datad => \lcd_data[2]~15_combout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X86_Y44_N22
\lcd_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data~19_combout\ = (\lcd_data~8_combout\ & ((\data[5]~input_o\) # ((\data[4]~input_o\) # (\data[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~input_o\,
	datab => \data[4]~input_o\,
	datac => \data[6]~input_o\,
	datad => \lcd_data~8_combout\,
	combout => \lcd_data~19_combout\);

-- Location: LCCOMB_X89_Y44_N16
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ((!\u1|ans\(6)) # (!\u1|ans\(4))) # (!\u1|ans\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ans\(5),
	datab => \u1|ans\(4),
	datac => \u1|ans\(6),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X87_Y44_N24
\Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\lcd_data[2]~11_combout\ & ((\lcd_data~19_combout\) # ((\lcd_data~9_combout\ & \Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~9_combout\,
	datab => \lcd_data~19_combout\,
	datac => \Add2~1_combout\,
	datad => \lcd_data[2]~11_combout\,
	combout => \Selector40~1_combout\);

-- Location: LCCOMB_X87_Y44_N18
\lcd_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data~20_combout\ = (\Equal4~4_combout\ & (((!\Selector40~1_combout\)))) # (!\Equal4~4_combout\ & (\Equal5~4_combout\ & (!\Selector40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datab => \Equal4~4_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector40~1_combout\,
	combout => \lcd_data~20_combout\);

-- Location: LCCOMB_X86_Y45_N0
\lcd_data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[4]~4_combout\ = (\LessThan9~20_combout\ & (\display_array~23_combout\)) # (!\LessThan9~20_combout\ & ((\lcd_data~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~23_combout\,
	datab => \LessThan9~20_combout\,
	datad => \lcd_data~20_combout\,
	combout => \lcd_data[4]~4_combout\);

-- Location: LCCOMB_X86_Y45_N26
\Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~2_combout\ = ((\Add1~62_combout\) # ((\LessThan1~2_combout\ & !\Add1~60_combout\))) # (!\STATE.001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.001~q\,
	datab => \Add1~62_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Add1~60_combout\,
	combout => \Selector42~2_combout\);

-- Location: FF_X86_Y45_N1
\lcd_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcd_data[4]~4_combout\,
	asdata => \Selector42~2_combout\,
	sload => \ALT_INV_STATE.010~q\,
	ena => \lcd_data[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_data[4]~reg0_q\);

-- Location: LCCOMB_X86_Y45_N14
\lcd_data[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_data[5]~5_combout\ = (\LessThan9~20_combout\ & (\display_array~25_combout\)) # (!\LessThan9~20_combout\ & ((\lcd_data~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_array~25_combout\,
	datab => \LessThan9~20_combout\,
	datad => \lcd_data~20_combout\,
	combout => \lcd_data[5]~5_combout\);

-- Location: FF_X86_Y45_N15
\lcd_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcd_data[5]~5_combout\,
	asdata => \Selector42~2_combout\,
	sload => \ALT_INV_STATE.010~q\,
	ena => \lcd_data[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_data[5]~reg0_q\);

-- Location: LCCOMB_X85_Y46_N30
\Selector40~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~7_combout\ = (\STATE.011~q\) # ((\Selector33~0_combout\) # ((\STATE.010~q\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.010~q\,
	datab => \STATE.011~q\,
	datac => \Equal0~4_combout\,
	datad => \Selector33~0_combout\,
	combout => \Selector40~7_combout\);

-- Location: LCCOMB_X84_Y45_N14
\Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (arraystart(3) & (!arraystart(4))) # (!arraystart(3) & (arraystart(4) & arraystart(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => arraystart(3),
	datac => arraystart(4),
	datad => arraystart(0),
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X85_Y45_N22
\Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (arraystart(2) & (((!arraystart(4))))) # (!arraystart(2) & ((arraystart(1) & ((!\Selector40~2_combout\) # (!arraystart(4)))) # (!arraystart(1) & ((\Selector40~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(2),
	datab => arraystart(1),
	datac => arraystart(4),
	datad => \Selector40~2_combout\,
	combout => \Selector40~3_combout\);

-- Location: LCCOMB_X85_Y45_N2
\display_array~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_array~5_combout\ = (!arraystart(1) & (!arraystart(2) & arraystart(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => arraystart(1),
	datac => arraystart(2),
	datad => arraystart(0),
	combout => \display_array~5_combout\);

-- Location: LCCOMB_X86_Y45_N24
\Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~4_combout\ = (arraystart(4) & (!\Selector40~3_combout\ & (!arraystart(5)))) # (!arraystart(4) & (((!arraystart(5) & !\display_array~5_combout\)) # (!\Selector40~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arraystart(4),
	datab => \Selector40~3_combout\,
	datac => arraystart(5),
	datad => \display_array~5_combout\,
	combout => \Selector40~4_combout\);

-- Location: LCCOMB_X87_Y44_N16
\Selector40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~5_combout\ = (\Equal4~4_combout\ & (((\Selector40~1_combout\)))) # (!\Equal4~4_combout\ & (\Equal5~4_combout\ & (\Selector40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datab => \Equal4~4_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector40~1_combout\,
	combout => \Selector40~5_combout\);

-- Location: LCCOMB_X87_Y44_N10
\Selector40~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~6_combout\ = (\Selector36~0_combout\ & ((\LessThan9~20_combout\ & (\Selector40~4_combout\)) # (!\LessThan9~20_combout\ & ((\Selector40~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \LessThan9~20_combout\,
	datac => \Selector40~4_combout\,
	datad => \Selector40~5_combout\,
	combout => \Selector40~6_combout\);

-- Location: LCCOMB_X87_Y44_N28
\Selector40~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~8_combout\ = (\Selector40~6_combout\) # ((\lcd_data[6]~reg0_q\ & ((\Selector40~7_combout\) # (!\Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \Selector40~7_combout\,
	datac => \lcd_data[6]~reg0_q\,
	datad => \Selector40~6_combout\,
	combout => \Selector40~8_combout\);

-- Location: FF_X87_Y44_N29
\lcd_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector40~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_data[6]~reg0_q\);

-- Location: LCCOMB_X49_Y68_N16
\u1|ledcheck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|ledcheck~0_combout\ = !\u1|ledcheck~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|ledcheck~q\,
	combout => \u1|ledcheck~0_combout\);

-- Location: FF_X49_Y68_N17
\u1|ledcheck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|ledcheck~0_combout\,
	ena => \u1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ledcheck~q\);

ww_busy <= \busy~output_o\;

ww_rs <= \rs~output_o\;

ww_rw <= \rw~output_o\;

ww_e <= \e~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_toleds(0) <= \toleds[0]~output_o\;

ww_toleds(1) <= \toleds[1]~output_o\;

ww_toleds(2) <= \toleds[2]~output_o\;

ww_toleds(3) <= \toleds[3]~output_o\;

ww_toleds(4) <= \toleds[4]~output_o\;

ww_toleds(5) <= \toleds[5]~output_o\;

ww_toleds(6) <= \toleds[6]~output_o\;

ww_toleds(7) <= \toleds[7]~output_o\;

ww_ledcheck <= \ledcheck~output_o\;

ww_alustate(0) <= \alustate[0]~output_o\;

ww_alustate(1) <= \alustate[1]~output_o\;

ww_alustate(2) <= \alustate[2]~output_o\;
END structure;


