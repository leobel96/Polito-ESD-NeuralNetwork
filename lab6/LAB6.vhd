library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LAB6 is
	port(CLK, START, RST : in std_logic;
			 DATA_IN : in signed(7 downto 0);
		   DONE : out std_logic;
		   OUTPUT_PORT : out unsigned(10 downto 0));
end entity;

architecture behavioural of LAB6 is
	component Datapath 
	port(CLK, RST_n: in std_logic;	--CLOCK,RESET
		  DATA_OUT_MEM_A : in signed(7 downto 0);		--Dato in uscita dalla memoria A
			EN_REG_1, EN_REG_2, EN_REG_3, EN_REG_4, SEL_MUX2 : in std_logic;
			SEL_MUX1 : in std_logic_vector(1 downto 0);	--Selettori MUX1 e MUX2 (rispettivamente in IN1 ed IN2)
		  SUB_ADDER : in std_logic;
			EN_CNT_1, EN_CNT_2 : in std_logic;
			EN_ROUND : in std_logic;
			
			TC_CNT_1 : out std_logic;		--Terminal counter a 1023
			OUT_ROUND : out signed(7 downto 0);
			ADDRESS_MEM	: out std_logic_vector(9 downto 0);	 --Uscita per l'indirizzo sia della Memoria A che B
			OUTPUT_PORT : out unsigned(10 downto 0));	--Uscita che indica le Y positive calcolate
	end component;	

	component FSM
	 PORT(CLK,RST: IN STD_LOGIC;
				START, TC_CNT_1 : IN STD_LOGIC;
				OUT_ROUND : IN signed(7 DOWNTO 0);
        RESET, EN_CNT_1, CS_MEM_A, WR_MEM_A,
				RD_MEM_A, CS_MEM_B, WR_MEM_B, RD_MEM_B,	EN_REG_1,
				EN_REG_2, EN_REG_3, EN_REG_4, SUB_ADDER_1, 
				EN_ROUND, EN_CNT_2, SEL_MUX_2, DONE : OUT STD_LOGIC;
				SEL_MUX_1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
	end component;
		 
	component Memory
		port(CLK, CS, WR, RD : in std_logic;
				 ADDRESS_MEM : in std_logic_vector(9 downto 0);
				 DATA_IN : in signed(7 downto 0);
				 DATA_OUT : out signed(7 downto 0));
	end component;

	signal DATA_OUT_MEM_A, OUT_ROUND, DATA_OUT_MEM_B: signed (7 downto 0);
	signal RESET, EN_REG_1, EN_REG_2, EN_REG_3,
				 EN_REG_4, SUB_ADDER, EN_CNT_1, EN_CNT_2, EN_ROUND, TC_CNT_1, CS_MEM_A,
				 WR_MEM_A, RD_MEM_A, CS_MEM_B, WR_MEM_B, RD_MEM_B, SEL_MUX2: std_logic;
	signal SEL_MUX1: std_logic_vector(1 downto 0);
	signal ADDRESS_MEM: std_logic_vector(9 downto 0);

	begin
		DP: Datapath port map(CLK, RESET, DATA_OUT_MEM_A, EN_REG_1, EN_REG_2, EN_REG_3, EN_REG_4, SEL_MUX2, SEL_MUX1, SUB_ADDER,
													EN_CNT_1, EN_CNT_2, EN_ROUND, TC_CNT_1, OUT_ROUND, ADDRESS_MEM, OUTPUT_PORT);     
		CU: FSM port map(CLK, RST, START, TC_CNT_1,OUT_ROUND, RESET, EN_CNT_1, CS_MEM_A, WR_MEM_A, RD_MEM_A, CS_MEM_B,
										 WR_MEM_B, RD_MEM_B, EN_REG_1, EN_REG_2, EN_REG_3, EN_REG_4, SUB_ADDER, EN_ROUND, EN_CNT_2, SEL_MUX2, DONE, SEL_MUX1);
		MEM_A: Memory port map (CLK, CS_MEM_A, WR_MEM_A, RD_MEM_A, ADDRESS_MEM, DATA_IN, DATA_OUT_MEM_A);
		MEM_B: Memory port map (CLK, CS_MEM_B, WR_MEM_B, RD_MEM_B, ADDRESS_MEM, OUT_ROUND, DATA_OUT_MEM_B);
end architecture;