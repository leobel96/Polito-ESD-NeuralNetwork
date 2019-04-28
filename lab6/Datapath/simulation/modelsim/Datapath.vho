-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "04/28/2019 14:47:18"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Datapath IS
    PORT (
	CLK : IN std_logic;
	RST_n : IN std_logic;
	DATA_OUT_MEM_A : IN std_logic_vector(7 DOWNTO 0);
	EN_FF_1 : IN std_logic;
	EN_FF_2 : IN std_logic;
	EN_FF_3 : IN std_logic;
	EN_FF_4 : IN std_logic;
	SEL_MUX1 : IN std_logic_vector(1 DOWNTO 0);
	SEL_MUX2 : IN std_logic_vector(1 DOWNTO 0);
	RST_ADDER : IN std_logic;
	SUB_ADDER : IN std_logic;
	EN_CNT_1 : IN std_logic;
	EN_CNT_2 : IN std_logic;
	EN_ROUND : IN std_logic;
	TC_CNT_1 : OUT std_logic;
	OUT_ROUND : OUT std_logic_vector(7 DOWNTO 0);
	ADDRESS_MEM : OUT std_logic_vector(9 DOWNTO 0);
	OUTPUT_PORT : OUT std_logic_vector(10 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- RST_ADDER	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_CNT_1	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_ROUND[0]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_ROUND[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_ROUND[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_ROUND[3]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_ROUND[4]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_ROUND[5]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_ROUND[6]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_ROUND[7]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[0]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[1]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[2]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[3]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[4]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[5]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[7]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[8]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDRESS_MEM[9]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[0]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[2]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[3]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[4]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[5]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[6]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[7]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[8]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[9]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT_PORT[10]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EN_CNT_1	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST_n	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_ROUND	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEL_MUX2[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEL_MUX2[1]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUB_ADDER	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEL_MUX1[0]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_OUT_MEM_A[1]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEL_MUX1[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_OUT_MEM_A[7]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_OUT_MEM_A[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_OUT_MEM_A[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_OUT_MEM_A[4]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_OUT_MEM_A[3]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_OUT_MEM_A[2]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_CNT_2	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_FF_4	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_FF_2	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_OUT_MEM_A[0]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_FF_1	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_FF_3	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF Datapath IS
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
SIGNAL ww_RST_n : std_logic;
SIGNAL ww_DATA_OUT_MEM_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EN_FF_1 : std_logic;
SIGNAL ww_EN_FF_2 : std_logic;
SIGNAL ww_EN_FF_3 : std_logic;
SIGNAL ww_EN_FF_4 : std_logic;
SIGNAL ww_SEL_MUX1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SEL_MUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RST_ADDER : std_logic;
SIGNAL ww_SUB_ADDER : std_logic;
SIGNAL ww_EN_CNT_1 : std_logic;
SIGNAL ww_EN_CNT_2 : std_logic;
SIGNAL ww_EN_ROUND : std_logic;
SIGNAL ww_TC_CNT_1 : std_logic;
SIGNAL ww_OUT_ROUND : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADDRESS_MEM : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_OUTPUT_PORT : std_logic_vector(10 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux_1|OUT_DATA[0]~0_combout\ : std_logic;
SIGNAL \sommatore|Add0~17_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[8]~1_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[8]~2_combout\ : std_logic;
SIGNAL \sommatore|Add0~20_combout\ : std_logic;
SIGNAL \sommatore|Add0~21_combout\ : std_logic;
SIGNAL \sommatore|Add0~22_combout\ : std_logic;
SIGNAL \sommatore|Add0~24_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[6]~5_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[6]~6_combout\ : std_logic;
SIGNAL \sommatore|Add0~27_combout\ : std_logic;
SIGNAL \sommatore|Add0~28_combout\ : std_logic;
SIGNAL \sommatore|Add0~29_combout\ : std_logic;
SIGNAL \sommatore|Add0~30_combout\ : std_logic;
SIGNAL \sommatore|Add0~31_combout\ : std_logic;
SIGNAL \sommatore|Add0~32_combout\ : std_logic;
SIGNAL \sommatore|Add0~33_combout\ : std_logic;
SIGNAL \sommatore|Add0~34_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[3]~11_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[2]~12_combout\ : std_logic;
SIGNAL \sommatore|Add0~43_combout\ : std_logic;
SIGNAL \sommatore|Add0~44_combout\ : std_logic;
SIGNAL \sommatore|Add0~45_combout\ : std_logic;
SIGNAL \sommatore|Add0~46_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[10]~16_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[10]~17_combout\ : std_logic;
SIGNAL \EN_CNT_1~combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:0:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \RST_n~combout\ : std_logic;
SIGNAL \RST_n~clkctrl_outclk\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:1:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:2:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:3:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:4:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:5:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:6:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:8:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \TC_CNT_1~1_combout\ : std_logic;
SIGNAL \TC_CNT_1~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:9:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:9:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \TC_CNT_1~2_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \SUB_ADDER~combout\ : std_logic;
SIGNAL \sommatore|Add0~4_combout\ : std_logic;
SIGNAL \EN_FF_1~combout\ : std_logic;
SIGNAL \EN_FF_2~combout\ : std_logic;
SIGNAL \sommatore|Add0~7_combout\ : std_logic;
SIGNAL \sommatore|Add0~5_combout\ : std_logic;
SIGNAL \sommatore|Add0~41_combout\ : std_logic;
SIGNAL \EN_FF_3~combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[4]~9_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[4]~10_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[5]~7_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[5]~8_combout\ : std_logic;
SIGNAL \sommatore|Add0~54\ : std_logic;
SIGNAL \sommatore|Add0~55_combout\ : std_logic;
SIGNAL \EN_FF_4~combout\ : std_logic;
SIGNAL \sommatore|Add0~36_combout\ : std_logic;
SIGNAL \sommatore|Add0~37_combout\ : std_logic;
SIGNAL \sommatore|Add0~35_combout\ : std_logic;
SIGNAL \sommatore|Add0~38_combout\ : std_logic;
SIGNAL \sommatore|Add0~11_cout\ : std_logic;
SIGNAL \sommatore|Add0~13\ : std_logic;
SIGNAL \sommatore|Add0~47_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[1]~13_combout\ : std_logic;
SIGNAL \sommatore|Add0~48\ : std_logic;
SIGNAL \sommatore|Add0~50\ : std_logic;
SIGNAL \sommatore|Add0~52\ : std_logic;
SIGNAL \sommatore|Add0~53_combout\ : std_logic;
SIGNAL \sommatore|Add0~40_combout\ : std_logic;
SIGNAL \sommatore|Add0~39_combout\ : std_logic;
SIGNAL \sommatore|Add0~42_combout\ : std_logic;
SIGNAL \sommatore|Add0~49_combout\ : std_logic;
SIGNAL \sommatore|Add0~6_combout\ : std_logic;
SIGNAL \sommatore|Add0~3_combout\ : std_logic;
SIGNAL \sommatore|Add0~9_combout\ : std_logic;
SIGNAL \sommatore|Add0~12_combout\ : std_logic;
SIGNAL \mux_2|OUT_DATA[7]~0_combout\ : std_logic;
SIGNAL \sommatore|Add0~72_combout\ : std_logic;
SIGNAL \sommatore|Add0~15_combout\ : std_logic;
SIGNAL \sommatore|Add0~14_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[11]~18_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[11]~19_combout\ : std_logic;
SIGNAL \sommatore|Add0~18_combout\ : std_logic;
SIGNAL \sommatore|Add0~16_combout\ : std_logic;
SIGNAL \sommatore|Add0~19_combout\ : std_logic;
SIGNAL \sommatore|Add0~8_combout\ : std_logic;
SIGNAL \sommatore|Add0~25_combout\ : std_logic;
SIGNAL \sommatore|Add0~61_combout\ : std_logic;
SIGNAL \sommatore|Add0~23_combout\ : std_logic;
SIGNAL \sommatore|Add0~26_combout\ : std_logic;
SIGNAL \sommatore|Add0~56\ : std_logic;
SIGNAL \sommatore|Add0~58\ : std_logic;
SIGNAL \sommatore|Add0~59_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[7]~3_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[7]~4_combout\ : std_logic;
SIGNAL \sommatore|Add0~60\ : std_logic;
SIGNAL \sommatore|Add0~62\ : std_logic;
SIGNAL \sommatore|Add0~66_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[9]~14_combout\ : std_logic;
SIGNAL \mux_1|OUT_DATA[9]~15_combout\ : std_logic;
SIGNAL \sommatore|Add0~67\ : std_logic;
SIGNAL \sommatore|Add0~69\ : std_logic;
SIGNAL \sommatore|Add0~70_combout\ : std_logic;
SIGNAL \sommatore|Add0~63_combout\ : std_logic;
SIGNAL \sommatore|Add0~64_combout\ : std_logic;
SIGNAL \sommatore|Add0~65_combout\ : std_logic;
SIGNAL \sommatore|Add0~68_combout\ : std_logic;
SIGNAL \rounding|Comparison~0_combout\ : std_logic;
SIGNAL \rounding|OUT_ROUND~0_combout\ : std_logic;
SIGNAL \EN_ROUND~combout\ : std_logic;
SIGNAL \rounding|OUT_ROUND~1_combout\ : std_logic;
SIGNAL \rounding|OUT_ROUND~2_combout\ : std_logic;
SIGNAL \sommatore|Add0~51_combout\ : std_logic;
SIGNAL \rounding|OUT_ROUND~3_combout\ : std_logic;
SIGNAL \rounding|OUT_ROUND~4_combout\ : std_logic;
SIGNAL \rounding|OUT_ROUND~5_combout\ : std_logic;
SIGNAL \sommatore|Add0~57_combout\ : std_logic;
SIGNAL \rounding|OUT_ROUND~6_combout\ : std_logic;
SIGNAL \rounding|OUT_ROUND~7_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:7:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\ : std_logic;
SIGNAL \EN_CNT_2~combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[0]~10_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[1]~11_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[1]~12\ : std_logic;
SIGNAL \cnt_2|reg|Q[2]~13_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[2]~14\ : std_logic;
SIGNAL \cnt_2|reg|Q[3]~15_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[3]~16\ : std_logic;
SIGNAL \cnt_2|reg|Q[4]~17_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[4]~18\ : std_logic;
SIGNAL \cnt_2|reg|Q[5]~19_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[5]~20\ : std_logic;
SIGNAL \cnt_2|reg|Q[6]~21_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[6]~22\ : std_logic;
SIGNAL \cnt_2|reg|Q[7]~23_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[7]~24\ : std_logic;
SIGNAL \cnt_2|reg|Q[8]~25_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[8]~26\ : std_logic;
SIGNAL \cnt_2|reg|Q[9]~27_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q[9]~28\ : std_logic;
SIGNAL \cnt_2|reg|Q[10]~29_combout\ : std_logic;
SIGNAL \cnt_2|reg|Q\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \cnt_1|T\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rounding|OUT_ROUND\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ff_3|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ff_1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DATA_OUT_MEM_A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SEL_MUX1~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SEL_MUX2~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ff_4|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ff_2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST_n <= RST_n;
ww_DATA_OUT_MEM_A <= DATA_OUT_MEM_A;
ww_EN_FF_1 <= EN_FF_1;
ww_EN_FF_2 <= EN_FF_2;
ww_EN_FF_3 <= EN_FF_3;
ww_EN_FF_4 <= EN_FF_4;
ww_SEL_MUX1 <= SEL_MUX1;
ww_SEL_MUX2 <= SEL_MUX2;
ww_RST_ADDER <= RST_ADDER;
ww_SUB_ADDER <= SUB_ADDER;
ww_EN_CNT_1 <= EN_CNT_1;
ww_EN_CNT_2 <= EN_CNT_2;
ww_EN_ROUND <= EN_ROUND;
TC_CNT_1 <= ww_TC_CNT_1;
OUT_ROUND <= ww_OUT_ROUND;
ADDRESS_MEM <= ww_ADDRESS_MEM;
OUTPUT_PORT <= ww_OUTPUT_PORT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST_n~combout\);
\ALT_INV_RST_n~clkctrl_outclk\ <= NOT \RST_n~clkctrl_outclk\;

-- Location: LCFF_X11_Y31_N7
\ff_3|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~12_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(0));

-- Location: LCCOMB_X10_Y31_N20
\mux_1|OUT_DATA[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[0]~0_combout\ = (\SEL_MUX1~combout\(0) & ((\SEL_MUX1~combout\(1) & ((\ff_3|Q\(0)))) # (!\SEL_MUX1~combout\(1) & (\DATA_OUT_MEM_A~combout\(1))))) # (!\SEL_MUX1~combout\(0) & (!\SEL_MUX1~combout\(1) & ((\ff_3|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \DATA_OUT_MEM_A~combout\(1),
	datad => \ff_3|Q\(0),
	combout => \mux_1|OUT_DATA[0]~0_combout\);

-- Location: LCCOMB_X8_Y31_N16
\sommatore|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~17_combout\ = (!\SEL_MUX2~combout\(0) & (\SUB_ADDER~combout\ & ((\SEL_MUX2~combout\(1)) # (!\ff_1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_1|Q\(7),
	datab => \SEL_MUX2~combout\(0),
	datac => \SEL_MUX2~combout\(1),
	datad => \SUB_ADDER~combout\,
	combout => \sommatore|Add0~17_combout\);

-- Location: LCFF_X10_Y31_N1
\ff_1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \DATA_OUT_MEM_A~combout\(4),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_1|Q\(4));

-- Location: LCCOMB_X10_Y31_N22
\mux_1|OUT_DATA[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[8]~1_combout\ = (\SEL_MUX1~combout\(0) & (!\SEL_MUX1~combout\(1) & ((\DATA_OUT_MEM_A~combout\(7))))) # (!\SEL_MUX1~combout\(0) & (\SEL_MUX1~combout\(1) & (\ff_1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_1|Q\(4),
	datad => \DATA_OUT_MEM_A~combout\(7),
	combout => \mux_1|OUT_DATA[8]~1_combout\);

-- Location: LCFF_X9_Y31_N25
\ff_3|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~61_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(8));

-- Location: LCCOMB_X9_Y31_N24
\mux_1|OUT_DATA[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[8]~2_combout\ = (\mux_1|OUT_DATA[8]~1_combout\) # ((\ff_3|Q\(8) & (\SEL_MUX1~combout\(0) $ (!\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_3|Q\(8),
	datad => \mux_1|OUT_DATA[8]~1_combout\,
	combout => \mux_1|OUT_DATA[8]~2_combout\);

-- Location: LCFF_X11_Y31_N3
\ff_4|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~66_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(9));

-- Location: LCCOMB_X8_Y31_N6
\sommatore|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~20_combout\ = (\sommatore|Add0~15_combout\ & ((\sommatore|Add0~14_combout\ & ((\ff_4|Q\(9)))) # (!\sommatore|Add0~14_combout\ & (\ff_1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_1|Q\(7),
	datab => \sommatore|Add0~15_combout\,
	datac => \sommatore|Add0~14_combout\,
	datad => \ff_4|Q\(9),
	combout => \sommatore|Add0~20_combout\);

-- Location: LCCOMB_X8_Y31_N4
\sommatore|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~21_combout\ = (!\ff_4|Q\(9)) # (!\SEL_MUX2~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_MUX2~combout\(1),
	datad => \ff_4|Q\(9),
	combout => \sommatore|Add0~21_combout\);

-- Location: LCCOMB_X8_Y31_N28
\sommatore|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~22_combout\ = (\sommatore|Add0~72_combout\) # ((\sommatore|Add0~20_combout\) # ((\sommatore|Add0~17_combout\ & \sommatore|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~17_combout\,
	datab => \sommatore|Add0~21_combout\,
	datac => \sommatore|Add0~72_combout\,
	datad => \sommatore|Add0~20_combout\,
	combout => \sommatore|Add0~22_combout\);

-- Location: LCCOMB_X12_Y31_N10
\sommatore|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~24_combout\ = (!\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_4|Q\(8)))) # (!\sommatore|Add0~4_combout\ & (!\ff_1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~5_combout\,
	datab => \sommatore|Add0~4_combout\,
	datac => \ff_1|Q\(6),
	datad => \ff_4|Q\(8),
	combout => \sommatore|Add0~24_combout\);

-- Location: LCCOMB_X10_Y31_N18
\mux_1|OUT_DATA[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[6]~5_combout\ = (\SEL_MUX1~combout\(1) & (((!\SEL_MUX1~combout\(0) & \ff_1|Q\(2))))) # (!\SEL_MUX1~combout\(1) & (\DATA_OUT_MEM_A~combout\(7) & (\SEL_MUX1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_OUT_MEM_A~combout\(7),
	datab => \SEL_MUX1~combout\(1),
	datac => \SEL_MUX1~combout\(0),
	datad => \ff_1|Q\(2),
	combout => \mux_1|OUT_DATA[6]~5_combout\);

-- Location: LCFF_X9_Y31_N7
\ff_3|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~57_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(6));

-- Location: LCCOMB_X9_Y31_N6
\mux_1|OUT_DATA[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[6]~6_combout\ = (\mux_1|OUT_DATA[6]~5_combout\) # ((\ff_3|Q\(6) & (\SEL_MUX1~combout\(0) $ (!\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_3|Q\(6),
	datad => \mux_1|OUT_DATA[6]~5_combout\,
	combout => \mux_1|OUT_DATA[6]~6_combout\);

-- Location: LCFF_X11_Y31_N21
\ff_4|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~59_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(7));

-- Location: LCFF_X12_Y31_N21
\ff_2|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \ff_1|Q\(5),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_2|Q\(5));

-- Location: LCCOMB_X12_Y31_N20
\sommatore|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~27_combout\ = (\SEL_MUX2~combout\(0) & ((!\ff_2|Q\(5)))) # (!\SEL_MUX2~combout\(0) & (!\ff_4|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_4|Q\(7),
	datac => \ff_2|Q\(5),
	datad => \SEL_MUX2~combout\(0),
	combout => \sommatore|Add0~27_combout\);

-- Location: LCCOMB_X12_Y31_N26
\sommatore|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~28_combout\ = (!\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & (\ff_4|Q\(7))) # (!\sommatore|Add0~4_combout\ & ((!\ff_1|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~5_combout\,
	datab => \sommatore|Add0~4_combout\,
	datac => \ff_4|Q\(7),
	datad => \ff_1|Q\(5),
	combout => \sommatore|Add0~28_combout\);

-- Location: LCCOMB_X12_Y31_N18
\sommatore|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~29_combout\ = (\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_2|Q\(5)))) # (!\sommatore|Add0~4_combout\ & (\ff_1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~5_combout\,
	datab => \sommatore|Add0~4_combout\,
	datac => \ff_1|Q\(5),
	datad => \ff_2|Q\(5),
	combout => \sommatore|Add0~29_combout\);

-- Location: LCCOMB_X12_Y31_N4
\sommatore|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~30_combout\ = (\sommatore|Add0~8_combout\ & (((\sommatore|Add0~27_combout\)))) # (!\sommatore|Add0~8_combout\ & ((\sommatore|Add0~29_combout\) # ((\sommatore|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~8_combout\,
	datab => \sommatore|Add0~29_combout\,
	datac => \sommatore|Add0~27_combout\,
	datad => \sommatore|Add0~28_combout\,
	combout => \sommatore|Add0~30_combout\);

-- Location: LCFF_X11_Y31_N19
\ff_4|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~57_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(6));

-- Location: LCFF_X10_Y31_N23
\ff_2|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \ff_1|Q\(4),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_2|Q\(4));

-- Location: LCCOMB_X10_Y31_N12
\sommatore|Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~31_combout\ = (\SEL_MUX2~combout\(0) & (!\ff_2|Q\(4))) # (!\SEL_MUX2~combout\(0) & ((!\ff_4|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(0),
	datab => \ff_2|Q\(4),
	datad => \ff_4|Q\(6),
	combout => \sommatore|Add0~31_combout\);

-- Location: LCCOMB_X12_Y31_N14
\sommatore|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~32_combout\ = (!\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_4|Q\(6)))) # (!\sommatore|Add0~4_combout\ & (!\ff_1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~5_combout\,
	datab => \sommatore|Add0~4_combout\,
	datac => \ff_1|Q\(4),
	datad => \ff_4|Q\(6),
	combout => \sommatore|Add0~32_combout\);

-- Location: LCCOMB_X10_Y31_N0
\sommatore|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~33_combout\ = (\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_2|Q\(4)))) # (!\sommatore|Add0~4_combout\ & (\ff_1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~4_combout\,
	datab => \sommatore|Add0~5_combout\,
	datac => \ff_1|Q\(4),
	datad => \ff_2|Q\(4),
	combout => \sommatore|Add0~33_combout\);

-- Location: LCCOMB_X12_Y31_N2
\sommatore|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~34_combout\ = (\sommatore|Add0~8_combout\ & (((\sommatore|Add0~31_combout\)))) # (!\sommatore|Add0~8_combout\ & ((\sommatore|Add0~32_combout\) # ((\sommatore|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~8_combout\,
	datab => \sommatore|Add0~32_combout\,
	datac => \sommatore|Add0~33_combout\,
	datad => \sommatore|Add0~31_combout\,
	combout => \sommatore|Add0~34_combout\);

-- Location: LCFF_X14_Y31_N9
\ff_3|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~51_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(3));

-- Location: LCCOMB_X14_Y31_N8
\mux_1|OUT_DATA[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[3]~11_combout\ = (\SEL_MUX1~combout\(0) & ((\SEL_MUX1~combout\(1) & ((\ff_3|Q\(3)))) # (!\SEL_MUX1~combout\(1) & (\DATA_OUT_MEM_A~combout\(4))))) # (!\SEL_MUX1~combout\(0) & (((\ff_3|Q\(3) & !\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \DATA_OUT_MEM_A~combout\(4),
	datac => \ff_3|Q\(3),
	datad => \SEL_MUX1~combout\(1),
	combout => \mux_1|OUT_DATA[3]~11_combout\);

-- Location: LCFF_X14_Y31_N27
\ff_3|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~49_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(2));

-- Location: LCCOMB_X14_Y31_N26
\mux_1|OUT_DATA[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[2]~12_combout\ = (\SEL_MUX1~combout\(1) & (((\ff_3|Q\(2) & \SEL_MUX1~combout\(0))))) # (!\SEL_MUX1~combout\(1) & ((\SEL_MUX1~combout\(0) & (\DATA_OUT_MEM_A~combout\(3))) # (!\SEL_MUX1~combout\(0) & ((\ff_3|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_OUT_MEM_A~combout\(3),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_3|Q\(2),
	datad => \SEL_MUX1~combout\(0),
	combout => \mux_1|OUT_DATA[2]~12_combout\);

-- Location: LCFF_X11_Y31_N13
\ff_4|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~51_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(3));

-- Location: LCFF_X10_Y31_N29
\ff_2|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \ff_1|Q\(1),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_2|Q\(1));

-- Location: LCCOMB_X10_Y31_N28
\sommatore|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~43_combout\ = (\SEL_MUX2~combout\(0) & (!\ff_2|Q\(1))) # (!\SEL_MUX2~combout\(0) & ((!\ff_4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(0),
	datac => \ff_2|Q\(1),
	datad => \ff_4|Q\(3),
	combout => \sommatore|Add0~43_combout\);

-- Location: LCCOMB_X10_Y31_N8
\sommatore|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~44_combout\ = (!\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_4|Q\(3)))) # (!\sommatore|Add0~4_combout\ & (!\ff_1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_1|Q\(1),
	datab => \sommatore|Add0~5_combout\,
	datac => \ff_4|Q\(3),
	datad => \sommatore|Add0~4_combout\,
	combout => \sommatore|Add0~44_combout\);

-- Location: LCCOMB_X10_Y31_N10
\sommatore|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~45_combout\ = (\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_2|Q\(1)))) # (!\sommatore|Add0~4_combout\ & (\ff_1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~4_combout\,
	datab => \sommatore|Add0~5_combout\,
	datac => \ff_1|Q\(1),
	datad => \ff_2|Q\(1),
	combout => \sommatore|Add0~45_combout\);

-- Location: LCCOMB_X10_Y31_N14
\sommatore|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~46_combout\ = (\sommatore|Add0~8_combout\ & (((\sommatore|Add0~43_combout\)))) # (!\sommatore|Add0~8_combout\ & ((\sommatore|Add0~45_combout\) # ((\sommatore|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~45_combout\,
	datab => \sommatore|Add0~8_combout\,
	datac => \sommatore|Add0~44_combout\,
	datad => \sommatore|Add0~43_combout\,
	combout => \sommatore|Add0~46_combout\);

-- Location: LCCOMB_X12_Y31_N8
\mux_1|OUT_DATA[10]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[10]~16_combout\ = (\SEL_MUX1~combout\(0) & (\DATA_OUT_MEM_A~combout\(7) & (!\SEL_MUX1~combout\(1)))) # (!\SEL_MUX1~combout\(0) & (((\SEL_MUX1~combout\(1) & \ff_1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \DATA_OUT_MEM_A~combout\(7),
	datac => \SEL_MUX1~combout\(1),
	datad => \ff_1|Q\(6),
	combout => \mux_1|OUT_DATA[10]~16_combout\);

-- Location: LCFF_X9_Y31_N9
\ff_3|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~68_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(10));

-- Location: LCCOMB_X9_Y31_N8
\mux_1|OUT_DATA[10]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[10]~17_combout\ = (\mux_1|OUT_DATA[10]~16_combout\) # ((\ff_3|Q\(10) & (\SEL_MUX1~combout\(0) $ (!\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_3|Q\(10),
	datad => \mux_1|OUT_DATA[10]~16_combout\,
	combout => \mux_1|OUT_DATA[10]~17_combout\);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_OUT_MEM_A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_OUT_MEM_A(4),
	combout => \DATA_OUT_MEM_A~combout\(4));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_CNT_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EN_CNT_1,
	combout => \EN_CNT_1~combout\);

-- Location: LCCOMB_X57_Y35_N8
\cnt_1|GEN_CNT:0:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:0:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\ $ (\EN_CNT_1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\,
	datad => \EN_CNT_1~combout\,
	combout => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RST_n,
	combout => \RST_n~combout\);

-- Location: CLKCTRL_G1
\RST_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST_n~clkctrl_outclk\);

-- Location: LCFF_X57_Y35_N9
\cnt_1|GEN_CNT:0:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N18
\cnt_1|GEN_CNT:1:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:1:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\ $ (((\cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\ & \EN_CNT_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\,
	datad => \EN_CNT_1~combout\,
	combout => \cnt_1|GEN_CNT:1:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N19
\cnt_1|GEN_CNT:1:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:1:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N28
\cnt_1|GEN_CNT:2:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:2:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\ $ (((\cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\ & \EN_CNT_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\,
	datab => \cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\,
	datad => \EN_CNT_1~combout\,
	combout => \cnt_1|GEN_CNT:2:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N29
\cnt_1|GEN_CNT:2:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:2:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N2
\cnt_1|T[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|T\(3) = (\EN_CNT_1~combout\ & (\cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\ & \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_CNT_1~combout\,
	datab => \cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\,
	datad => \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\,
	combout => \cnt_1|T\(3));

-- Location: LCCOMB_X57_Y35_N30
\cnt_1|GEN_CNT:3:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:3:TFF_X|ff|Q~0_combout\ = \cnt_1|T\(3) $ (\cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_1|T\(3),
	datac => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\,
	combout => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N31
\cnt_1|GEN_CNT:3:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N10
\cnt_1|GEN_CNT:4:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:4:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\ $ (((\cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\ & \cnt_1|T\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\,
	datab => \cnt_1|T\(3),
	datac => \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\,
	combout => \cnt_1|GEN_CNT:4:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N11
\cnt_1|GEN_CNT:4:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:4:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N4
\cnt_1|GEN_CNT:5:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:5:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\ $ (((\cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\ & \cnt_1|T\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\,
	datab => \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\,
	datad => \cnt_1|T\(3),
	combout => \cnt_1|GEN_CNT:5:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N5
\cnt_1|GEN_CNT:5:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:5:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N12
\cnt_1|T[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|T\(6) = (\cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\ & \cnt_1|T\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\,
	datab => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\,
	datad => \cnt_1|T\(3),
	combout => \cnt_1|T\(6));

-- Location: LCCOMB_X57_Y35_N14
\cnt_1|GEN_CNT:6:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:6:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\ $ (\cnt_1|T\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\,
	datad => \cnt_1|T\(6),
	combout => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N15
\cnt_1|GEN_CNT:6:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N20
\cnt_1|GEN_CNT:8:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:8:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\ $ (((\cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\ & \cnt_1|T\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\,
	datab => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\,
	datad => \cnt_1|T\(6),
	combout => \cnt_1|GEN_CNT:8:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N21
\cnt_1|GEN_CNT:8:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:8:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N26
\TC_CNT_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TC_CNT_1~1_combout\ = (\cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\ & \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\,
	datab => \cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\,
	datad => \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\,
	combout => \TC_CNT_1~1_combout\);

-- Location: LCCOMB_X57_Y35_N24
\TC_CNT_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TC_CNT_1~0_combout\ = (\cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\ & \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\,
	datab => \cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\,
	datad => \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\,
	combout => \TC_CNT_1~0_combout\);

-- Location: LCCOMB_X57_Y35_N6
\cnt_1|T[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|T\(9) = (\cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\ & (\cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\ & \cnt_1|T\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\,
	datab => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\,
	datad => \cnt_1|T\(6),
	combout => \cnt_1|T\(9));

-- Location: LCCOMB_X57_Y35_N22
\cnt_1|GEN_CNT:9:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:9:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:9:TFF_X|ff|Q~regout\ $ (\cnt_1|T\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt_1|GEN_CNT:9:TFF_X|ff|Q~regout\,
	datad => \cnt_1|T\(9),
	combout => \cnt_1|GEN_CNT:9:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N23
\cnt_1|GEN_CNT:9:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:9:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:9:TFF_X|ff|Q~regout\);

-- Location: LCCOMB_X57_Y35_N0
\TC_CNT_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TC_CNT_1~2_combout\ = (\cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\ & (\TC_CNT_1~1_combout\ & (\TC_CNT_1~0_combout\ & \cnt_1|GEN_CNT:9:TFF_X|ff|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\,
	datab => \TC_CNT_1~1_combout\,
	datac => \TC_CNT_1~0_combout\,
	datad => \cnt_1|GEN_CNT:9:TFF_X|ff|Q~regout\,
	combout => \TC_CNT_1~2_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SEL_MUX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SEL_MUX2(0),
	combout => \SEL_MUX2~combout\(0));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SUB_ADDER~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SUB_ADDER,
	combout => \SUB_ADDER~combout\);

-- Location: LCCOMB_X8_Y31_N12
\sommatore|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~4_combout\ = (!\SUB_ADDER~combout\ & (\SEL_MUX2~combout\(1) $ (\SEL_MUX2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(1),
	datab => \SEL_MUX2~combout\(0),
	datad => \SUB_ADDER~combout\,
	combout => \sommatore|Add0~4_combout\);

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_OUT_MEM_A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_OUT_MEM_A(0),
	combout => \DATA_OUT_MEM_A~combout\(0));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_FF_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EN_FF_1,
	combout => \EN_FF_1~combout\);

-- Location: LCFF_X12_Y31_N23
\ff_1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \DATA_OUT_MEM_A~combout\(0),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_1|Q\(0));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_FF_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EN_FF_2,
	combout => \EN_FF_2~combout\);

-- Location: LCFF_X12_Y31_N13
\ff_2|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \ff_1|Q\(0),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_2|Q\(0));

-- Location: LCCOMB_X12_Y31_N12
\sommatore|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~7_combout\ = (\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & (\ff_2|Q\(0))) # (!\sommatore|Add0~4_combout\ & ((\ff_1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~5_combout\,
	datab => \sommatore|Add0~4_combout\,
	datac => \ff_2|Q\(0),
	datad => \ff_1|Q\(0),
	combout => \sommatore|Add0~7_combout\);

-- Location: LCCOMB_X8_Y31_N26
\sommatore|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~5_combout\ = (!\SUB_ADDER~combout\ & ((\SEL_MUX2~combout\(0)) # (!\SEL_MUX2~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(1),
	datac => \SEL_MUX2~combout\(0),
	datad => \SUB_ADDER~combout\,
	combout => \sommatore|Add0~5_combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_OUT_MEM_A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_OUT_MEM_A(2),
	combout => \DATA_OUT_MEM_A~combout\(2));

-- Location: LCFF_X10_Y31_N7
\ff_1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \DATA_OUT_MEM_A~combout\(2),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_1|Q\(2));

-- Location: LCFF_X10_Y31_N5
\ff_2|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \ff_1|Q\(2),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_2|Q\(2));

-- Location: LCCOMB_X10_Y31_N2
\sommatore|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~41_combout\ = (\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & (\ff_2|Q\(2))) # (!\sommatore|Add0~4_combout\ & ((\ff_1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~4_combout\,
	datab => \sommatore|Add0~5_combout\,
	datac => \ff_2|Q\(2),
	datad => \ff_1|Q\(2),
	combout => \sommatore|Add0~41_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SEL_MUX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SEL_MUX1(1),
	combout => \SEL_MUX1~combout\(1));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_FF_3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EN_FF_3,
	combout => \EN_FF_3~combout\);

-- Location: LCFF_X14_Y31_N23
\ff_3|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~53_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_OUT_MEM_A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_OUT_MEM_A(5),
	combout => \DATA_OUT_MEM_A~combout\(5));

-- Location: LCCOMB_X14_Y31_N12
\mux_1|OUT_DATA[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[4]~9_combout\ = (\SEL_MUX1~combout\(0) & (!\SEL_MUX1~combout\(1) & (\DATA_OUT_MEM_A~combout\(5)))) # (!\SEL_MUX1~combout\(0) & (\SEL_MUX1~combout\(1) & ((\ff_1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \DATA_OUT_MEM_A~combout\(5),
	datad => \ff_1|Q\(0),
	combout => \mux_1|OUT_DATA[4]~9_combout\);

-- Location: LCCOMB_X14_Y31_N22
\mux_1|OUT_DATA[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[4]~10_combout\ = (\mux_1|OUT_DATA[4]~9_combout\) # ((\ff_3|Q\(4) & (\SEL_MUX1~combout\(0) $ (!\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_3|Q\(4),
	datad => \mux_1|OUT_DATA[4]~9_combout\,
	combout => \mux_1|OUT_DATA[4]~10_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_OUT_MEM_A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_OUT_MEM_A(3),
	combout => \DATA_OUT_MEM_A~combout\(3));

-- Location: LCFF_X10_Y31_N31
\ff_1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \DATA_OUT_MEM_A~combout\(3),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_1|Q\(3));

-- Location: LCFF_X14_Y31_N19
\ff_3|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~55_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(5));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_OUT_MEM_A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_OUT_MEM_A(6),
	combout => \DATA_OUT_MEM_A~combout\(6));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_OUT_MEM_A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_OUT_MEM_A(1),
	combout => \DATA_OUT_MEM_A~combout\(1));

-- Location: LCFF_X10_Y31_N21
\ff_1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \DATA_OUT_MEM_A~combout\(1),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_1|Q\(1));

-- Location: LCCOMB_X14_Y31_N0
\mux_1|OUT_DATA[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[5]~7_combout\ = (\SEL_MUX1~combout\(0) & (!\SEL_MUX1~combout\(1) & (\DATA_OUT_MEM_A~combout\(6)))) # (!\SEL_MUX1~combout\(0) & (\SEL_MUX1~combout\(1) & ((\ff_1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \DATA_OUT_MEM_A~combout\(6),
	datad => \ff_1|Q\(1),
	combout => \mux_1|OUT_DATA[5]~7_combout\);

-- Location: LCCOMB_X14_Y31_N18
\mux_1|OUT_DATA[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[5]~8_combout\ = (\mux_1|OUT_DATA[5]~7_combout\) # ((\ff_3|Q\(5) & (\SEL_MUX1~combout\(0) $ (!\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_3|Q\(5),
	datad => \mux_1|OUT_DATA[5]~7_combout\,
	combout => \mux_1|OUT_DATA[5]~8_combout\);

-- Location: LCCOMB_X11_Y31_N14
\sommatore|Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~53_combout\ = (\sommatore|Add0~34_combout\ & ((\mux_1|OUT_DATA[4]~10_combout\ & (\sommatore|Add0~52\ & VCC)) # (!\mux_1|OUT_DATA[4]~10_combout\ & (!\sommatore|Add0~52\)))) # (!\sommatore|Add0~34_combout\ & ((\mux_1|OUT_DATA[4]~10_combout\ 
-- & (!\sommatore|Add0~52\)) # (!\mux_1|OUT_DATA[4]~10_combout\ & ((\sommatore|Add0~52\) # (GND)))))
-- \sommatore|Add0~54\ = CARRY((\sommatore|Add0~34_combout\ & (!\mux_1|OUT_DATA[4]~10_combout\ & !\sommatore|Add0~52\)) # (!\sommatore|Add0~34_combout\ & ((!\sommatore|Add0~52\) # (!\mux_1|OUT_DATA[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~34_combout\,
	datab => \mux_1|OUT_DATA[4]~10_combout\,
	datad => VCC,
	cin => \sommatore|Add0~52\,
	combout => \sommatore|Add0~53_combout\,
	cout => \sommatore|Add0~54\);

-- Location: LCCOMB_X11_Y31_N16
\sommatore|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~55_combout\ = ((\sommatore|Add0~30_combout\ $ (\mux_1|OUT_DATA[5]~8_combout\ $ (!\sommatore|Add0~54\)))) # (GND)
-- \sommatore|Add0~56\ = CARRY((\sommatore|Add0~30_combout\ & ((\mux_1|OUT_DATA[5]~8_combout\) # (!\sommatore|Add0~54\))) # (!\sommatore|Add0~30_combout\ & (\mux_1|OUT_DATA[5]~8_combout\ & !\sommatore|Add0~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~30_combout\,
	datab => \mux_1|OUT_DATA[5]~8_combout\,
	datad => VCC,
	cin => \sommatore|Add0~54\,
	combout => \sommatore|Add0~55_combout\,
	cout => \sommatore|Add0~56\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_FF_4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EN_FF_4,
	combout => \EN_FF_4~combout\);

-- Location: LCFF_X11_Y31_N31
\ff_4|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~55_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(5));

-- Location: LCCOMB_X10_Y31_N30
\sommatore|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~36_combout\ = (!\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_4|Q\(5)))) # (!\sommatore|Add0~4_combout\ & (!\ff_1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~4_combout\,
	datab => \sommatore|Add0~5_combout\,
	datac => \ff_1|Q\(3),
	datad => \ff_4|Q\(5),
	combout => \sommatore|Add0~36_combout\);

-- Location: LCFF_X9_Y31_N1
\ff_2|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \ff_1|Q\(3),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_2|Q\(3));

-- Location: LCCOMB_X9_Y31_N4
\sommatore|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~37_combout\ = (\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & (\ff_2|Q\(3))) # (!\sommatore|Add0~4_combout\ & ((\ff_1|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~5_combout\,
	datab => \ff_2|Q\(3),
	datac => \sommatore|Add0~4_combout\,
	datad => \ff_1|Q\(3),
	combout => \sommatore|Add0~37_combout\);

-- Location: LCCOMB_X9_Y31_N18
\sommatore|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~35_combout\ = (\SEL_MUX2~combout\(0) & (!\ff_2|Q\(3))) # (!\SEL_MUX2~combout\(0) & ((!\ff_4|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(0),
	datab => \ff_2|Q\(3),
	datad => \ff_4|Q\(5),
	combout => \sommatore|Add0~35_combout\);

-- Location: LCCOMB_X10_Y31_N16
\sommatore|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~38_combout\ = (\sommatore|Add0~8_combout\ & (((\sommatore|Add0~35_combout\)))) # (!\sommatore|Add0~8_combout\ & ((\sommatore|Add0~36_combout\) # ((\sommatore|Add0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~8_combout\,
	datab => \sommatore|Add0~36_combout\,
	datac => \sommatore|Add0~37_combout\,
	datad => \sommatore|Add0~35_combout\,
	combout => \sommatore|Add0~38_combout\);

-- Location: LCCOMB_X11_Y31_N4
\sommatore|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~11_cout\ = CARRY(\SUB_ADDER~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB_ADDER~combout\,
	datad => VCC,
	cout => \sommatore|Add0~11_cout\);

-- Location: LCCOMB_X11_Y31_N6
\sommatore|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~12_combout\ = (\mux_1|OUT_DATA[0]~0_combout\ & ((\sommatore|Add0~9_combout\ & (\sommatore|Add0~11_cout\ & VCC)) # (!\sommatore|Add0~9_combout\ & (!\sommatore|Add0~11_cout\)))) # (!\mux_1|OUT_DATA[0]~0_combout\ & 
-- ((\sommatore|Add0~9_combout\ & (!\sommatore|Add0~11_cout\)) # (!\sommatore|Add0~9_combout\ & ((\sommatore|Add0~11_cout\) # (GND)))))
-- \sommatore|Add0~13\ = CARRY((\mux_1|OUT_DATA[0]~0_combout\ & (!\sommatore|Add0~9_combout\ & !\sommatore|Add0~11_cout\)) # (!\mux_1|OUT_DATA[0]~0_combout\ & ((!\sommatore|Add0~11_cout\) # (!\sommatore|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|OUT_DATA[0]~0_combout\,
	datab => \sommatore|Add0~9_combout\,
	datad => VCC,
	cin => \sommatore|Add0~11_cout\,
	combout => \sommatore|Add0~12_combout\,
	cout => \sommatore|Add0~13\);

-- Location: LCCOMB_X11_Y31_N8
\sommatore|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~47_combout\ = ((\sommatore|Add0~46_combout\ $ (\mux_1|OUT_DATA[1]~13_combout\ $ (!\sommatore|Add0~13\)))) # (GND)
-- \sommatore|Add0~48\ = CARRY((\sommatore|Add0~46_combout\ & ((\mux_1|OUT_DATA[1]~13_combout\) # (!\sommatore|Add0~13\))) # (!\sommatore|Add0~46_combout\ & (\mux_1|OUT_DATA[1]~13_combout\ & !\sommatore|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~46_combout\,
	datab => \mux_1|OUT_DATA[1]~13_combout\,
	datad => VCC,
	cin => \sommatore|Add0~13\,
	combout => \sommatore|Add0~47_combout\,
	cout => \sommatore|Add0~48\);

-- Location: LCFF_X11_Y31_N9
\ff_3|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~47_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(1));

-- Location: LCCOMB_X10_Y31_N6
\mux_1|OUT_DATA[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[1]~13_combout\ = (\SEL_MUX1~combout\(0) & ((\SEL_MUX1~combout\(1) & ((\ff_3|Q\(1)))) # (!\SEL_MUX1~combout\(1) & (\DATA_OUT_MEM_A~combout\(2))))) # (!\SEL_MUX1~combout\(0) & (!\SEL_MUX1~combout\(1) & ((\ff_3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \DATA_OUT_MEM_A~combout\(2),
	datad => \ff_3|Q\(1),
	combout => \mux_1|OUT_DATA[1]~13_combout\);

-- Location: LCCOMB_X11_Y31_N10
\sommatore|Add0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~49_combout\ = (\mux_1|OUT_DATA[2]~12_combout\ & ((\sommatore|Add0~42_combout\ & (\sommatore|Add0~48\ & VCC)) # (!\sommatore|Add0~42_combout\ & (!\sommatore|Add0~48\)))) # (!\mux_1|OUT_DATA[2]~12_combout\ & ((\sommatore|Add0~42_combout\ & 
-- (!\sommatore|Add0~48\)) # (!\sommatore|Add0~42_combout\ & ((\sommatore|Add0~48\) # (GND)))))
-- \sommatore|Add0~50\ = CARRY((\mux_1|OUT_DATA[2]~12_combout\ & (!\sommatore|Add0~42_combout\ & !\sommatore|Add0~48\)) # (!\mux_1|OUT_DATA[2]~12_combout\ & ((!\sommatore|Add0~48\) # (!\sommatore|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|OUT_DATA[2]~12_combout\,
	datab => \sommatore|Add0~42_combout\,
	datad => VCC,
	cin => \sommatore|Add0~48\,
	combout => \sommatore|Add0~49_combout\,
	cout => \sommatore|Add0~50\);

-- Location: LCCOMB_X11_Y31_N12
\sommatore|Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~51_combout\ = ((\mux_1|OUT_DATA[3]~11_combout\ $ (\sommatore|Add0~38_combout\ $ (!\sommatore|Add0~50\)))) # (GND)
-- \sommatore|Add0~52\ = CARRY((\mux_1|OUT_DATA[3]~11_combout\ & ((\sommatore|Add0~38_combout\) # (!\sommatore|Add0~50\))) # (!\mux_1|OUT_DATA[3]~11_combout\ & (\sommatore|Add0~38_combout\ & !\sommatore|Add0~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|OUT_DATA[3]~11_combout\,
	datab => \sommatore|Add0~38_combout\,
	datad => VCC,
	cin => \sommatore|Add0~50\,
	combout => \sommatore|Add0~51_combout\,
	cout => \sommatore|Add0~52\);

-- Location: LCFF_X11_Y31_N15
\ff_4|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~53_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(4));

-- Location: LCCOMB_X10_Y31_N24
\sommatore|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~40_combout\ = (!\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & (\ff_4|Q\(4))) # (!\sommatore|Add0~4_combout\ & ((!\ff_1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~4_combout\,
	datab => \sommatore|Add0~5_combout\,
	datac => \ff_4|Q\(4),
	datad => \ff_1|Q\(2),
	combout => \sommatore|Add0~40_combout\);

-- Location: LCCOMB_X10_Y31_N4
\sommatore|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~39_combout\ = (\SEL_MUX2~combout\(0) & ((!\ff_2|Q\(2)))) # (!\SEL_MUX2~combout\(0) & (!\ff_4|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(0),
	datab => \ff_4|Q\(4),
	datac => \ff_2|Q\(2),
	combout => \sommatore|Add0~39_combout\);

-- Location: LCCOMB_X10_Y31_N26
\sommatore|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~42_combout\ = (\sommatore|Add0~8_combout\ & (((\sommatore|Add0~39_combout\)))) # (!\sommatore|Add0~8_combout\ & ((\sommatore|Add0~41_combout\) # ((\sommatore|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~8_combout\,
	datab => \sommatore|Add0~41_combout\,
	datac => \sommatore|Add0~40_combout\,
	datad => \sommatore|Add0~39_combout\,
	combout => \sommatore|Add0~42_combout\);

-- Location: LCFF_X11_Y31_N11
\ff_4|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~49_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(2));

-- Location: LCCOMB_X12_Y31_N0
\sommatore|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~6_combout\ = (!\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_4|Q\(2)))) # (!\sommatore|Add0~4_combout\ & (!\ff_1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~5_combout\,
	datab => \ff_1|Q\(0),
	datac => \sommatore|Add0~4_combout\,
	datad => \ff_4|Q\(2),
	combout => \sommatore|Add0~6_combout\);

-- Location: LCCOMB_X12_Y31_N24
\sommatore|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~3_combout\ = (\SEL_MUX2~combout\(0) & (!\ff_2|Q\(0))) # (!\SEL_MUX2~combout\(0) & ((!\ff_4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_2|Q\(0),
	datab => \SEL_MUX2~combout\(0),
	datad => \ff_4|Q\(2),
	combout => \sommatore|Add0~3_combout\);

-- Location: LCCOMB_X11_Y31_N0
\sommatore|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~9_combout\ = (\sommatore|Add0~8_combout\ & (((\sommatore|Add0~3_combout\)))) # (!\sommatore|Add0~8_combout\ & ((\sommatore|Add0~7_combout\) # ((\sommatore|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~8_combout\,
	datab => \sommatore|Add0~7_combout\,
	datac => \sommatore|Add0~6_combout\,
	datad => \sommatore|Add0~3_combout\,
	combout => \sommatore|Add0~9_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_OUT_MEM_A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_OUT_MEM_A(7),
	combout => \DATA_OUT_MEM_A~combout\(7));

-- Location: LCFF_X8_Y31_N13
\ff_1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \DATA_OUT_MEM_A~combout\(7),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_1|Q\(7));

-- Location: LCFF_X8_Y31_N31
\ff_2|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \ff_1|Q\(7),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_2|Q\(7));

-- Location: LCCOMB_X8_Y31_N30
\mux_2|OUT_DATA[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_2|OUT_DATA[7]~0_combout\ = (\SEL_MUX2~combout\(1) & ((\ff_1|Q\(7)))) # (!\SEL_MUX2~combout\(1) & (\ff_2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(1),
	datac => \ff_2|Q\(7),
	datad => \ff_1|Q\(7),
	combout => \mux_2|OUT_DATA[7]~0_combout\);

-- Location: LCCOMB_X8_Y31_N14
\sommatore|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~72_combout\ = (\SEL_MUX2~combout\(0) & (\SUB_ADDER~combout\ $ (\mux_2|OUT_DATA[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUB_ADDER~combout\,
	datac => \SEL_MUX2~combout\(0),
	datad => \mux_2|OUT_DATA[7]~0_combout\,
	combout => \sommatore|Add0~72_combout\);

-- Location: LCCOMB_X8_Y31_N22
\sommatore|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~15_combout\ = (!\SEL_MUX2~combout\(0) & !\SUB_ADDER~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_MUX2~combout\(0),
	datad => \SUB_ADDER~combout\,
	combout => \sommatore|Add0~15_combout\);

-- Location: LCCOMB_X8_Y31_N8
\sommatore|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~14_combout\ = (!\SUB_ADDER~combout\ & ((\SEL_MUX2~combout\(1)) # (\SEL_MUX2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(1),
	datac => \SEL_MUX2~combout\(0),
	datad => \SUB_ADDER~combout\,
	combout => \sommatore|Add0~14_combout\);

-- Location: LCCOMB_X14_Y31_N4
\mux_1|OUT_DATA[11]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[11]~18_combout\ = (\SEL_MUX1~combout\(0) & (!\SEL_MUX1~combout\(1) & (\DATA_OUT_MEM_A~combout\(7)))) # (!\SEL_MUX1~combout\(0) & (\SEL_MUX1~combout\(1) & ((\ff_1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \DATA_OUT_MEM_A~combout\(7),
	datad => \ff_1|Q\(7),
	combout => \mux_1|OUT_DATA[11]~18_combout\);

-- Location: LCFF_X14_Y31_N31
\ff_3|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~70_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(11));

-- Location: LCCOMB_X14_Y31_N30
\mux_1|OUT_DATA[11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[11]~19_combout\ = (\mux_1|OUT_DATA[11]~18_combout\) # ((\ff_3|Q\(11) & (\SEL_MUX1~combout\(0) $ (!\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \mux_1|OUT_DATA[11]~18_combout\,
	datac => \ff_3|Q\(11),
	datad => \SEL_MUX1~combout\(1),
	combout => \mux_1|OUT_DATA[11]~19_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SEL_MUX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SEL_MUX2(1),
	combout => \SEL_MUX2~combout\(1));

-- Location: LCFF_X11_Y31_N27
\ff_4|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~68_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(10));

-- Location: LCCOMB_X8_Y31_N24
\sommatore|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~18_combout\ = (!\ff_4|Q\(10)) # (!\SEL_MUX2~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_MUX2~combout\(1),
	datad => \ff_4|Q\(10),
	combout => \sommatore|Add0~18_combout\);

-- Location: LCCOMB_X8_Y31_N18
\sommatore|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~16_combout\ = (\sommatore|Add0~15_combout\ & ((\sommatore|Add0~14_combout\ & ((\ff_4|Q\(10)))) # (!\sommatore|Add0~14_combout\ & (\ff_1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_1|Q\(7),
	datab => \sommatore|Add0~15_combout\,
	datac => \sommatore|Add0~14_combout\,
	datad => \ff_4|Q\(10),
	combout => \sommatore|Add0~16_combout\);

-- Location: LCCOMB_X8_Y31_N10
\sommatore|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~19_combout\ = (\sommatore|Add0~72_combout\) # ((\sommatore|Add0~16_combout\) # ((\sommatore|Add0~17_combout\ & \sommatore|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~17_combout\,
	datab => \sommatore|Add0~72_combout\,
	datac => \sommatore|Add0~18_combout\,
	datad => \sommatore|Add0~16_combout\,
	combout => \sommatore|Add0~19_combout\);

-- Location: LCCOMB_X12_Y31_N22
\sommatore|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~8_combout\ = (\SUB_ADDER~combout\ & (\SEL_MUX2~combout\(1) $ (\SEL_MUX2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2~combout\(1),
	datab => \SEL_MUX2~combout\(0),
	datad => \SUB_ADDER~combout\,
	combout => \sommatore|Add0~8_combout\);

-- Location: LCFF_X12_Y31_N7
\ff_1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \DATA_OUT_MEM_A~combout\(6),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_1|Q\(6));

-- Location: LCFF_X12_Y31_N31
\ff_2|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \ff_1|Q\(6),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_2|Q\(6));

-- Location: LCCOMB_X12_Y31_N6
\sommatore|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~25_combout\ = (\sommatore|Add0~5_combout\ & ((\sommatore|Add0~4_combout\ & ((\ff_2|Q\(6)))) # (!\sommatore|Add0~4_combout\ & (\ff_1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~5_combout\,
	datab => \sommatore|Add0~4_combout\,
	datac => \ff_1|Q\(6),
	datad => \ff_2|Q\(6),
	combout => \sommatore|Add0~25_combout\);

-- Location: LCCOMB_X11_Y31_N22
\sommatore|Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~61_combout\ = (\mux_1|OUT_DATA[8]~2_combout\ & ((\sommatore|Add0~19_combout\ & (\sommatore|Add0~60\ & VCC)) # (!\sommatore|Add0~19_combout\ & (!\sommatore|Add0~60\)))) # (!\mux_1|OUT_DATA[8]~2_combout\ & ((\sommatore|Add0~19_combout\ & 
-- (!\sommatore|Add0~60\)) # (!\sommatore|Add0~19_combout\ & ((\sommatore|Add0~60\) # (GND)))))
-- \sommatore|Add0~62\ = CARRY((\mux_1|OUT_DATA[8]~2_combout\ & (!\sommatore|Add0~19_combout\ & !\sommatore|Add0~60\)) # (!\mux_1|OUT_DATA[8]~2_combout\ & ((!\sommatore|Add0~60\) # (!\sommatore|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|OUT_DATA[8]~2_combout\,
	datab => \sommatore|Add0~19_combout\,
	datad => VCC,
	cin => \sommatore|Add0~60\,
	combout => \sommatore|Add0~61_combout\,
	cout => \sommatore|Add0~62\);

-- Location: LCFF_X11_Y31_N23
\ff_4|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~61_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(8));

-- Location: LCCOMB_X12_Y31_N30
\sommatore|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~23_combout\ = (\SEL_MUX2~combout\(0) & (!\ff_2|Q\(6))) # (!\SEL_MUX2~combout\(0) & ((!\ff_4|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_MUX2~combout\(0),
	datac => \ff_2|Q\(6),
	datad => \ff_4|Q\(8),
	combout => \sommatore|Add0~23_combout\);

-- Location: LCCOMB_X12_Y31_N28
\sommatore|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~26_combout\ = (\sommatore|Add0~8_combout\ & (((\sommatore|Add0~23_combout\)))) # (!\sommatore|Add0~8_combout\ & ((\sommatore|Add0~24_combout\) # ((\sommatore|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~24_combout\,
	datab => \sommatore|Add0~8_combout\,
	datac => \sommatore|Add0~25_combout\,
	datad => \sommatore|Add0~23_combout\,
	combout => \sommatore|Add0~26_combout\);

-- Location: LCCOMB_X11_Y31_N18
\sommatore|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~57_combout\ = (\mux_1|OUT_DATA[6]~6_combout\ & ((\sommatore|Add0~26_combout\ & (\sommatore|Add0~56\ & VCC)) # (!\sommatore|Add0~26_combout\ & (!\sommatore|Add0~56\)))) # (!\mux_1|OUT_DATA[6]~6_combout\ & ((\sommatore|Add0~26_combout\ & 
-- (!\sommatore|Add0~56\)) # (!\sommatore|Add0~26_combout\ & ((\sommatore|Add0~56\) # (GND)))))
-- \sommatore|Add0~58\ = CARRY((\mux_1|OUT_DATA[6]~6_combout\ & (!\sommatore|Add0~26_combout\ & !\sommatore|Add0~56\)) # (!\mux_1|OUT_DATA[6]~6_combout\ & ((!\sommatore|Add0~56\) # (!\sommatore|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|OUT_DATA[6]~6_combout\,
	datab => \sommatore|Add0~26_combout\,
	datad => VCC,
	cin => \sommatore|Add0~56\,
	combout => \sommatore|Add0~57_combout\,
	cout => \sommatore|Add0~58\);

-- Location: LCCOMB_X11_Y31_N20
\sommatore|Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~59_combout\ = ((\sommatore|Add0~22_combout\ $ (\mux_1|OUT_DATA[7]~4_combout\ $ (!\sommatore|Add0~58\)))) # (GND)
-- \sommatore|Add0~60\ = CARRY((\sommatore|Add0~22_combout\ & ((\mux_1|OUT_DATA[7]~4_combout\) # (!\sommatore|Add0~58\))) # (!\sommatore|Add0~22_combout\ & (\mux_1|OUT_DATA[7]~4_combout\ & !\sommatore|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~22_combout\,
	datab => \mux_1|OUT_DATA[7]~4_combout\,
	datad => VCC,
	cin => \sommatore|Add0~58\,
	combout => \sommatore|Add0~59_combout\,
	cout => \sommatore|Add0~60\);

-- Location: LCFF_X9_Y31_N29
\ff_3|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~59_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(7));

-- Location: LCCOMB_X9_Y31_N2
\mux_1|OUT_DATA[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[7]~3_combout\ = (\SEL_MUX1~combout\(0) & (\DATA_OUT_MEM_A~combout\(7) & (!\SEL_MUX1~combout\(1)))) # (!\SEL_MUX1~combout\(0) & (((\SEL_MUX1~combout\(1) & \ff_1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \DATA_OUT_MEM_A~combout\(7),
	datac => \SEL_MUX1~combout\(1),
	datad => \ff_1|Q\(3),
	combout => \mux_1|OUT_DATA[7]~3_combout\);

-- Location: LCCOMB_X9_Y31_N28
\mux_1|OUT_DATA[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[7]~4_combout\ = (\mux_1|OUT_DATA[7]~3_combout\) # ((\ff_3|Q\(7) & (\SEL_MUX1~combout\(0) $ (!\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_3|Q\(7),
	datad => \mux_1|OUT_DATA[7]~3_combout\,
	combout => \mux_1|OUT_DATA[7]~4_combout\);

-- Location: LCCOMB_X11_Y31_N24
\sommatore|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~66_combout\ = ((\sommatore|Add0~65_combout\ $ (\mux_1|OUT_DATA[9]~15_combout\ $ (!\sommatore|Add0~62\)))) # (GND)
-- \sommatore|Add0~67\ = CARRY((\sommatore|Add0~65_combout\ & ((\mux_1|OUT_DATA[9]~15_combout\) # (!\sommatore|Add0~62\))) # (!\sommatore|Add0~65_combout\ & (\mux_1|OUT_DATA[9]~15_combout\ & !\sommatore|Add0~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~65_combout\,
	datab => \mux_1|OUT_DATA[9]~15_combout\,
	datad => VCC,
	cin => \sommatore|Add0~62\,
	combout => \sommatore|Add0~66_combout\,
	cout => \sommatore|Add0~67\);

-- Location: LCFF_X9_Y31_N31
\ff_3|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \sommatore|Add0~66_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_3|Q\(9));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SEL_MUX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SEL_MUX1(0),
	combout => \SEL_MUX1~combout\(0));

-- Location: LCFF_X12_Y31_N19
\ff_1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \DATA_OUT_MEM_A~combout\(5),
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_1|Q\(5));

-- Location: LCCOMB_X12_Y31_N16
\mux_1|OUT_DATA[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[9]~14_combout\ = (\SEL_MUX1~combout\(0) & (\DATA_OUT_MEM_A~combout\(7) & (!\SEL_MUX1~combout\(1)))) # (!\SEL_MUX1~combout\(0) & (((\SEL_MUX1~combout\(1) & \ff_1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_OUT_MEM_A~combout\(7),
	datab => \SEL_MUX1~combout\(0),
	datac => \SEL_MUX1~combout\(1),
	datad => \ff_1|Q\(5),
	combout => \mux_1|OUT_DATA[9]~14_combout\);

-- Location: LCCOMB_X9_Y31_N30
\mux_1|OUT_DATA[9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_1|OUT_DATA[9]~15_combout\ = (\mux_1|OUT_DATA[9]~14_combout\) # ((\ff_3|Q\(9) & (\SEL_MUX1~combout\(0) $ (!\SEL_MUX1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1~combout\(0),
	datab => \SEL_MUX1~combout\(1),
	datac => \ff_3|Q\(9),
	datad => \mux_1|OUT_DATA[9]~14_combout\,
	combout => \mux_1|OUT_DATA[9]~15_combout\);

-- Location: LCCOMB_X11_Y31_N26
\sommatore|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~68_combout\ = (\mux_1|OUT_DATA[10]~17_combout\ & ((\sommatore|Add0~65_combout\ & (\sommatore|Add0~67\ & VCC)) # (!\sommatore|Add0~65_combout\ & (!\sommatore|Add0~67\)))) # (!\mux_1|OUT_DATA[10]~17_combout\ & ((\sommatore|Add0~65_combout\ & 
-- (!\sommatore|Add0~67\)) # (!\sommatore|Add0~65_combout\ & ((\sommatore|Add0~67\) # (GND)))))
-- \sommatore|Add0~69\ = CARRY((\mux_1|OUT_DATA[10]~17_combout\ & (!\sommatore|Add0~65_combout\ & !\sommatore|Add0~67\)) # (!\mux_1|OUT_DATA[10]~17_combout\ & ((!\sommatore|Add0~67\) # (!\sommatore|Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|OUT_DATA[10]~17_combout\,
	datab => \sommatore|Add0~65_combout\,
	datad => VCC,
	cin => \sommatore|Add0~67\,
	combout => \sommatore|Add0~68_combout\,
	cout => \sommatore|Add0~69\);

-- Location: LCCOMB_X11_Y31_N28
\sommatore|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~70_combout\ = \sommatore|Add0~65_combout\ $ (\sommatore|Add0~69\ $ (!\mux_1|OUT_DATA[11]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sommatore|Add0~65_combout\,
	datad => \mux_1|OUT_DATA[11]~19_combout\,
	cin => \sommatore|Add0~69\,
	combout => \sommatore|Add0~70_combout\);

-- Location: LCFF_X11_Y31_N29
\ff_4|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \sommatore|Add0~70_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_FF_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ff_4|Q\(11));

-- Location: LCCOMB_X8_Y31_N20
\sommatore|Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~63_combout\ = (\sommatore|Add0~15_combout\ & ((\sommatore|Add0~14_combout\ & ((\ff_4|Q\(11)))) # (!\sommatore|Add0~14_combout\ & (\ff_1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_1|Q\(7),
	datab => \sommatore|Add0~15_combout\,
	datac => \sommatore|Add0~14_combout\,
	datad => \ff_4|Q\(11),
	combout => \sommatore|Add0~63_combout\);

-- Location: LCCOMB_X8_Y31_N2
\sommatore|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~64_combout\ = (!\ff_4|Q\(11)) # (!\SEL_MUX2~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_MUX2~combout\(1),
	datad => \ff_4|Q\(11),
	combout => \sommatore|Add0~64_combout\);

-- Location: LCCOMB_X8_Y31_N0
\sommatore|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \sommatore|Add0~65_combout\ = (\sommatore|Add0~72_combout\) # ((\sommatore|Add0~63_combout\) # ((\sommatore|Add0~17_combout\ & \sommatore|Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~17_combout\,
	datab => \sommatore|Add0~72_combout\,
	datac => \sommatore|Add0~63_combout\,
	datad => \sommatore|Add0~64_combout\,
	combout => \sommatore|Add0~65_combout\);

-- Location: LCCOMB_X11_Y31_N2
\rounding|Comparison~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|Comparison~0_combout\ = \sommatore|Add0~61_combout\ $ (\sommatore|Add0~68_combout\ $ (\sommatore|Add0~66_combout\ $ (\sommatore|Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~61_combout\,
	datab => \sommatore|Add0~68_combout\,
	datac => \sommatore|Add0~66_combout\,
	datad => \sommatore|Add0~70_combout\,
	combout => \rounding|Comparison~0_combout\);

-- Location: LCCOMB_X14_Y31_N16
\rounding|OUT_ROUND~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|OUT_ROUND~0_combout\ = (\EN_ROUND~combout\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|Add0~70_combout\))) # (!\rounding|Comparison~0_combout\ & (\sommatore|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_ROUND~combout\,
	datab => \sommatore|Add0~12_combout\,
	datac => \rounding|Comparison~0_combout\,
	datad => \sommatore|Add0~70_combout\,
	combout => \rounding|OUT_ROUND~0_combout\);

-- Location: LCFF_X14_Y31_N17
\rounding|OUT_ROUND[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \rounding|OUT_ROUND~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rounding|OUT_ROUND\(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_ROUND~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EN_ROUND,
	combout => \EN_ROUND~combout\);

-- Location: LCCOMB_X14_Y31_N2
\rounding|OUT_ROUND~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|OUT_ROUND~1_combout\ = (\EN_ROUND~combout\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|Add0~70_combout\))) # (!\rounding|Comparison~0_combout\ & (\sommatore|Add0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~47_combout\,
	datab => \EN_ROUND~combout\,
	datac => \rounding|Comparison~0_combout\,
	datad => \sommatore|Add0~70_combout\,
	combout => \rounding|OUT_ROUND~1_combout\);

-- Location: LCFF_X14_Y31_N3
\rounding|OUT_ROUND[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \rounding|OUT_ROUND~1_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rounding|OUT_ROUND\(1));

-- Location: LCCOMB_X14_Y31_N20
\rounding|OUT_ROUND~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|OUT_ROUND~2_combout\ = (\EN_ROUND~combout\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|Add0~70_combout\))) # (!\rounding|Comparison~0_combout\ & (\sommatore|Add0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_ROUND~combout\,
	datab => \sommatore|Add0~49_combout\,
	datac => \rounding|Comparison~0_combout\,
	datad => \sommatore|Add0~70_combout\,
	combout => \rounding|OUT_ROUND~2_combout\);

-- Location: LCFF_X14_Y31_N21
\rounding|OUT_ROUND[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \rounding|OUT_ROUND~2_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rounding|OUT_ROUND\(2));

-- Location: LCCOMB_X14_Y31_N14
\rounding|OUT_ROUND~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|OUT_ROUND~3_combout\ = (\EN_ROUND~combout\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|Add0~70_combout\))) # (!\rounding|Comparison~0_combout\ & (\sommatore|Add0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_ROUND~combout\,
	datab => \sommatore|Add0~51_combout\,
	datac => \rounding|Comparison~0_combout\,
	datad => \sommatore|Add0~70_combout\,
	combout => \rounding|OUT_ROUND~3_combout\);

-- Location: LCFF_X14_Y31_N15
\rounding|OUT_ROUND[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \rounding|OUT_ROUND~3_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rounding|OUT_ROUND\(3));

-- Location: LCCOMB_X14_Y31_N24
\rounding|OUT_ROUND~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|OUT_ROUND~4_combout\ = (\EN_ROUND~combout\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|Add0~70_combout\))) # (!\rounding|Comparison~0_combout\ & (\sommatore|Add0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_ROUND~combout\,
	datab => \sommatore|Add0~53_combout\,
	datac => \rounding|Comparison~0_combout\,
	datad => \sommatore|Add0~70_combout\,
	combout => \rounding|OUT_ROUND~4_combout\);

-- Location: LCFF_X14_Y31_N25
\rounding|OUT_ROUND[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \rounding|OUT_ROUND~4_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rounding|OUT_ROUND\(4));

-- Location: LCCOMB_X14_Y31_N10
\rounding|OUT_ROUND~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|OUT_ROUND~5_combout\ = (\EN_ROUND~combout\ & ((\rounding|Comparison~0_combout\ & (!\sommatore|Add0~70_combout\)) # (!\rounding|Comparison~0_combout\ & ((\sommatore|Add0~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_ROUND~combout\,
	datab => \sommatore|Add0~70_combout\,
	datac => \rounding|Comparison~0_combout\,
	datad => \sommatore|Add0~55_combout\,
	combout => \rounding|OUT_ROUND~5_combout\);

-- Location: LCFF_X14_Y31_N11
\rounding|OUT_ROUND[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \rounding|OUT_ROUND~5_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rounding|OUT_ROUND\(5));

-- Location: LCCOMB_X14_Y31_N28
\rounding|OUT_ROUND~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|OUT_ROUND~6_combout\ = (\EN_ROUND~combout\ & ((\rounding|Comparison~0_combout\ & (!\sommatore|Add0~70_combout\)) # (!\rounding|Comparison~0_combout\ & ((\sommatore|Add0~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_ROUND~combout\,
	datab => \sommatore|Add0~70_combout\,
	datac => \rounding|Comparison~0_combout\,
	datad => \sommatore|Add0~57_combout\,
	combout => \rounding|OUT_ROUND~6_combout\);

-- Location: LCFF_X14_Y31_N29
\rounding|OUT_ROUND[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \rounding|OUT_ROUND~6_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rounding|OUT_ROUND\(6));

-- Location: LCCOMB_X14_Y31_N6
\rounding|OUT_ROUND~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rounding|OUT_ROUND~7_combout\ = (\EN_ROUND~combout\ & \sommatore|Add0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_ROUND~combout\,
	datac => \sommatore|Add0~70_combout\,
	combout => \rounding|OUT_ROUND~7_combout\);

-- Location: LCFF_X14_Y31_N7
\rounding|OUT_ROUND[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \rounding|OUT_ROUND~7_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rounding|OUT_ROUND\(7));

-- Location: LCCOMB_X57_Y35_N16
\cnt_1|GEN_CNT:7:TFF_X|ff|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_1|GEN_CNT:7:TFF_X|ff|Q~0_combout\ = \cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\ $ (((\cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\ & \cnt_1|T\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\,
	datac => \cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\,
	datad => \cnt_1|T\(6),
	combout => \cnt_1|GEN_CNT:7:TFF_X|ff|Q~0_combout\);

-- Location: LCFF_X57_Y35_N17
\cnt_1|GEN_CNT:7:TFF_X|ff|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_1|GEN_CNT:7:TFF_X|ff|Q~0_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_CNT_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EN_CNT_2,
	combout => \EN_CNT_2~combout\);

-- Location: LCCOMB_X1_Y33_N0
\cnt_2|reg|Q[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[0]~10_combout\ = \cnt_2|reg|Q\(0) $ (\EN_CNT_2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt_2|reg|Q\(0),
	datad => \EN_CNT_2~combout\,
	combout => \cnt_2|reg|Q[0]~10_combout\);

-- Location: LCFF_X1_Y33_N1
\cnt_2|reg|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[0]~10_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(0));

-- Location: LCCOMB_X1_Y33_N8
\cnt_2|reg|Q[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[1]~11_combout\ = (\cnt_2|reg|Q\(1) & (\cnt_2|reg|Q\(0) $ (VCC))) # (!\cnt_2|reg|Q\(1) & (\cnt_2|reg|Q\(0) & VCC))
-- \cnt_2|reg|Q[1]~12\ = CARRY((\cnt_2|reg|Q\(1) & \cnt_2|reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_2|reg|Q\(1),
	datab => \cnt_2|reg|Q\(0),
	datad => VCC,
	combout => \cnt_2|reg|Q[1]~11_combout\,
	cout => \cnt_2|reg|Q[1]~12\);

-- Location: LCFF_X1_Y33_N9
\cnt_2|reg|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[1]~11_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(1));

-- Location: LCCOMB_X1_Y33_N10
\cnt_2|reg|Q[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[2]~13_combout\ = (\cnt_2|reg|Q\(2) & (!\cnt_2|reg|Q[1]~12\)) # (!\cnt_2|reg|Q\(2) & ((\cnt_2|reg|Q[1]~12\) # (GND)))
-- \cnt_2|reg|Q[2]~14\ = CARRY((!\cnt_2|reg|Q[1]~12\) # (!\cnt_2|reg|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_2|reg|Q\(2),
	datad => VCC,
	cin => \cnt_2|reg|Q[1]~12\,
	combout => \cnt_2|reg|Q[2]~13_combout\,
	cout => \cnt_2|reg|Q[2]~14\);

-- Location: LCFF_X1_Y33_N11
\cnt_2|reg|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[2]~13_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(2));

-- Location: LCCOMB_X1_Y33_N12
\cnt_2|reg|Q[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[3]~15_combout\ = (\cnt_2|reg|Q\(3) & (\cnt_2|reg|Q[2]~14\ $ (GND))) # (!\cnt_2|reg|Q\(3) & (!\cnt_2|reg|Q[2]~14\ & VCC))
-- \cnt_2|reg|Q[3]~16\ = CARRY((\cnt_2|reg|Q\(3) & !\cnt_2|reg|Q[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_2|reg|Q\(3),
	datad => VCC,
	cin => \cnt_2|reg|Q[2]~14\,
	combout => \cnt_2|reg|Q[3]~15_combout\,
	cout => \cnt_2|reg|Q[3]~16\);

-- Location: LCFF_X1_Y33_N13
\cnt_2|reg|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[3]~15_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(3));

-- Location: LCCOMB_X1_Y33_N14
\cnt_2|reg|Q[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[4]~17_combout\ = (\cnt_2|reg|Q\(4) & (!\cnt_2|reg|Q[3]~16\)) # (!\cnt_2|reg|Q\(4) & ((\cnt_2|reg|Q[3]~16\) # (GND)))
-- \cnt_2|reg|Q[4]~18\ = CARRY((!\cnt_2|reg|Q[3]~16\) # (!\cnt_2|reg|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_2|reg|Q\(4),
	datad => VCC,
	cin => \cnt_2|reg|Q[3]~16\,
	combout => \cnt_2|reg|Q[4]~17_combout\,
	cout => \cnt_2|reg|Q[4]~18\);

-- Location: LCFF_X1_Y33_N15
\cnt_2|reg|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[4]~17_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(4));

-- Location: LCCOMB_X1_Y33_N16
\cnt_2|reg|Q[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[5]~19_combout\ = (\cnt_2|reg|Q\(5) & (\cnt_2|reg|Q[4]~18\ $ (GND))) # (!\cnt_2|reg|Q\(5) & (!\cnt_2|reg|Q[4]~18\ & VCC))
-- \cnt_2|reg|Q[5]~20\ = CARRY((\cnt_2|reg|Q\(5) & !\cnt_2|reg|Q[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_2|reg|Q\(5),
	datad => VCC,
	cin => \cnt_2|reg|Q[4]~18\,
	combout => \cnt_2|reg|Q[5]~19_combout\,
	cout => \cnt_2|reg|Q[5]~20\);

-- Location: LCFF_X1_Y33_N17
\cnt_2|reg|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[5]~19_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(5));

-- Location: LCCOMB_X1_Y33_N18
\cnt_2|reg|Q[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[6]~21_combout\ = (\cnt_2|reg|Q\(6) & (!\cnt_2|reg|Q[5]~20\)) # (!\cnt_2|reg|Q\(6) & ((\cnt_2|reg|Q[5]~20\) # (GND)))
-- \cnt_2|reg|Q[6]~22\ = CARRY((!\cnt_2|reg|Q[5]~20\) # (!\cnt_2|reg|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_2|reg|Q\(6),
	datad => VCC,
	cin => \cnt_2|reg|Q[5]~20\,
	combout => \cnt_2|reg|Q[6]~21_combout\,
	cout => \cnt_2|reg|Q[6]~22\);

-- Location: LCFF_X1_Y33_N19
\cnt_2|reg|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[6]~21_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(6));

-- Location: LCCOMB_X1_Y33_N20
\cnt_2|reg|Q[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[7]~23_combout\ = (\cnt_2|reg|Q\(7) & (\cnt_2|reg|Q[6]~22\ $ (GND))) # (!\cnt_2|reg|Q\(7) & (!\cnt_2|reg|Q[6]~22\ & VCC))
-- \cnt_2|reg|Q[7]~24\ = CARRY((\cnt_2|reg|Q\(7) & !\cnt_2|reg|Q[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_2|reg|Q\(7),
	datad => VCC,
	cin => \cnt_2|reg|Q[6]~22\,
	combout => \cnt_2|reg|Q[7]~23_combout\,
	cout => \cnt_2|reg|Q[7]~24\);

-- Location: LCFF_X1_Y33_N21
\cnt_2|reg|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[7]~23_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(7));

-- Location: LCCOMB_X1_Y33_N22
\cnt_2|reg|Q[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[8]~25_combout\ = (\cnt_2|reg|Q\(8) & (!\cnt_2|reg|Q[7]~24\)) # (!\cnt_2|reg|Q\(8) & ((\cnt_2|reg|Q[7]~24\) # (GND)))
-- \cnt_2|reg|Q[8]~26\ = CARRY((!\cnt_2|reg|Q[7]~24\) # (!\cnt_2|reg|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_2|reg|Q\(8),
	datad => VCC,
	cin => \cnt_2|reg|Q[7]~24\,
	combout => \cnt_2|reg|Q[8]~25_combout\,
	cout => \cnt_2|reg|Q[8]~26\);

-- Location: LCFF_X1_Y33_N23
\cnt_2|reg|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[8]~25_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(8));

-- Location: LCCOMB_X1_Y33_N24
\cnt_2|reg|Q[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[9]~27_combout\ = (\cnt_2|reg|Q\(9) & (\cnt_2|reg|Q[8]~26\ $ (GND))) # (!\cnt_2|reg|Q\(9) & (!\cnt_2|reg|Q[8]~26\ & VCC))
-- \cnt_2|reg|Q[9]~28\ = CARRY((\cnt_2|reg|Q\(9) & !\cnt_2|reg|Q[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_2|reg|Q\(9),
	datad => VCC,
	cin => \cnt_2|reg|Q[8]~26\,
	combout => \cnt_2|reg|Q[9]~27_combout\,
	cout => \cnt_2|reg|Q[9]~28\);

-- Location: LCFF_X1_Y33_N25
\cnt_2|reg|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[9]~27_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(9));

-- Location: LCCOMB_X1_Y33_N26
\cnt_2|reg|Q[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt_2|reg|Q[10]~29_combout\ = \cnt_2|reg|Q[9]~28\ $ (\cnt_2|reg|Q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cnt_2|reg|Q\(10),
	cin => \cnt_2|reg|Q[9]~28\,
	combout => \cnt_2|reg|Q[10]~29_combout\);

-- Location: LCFF_X1_Y33_N27
\cnt_2|reg|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cnt_2|reg|Q[10]~29_combout\,
	aclr => \ALT_INV_RST_n~clkctrl_outclk\,
	ena => \EN_CNT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt_2|reg|Q\(10));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST_ADDER~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RST_ADDER);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TC_CNT_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TC_CNT_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_CNT_1);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_ROUND[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rounding|OUT_ROUND\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_ROUND(0));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_ROUND[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rounding|OUT_ROUND\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_ROUND(1));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_ROUND[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rounding|OUT_ROUND\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_ROUND(2));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_ROUND[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rounding|OUT_ROUND\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_ROUND(3));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_ROUND[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rounding|OUT_ROUND\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_ROUND(4));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_ROUND[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rounding|OUT_ROUND\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_ROUND(5));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_ROUND[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rounding|OUT_ROUND\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_ROUND(6));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_ROUND[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rounding|OUT_ROUND\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_ROUND(7));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:0:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(0));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:1:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(1));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:2:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(2));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:3:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(3));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:4:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(4));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:5:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(5));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:6:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(6));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:7:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(7));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:8:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(8));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDRESS_MEM[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_1|GEN_CNT:9:TFF_X|ff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDRESS_MEM(9));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(1));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(2));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(3));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(4));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(5));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(6));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(7));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(8));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(9));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT_PORT[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cnt_2|reg|Q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT_PORT(10));
END structure;


