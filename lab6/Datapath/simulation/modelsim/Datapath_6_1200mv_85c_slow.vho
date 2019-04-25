-- Copyright (C) 1991-2011 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Web Edition"

-- DATE "04/24/2019 20:00:15"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Datapath IS
    PORT (
	TC : OUT std_logic;
	DATA_OUT : BUFFER IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	ADRESS_OUT : OUT std_logic_vector(9 DOWNTO 0);
	CONT_POSITIVI : OUT IEEE.NUMERIC_STD.signed(9 DOWNTO 0);
	CLK : IN std_logic;
	RST_n : IN std_logic;
	SEL_MUX1 : IN std_logic_vector(1 DOWNTO 0);
	SEL_MUX2 : IN std_logic_vector(1 DOWNTO 0);
	EN_COUNTER_p : IN std_logic;
	EN_SUM_p : IN std_logic;
	EN_R_p : IN std_logic;
	EN_P_p : IN std_logic;
	EN_FF1_p : IN std_logic;
	EN_FF2_p : IN std_logic;
	EN_FF3_p : IN std_logic;
	EN_FF4_p : IN std_logic;
	ADD_SUB : IN std_logic;
	DATA_IN : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- TC	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRESS_OUT[9]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[8]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT_POSITIVI[9]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_COUNTER_p	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_n	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_R_p	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_P_p	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX2[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_SUB	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX2[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX1[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX1[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_SUM_p	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_FF2_p	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_FF1_p	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_FF4_p	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_FF3_p	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_TC : std_logic;
SIGNAL ww_DATA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADRESS_OUT : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CONT_POSITIVI : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST_n : std_logic;
SIGNAL ww_SEL_MUX1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SEL_MUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_EN_COUNTER_p : std_logic;
SIGNAL ww_EN_SUM_p : std_logic;
SIGNAL ww_EN_R_p : std_logic;
SIGNAL ww_EN_P_p : std_logic;
SIGNAL ww_EN_FF1_p : std_logic;
SIGNAL ww_EN_FF2_p : std_logic;
SIGNAL ww_EN_FF3_p : std_logic;
SIGNAL ww_EN_FF4_p : std_logic;
SIGNAL ww_ADD_SUB : std_logic;
SIGNAL ww_DATA_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL \RST_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EN_P_p~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EN_SUM_p~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sommatore|Add0~10_combout\ : std_logic;
SIGNAL \sommatore|Add0~47_combout\ : std_logic;
SIGNAL \sommatore|Add0~49_combout\ : std_logic;
SIGNAL \sommatore|Add0~53_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~0_combout\ : std_logic;
SIGNAL \sommatore|Add0~1_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[0]~0_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[10]~1_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[10]~2_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[9]~3_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[9]~4_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[8]~5_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[8]~6_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[7]~7_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[7]~8_combout\ : std_logic;
SIGNAL \sommatore|Add0~23_combout\ : std_logic;
SIGNAL \sommatore|Add0~24_combout\ : std_logic;
SIGNAL \sommatore|Add0~25_combout\ : std_logic;
SIGNAL \sommatore|Add0~26_combout\ : std_logic;
SIGNAL \sommatore|Add0~29_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[5]~11_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[5]~12_combout\ : std_logic;
SIGNAL \sommatore|Add0~31_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[4]~13_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[4]~14_combout\ : std_logic;
SIGNAL \sommatore|Add0~35_combout\ : std_logic;
SIGNAL \sommatore|Add0~36_combout\ : std_logic;
SIGNAL \sommatore|Add0~37_combout\ : std_logic;
SIGNAL \sommatore|Add0~38_combout\ : std_logic;
SIGNAL \sommatore|Add0~39_combout\ : std_logic;
SIGNAL \sommatore|Add0~40_combout\ : std_logic;
SIGNAL \sommatore|Add0~41_combout\ : std_logic;
SIGNAL \sommatore|Add0~42_combout\ : std_logic;
SIGNAL \sommatore|Add0~43_combout\ : std_logic;
SIGNAL \sommatore|Add0~44_combout\ : std_logic;
SIGNAL \sommatore|Add0~45_combout\ : std_logic;
SIGNAL \sommatore|Add0~46_combout\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \ff2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \ff2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \ff3|Q[9]~feeder_combout\ : std_logic;
SIGNAL \ff4|Q[8]~feeder_combout\ : std_logic;
SIGNAL \ff4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \ff4|Q[5]~feeder_combout\ : std_logic;
SIGNAL \ff1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \TC~output_o\ : std_logic;
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[0]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[1]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[2]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[3]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[4]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[5]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[6]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[7]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[8]~output_o\ : std_logic;
SIGNAL \ADRESS_OUT[9]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[0]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[1]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[2]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[3]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[4]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[5]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[6]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[7]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[8]~output_o\ : std_logic;
SIGNAL \CONT_POSITIVI[9]~output_o\ : std_logic;
SIGNAL \EN_COUNTER_p~input_o\ : std_logic;
SIGNAL \counter|GEN_CNT:0:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \RST_n~input_o\ : std_logic;
SIGNAL \RST_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter|GEN_CNT:0:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \counter|GEN_CNT:1:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:1:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \counter|GEN_CNT:2:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:2:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \counter|GEN_CNT:3:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:3:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \counter|GEN_CNT:4:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:4:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \counter|GEN_CNT:5:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:5:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \counter|GEN_CNT:6:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:6:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \counter|GEN_CNT:8:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:8:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \counter|GEN_CNT:7:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:7:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \TC~1_combout\ : std_logic;
SIGNAL \counter|T[9]~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:9:TFF_X|ff|Q~0_combout\ : std_logic;
SIGNAL \counter|GEN_CNT:9:TFF_X|ff|Q~q\ : std_logic;
SIGNAL \TC~0_combout\ : std_logic;
SIGNAL \TC~2_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN_R_p~input_o\ : std_logic;
SIGNAL \EN_SUM_p~input_o\ : std_logic;
SIGNAL \EN_SUM_p~inputclkctrl_outclk\ : std_logic;
SIGNAL \SEL_MUX2[1]~input_o\ : std_logic;
SIGNAL \SEL_MUX2[0]~input_o\ : std_logic;
SIGNAL \sommatore|Add0~3_combout\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL \EN_FF1_p~input_o\ : std_logic;
SIGNAL \EN_FF2_p~input_o\ : std_logic;
SIGNAL \sommatore|Add0~2_combout\ : std_logic;
SIGNAL \sommatore|Add0~13_combout\ : std_logic;
SIGNAL \sommatore|Add0~6_combout\ : std_logic;
SIGNAL \sommatore|Add0~12_combout\ : std_logic;
SIGNAL \EN_FF4_p~input_o\ : std_logic;
SIGNAL \ADD_SUB~input_o\ : std_logic;
SIGNAL \sommatore|Add0~14_combout\ : std_logic;
SIGNAL \sommatore|Add0~15_combout\ : std_logic;
SIGNAL \EN_FF3_p~input_o\ : std_logic;
SIGNAL \SEL_MUX1[1]~input_o\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[11]~18_combout\ : std_logic;
SIGNAL \sommatore|Add0~17_combout\ : std_logic;
SIGNAL \sommatore|Add0~65_combout\ : std_logic;
SIGNAL \sommatore|Add0~18_combout\ : std_logic;
SIGNAL \sommatore|Add0~16_combout\ : std_logic;
SIGNAL \sommatore|Add0~19_combout\ : std_logic;
SIGNAL \sommatore|Add0~63_combout\ : std_logic;
SIGNAL \ff4|Q[9]~feeder_combout\ : std_logic;
SIGNAL \sommatore|Add0~20_combout\ : std_logic;
SIGNAL \sommatore|Add0~21_combout\ : std_logic;
SIGNAL \sommatore|Add0~22_combout\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \sommatore|Add0~27_combout\ : std_logic;
SIGNAL \sommatore|Add0~59_combout\ : std_logic;
SIGNAL \ff4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \sommatore|Add0~28_combout\ : std_logic;
SIGNAL \sommatore|Add0~30_combout\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \sommatore|Add0~32_combout\ : std_logic;
SIGNAL \sommatore|Add0~33_combout\ : std_logic;
SIGNAL \sommatore|Add0~34_combout\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \SEL_MUX1[0]~input_o\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[2]~16_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[1]~17_combout\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \ff4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \sommatore|Add0~5_combout\ : std_logic;
SIGNAL \sommatore|Add0~4_combout\ : std_logic;
SIGNAL \sommatore|Add0~7_combout\ : std_logic;
SIGNAL \sommatore|Add0~9_cout\ : std_logic;
SIGNAL \sommatore|Add0~11\ : std_logic;
SIGNAL \sommatore|Add0~48\ : std_logic;
SIGNAL \sommatore|Add0~50\ : std_logic;
SIGNAL \sommatore|Add0~51_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[3]~15_combout\ : std_logic;
SIGNAL \sommatore|Add0~52\ : std_logic;
SIGNAL \sommatore|Add0~54\ : std_logic;
SIGNAL \sommatore|Add0~56\ : std_logic;
SIGNAL \sommatore|Add0~57_combout\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[6]~9_combout\ : std_logic;
SIGNAL \mux_in1|OUT_DATA[6]~10_combout\ : std_logic;
SIGNAL \sommatore|Add0~58\ : std_logic;
SIGNAL \sommatore|Add0~60\ : std_logic;
SIGNAL \sommatore|Add0~62\ : std_logic;
SIGNAL \sommatore|Add0~64\ : std_logic;
SIGNAL \sommatore|Add0~66\ : std_logic;
SIGNAL \sommatore|Add0~67_combout\ : std_logic;
SIGNAL \sommatore|Add0~61_combout\ : std_logic;
SIGNAL \rounding|Comparison~0_combout\ : std_logic;
SIGNAL \rounding|DATA_OUT~0_combout\ : std_logic;
SIGNAL \rounding|DATA_OUT~1_combout\ : std_logic;
SIGNAL \rounding|DATA_OUT~2_combout\ : std_logic;
SIGNAL \rounding|DATA_OUT~3_combout\ : std_logic;
SIGNAL \rounding|DATA_OUT~4_combout\ : std_logic;
SIGNAL \sommatore|Add0~55_combout\ : std_logic;
SIGNAL \rounding|DATA_OUT~5_combout\ : std_logic;
SIGNAL \rounding|DATA_OUT~6_combout\ : std_logic;
SIGNAL \rounding|DATA_OUT~7_combout\ : std_logic;
SIGNAL \EN_P_p~input_o\ : std_logic;
SIGNAL \EN_P_p~inputclkctrl_outclk\ : std_logic;
SIGNAL \positivo|Contatore|Add0~1\ : std_logic;
SIGNAL \positivo|Contatore|Add0~2_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~3\ : std_logic;
SIGNAL \positivo|Contatore|Add0~4_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~5\ : std_logic;
SIGNAL \positivo|Contatore|Add0~6_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~7\ : std_logic;
SIGNAL \positivo|Contatore|Add0~8_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~9\ : std_logic;
SIGNAL \positivo|Contatore|Add0~10_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~11\ : std_logic;
SIGNAL \positivo|Contatore|Add0~12_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~13\ : std_logic;
SIGNAL \positivo|Contatore|Add0~14_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~15\ : std_logic;
SIGNAL \positivo|Contatore|Add0~16_combout\ : std_logic;
SIGNAL \positivo|Contatore|Add0~17\ : std_logic;
SIGNAL \positivo|Contatore|Add0~18_combout\ : std_logic;
SIGNAL \positivo|reg|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \positivo|Contatore|DATA_OUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rounding|DATA_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sommatore|DATA_OUT\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ff1|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \counter|T\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ff4|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ff3|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ff2|Q\ : std_logic_vector(11 DOWNTO 0);

BEGIN

TC <= ww_TC;
DATA_OUT <= IEEE.NUMERIC_STD.SIGNED(ww_DATA_OUT);
ADRESS_OUT <= ww_ADRESS_OUT;
CONT_POSITIVI <= IEEE.NUMERIC_STD.SIGNED(ww_CONT_POSITIVI);
ww_CLK <= CLK;
ww_RST_n <= RST_n;
ww_SEL_MUX1 <= SEL_MUX1;
ww_SEL_MUX2 <= SEL_MUX2;
ww_EN_COUNTER_p <= EN_COUNTER_p;
ww_EN_SUM_p <= EN_SUM_p;
ww_EN_R_p <= EN_R_p;
ww_EN_P_p <= EN_P_p;
ww_EN_FF1_p <= EN_FF1_p;
ww_EN_FF2_p <= EN_FF2_p;
ww_EN_FF3_p <= EN_FF3_p;
ww_EN_FF4_p <= EN_FF4_p;
ww_ADD_SUB <= ADD_SUB;
ww_DATA_IN <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(DATA_IN);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST_n~input_o\);

\EN_P_p~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \EN_P_p~input_o\);

\EN_SUM_p~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \EN_SUM_p~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: LCCOMB_X47_Y35_N6
\sommatore|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~10_combout\ = (\mux_in1|OUT_DATA[0]~0_combout\ & ((\sommatore|Add0~7_combout\ & (\sommatore|Add0~9_cout\ & VCC)) # (!\sommatore|Add0~7_combout\ & (!\sommatore|Add0~9_cout\)))) # (!\mux_in1|OUT_DATA[0]~0_combout\ & 
-- ((\sommatore|Add0~7_combout\ & (!\sommatore|Add0~9_cout\)) # (!\sommatore|Add0~7_combout\ & ((\sommatore|Add0~9_cout\) # (GND)))))
-- \sommatore|Add0~11\ = CARRY((\mux_in1|OUT_DATA[0]~0_combout\ & (!\sommatore|Add0~7_combout\ & !\sommatore|Add0~9_cout\)) # (!\mux_in1|OUT_DATA[0]~0_combout\ & ((!\sommatore|Add0~9_cout\) # (!\sommatore|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in1|OUT_DATA[0]~0_combout\,
	datab => \sommatore|Add0~7_combout\,
	datad => VCC,
	cin => \sommatore|Add0~9_cout\,
	combout => \sommatore|Add0~10_combout\,
	cout => \sommatore|Add0~11\);

-- Location: LCCOMB_X47_Y35_N8
\sommatore|Add0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~47_combout\ = ((\sommatore|Add0~46_combout\ $ (\mux_in1|OUT_DATA[1]~17_combout\ $ (!\sommatore|Add0~11\)))) # (GND)
-- \sommatore|Add0~48\ = CARRY((\sommatore|Add0~46_combout\ & ((\mux_in1|OUT_DATA[1]~17_combout\) # (!\sommatore|Add0~11\))) # (!\sommatore|Add0~46_combout\ & (\mux_in1|OUT_DATA[1]~17_combout\ & !\sommatore|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~46_combout\,
	datab => \mux_in1|OUT_DATA[1]~17_combout\,
	datad => VCC,
	cin => \sommatore|Add0~11\,
	combout => \sommatore|Add0~47_combout\,
	cout => \sommatore|Add0~48\);

-- Location: LCCOMB_X47_Y35_N10
\sommatore|Add0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~49_combout\ = (\sommatore|Add0~42_combout\ & ((\mux_in1|OUT_DATA[2]~16_combout\ & (\sommatore|Add0~48\ & VCC)) # (!\mux_in1|OUT_DATA[2]~16_combout\ & (!\sommatore|Add0~48\)))) # (!\sommatore|Add0~42_combout\ & 
-- ((\mux_in1|OUT_DATA[2]~16_combout\ & (!\sommatore|Add0~48\)) # (!\mux_in1|OUT_DATA[2]~16_combout\ & ((\sommatore|Add0~48\) # (GND)))))
-- \sommatore|Add0~50\ = CARRY((\sommatore|Add0~42_combout\ & (!\mux_in1|OUT_DATA[2]~16_combout\ & !\sommatore|Add0~48\)) # (!\sommatore|Add0~42_combout\ & ((!\sommatore|Add0~48\) # (!\mux_in1|OUT_DATA[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~42_combout\,
	datab => \mux_in1|OUT_DATA[2]~16_combout\,
	datad => VCC,
	cin => \sommatore|Add0~48\,
	combout => \sommatore|Add0~49_combout\,
	cout => \sommatore|Add0~50\);

-- Location: LCCOMB_X47_Y35_N14
\sommatore|Add0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~53_combout\ = (\mux_in1|OUT_DATA[4]~14_combout\ & ((\sommatore|Add0~34_combout\ & (\sommatore|Add0~52\ & VCC)) # (!\sommatore|Add0~34_combout\ & (!\sommatore|Add0~52\)))) # (!\mux_in1|OUT_DATA[4]~14_combout\ & ((\sommatore|Add0~34_combout\ 
-- & (!\sommatore|Add0~52\)) # (!\sommatore|Add0~34_combout\ & ((\sommatore|Add0~52\) # (GND)))))
-- \sommatore|Add0~54\ = CARRY((\mux_in1|OUT_DATA[4]~14_combout\ & (!\sommatore|Add0~34_combout\ & !\sommatore|Add0~52\)) # (!\mux_in1|OUT_DATA[4]~14_combout\ & ((!\sommatore|Add0~52\) # (!\sommatore|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in1|OUT_DATA[4]~14_combout\,
	datab => \sommatore|Add0~34_combout\,
	datad => VCC,
	cin => \sommatore|Add0~52\,
	combout => \sommatore|Add0~53_combout\,
	cout => \sommatore|Add0~54\);

-- Location: LCCOMB_X31_Y1_N6
\positivo|Contatore|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~0_combout\ = (\positivo|reg|Q\(0) & (\rounding|DATA_OUT\(7) $ (GND))) # (!\positivo|reg|Q\(0) & (!\rounding|DATA_OUT\(7) & VCC))
-- \positivo|Contatore|Add0~1\ = CARRY((\positivo|reg|Q\(0) & !\rounding|DATA_OUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \positivo|reg|Q\(0),
	datab => \rounding|DATA_OUT\(7),
	datad => VCC,
	combout => \positivo|Contatore|Add0~0_combout\,
	cout => \positivo|Contatore|Add0~1\);

-- Location: LCCOMB_X44_Y35_N22
\sommatore|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~1_combout\ = (\SEL_MUX2[1]~input_o\ & ((\ff2|Q\(0)))) # (!\SEL_MUX2[1]~input_o\ & (\ff1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2[1]~input_o\,
	datab => \ff1|Q\(0),
	datad => \ff2|Q\(0),
	combout => \sommatore|Add0~1_combout\);

-- Location: FF_X42_Y35_N23
\ff3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(0),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(0));

-- Location: LCCOMB_X42_Y35_N22
\mux_in1|OUT_DATA[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[0]~0_combout\ = (\SEL_MUX1[0]~input_o\ & ((\SEL_MUX1[1]~input_o\ & ((\ff3|Q\(0)))) # (!\SEL_MUX1[1]~input_o\ & (\DATA_IN[0]~input_o\)))) # (!\SEL_MUX1[0]~input_o\ & (((\ff3|Q\(0) & !\SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \DATA_IN[0]~input_o\,
	datac => \ff3|Q\(0),
	datad => \SEL_MUX1[1]~input_o\,
	combout => \mux_in1|OUT_DATA[0]~0_combout\);

-- Location: LCCOMB_X46_Y35_N0
\mux_in1|OUT_DATA[10]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[10]~1_combout\ = (\SEL_MUX1[0]~input_o\ & (\DATA_IN[7]~input_o\ & ((!\SEL_MUX1[1]~input_o\)))) # (!\SEL_MUX1[0]~input_o\ & (((\DATA_IN[6]~input_o\ & \SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \DATA_IN[7]~input_o\,
	datac => \DATA_IN[6]~input_o\,
	datad => \SEL_MUX1[1]~input_o\,
	combout => \mux_in1|OUT_DATA[10]~1_combout\);

-- Location: FF_X46_Y35_N27
\ff3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(10),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(10));

-- Location: LCCOMB_X46_Y35_N26
\mux_in1|OUT_DATA[10]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[10]~2_combout\ = (\mux_in1|OUT_DATA[10]~1_combout\) # ((\ff3|Q\(10) & (\SEL_MUX1[1]~input_o\ $ (!\SEL_MUX1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[1]~input_o\,
	datab => \mux_in1|OUT_DATA[10]~1_combout\,
	datac => \ff3|Q\(10),
	datad => \SEL_MUX1[0]~input_o\,
	combout => \mux_in1|OUT_DATA[10]~2_combout\);

-- Location: LCCOMB_X46_Y35_N12
\mux_in1|OUT_DATA[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[9]~3_combout\ = (\SEL_MUX1[1]~input_o\ & (((\DATA_IN[5]~input_o\ & !\SEL_MUX1[0]~input_o\)))) # (!\SEL_MUX1[1]~input_o\ & (\DATA_IN[7]~input_o\ & ((\SEL_MUX1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[1]~input_o\,
	datab => \DATA_IN[7]~input_o\,
	datac => \DATA_IN[5]~input_o\,
	datad => \SEL_MUX1[0]~input_o\,
	combout => \mux_in1|OUT_DATA[9]~3_combout\);

-- Location: FF_X42_Y35_N9
\ff3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff3|Q[9]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(9));

-- Location: LCCOMB_X46_Y35_N14
\mux_in1|OUT_DATA[9]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[9]~4_combout\ = (\mux_in1|OUT_DATA[9]~3_combout\) # ((\ff3|Q\(9) & (\SEL_MUX1[0]~input_o\ $ (!\SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \SEL_MUX1[1]~input_o\,
	datac => \ff3|Q\(9),
	datad => \mux_in1|OUT_DATA[9]~3_combout\,
	combout => \mux_in1|OUT_DATA[9]~4_combout\);

-- Location: LCCOMB_X46_Y35_N8
\mux_in1|OUT_DATA[8]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[8]~5_combout\ = (\SEL_MUX1[0]~input_o\ & (!\SEL_MUX1[1]~input_o\ & (\DATA_IN[7]~input_o\))) # (!\SEL_MUX1[0]~input_o\ & (\SEL_MUX1[1]~input_o\ & ((\DATA_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \SEL_MUX1[1]~input_o\,
	datac => \DATA_IN[7]~input_o\,
	datad => \DATA_IN[4]~input_o\,
	combout => \mux_in1|OUT_DATA[8]~5_combout\);

-- Location: FF_X46_Y35_N3
\ff3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(8),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(8));

-- Location: LCCOMB_X46_Y35_N2
\mux_in1|OUT_DATA[8]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[8]~6_combout\ = (\mux_in1|OUT_DATA[8]~5_combout\) # ((\ff3|Q\(8) & (\SEL_MUX1[1]~input_o\ $ (!\SEL_MUX1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[1]~input_o\,
	datab => \mux_in1|OUT_DATA[8]~5_combout\,
	datac => \ff3|Q\(8),
	datad => \SEL_MUX1[0]~input_o\,
	combout => \mux_in1|OUT_DATA[8]~6_combout\);

-- Location: LCCOMB_X46_Y35_N20
\mux_in1|OUT_DATA[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[7]~7_combout\ = (\SEL_MUX1[0]~input_o\ & (((\DATA_IN[7]~input_o\ & !\SEL_MUX1[1]~input_o\)))) # (!\SEL_MUX1[0]~input_o\ & (\DATA_IN[3]~input_o\ & ((\SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \DATA_IN[3]~input_o\,
	datac => \DATA_IN[7]~input_o\,
	datad => \SEL_MUX1[1]~input_o\,
	combout => \mux_in1|OUT_DATA[7]~7_combout\);

-- Location: FF_X46_Y35_N7
\ff3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sommatore|DATA_OUT\(7),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(7));

-- Location: LCCOMB_X46_Y35_N16
\mux_in1|OUT_DATA[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[7]~8_combout\ = (\mux_in1|OUT_DATA[7]~7_combout\) # ((\ff3|Q\(7) & (\SEL_MUX1[0]~input_o\ $ (!\SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \mux_in1|OUT_DATA[7]~7_combout\,
	datac => \ff3|Q\(7),
	datad => \SEL_MUX1[1]~input_o\,
	combout => \mux_in1|OUT_DATA[7]~8_combout\);

-- Location: FF_X44_Y35_N19
\ff2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ff1|Q\(6),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF2_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q\(6));

-- Location: FF_X44_Y35_N23
\ff1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[6]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF1_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q\(6));

-- Location: LCCOMB_X44_Y35_N26
\sommatore|Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~23_combout\ = (\SEL_MUX2[1]~input_o\ & ((\ff2|Q\(6)))) # (!\SEL_MUX2[1]~input_o\ & (\ff1|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff1|Q\(6),
	datab => \SEL_MUX2[1]~input_o\,
	datad => \ff2|Q\(6),
	combout => \sommatore|Add0~23_combout\);

-- Location: FF_X48_Y35_N17
\ff4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff4|Q[8]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(8));

-- Location: LCCOMB_X44_Y35_N28
\sommatore|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~24_combout\ = (!\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff1|Q\(6))) # (!\sommatore|Add0~2_combout\ & ((\ff4|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff1|Q\(6),
	datad => \ff4|Q\(8),
	combout => \sommatore|Add0~24_combout\);

-- Location: LCCOMB_X44_Y35_N18
\sommatore|Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~25_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff2|Q\(6))) # (!\sommatore|Add0~2_combout\ & ((!\ff4|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff2|Q\(6),
	datad => \ff4|Q\(8),
	combout => \sommatore|Add0~25_combout\);

-- Location: LCCOMB_X44_Y35_N12
\sommatore|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~26_combout\ = (\sommatore|Add0~6_combout\ & (((\sommatore|Add0~23_combout\)))) # (!\sommatore|Add0~6_combout\ & ((\sommatore|Add0~25_combout\) # ((\sommatore|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~6_combout\,
	datab => \sommatore|Add0~25_combout\,
	datac => \sommatore|Add0~23_combout\,
	datad => \sommatore|Add0~24_combout\,
	combout => \sommatore|Add0~26_combout\);

-- Location: LCCOMB_X49_Y35_N10
\sommatore|Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~29_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & ((!\ff2|Q\(5)))) # (!\sommatore|Add0~2_combout\ & (!\ff4|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~2_combout\,
	datab => \sommatore|Add0~3_combout\,
	datac => \ff4|Q\(7),
	datad => \ff2|Q\(5),
	combout => \sommatore|Add0~29_combout\);

-- Location: LCCOMB_X42_Y35_N2
\mux_in1|OUT_DATA[5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[5]~11_combout\ = (\SEL_MUX1[1]~input_o\ & (\DATA_IN[1]~input_o\ & ((!\SEL_MUX1[0]~input_o\)))) # (!\SEL_MUX1[1]~input_o\ & (((\DATA_IN[5]~input_o\ & \SEL_MUX1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[1]~input_o\,
	datab => \SEL_MUX1[1]~input_o\,
	datac => \DATA_IN[5]~input_o\,
	datad => \SEL_MUX1[0]~input_o\,
	combout => \mux_in1|OUT_DATA[5]~11_combout\);

-- Location: FF_X42_Y35_N5
\ff3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(5),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(5));

-- Location: LCCOMB_X42_Y35_N4
\mux_in1|OUT_DATA[5]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[5]~12_combout\ = (\mux_in1|OUT_DATA[5]~11_combout\) # ((\ff3|Q\(5) & (\SEL_MUX1[0]~input_o\ $ (!\SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \SEL_MUX1[1]~input_o\,
	datac => \ff3|Q\(5),
	datad => \mux_in1|OUT_DATA[5]~11_combout\,
	combout => \mux_in1|OUT_DATA[5]~12_combout\);

-- Location: LCCOMB_X44_Y35_N8
\sommatore|Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~31_combout\ = (\SEL_MUX2[1]~input_o\ & ((\ff2|Q\(4)))) # (!\SEL_MUX2[1]~input_o\ & (\ff1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff1|Q\(4),
	datab => \ff2|Q\(4),
	datad => \SEL_MUX2[1]~input_o\,
	combout => \sommatore|Add0~31_combout\);

-- Location: LCCOMB_X44_Y35_N4
\mux_in1|OUT_DATA[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[4]~13_combout\ = (\SEL_MUX1[1]~input_o\ & (((\DATA_IN[0]~input_o\ & !\SEL_MUX1[0]~input_o\)))) # (!\SEL_MUX1[1]~input_o\ & (\DATA_IN[4]~input_o\ & ((\SEL_MUX1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[4]~input_o\,
	datab => \SEL_MUX1[1]~input_o\,
	datac => \DATA_IN[0]~input_o\,
	datad => \SEL_MUX1[0]~input_o\,
	combout => \mux_in1|OUT_DATA[4]~13_combout\);

-- Location: FF_X42_Y35_N15
\ff3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(4),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(4));

-- Location: LCCOMB_X42_Y35_N14
\mux_in1|OUT_DATA[4]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[4]~14_combout\ = (\mux_in1|OUT_DATA[4]~13_combout\) # ((\ff3|Q\(4) & (\SEL_MUX1[0]~input_o\ $ (!\SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \SEL_MUX1[1]~input_o\,
	datac => \ff3|Q\(4),
	datad => \mux_in1|OUT_DATA[4]~13_combout\,
	combout => \mux_in1|OUT_DATA[4]~14_combout\);

-- Location: FF_X44_Y35_N3
\ff2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ff1|Q\(3),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF2_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q\(3));

-- Location: FF_X44_Y35_N9
\ff1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[3]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF1_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q\(3));

-- Location: LCCOMB_X43_Y35_N16
\sommatore|Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~35_combout\ = (\SEL_MUX2[1]~input_o\ & ((\ff2|Q\(3)))) # (!\SEL_MUX2[1]~input_o\ & (\ff1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_MUX2[1]~input_o\,
	datac => \ff1|Q\(3),
	datad => \ff2|Q\(3),
	combout => \sommatore|Add0~35_combout\);

-- Location: FF_X48_Y35_N5
\ff4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff4|Q[5]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(5));

-- Location: LCCOMB_X44_Y35_N10
\sommatore|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~36_combout\ = (!\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff1|Q\(3))) # (!\sommatore|Add0~2_combout\ & ((\ff4|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff1|Q\(3),
	datad => \ff4|Q\(5),
	combout => \sommatore|Add0~36_combout\);

-- Location: LCCOMB_X44_Y35_N2
\sommatore|Add0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~37_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff2|Q\(3))) # (!\sommatore|Add0~2_combout\ & ((!\ff4|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff2|Q\(3),
	datad => \ff4|Q\(5),
	combout => \sommatore|Add0~37_combout\);

-- Location: LCCOMB_X44_Y35_N14
\sommatore|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~38_combout\ = (\sommatore|Add0~6_combout\ & (((\sommatore|Add0~35_combout\)))) # (!\sommatore|Add0~6_combout\ & ((\sommatore|Add0~36_combout\) # ((\sommatore|Add0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~36_combout\,
	datab => \sommatore|Add0~6_combout\,
	datac => \sommatore|Add0~35_combout\,
	datad => \sommatore|Add0~37_combout\,
	combout => \sommatore|Add0~38_combout\);

-- Location: FF_X43_Y35_N3
\ff2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff2|Q[2]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF2_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q\(2));

-- Location: FF_X43_Y35_N13
\ff1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[2]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF1_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q\(2));

-- Location: LCCOMB_X43_Y35_N22
\sommatore|Add0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~39_combout\ = (\SEL_MUX2[1]~input_o\ & ((\ff2|Q\(2)))) # (!\SEL_MUX2[1]~input_o\ & (\ff1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff1|Q\(2),
	datab => \SEL_MUX2[1]~input_o\,
	datad => \ff2|Q\(2),
	combout => \sommatore|Add0~39_combout\);

-- Location: FF_X48_Y35_N15
\ff4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff4|Q[4]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(4));

-- Location: LCCOMB_X43_Y35_N24
\sommatore|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~40_combout\ = (!\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & ((!\ff1|Q\(2)))) # (!\sommatore|Add0~2_combout\ & (\ff4|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff4|Q\(4),
	datad => \ff1|Q\(2),
	combout => \sommatore|Add0~40_combout\);

-- Location: LCCOMB_X43_Y35_N26
\sommatore|Add0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~41_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & ((!\ff2|Q\(2)))) # (!\sommatore|Add0~2_combout\ & (!\ff4|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff4|Q\(4),
	datad => \ff2|Q\(2),
	combout => \sommatore|Add0~41_combout\);

-- Location: LCCOMB_X43_Y35_N20
\sommatore|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~42_combout\ = (\sommatore|Add0~6_combout\ & (\sommatore|Add0~39_combout\)) # (!\sommatore|Add0~6_combout\ & (((\sommatore|Add0~41_combout\) # (\sommatore|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~39_combout\,
	datab => \sommatore|Add0~6_combout\,
	datac => \sommatore|Add0~41_combout\,
	datad => \sommatore|Add0~40_combout\,
	combout => \sommatore|Add0~42_combout\);

-- Location: FF_X43_Y35_N31
\ff2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff2|Q[1]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF2_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q\(1));

-- Location: FF_X43_Y35_N1
\ff1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff1|Q[1]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF1_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q\(1));

-- Location: LCCOMB_X43_Y35_N10
\sommatore|Add0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~43_combout\ = (\SEL_MUX2[1]~input_o\ & (\ff2|Q\(1))) # (!\SEL_MUX2[1]~input_o\ & ((\ff1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_MUX2[1]~input_o\,
	datac => \ff2|Q\(1),
	datad => \ff1|Q\(1),
	combout => \sommatore|Add0~43_combout\);

-- Location: FF_X46_Y35_N29
\ff4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sommatore|DATA_OUT\(3),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(3));

-- Location: LCCOMB_X43_Y35_N28
\sommatore|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~44_combout\ = (!\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & ((!\ff1|Q\(1)))) # (!\sommatore|Add0~2_combout\ & (\ff4|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff4|Q\(3),
	datad => \ff1|Q\(1),
	combout => \sommatore|Add0~44_combout\);

-- Location: LCCOMB_X43_Y35_N14
\sommatore|Add0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~45_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff2|Q\(1))) # (!\sommatore|Add0~2_combout\ & ((!\ff4|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff2|Q\(1),
	datad => \ff4|Q\(3),
	combout => \sommatore|Add0~45_combout\);

-- Location: LCCOMB_X43_Y35_N8
\sommatore|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~46_combout\ = (\sommatore|Add0~6_combout\ & (\sommatore|Add0~43_combout\)) # (!\sommatore|Add0~6_combout\ & (((\sommatore|Add0~45_combout\) # (\sommatore|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~43_combout\,
	datab => \sommatore|Add0~6_combout\,
	datac => \sommatore|Add0~45_combout\,
	datad => \sommatore|Add0~44_combout\,
	combout => \sommatore|Add0~46_combout\);

-- Location: LCCOMB_X42_Y35_N10
\sommatore|DATA_OUT[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(0) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|Add0~10_combout\)) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|DATA_OUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \sommatore|Add0~10_combout\,
	datac => \EN_SUM_p~inputclkctrl_outclk\,
	datad => \sommatore|DATA_OUT\(0),
	combout => \sommatore|DATA_OUT\(0));

-- Location: LCCOMB_X48_Y35_N28
\sommatore|DATA_OUT[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(4) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~53_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \sommatore|DATA_OUT\(4),
	datac => \EN_SUM_p~inputclkctrl_outclk\,
	datad => \sommatore|Add0~53_combout\,
	combout => \sommatore|DATA_OUT\(4));

-- Location: IOIBUF_X41_Y41_N8
\DATA_IN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: LCCOMB_X43_Y35_N2
\ff2|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff2|Q[2]~feeder_combout\ = \ff1|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff1|Q\(2),
	combout => \ff2|Q[2]~feeder_combout\);

-- Location: LCCOMB_X43_Y35_N30
\ff2|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff2|Q[1]~feeder_combout\ = \ff1|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff1|Q\(1),
	combout => \ff2|Q[1]~feeder_combout\);

-- Location: LCCOMB_X42_Y35_N8
\ff3|Q[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff3|Q[9]~feeder_combout\ = \sommatore|DATA_OUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sommatore|DATA_OUT\(9),
	combout => \ff3|Q[9]~feeder_combout\);

-- Location: LCCOMB_X48_Y35_N16
\ff4|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff4|Q[8]~feeder_combout\ = \sommatore|DATA_OUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sommatore|DATA_OUT\(8),
	combout => \ff4|Q[8]~feeder_combout\);

-- Location: LCCOMB_X48_Y35_N14
\ff4|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff4|Q[4]~feeder_combout\ = \sommatore|DATA_OUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sommatore|DATA_OUT\(4),
	combout => \ff4|Q[4]~feeder_combout\);

-- Location: LCCOMB_X48_Y35_N4
\ff4|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff4|Q[5]~feeder_combout\ = \sommatore|DATA_OUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sommatore|DATA_OUT\(5),
	combout => \ff4|Q[5]~feeder_combout\);

-- Location: LCCOMB_X43_Y35_N0
\ff1|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff1|Q[1]~feeder_combout\ = \DATA_IN[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN[1]~input_o\,
	combout => \ff1|Q[1]~feeder_combout\);

-- Location: IOOBUF_X52_Y25_N2
\TC~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TC~2_combout\,
	devoe => ww_devoe,
	o => \TC~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\DATA_OUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rounding|DATA_OUT\(0),
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\DATA_OUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rounding|DATA_OUT\(1),
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\DATA_OUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rounding|DATA_OUT\(2),
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\DATA_OUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rounding|DATA_OUT\(3),
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\DATA_OUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rounding|DATA_OUT\(4),
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\DATA_OUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rounding|DATA_OUT\(5),
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\DATA_OUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rounding|DATA_OUT\(6),
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\DATA_OUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rounding|DATA_OUT\(7),
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\ADRESS_OUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:0:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[0]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\ADRESS_OUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:1:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[1]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\ADRESS_OUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:2:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[2]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\ADRESS_OUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:3:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[3]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\ADRESS_OUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:4:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[4]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\ADRESS_OUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:5:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[5]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\ADRESS_OUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:6:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[6]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\ADRESS_OUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:7:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[7]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\ADRESS_OUT[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:8:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[8]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\ADRESS_OUT[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|GEN_CNT:9:TFF_X|ff|Q~q\,
	devoe => ww_devoe,
	o => \ADRESS_OUT[9]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\CONT_POSITIVI[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(0),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[0]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\CONT_POSITIVI[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(1),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\CONT_POSITIVI[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(2),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\CONT_POSITIVI[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(3),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[3]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\CONT_POSITIVI[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(4),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\CONT_POSITIVI[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(5),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\CONT_POSITIVI[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(6),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[6]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\CONT_POSITIVI[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(7),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[7]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\CONT_POSITIVI[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(8),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[8]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\CONT_POSITIVI[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \positivo|reg|Q\(9),
	devoe => ww_devoe,
	o => \CONT_POSITIVI[9]~output_o\);

-- Location: IOIBUF_X50_Y41_N1
\EN_COUNTER_p~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_COUNTER_p,
	o => \EN_COUNTER_p~input_o\);

-- Location: LCCOMB_X51_Y30_N8
\counter|GEN_CNT:0:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:0:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:0:TFF_X|ff|Q~q\ $ (\EN_COUNTER_p~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|GEN_CNT:0:TFF_X|ff|Q~q\,
	datad => \EN_COUNTER_p~input_o\,
	combout => \counter|GEN_CNT:0:TFF_X|ff|Q~0_combout\);

-- Location: IOIBUF_X27_Y0_N8
\RST_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_n,
	o => \RST_n~input_o\);

-- Location: CLKCTRL_G16
\RST_n~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST_n~inputclkctrl_outclk\);

-- Location: FF_X51_Y30_N9
\counter|GEN_CNT:0:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:0:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:0:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N26
\counter|GEN_CNT:1:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:1:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:1:TFF_X|ff|Q~q\ $ (((\EN_COUNTER_p~input_o\ & \counter|GEN_CNT:0:TFF_X|ff|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_COUNTER_p~input_o\,
	datac => \counter|GEN_CNT:1:TFF_X|ff|Q~q\,
	datad => \counter|GEN_CNT:0:TFF_X|ff|Q~q\,
	combout => \counter|GEN_CNT:1:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N27
\counter|GEN_CNT:1:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:1:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:1:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N20
\counter|GEN_CNT:2:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:2:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:2:TFF_X|ff|Q~q\ $ (((\counter|GEN_CNT:0:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:1:TFF_X|ff|Q~q\ & \EN_COUNTER_p~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:0:TFF_X|ff|Q~q\,
	datab => \counter|GEN_CNT:1:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:2:TFF_X|ff|Q~q\,
	datad => \EN_COUNTER_p~input_o\,
	combout => \counter|GEN_CNT:2:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N21
\counter|GEN_CNT:2:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:2:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:2:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N0
\counter|T[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|T\(3) = (\EN_COUNTER_p~input_o\ & (\counter|GEN_CNT:0:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:1:TFF_X|ff|Q~q\ & \counter|GEN_CNT:2:TFF_X|ff|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_COUNTER_p~input_o\,
	datab => \counter|GEN_CNT:0:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:1:TFF_X|ff|Q~q\,
	datad => \counter|GEN_CNT:2:TFF_X|ff|Q~q\,
	combout => \counter|T\(3));

-- Location: LCCOMB_X51_Y30_N14
\counter|GEN_CNT:3:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:3:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:3:TFF_X|ff|Q~q\ $ (\counter|T\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|GEN_CNT:3:TFF_X|ff|Q~q\,
	datad => \counter|T\(3),
	combout => \counter|GEN_CNT:3:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N15
\counter|GEN_CNT:3:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:3:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:3:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N10
\counter|GEN_CNT:4:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:4:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:4:TFF_X|ff|Q~q\ $ (((\counter|GEN_CNT:3:TFF_X|ff|Q~q\ & \counter|T\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:3:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:4:TFF_X|ff|Q~q\,
	datad => \counter|T\(3),
	combout => \counter|GEN_CNT:4:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N11
\counter|GEN_CNT:4:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:4:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:4:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N12
\counter|GEN_CNT:5:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:5:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:5:TFF_X|ff|Q~q\ $ (((\counter|GEN_CNT:3:TFF_X|ff|Q~q\ & (\counter|T\(3) & \counter|GEN_CNT:4:TFF_X|ff|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:3:TFF_X|ff|Q~q\,
	datab => \counter|T\(3),
	datac => \counter|GEN_CNT:5:TFF_X|ff|Q~q\,
	datad => \counter|GEN_CNT:4:TFF_X|ff|Q~q\,
	combout => \counter|GEN_CNT:5:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N13
\counter|GEN_CNT:5:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:5:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:5:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N18
\counter|T[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|T\(6) = (\counter|GEN_CNT:4:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:3:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:5:TFF_X|ff|Q~q\ & \counter|T\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:4:TFF_X|ff|Q~q\,
	datab => \counter|GEN_CNT:3:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:5:TFF_X|ff|Q~q\,
	datad => \counter|T\(3),
	combout => \counter|T\(6));

-- Location: LCCOMB_X51_Y30_N22
\counter|GEN_CNT:6:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:6:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:6:TFF_X|ff|Q~q\ $ (\counter|T\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|GEN_CNT:6:TFF_X|ff|Q~q\,
	datad => \counter|T\(6),
	combout => \counter|GEN_CNT:6:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N23
\counter|GEN_CNT:6:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:6:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:6:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N28
\counter|GEN_CNT:8:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:8:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:8:TFF_X|ff|Q~q\ $ (((\counter|GEN_CNT:7:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:6:TFF_X|ff|Q~q\ & \counter|T\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:7:TFF_X|ff|Q~q\,
	datab => \counter|GEN_CNT:6:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:8:TFF_X|ff|Q~q\,
	datad => \counter|T\(6),
	combout => \counter|GEN_CNT:8:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N29
\counter|GEN_CNT:8:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:8:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:8:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N24
\counter|GEN_CNT:7:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:7:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:7:TFF_X|ff|Q~q\ $ (((\counter|GEN_CNT:6:TFF_X|ff|Q~q\ & \counter|T\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:6:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:7:TFF_X|ff|Q~q\,
	datad => \counter|T\(6),
	combout => \counter|GEN_CNT:7:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N25
\counter|GEN_CNT:7:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:7:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:7:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N2
\TC~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \TC~1_combout\ = (\counter|GEN_CNT:6:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:5:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:7:TFF_X|ff|Q~q\ & \counter|GEN_CNT:4:TFF_X|ff|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:6:TFF_X|ff|Q~q\,
	datab => \counter|GEN_CNT:5:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:7:TFF_X|ff|Q~q\,
	datad => \counter|GEN_CNT:4:TFF_X|ff|Q~q\,
	combout => \TC~1_combout\);

-- Location: LCCOMB_X51_Y30_N4
\counter|T[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|T[9]~0_combout\ = (\counter|GEN_CNT:4:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:3:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:8:TFF_X|ff|Q~q\ & \counter|GEN_CNT:5:TFF_X|ff|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:4:TFF_X|ff|Q~q\,
	datab => \counter|GEN_CNT:3:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:8:TFF_X|ff|Q~q\,
	datad => \counter|GEN_CNT:5:TFF_X|ff|Q~q\,
	combout => \counter|T[9]~0_combout\);

-- Location: LCCOMB_X51_Y30_N6
\counter|T[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|T\(9) = (\counter|GEN_CNT:7:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:6:TFF_X|ff|Q~q\ & (\counter|T[9]~0_combout\ & \counter|T\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:7:TFF_X|ff|Q~q\,
	datab => \counter|GEN_CNT:6:TFF_X|ff|Q~q\,
	datac => \counter|T[9]~0_combout\,
	datad => \counter|T\(3),
	combout => \counter|T\(9));

-- Location: LCCOMB_X51_Y30_N30
\counter|GEN_CNT:9:TFF_X|ff|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|GEN_CNT:9:TFF_X|ff|Q~0_combout\ = \counter|GEN_CNT:9:TFF_X|ff|Q~q\ $ (\counter|T\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|GEN_CNT:9:TFF_X|ff|Q~q\,
	datad => \counter|T\(9),
	combout => \counter|GEN_CNT:9:TFF_X|ff|Q~0_combout\);

-- Location: FF_X51_Y30_N31
\counter|GEN_CNT:9:TFF_X|ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|GEN_CNT:9:TFF_X|ff|Q~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|GEN_CNT:9:TFF_X|ff|Q~q\);

-- Location: LCCOMB_X51_Y30_N16
\TC~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \TC~0_combout\ = (\counter|GEN_CNT:2:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:1:TFF_X|ff|Q~q\ & (\counter|GEN_CNT:0:TFF_X|ff|Q~q\ & \counter|GEN_CNT:3:TFF_X|ff|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:2:TFF_X|ff|Q~q\,
	datab => \counter|GEN_CNT:1:TFF_X|ff|Q~q\,
	datac => \counter|GEN_CNT:0:TFF_X|ff|Q~q\,
	datad => \counter|GEN_CNT:3:TFF_X|ff|Q~q\,
	combout => \TC~0_combout\);

-- Location: LCCOMB_X51_Y29_N8
\TC~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \TC~2_combout\ = (\counter|GEN_CNT:8:TFF_X|ff|Q~q\ & (\TC~1_combout\ & (\counter|GEN_CNT:9:TFF_X|ff|Q~q\ & \TC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|GEN_CNT:8:TFF_X|ff|Q~q\,
	datab => \TC~1_combout\,
	datac => \counter|GEN_CNT:9:TFF_X|ff|Q~q\,
	datad => \TC~0_combout\,
	combout => \TC~2_combout\);

-- Location: IOIBUF_X27_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X41_Y0_N8
\EN_R_p~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_R_p,
	o => \EN_R_p~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\EN_SUM_p~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_SUM_p,
	o => \EN_SUM_p~input_o\);

-- Location: CLKCTRL_G19
\EN_SUM_p~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EN_SUM_p~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EN_SUM_p~inputclkctrl_outclk\);

-- Location: IOIBUF_X36_Y41_N1
\SEL_MUX2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_MUX2(1),
	o => \SEL_MUX2[1]~input_o\);

-- Location: IOIBUF_X48_Y41_N8
\SEL_MUX2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_MUX2(0),
	o => \SEL_MUX2[0]~input_o\);

-- Location: LCCOMB_X49_Y35_N26
\sommatore|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~3_combout\ = (\ADD_SUB~input_o\ & ((\SEL_MUX2[1]~input_o\) # (!\SEL_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_SUB~input_o\,
	datab => \SEL_MUX2[1]~input_o\,
	datad => \SEL_MUX2[0]~input_o\,
	combout => \sommatore|Add0~3_combout\);

-- Location: IOIBUF_X46_Y41_N8
\DATA_IN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(7),
	o => \DATA_IN[7]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\EN_FF1_p~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_FF1_p,
	o => \EN_FF1_p~input_o\);

-- Location: FF_X49_Y35_N27
\ff1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[7]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF1_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q\(10));

-- Location: IOIBUF_X52_Y31_N1
\EN_FF2_p~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_FF2_p,
	o => \EN_FF2_p~input_o\);

-- Location: FF_X49_Y35_N31
\ff2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ff1|Q\(10),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF2_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q\(10));

-- Location: LCCOMB_X49_Y35_N8
\sommatore|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~2_combout\ = (\ADD_SUB~input_o\ & (\SEL_MUX2[1]~input_o\ $ (\SEL_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_SUB~input_o\,
	datab => \SEL_MUX2[1]~input_o\,
	datad => \SEL_MUX2[0]~input_o\,
	combout => \sommatore|Add0~2_combout\);

-- Location: LCCOMB_X49_Y35_N24
\sommatore|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~13_combout\ = (\sommatore|Add0~2_combout\ & ((\sommatore|Add0~3_combout\ & ((!\ff2|Q\(10)))) # (!\sommatore|Add0~3_combout\ & (!\ff1|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff1|Q\(10),
	datab => \sommatore|Add0~3_combout\,
	datac => \ff2|Q\(10),
	datad => \sommatore|Add0~2_combout\,
	combout => \sommatore|Add0~13_combout\);

-- Location: LCCOMB_X49_Y35_N20
\sommatore|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~6_combout\ = (!\ADD_SUB~input_o\ & (\SEL_MUX2[1]~input_o\ $ (\SEL_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_SUB~input_o\,
	datab => \SEL_MUX2[1]~input_o\,
	datad => \SEL_MUX2[0]~input_o\,
	combout => \sommatore|Add0~6_combout\);

-- Location: LCCOMB_X49_Y35_N14
\sommatore|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~12_combout\ = (\sommatore|Add0~6_combout\ & ((\SEL_MUX2[1]~input_o\ & ((\ff2|Q\(10)))) # (!\SEL_MUX2[1]~input_o\ & (\ff1|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff1|Q\(10),
	datab => \SEL_MUX2[1]~input_o\,
	datac => \ff2|Q\(10),
	datad => \sommatore|Add0~6_combout\,
	combout => \sommatore|Add0~12_combout\);

-- Location: IOIBUF_X46_Y41_N1
\EN_FF4_p~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_FF4_p,
	o => \EN_FF4_p~input_o\);

-- Location: FF_X48_Y35_N3
\ff4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(11),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(11));

-- Location: IOIBUF_X46_Y41_N22
\ADD_SUB~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_SUB,
	o => \ADD_SUB~input_o\);

-- Location: LCCOMB_X48_Y35_N2
\sommatore|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~14_combout\ = (\SEL_MUX2[1]~input_o\ & (\SEL_MUX2[0]~input_o\ & (\ff4|Q\(11) $ (\ADD_SUB~input_o\)))) # (!\SEL_MUX2[1]~input_o\ & (!\SEL_MUX2[0]~input_o\ & (\ff4|Q\(11) $ (\ADD_SUB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX2[1]~input_o\,
	datab => \SEL_MUX2[0]~input_o\,
	datac => \ff4|Q\(11),
	datad => \ADD_SUB~input_o\,
	combout => \sommatore|Add0~14_combout\);

-- Location: LCCOMB_X49_Y35_N28
\sommatore|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~15_combout\ = (\sommatore|Add0~13_combout\) # ((\sommatore|Add0~12_combout\) # (\sommatore|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sommatore|Add0~13_combout\,
	datac => \sommatore|Add0~12_combout\,
	datad => \sommatore|Add0~14_combout\,
	combout => \sommatore|Add0~15_combout\);

-- Location: IOIBUF_X41_Y0_N15
\EN_FF3_p~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_FF3_p,
	o => \EN_FF3_p~input_o\);

-- Location: FF_X47_Y35_N3
\ff3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sommatore|DATA_OUT\(11),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(11));

-- Location: IOIBUF_X36_Y41_N8
\SEL_MUX1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_MUX1(1),
	o => \SEL_MUX1[1]~input_o\);

-- Location: LCCOMB_X46_Y35_N22
\mux_in1|OUT_DATA[11]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[11]~18_combout\ = (\SEL_MUX1[0]~input_o\ & ((\SEL_MUX1[1]~input_o\ & (\ff3|Q\(11))) # (!\SEL_MUX1[1]~input_o\ & ((\DATA_IN[7]~input_o\))))) # (!\SEL_MUX1[0]~input_o\ & ((\SEL_MUX1[1]~input_o\ & ((\DATA_IN[7]~input_o\))) # 
-- (!\SEL_MUX1[1]~input_o\ & (\ff3|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \ff3|Q\(11),
	datac => \DATA_IN[7]~input_o\,
	datad => \SEL_MUX1[1]~input_o\,
	combout => \mux_in1|OUT_DATA[11]~18_combout\);

-- Location: LCCOMB_X49_Y35_N30
\sommatore|Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~17_combout\ = (\ADD_SUB~input_o\ & (!\SEL_MUX2[1]~input_o\ & \SEL_MUX2[0]~input_o\)) # (!\ADD_SUB~input_o\ & (\SEL_MUX2[1]~input_o\ $ (!\SEL_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_SUB~input_o\,
	datab => \SEL_MUX2[1]~input_o\,
	datad => \SEL_MUX2[0]~input_o\,
	combout => \sommatore|Add0~17_combout\);

-- Location: LCCOMB_X47_Y35_N26
\sommatore|Add0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~65_combout\ = (\mux_in1|OUT_DATA[10]~2_combout\ & ((\sommatore|Add0~15_combout\ & (\sommatore|Add0~64\ & VCC)) # (!\sommatore|Add0~15_combout\ & (!\sommatore|Add0~64\)))) # (!\mux_in1|OUT_DATA[10]~2_combout\ & ((\sommatore|Add0~15_combout\ 
-- & (!\sommatore|Add0~64\)) # (!\sommatore|Add0~15_combout\ & ((\sommatore|Add0~64\) # (GND)))))
-- \sommatore|Add0~66\ = CARRY((\mux_in1|OUT_DATA[10]~2_combout\ & (!\sommatore|Add0~15_combout\ & !\sommatore|Add0~64\)) # (!\mux_in1|OUT_DATA[10]~2_combout\ & ((!\sommatore|Add0~64\) # (!\sommatore|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in1|OUT_DATA[10]~2_combout\,
	datab => \sommatore|Add0~15_combout\,
	datad => VCC,
	cin => \sommatore|Add0~64\,
	combout => \sommatore|Add0~65_combout\,
	cout => \sommatore|Add0~66\);

-- Location: LCCOMB_X47_Y35_N30
\sommatore|DATA_OUT[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(10) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~65_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(10),
	datab => \RST_n~input_o\,
	datac => \sommatore|Add0~65_combout\,
	datad => \EN_SUM_p~inputclkctrl_outclk\,
	combout => \sommatore|DATA_OUT\(10));

-- Location: FF_X47_Y35_N1
\ff4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(10),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(10));

-- Location: LCCOMB_X49_Y35_N4
\sommatore|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~18_combout\ = (\sommatore|Add0~17_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff1|Q\(10))) # (!\sommatore|Add0~2_combout\ & ((\ff4|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~2_combout\,
	datab => \sommatore|Add0~17_combout\,
	datac => \ff1|Q\(10),
	datad => \ff4|Q\(10),
	combout => \sommatore|Add0~18_combout\);

-- Location: LCCOMB_X49_Y35_N6
\sommatore|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~16_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff2|Q\(10))) # (!\sommatore|Add0~2_combout\ & ((!\ff4|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~2_combout\,
	datab => \sommatore|Add0~3_combout\,
	datac => \ff2|Q\(10),
	datad => \ff4|Q\(10),
	combout => \sommatore|Add0~16_combout\);

-- Location: LCCOMB_X49_Y35_N0
\sommatore|Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~19_combout\ = (\sommatore|Add0~12_combout\) # ((\sommatore|Add0~18_combout\) # (\sommatore|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sommatore|Add0~12_combout\,
	datac => \sommatore|Add0~18_combout\,
	datad => \sommatore|Add0~16_combout\,
	combout => \sommatore|Add0~19_combout\);

-- Location: LCCOMB_X47_Y35_N24
\sommatore|Add0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~63_combout\ = ((\mux_in1|OUT_DATA[9]~4_combout\ $ (\sommatore|Add0~15_combout\ $ (!\sommatore|Add0~62\)))) # (GND)
-- \sommatore|Add0~64\ = CARRY((\mux_in1|OUT_DATA[9]~4_combout\ & ((\sommatore|Add0~15_combout\) # (!\sommatore|Add0~62\))) # (!\mux_in1|OUT_DATA[9]~4_combout\ & (\sommatore|Add0~15_combout\ & !\sommatore|Add0~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in1|OUT_DATA[9]~4_combout\,
	datab => \sommatore|Add0~15_combout\,
	datad => VCC,
	cin => \sommatore|Add0~62\,
	combout => \sommatore|Add0~63_combout\,
	cout => \sommatore|Add0~64\);

-- Location: LCCOMB_X42_Y35_N28
\sommatore|DATA_OUT[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(9) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~63_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \sommatore|DATA_OUT\(9),
	datac => \EN_SUM_p~inputclkctrl_outclk\,
	datad => \sommatore|Add0~63_combout\,
	combout => \sommatore|DATA_OUT\(9));

-- Location: LCCOMB_X48_Y35_N12
\ff4|Q[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff4|Q[9]~feeder_combout\ = \sommatore|DATA_OUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sommatore|DATA_OUT\(9),
	combout => \ff4|Q[9]~feeder_combout\);

-- Location: FF_X48_Y35_N13
\ff4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff4|Q[9]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(9));

-- Location: LCCOMB_X49_Y35_N16
\sommatore|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~20_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff2|Q\(10))) # (!\sommatore|Add0~2_combout\ & ((!\ff4|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~2_combout\,
	datab => \sommatore|Add0~3_combout\,
	datac => \ff2|Q\(10),
	datad => \ff4|Q\(9),
	combout => \sommatore|Add0~20_combout\);

-- Location: LCCOMB_X48_Y35_N22
\sommatore|Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~21_combout\ = (\sommatore|Add0~17_combout\ & ((\sommatore|Add0~2_combout\ & ((!\ff1|Q\(10)))) # (!\sommatore|Add0~2_combout\ & (\ff4|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff4|Q\(9),
	datab => \sommatore|Add0~2_combout\,
	datac => \sommatore|Add0~17_combout\,
	datad => \ff1|Q\(10),
	combout => \sommatore|Add0~21_combout\);

-- Location: LCCOMB_X49_Y35_N18
\sommatore|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~22_combout\ = (\sommatore|Add0~20_combout\) # ((\sommatore|Add0~12_combout\) # (\sommatore|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sommatore|Add0~20_combout\,
	datac => \sommatore|Add0~12_combout\,
	datad => \sommatore|Add0~21_combout\,
	combout => \sommatore|Add0~22_combout\);

-- Location: IOIBUF_X38_Y41_N8
\DATA_IN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: FF_X49_Y35_N9
\ff1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[5]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF1_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q\(5));

-- Location: FF_X49_Y35_N21
\ff2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ff1|Q\(5),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF2_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q\(5));

-- Location: LCCOMB_X49_Y35_N22
\sommatore|Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~27_combout\ = (\SEL_MUX2[1]~input_o\ & ((\ff2|Q\(5)))) # (!\SEL_MUX2[1]~input_o\ & (\ff1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_MUX2[1]~input_o\,
	datac => \ff1|Q\(5),
	datad => \ff2|Q\(5),
	combout => \sommatore|Add0~27_combout\);

-- Location: LCCOMB_X47_Y35_N20
\sommatore|Add0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~59_combout\ = ((\mux_in1|OUT_DATA[7]~8_combout\ $ (\sommatore|Add0~22_combout\ $ (!\sommatore|Add0~58\)))) # (GND)
-- \sommatore|Add0~60\ = CARRY((\mux_in1|OUT_DATA[7]~8_combout\ & ((\sommatore|Add0~22_combout\) # (!\sommatore|Add0~58\))) # (!\mux_in1|OUT_DATA[7]~8_combout\ & (\sommatore|Add0~22_combout\ & !\sommatore|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in1|OUT_DATA[7]~8_combout\,
	datab => \sommatore|Add0~22_combout\,
	datad => VCC,
	cin => \sommatore|Add0~58\,
	combout => \sommatore|Add0~59_combout\,
	cout => \sommatore|Add0~60\);

-- Location: LCCOMB_X46_Y35_N6
\sommatore|DATA_OUT[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(7) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~59_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(7),
	datab => \RST_n~input_o\,
	datac => \sommatore|Add0~59_combout\,
	datad => \EN_SUM_p~inputclkctrl_outclk\,
	combout => \sommatore|DATA_OUT\(7));

-- Location: LCCOMB_X46_Y35_N30
\ff4|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff4|Q[7]~feeder_combout\ = \sommatore|DATA_OUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sommatore|DATA_OUT\(7),
	combout => \ff4|Q[7]~feeder_combout\);

-- Location: FF_X46_Y35_N31
\ff4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff4|Q[7]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(7));

-- Location: LCCOMB_X49_Y35_N2
\sommatore|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~28_combout\ = (!\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff1|Q\(5))) # (!\sommatore|Add0~2_combout\ & ((\ff4|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~2_combout\,
	datab => \sommatore|Add0~3_combout\,
	datac => \ff1|Q\(5),
	datad => \ff4|Q\(7),
	combout => \sommatore|Add0~28_combout\);

-- Location: LCCOMB_X49_Y35_N12
\sommatore|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~30_combout\ = (\sommatore|Add0~6_combout\ & (((\sommatore|Add0~27_combout\)))) # (!\sommatore|Add0~6_combout\ & ((\sommatore|Add0~29_combout\) # ((\sommatore|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~29_combout\,
	datab => \sommatore|Add0~6_combout\,
	datac => \sommatore|Add0~27_combout\,
	datad => \sommatore|Add0~28_combout\,
	combout => \sommatore|Add0~30_combout\);

-- Location: IOIBUF_X52_Y31_N8
\DATA_IN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: FF_X44_Y35_N27
\ff1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[4]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF1_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q\(4));

-- Location: FF_X48_Y35_N27
\ff4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(6),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(6));

-- Location: LCCOMB_X44_Y35_N30
\sommatore|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~32_combout\ = (!\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff1|Q\(4))) # (!\sommatore|Add0~2_combout\ & ((\ff4|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff1|Q\(4),
	datad => \ff4|Q\(6),
	combout => \sommatore|Add0~32_combout\);

-- Location: FF_X44_Y35_N7
\ff2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ff1|Q\(4),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF2_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q\(4));

-- Location: LCCOMB_X44_Y35_N6
\sommatore|Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~33_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff2|Q\(4))) # (!\sommatore|Add0~2_combout\ & ((!\ff4|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff2|Q\(4),
	datad => \ff4|Q\(6),
	combout => \sommatore|Add0~33_combout\);

-- Location: LCCOMB_X44_Y35_N16
\sommatore|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~34_combout\ = (\sommatore|Add0~6_combout\ & (\sommatore|Add0~31_combout\)) # (!\sommatore|Add0~6_combout\ & (((\sommatore|Add0~32_combout\) # (\sommatore|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~31_combout\,
	datab => \sommatore|Add0~6_combout\,
	datac => \sommatore|Add0~32_combout\,
	datad => \sommatore|Add0~33_combout\,
	combout => \sommatore|Add0~34_combout\);

-- Location: IOIBUF_X46_Y41_N15
\DATA_IN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: IOIBUF_X43_Y41_N8
\DATA_IN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: LCCOMB_X48_Y35_N10
\sommatore|DATA_OUT[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(2) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|Add0~49_combout\)) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|DATA_OUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~49_combout\,
	datab => \RST_n~input_o\,
	datac => \EN_SUM_p~inputclkctrl_outclk\,
	datad => \sommatore|DATA_OUT\(2),
	combout => \sommatore|DATA_OUT\(2));

-- Location: FF_X46_Y35_N19
\ff3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(2),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(2));

-- Location: IOIBUF_X41_Y41_N22
\SEL_MUX1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_MUX1(0),
	o => \SEL_MUX1[0]~input_o\);

-- Location: LCCOMB_X46_Y35_N18
\mux_in1|OUT_DATA[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[2]~16_combout\ = (\SEL_MUX1[1]~input_o\ & (((\ff3|Q\(2) & \SEL_MUX1[0]~input_o\)))) # (!\SEL_MUX1[1]~input_o\ & ((\SEL_MUX1[0]~input_o\ & (\DATA_IN[2]~input_o\)) # (!\SEL_MUX1[0]~input_o\ & ((\ff3|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[1]~input_o\,
	datab => \DATA_IN[2]~input_o\,
	datac => \ff3|Q\(2),
	datad => \SEL_MUX1[0]~input_o\,
	combout => \mux_in1|OUT_DATA[2]~16_combout\);

-- Location: LCCOMB_X42_Y35_N6
\sommatore|DATA_OUT[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(1) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|Add0~47_combout\)) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|DATA_OUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~47_combout\,
	datab => \RST_n~input_o\,
	datac => \EN_SUM_p~inputclkctrl_outclk\,
	datad => \sommatore|DATA_OUT\(1),
	combout => \sommatore|DATA_OUT\(1));

-- Location: FF_X42_Y35_N17
\ff3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(1),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(1));

-- Location: LCCOMB_X42_Y35_N16
\mux_in1|OUT_DATA[1]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[1]~17_combout\ = (\SEL_MUX1[1]~input_o\ & (((\ff3|Q\(1) & \SEL_MUX1[0]~input_o\)))) # (!\SEL_MUX1[1]~input_o\ & ((\SEL_MUX1[0]~input_o\ & (\DATA_IN[1]~input_o\)) # (!\SEL_MUX1[0]~input_o\ & ((\ff3|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[1]~input_o\,
	datab => \SEL_MUX1[1]~input_o\,
	datac => \ff3|Q\(1),
	datad => \SEL_MUX1[0]~input_o\,
	combout => \mux_in1|OUT_DATA[1]~17_combout\);

-- Location: IOIBUF_X41_Y41_N1
\DATA_IN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: FF_X44_Y35_N5
\ff1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA_IN[0]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF1_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q\(0));

-- Location: FF_X44_Y35_N1
\ff2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ff1|Q\(0),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF2_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q\(0));

-- Location: LCCOMB_X48_Y35_N0
\ff4|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff4|Q[2]~feeder_combout\ = \sommatore|DATA_OUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sommatore|DATA_OUT\(2),
	combout => \ff4|Q[2]~feeder_combout\);

-- Location: FF_X48_Y35_N1
\ff4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff4|Q[2]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_FF4_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q\(2));

-- Location: LCCOMB_X44_Y35_N0
\sommatore|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~5_combout\ = (\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff2|Q\(0))) # (!\sommatore|Add0~2_combout\ & ((!\ff4|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff2|Q\(0),
	datad => \ff4|Q\(2),
	combout => \sommatore|Add0~5_combout\);

-- Location: LCCOMB_X44_Y35_N20
\sommatore|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~4_combout\ = (!\sommatore|Add0~3_combout\ & ((\sommatore|Add0~2_combout\ & (!\ff1|Q\(0))) # (!\sommatore|Add0~2_combout\ & ((\ff4|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~3_combout\,
	datab => \sommatore|Add0~2_combout\,
	datac => \ff1|Q\(0),
	datad => \ff4|Q\(2),
	combout => \sommatore|Add0~4_combout\);

-- Location: LCCOMB_X44_Y35_N24
\sommatore|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~7_combout\ = (\sommatore|Add0~6_combout\ & (\sommatore|Add0~1_combout\)) # (!\sommatore|Add0~6_combout\ & (((\sommatore|Add0~5_combout\) # (\sommatore|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~1_combout\,
	datab => \sommatore|Add0~6_combout\,
	datac => \sommatore|Add0~5_combout\,
	datad => \sommatore|Add0~4_combout\,
	combout => \sommatore|Add0~7_combout\);

-- Location: LCCOMB_X47_Y35_N4
\sommatore|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~9_cout\ = CARRY(\ADD_SUB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_SUB~input_o\,
	datad => VCC,
	cout => \sommatore|Add0~9_cout\);

-- Location: LCCOMB_X47_Y35_N12
\sommatore|Add0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~51_combout\ = ((\sommatore|Add0~38_combout\ $ (\mux_in1|OUT_DATA[3]~15_combout\ $ (!\sommatore|Add0~50\)))) # (GND)
-- \sommatore|Add0~52\ = CARRY((\sommatore|Add0~38_combout\ & ((\mux_in1|OUT_DATA[3]~15_combout\) # (!\sommatore|Add0~50\))) # (!\sommatore|Add0~38_combout\ & (\mux_in1|OUT_DATA[3]~15_combout\ & !\sommatore|Add0~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~38_combout\,
	datab => \mux_in1|OUT_DATA[3]~15_combout\,
	datad => VCC,
	cin => \sommatore|Add0~50\,
	combout => \sommatore|Add0~51_combout\,
	cout => \sommatore|Add0~52\);

-- Location: LCCOMB_X46_Y35_N28
\sommatore|DATA_OUT[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(3) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~51_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \sommatore|DATA_OUT\(3),
	datac => \sommatore|Add0~51_combout\,
	datad => \EN_SUM_p~inputclkctrl_outclk\,
	combout => \sommatore|DATA_OUT\(3));

-- Location: FF_X46_Y35_N25
\ff3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(3),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(3));

-- Location: LCCOMB_X46_Y35_N24
\mux_in1|OUT_DATA[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[3]~15_combout\ = (\SEL_MUX1[1]~input_o\ & (((\ff3|Q\(3) & \SEL_MUX1[0]~input_o\)))) # (!\SEL_MUX1[1]~input_o\ & ((\SEL_MUX1[0]~input_o\ & (\DATA_IN[3]~input_o\)) # (!\SEL_MUX1[0]~input_o\ & ((\ff3|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[1]~input_o\,
	datab => \DATA_IN[3]~input_o\,
	datac => \ff3|Q\(3),
	datad => \SEL_MUX1[0]~input_o\,
	combout => \mux_in1|OUT_DATA[3]~15_combout\);

-- Location: LCCOMB_X47_Y35_N16
\sommatore|Add0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~55_combout\ = ((\mux_in1|OUT_DATA[5]~12_combout\ $ (\sommatore|Add0~30_combout\ $ (!\sommatore|Add0~54\)))) # (GND)
-- \sommatore|Add0~56\ = CARRY((\mux_in1|OUT_DATA[5]~12_combout\ & ((\sommatore|Add0~30_combout\) # (!\sommatore|Add0~54\))) # (!\mux_in1|OUT_DATA[5]~12_combout\ & (\sommatore|Add0~30_combout\ & !\sommatore|Add0~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in1|OUT_DATA[5]~12_combout\,
	datab => \sommatore|Add0~30_combout\,
	datad => VCC,
	cin => \sommatore|Add0~54\,
	combout => \sommatore|Add0~55_combout\,
	cout => \sommatore|Add0~56\);

-- Location: LCCOMB_X47_Y35_N18
\sommatore|Add0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~57_combout\ = (\sommatore|Add0~26_combout\ & ((\mux_in1|OUT_DATA[6]~10_combout\ & (\sommatore|Add0~56\ & VCC)) # (!\mux_in1|OUT_DATA[6]~10_combout\ & (!\sommatore|Add0~56\)))) # (!\sommatore|Add0~26_combout\ & 
-- ((\mux_in1|OUT_DATA[6]~10_combout\ & (!\sommatore|Add0~56\)) # (!\mux_in1|OUT_DATA[6]~10_combout\ & ((\sommatore|Add0~56\) # (GND)))))
-- \sommatore|Add0~58\ = CARRY((\sommatore|Add0~26_combout\ & (!\mux_in1|OUT_DATA[6]~10_combout\ & !\sommatore|Add0~56\)) # (!\sommatore|Add0~26_combout\ & ((!\sommatore|Add0~56\) # (!\mux_in1|OUT_DATA[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|Add0~26_combout\,
	datab => \mux_in1|OUT_DATA[6]~10_combout\,
	datad => VCC,
	cin => \sommatore|Add0~56\,
	combout => \sommatore|Add0~57_combout\,
	cout => \sommatore|Add0~58\);

-- Location: LCCOMB_X48_Y35_N8
\sommatore|DATA_OUT[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(6) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~57_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \sommatore|DATA_OUT\(6),
	datac => \EN_SUM_p~inputclkctrl_outclk\,
	datad => \sommatore|Add0~57_combout\,
	combout => \sommatore|DATA_OUT\(6));

-- Location: FF_X46_Y35_N5
\ff3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sommatore|DATA_OUT\(6),
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN_FF3_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q\(6));

-- Location: IOIBUF_X46_Y0_N1
\DATA_IN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: LCCOMB_X46_Y35_N10
\mux_in1|OUT_DATA[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[6]~9_combout\ = (\SEL_MUX1[0]~input_o\ & (((\DATA_IN[6]~input_o\ & !\SEL_MUX1[1]~input_o\)))) # (!\SEL_MUX1[0]~input_o\ & (\DATA_IN[2]~input_o\ & ((\SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \DATA_IN[2]~input_o\,
	datac => \DATA_IN[6]~input_o\,
	datad => \SEL_MUX1[1]~input_o\,
	combout => \mux_in1|OUT_DATA[6]~9_combout\);

-- Location: LCCOMB_X46_Y35_N4
\mux_in1|OUT_DATA[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_in1|OUT_DATA[6]~10_combout\ = (\mux_in1|OUT_DATA[6]~9_combout\) # ((\ff3|Q\(6) & (\SEL_MUX1[0]~input_o\ $ (!\SEL_MUX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX1[0]~input_o\,
	datab => \SEL_MUX1[1]~input_o\,
	datac => \ff3|Q\(6),
	datad => \mux_in1|OUT_DATA[6]~9_combout\,
	combout => \mux_in1|OUT_DATA[6]~10_combout\);

-- Location: LCCOMB_X47_Y35_N22
\sommatore|Add0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~61_combout\ = (\mux_in1|OUT_DATA[8]~6_combout\ & ((\sommatore|Add0~19_combout\ & (\sommatore|Add0~60\ & VCC)) # (!\sommatore|Add0~19_combout\ & (!\sommatore|Add0~60\)))) # (!\mux_in1|OUT_DATA[8]~6_combout\ & ((\sommatore|Add0~19_combout\ & 
-- (!\sommatore|Add0~60\)) # (!\sommatore|Add0~19_combout\ & ((\sommatore|Add0~60\) # (GND)))))
-- \sommatore|Add0~62\ = CARRY((\mux_in1|OUT_DATA[8]~6_combout\ & (!\sommatore|Add0~19_combout\ & !\sommatore|Add0~60\)) # (!\mux_in1|OUT_DATA[8]~6_combout\ & ((!\sommatore|Add0~60\) # (!\sommatore|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in1|OUT_DATA[8]~6_combout\,
	datab => \sommatore|Add0~19_combout\,
	datad => VCC,
	cin => \sommatore|Add0~60\,
	combout => \sommatore|Add0~61_combout\,
	cout => \sommatore|Add0~62\);

-- Location: LCCOMB_X47_Y35_N28
\sommatore|Add0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|Add0~67_combout\ = \sommatore|Add0~15_combout\ $ (\sommatore|Add0~66\ $ (!\mux_in1|OUT_DATA[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sommatore|Add0~15_combout\,
	datad => \mux_in1|OUT_DATA[11]~18_combout\,
	cin => \sommatore|Add0~66\,
	combout => \sommatore|Add0~67_combout\);

-- Location: LCCOMB_X47_Y35_N2
\sommatore|DATA_OUT[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(11) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~67_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \sommatore|DATA_OUT\(11),
	datac => \EN_SUM_p~inputclkctrl_outclk\,
	datad => \sommatore|Add0~67_combout\,
	combout => \sommatore|DATA_OUT\(11));

-- Location: LCCOMB_X48_Y35_N24
\sommatore|DATA_OUT[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(8) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~61_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \sommatore|DATA_OUT\(8),
	datac => \EN_SUM_p~inputclkctrl_outclk\,
	datad => \sommatore|Add0~61_combout\,
	combout => \sommatore|DATA_OUT\(8));

-- Location: LCCOMB_X47_Y35_N0
\rounding|Comparison~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|Comparison~0_combout\ = \sommatore|DATA_OUT\(9) $ (\sommatore|DATA_OUT\(11) $ (\sommatore|DATA_OUT\(10) $ (\sommatore|DATA_OUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(9),
	datab => \sommatore|DATA_OUT\(11),
	datac => \sommatore|DATA_OUT\(10),
	datad => \sommatore|DATA_OUT\(8),
	combout => \rounding|Comparison~0_combout\);

-- Location: LCCOMB_X42_Y35_N0
\rounding|DATA_OUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|DATA_OUT~0_combout\ = (\EN_R_p~input_o\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|DATA_OUT\(11)))) # (!\rounding|Comparison~0_combout\ & (\sommatore|DATA_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(0),
	datab => \EN_R_p~input_o\,
	datac => \sommatore|DATA_OUT\(11),
	datad => \rounding|Comparison~0_combout\,
	combout => \rounding|DATA_OUT~0_combout\);

-- Location: FF_X42_Y35_N1
\rounding|DATA_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rounding|DATA_OUT~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rounding|DATA_OUT\(0));

-- Location: LCCOMB_X42_Y35_N26
\rounding|DATA_OUT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|DATA_OUT~1_combout\ = (\EN_R_p~input_o\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|DATA_OUT\(11)))) # (!\rounding|Comparison~0_combout\ & (\sommatore|DATA_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(1),
	datab => \EN_R_p~input_o\,
	datac => \sommatore|DATA_OUT\(11),
	datad => \rounding|Comparison~0_combout\,
	combout => \rounding|DATA_OUT~1_combout\);

-- Location: FF_X42_Y35_N27
\rounding|DATA_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rounding|DATA_OUT~1_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rounding|DATA_OUT\(1));

-- Location: LCCOMB_X42_Y35_N12
\rounding|DATA_OUT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|DATA_OUT~2_combout\ = (\EN_R_p~input_o\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|DATA_OUT\(11)))) # (!\rounding|Comparison~0_combout\ & (\sommatore|DATA_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(2),
	datab => \EN_R_p~input_o\,
	datac => \sommatore|DATA_OUT\(11),
	datad => \rounding|Comparison~0_combout\,
	combout => \rounding|DATA_OUT~2_combout\);

-- Location: FF_X42_Y35_N13
\rounding|DATA_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rounding|DATA_OUT~2_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rounding|DATA_OUT\(2));

-- Location: LCCOMB_X42_Y35_N30
\rounding|DATA_OUT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|DATA_OUT~3_combout\ = (\EN_R_p~input_o\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|DATA_OUT\(11)))) # (!\rounding|Comparison~0_combout\ & (\sommatore|DATA_OUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(3),
	datab => \EN_R_p~input_o\,
	datac => \sommatore|DATA_OUT\(11),
	datad => \rounding|Comparison~0_combout\,
	combout => \rounding|DATA_OUT~3_combout\);

-- Location: FF_X42_Y35_N31
\rounding|DATA_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rounding|DATA_OUT~3_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rounding|DATA_OUT\(3));

-- Location: LCCOMB_X42_Y35_N24
\rounding|DATA_OUT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|DATA_OUT~4_combout\ = (\EN_R_p~input_o\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|DATA_OUT\(11)))) # (!\rounding|Comparison~0_combout\ & (\sommatore|DATA_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(4),
	datab => \EN_R_p~input_o\,
	datac => \sommatore|DATA_OUT\(11),
	datad => \rounding|Comparison~0_combout\,
	combout => \rounding|DATA_OUT~4_combout\);

-- Location: FF_X42_Y35_N25
\rounding|DATA_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rounding|DATA_OUT~4_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rounding|DATA_OUT\(4));

-- Location: LCCOMB_X48_Y35_N6
\sommatore|DATA_OUT[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sommatore|DATA_OUT\(5) = (\RST_n~input_o\ & ((GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & ((\sommatore|Add0~55_combout\))) # (!GLOBAL(\EN_SUM_p~inputclkctrl_outclk\) & (\sommatore|DATA_OUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(5),
	datab => \RST_n~input_o\,
	datac => \sommatore|Add0~55_combout\,
	datad => \EN_SUM_p~inputclkctrl_outclk\,
	combout => \sommatore|DATA_OUT\(5));

-- Location: LCCOMB_X42_Y35_N18
\rounding|DATA_OUT~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|DATA_OUT~5_combout\ = (\EN_R_p~input_o\ & ((\rounding|Comparison~0_combout\ & (!\sommatore|DATA_OUT\(11))) # (!\rounding|Comparison~0_combout\ & ((\sommatore|DATA_OUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(11),
	datab => \EN_R_p~input_o\,
	datac => \sommatore|DATA_OUT\(5),
	datad => \rounding|Comparison~0_combout\,
	combout => \rounding|DATA_OUT~5_combout\);

-- Location: FF_X42_Y35_N19
\rounding|DATA_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rounding|DATA_OUT~5_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rounding|DATA_OUT\(5));

-- Location: LCCOMB_X42_Y35_N20
\rounding|DATA_OUT~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|DATA_OUT~6_combout\ = (\EN_R_p~input_o\ & ((\rounding|Comparison~0_combout\ & ((!\sommatore|DATA_OUT\(11)))) # (!\rounding|Comparison~0_combout\ & (\sommatore|DATA_OUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sommatore|DATA_OUT\(6),
	datab => \EN_R_p~input_o\,
	datac => \sommatore|DATA_OUT\(11),
	datad => \rounding|Comparison~0_combout\,
	combout => \rounding|DATA_OUT~6_combout\);

-- Location: FF_X42_Y35_N21
\rounding|DATA_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rounding|DATA_OUT~6_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rounding|DATA_OUT\(6));

-- Location: LCCOMB_X31_Y1_N0
\rounding|DATA_OUT~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rounding|DATA_OUT~7_combout\ = (\EN_R_p~input_o\ & \sommatore|DATA_OUT\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_R_p~input_o\,
	datad => \sommatore|DATA_OUT\(11),
	combout => \rounding|DATA_OUT~7_combout\);

-- Location: FF_X31_Y1_N1
\rounding|DATA_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rounding|DATA_OUT~7_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rounding|DATA_OUT\(7));

-- Location: IOIBUF_X27_Y0_N1
\EN_P_p~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_P_p,
	o => \EN_P_p~input_o\);

-- Location: CLKCTRL_G18
\EN_P_p~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EN_P_p~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EN_P_p~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y1_N26
\positivo|Contatore|DATA_OUT[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(0) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|Add0~0_combout\)) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|DATA_OUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \positivo|Contatore|Add0~0_combout\,
	datab => \positivo|Contatore|DATA_OUT\(0),
	datac => \RST_n~input_o\,
	datad => \EN_P_p~inputclkctrl_outclk\,
	combout => \positivo|Contatore|DATA_OUT\(0));

-- Location: FF_X31_Y1_N27
\positivo|reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(0),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(0));

-- Location: LCCOMB_X31_Y1_N8
\positivo|Contatore|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~2_combout\ = (\positivo|reg|Q\(1) & (!\positivo|Contatore|Add0~1\)) # (!\positivo|reg|Q\(1) & ((\positivo|Contatore|Add0~1\) # (GND)))
-- \positivo|Contatore|Add0~3\ = CARRY((!\positivo|Contatore|Add0~1\) # (!\positivo|reg|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \positivo|reg|Q\(1),
	datad => VCC,
	cin => \positivo|Contatore|Add0~1\,
	combout => \positivo|Contatore|Add0~2_combout\,
	cout => \positivo|Contatore|Add0~3\);

-- Location: LCCOMB_X31_Y1_N4
\positivo|Contatore|DATA_OUT[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(1) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|Add0~2_combout\)) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|DATA_OUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \positivo|Contatore|Add0~2_combout\,
	datac => \positivo|Contatore|DATA_OUT\(1),
	datad => \EN_P_p~inputclkctrl_outclk\,
	combout => \positivo|Contatore|DATA_OUT\(1));

-- Location: FF_X31_Y1_N5
\positivo|reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(1),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(1));

-- Location: LCCOMB_X31_Y1_N10
\positivo|Contatore|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~4_combout\ = (\positivo|reg|Q\(2) & (\positivo|Contatore|Add0~3\ $ (GND))) # (!\positivo|reg|Q\(2) & (!\positivo|Contatore|Add0~3\ & VCC))
-- \positivo|Contatore|Add0~5\ = CARRY((\positivo|reg|Q\(2) & !\positivo|Contatore|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \positivo|reg|Q\(2),
	datad => VCC,
	cin => \positivo|Contatore|Add0~3\,
	combout => \positivo|Contatore|Add0~4_combout\,
	cout => \positivo|Contatore|Add0~5\);

-- Location: LCCOMB_X30_Y1_N16
\positivo|Contatore|DATA_OUT[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(2) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|Add0~4_combout\)) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|DATA_OUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \positivo|Contatore|Add0~4_combout\,
	datac => \EN_P_p~inputclkctrl_outclk\,
	datad => \positivo|Contatore|DATA_OUT\(2),
	combout => \positivo|Contatore|DATA_OUT\(2));

-- Location: FF_X30_Y1_N17
\positivo|reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(2),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(2));

-- Location: LCCOMB_X31_Y1_N12
\positivo|Contatore|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~6_combout\ = (\positivo|reg|Q\(3) & (!\positivo|Contatore|Add0~5\)) # (!\positivo|reg|Q\(3) & ((\positivo|Contatore|Add0~5\) # (GND)))
-- \positivo|Contatore|Add0~7\ = CARRY((!\positivo|Contatore|Add0~5\) # (!\positivo|reg|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \positivo|reg|Q\(3),
	datad => VCC,
	cin => \positivo|Contatore|Add0~5\,
	combout => \positivo|Contatore|Add0~6_combout\,
	cout => \positivo|Contatore|Add0~7\);

-- Location: LCCOMB_X30_Y1_N18
\positivo|Contatore|DATA_OUT[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(3) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|Add0~6_combout\)) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|DATA_OUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \positivo|Contatore|Add0~6_combout\,
	datac => \EN_P_p~inputclkctrl_outclk\,
	datad => \positivo|Contatore|DATA_OUT\(3),
	combout => \positivo|Contatore|DATA_OUT\(3));

-- Location: FF_X30_Y1_N19
\positivo|reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(3),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(3));

-- Location: LCCOMB_X31_Y1_N14
\positivo|Contatore|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~8_combout\ = (\positivo|reg|Q\(4) & (\positivo|Contatore|Add0~7\ $ (GND))) # (!\positivo|reg|Q\(4) & (!\positivo|Contatore|Add0~7\ & VCC))
-- \positivo|Contatore|Add0~9\ = CARRY((\positivo|reg|Q\(4) & !\positivo|Contatore|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \positivo|reg|Q\(4),
	datad => VCC,
	cin => \positivo|Contatore|Add0~7\,
	combout => \positivo|Contatore|Add0~8_combout\,
	cout => \positivo|Contatore|Add0~9\);

-- Location: LCCOMB_X30_Y1_N4
\positivo|Contatore|DATA_OUT[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(4) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|Add0~8_combout\))) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|DATA_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_P_p~inputclkctrl_outclk\,
	datab => \positivo|Contatore|DATA_OUT\(4),
	datac => \positivo|Contatore|Add0~8_combout\,
	datad => \RST_n~input_o\,
	combout => \positivo|Contatore|DATA_OUT\(4));

-- Location: FF_X30_Y1_N5
\positivo|reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(4),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(4));

-- Location: LCCOMB_X31_Y1_N16
\positivo|Contatore|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~10_combout\ = (\positivo|reg|Q\(5) & (!\positivo|Contatore|Add0~9\)) # (!\positivo|reg|Q\(5) & ((\positivo|Contatore|Add0~9\) # (GND)))
-- \positivo|Contatore|Add0~11\ = CARRY((!\positivo|Contatore|Add0~9\) # (!\positivo|reg|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \positivo|reg|Q\(5),
	datad => VCC,
	cin => \positivo|Contatore|Add0~9\,
	combout => \positivo|Contatore|Add0~10_combout\,
	cout => \positivo|Contatore|Add0~11\);

-- Location: LCCOMB_X30_Y1_N22
\positivo|Contatore|DATA_OUT[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(5) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|Add0~10_combout\))) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|DATA_OUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \positivo|Contatore|DATA_OUT\(5),
	datab => \RST_n~input_o\,
	datac => \EN_P_p~inputclkctrl_outclk\,
	datad => \positivo|Contatore|Add0~10_combout\,
	combout => \positivo|Contatore|DATA_OUT\(5));

-- Location: FF_X30_Y1_N23
\positivo|reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(5),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(5));

-- Location: LCCOMB_X31_Y1_N18
\positivo|Contatore|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~12_combout\ = (\positivo|reg|Q\(6) & (\positivo|Contatore|Add0~11\ $ (GND))) # (!\positivo|reg|Q\(6) & (!\positivo|Contatore|Add0~11\ & VCC))
-- \positivo|Contatore|Add0~13\ = CARRY((\positivo|reg|Q\(6) & !\positivo|Contatore|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \positivo|reg|Q\(6),
	datad => VCC,
	cin => \positivo|Contatore|Add0~11\,
	combout => \positivo|Contatore|Add0~12_combout\,
	cout => \positivo|Contatore|Add0~13\);

-- Location: LCCOMB_X30_Y1_N8
\positivo|Contatore|DATA_OUT[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(6) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|Add0~12_combout\))) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|DATA_OUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \positivo|Contatore|DATA_OUT\(6),
	datac => \EN_P_p~inputclkctrl_outclk\,
	datad => \positivo|Contatore|Add0~12_combout\,
	combout => \positivo|Contatore|DATA_OUT\(6));

-- Location: FF_X30_Y1_N9
\positivo|reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(6),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(6));

-- Location: LCCOMB_X31_Y1_N20
\positivo|Contatore|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~14_combout\ = (\positivo|reg|Q\(7) & (!\positivo|Contatore|Add0~13\)) # (!\positivo|reg|Q\(7) & ((\positivo|Contatore|Add0~13\) # (GND)))
-- \positivo|Contatore|Add0~15\ = CARRY((!\positivo|Contatore|Add0~13\) # (!\positivo|reg|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \positivo|reg|Q\(7),
	datad => VCC,
	cin => \positivo|Contatore|Add0~13\,
	combout => \positivo|Contatore|Add0~14_combout\,
	cout => \positivo|Contatore|Add0~15\);

-- Location: LCCOMB_X31_Y1_N2
\positivo|Contatore|DATA_OUT[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(7) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|Add0~14_combout\))) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|DATA_OUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \positivo|Contatore|DATA_OUT\(7),
	datac => \EN_P_p~inputclkctrl_outclk\,
	datad => \positivo|Contatore|Add0~14_combout\,
	combout => \positivo|Contatore|DATA_OUT\(7));

-- Location: FF_X31_Y1_N3
\positivo|reg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(7),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(7));

-- Location: LCCOMB_X31_Y1_N22
\positivo|Contatore|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~16_combout\ = (\positivo|reg|Q\(8) & (\positivo|Contatore|Add0~15\ $ (GND))) # (!\positivo|reg|Q\(8) & (!\positivo|Contatore|Add0~15\ & VCC))
-- \positivo|Contatore|Add0~17\ = CARRY((\positivo|reg|Q\(8) & !\positivo|Contatore|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \positivo|reg|Q\(8),
	datad => VCC,
	cin => \positivo|Contatore|Add0~15\,
	combout => \positivo|Contatore|Add0~16_combout\,
	cout => \positivo|Contatore|Add0~17\);

-- Location: LCCOMB_X31_Y1_N28
\positivo|Contatore|DATA_OUT[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(8) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|Add0~16_combout\))) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|DATA_OUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \positivo|Contatore|DATA_OUT\(8),
	datac => \positivo|Contatore|Add0~16_combout\,
	datad => \EN_P_p~inputclkctrl_outclk\,
	combout => \positivo|Contatore|DATA_OUT\(8));

-- Location: FF_X31_Y1_N29
\positivo|reg|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(8),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(8));

-- Location: LCCOMB_X31_Y1_N24
\positivo|Contatore|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|Add0~18_combout\ = \positivo|Contatore|Add0~17\ $ (\positivo|reg|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \positivo|reg|Q\(9),
	cin => \positivo|Contatore|Add0~17\,
	combout => \positivo|Contatore|Add0~18_combout\);

-- Location: LCCOMB_X31_Y1_N30
\positivo|Contatore|DATA_OUT[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \positivo|Contatore|DATA_OUT\(9) = (\RST_n~input_o\ & ((GLOBAL(\EN_P_p~inputclkctrl_outclk\) & ((\positivo|Contatore|Add0~18_combout\))) # (!GLOBAL(\EN_P_p~inputclkctrl_outclk\) & (\positivo|Contatore|DATA_OUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \positivo|Contatore|DATA_OUT\(9),
	datab => \RST_n~input_o\,
	datac => \EN_P_p~inputclkctrl_outclk\,
	datad => \positivo|Contatore|Add0~18_combout\,
	combout => \positivo|Contatore|DATA_OUT\(9));

-- Location: FF_X31_Y1_N31
\positivo|reg|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \positivo|Contatore|DATA_OUT\(9),
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \EN_P_p~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \positivo|reg|Q\(9));

ww_TC <= \TC~output_o\;

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;

ww_ADRESS_OUT(0) <= \ADRESS_OUT[0]~output_o\;

ww_ADRESS_OUT(1) <= \ADRESS_OUT[1]~output_o\;

ww_ADRESS_OUT(2) <= \ADRESS_OUT[2]~output_o\;

ww_ADRESS_OUT(3) <= \ADRESS_OUT[3]~output_o\;

ww_ADRESS_OUT(4) <= \ADRESS_OUT[4]~output_o\;

ww_ADRESS_OUT(5) <= \ADRESS_OUT[5]~output_o\;

ww_ADRESS_OUT(6) <= \ADRESS_OUT[6]~output_o\;

ww_ADRESS_OUT(7) <= \ADRESS_OUT[7]~output_o\;

ww_ADRESS_OUT(8) <= \ADRESS_OUT[8]~output_o\;

ww_ADRESS_OUT(9) <= \ADRESS_OUT[9]~output_o\;

ww_CONT_POSITIVI(0) <= \CONT_POSITIVI[0]~output_o\;

ww_CONT_POSITIVI(1) <= \CONT_POSITIVI[1]~output_o\;

ww_CONT_POSITIVI(2) <= \CONT_POSITIVI[2]~output_o\;

ww_CONT_POSITIVI(3) <= \CONT_POSITIVI[3]~output_o\;

ww_CONT_POSITIVI(4) <= \CONT_POSITIVI[4]~output_o\;

ww_CONT_POSITIVI(5) <= \CONT_POSITIVI[5]~output_o\;

ww_CONT_POSITIVI(6) <= \CONT_POSITIVI[6]~output_o\;

ww_CONT_POSITIVI(7) <= \CONT_POSITIVI[7]~output_o\;

ww_CONT_POSITIVI(8) <= \CONT_POSITIVI[8]~output_o\;

ww_CONT_POSITIVI(9) <= \CONT_POSITIVI[9]~output_o\;
END structure;


