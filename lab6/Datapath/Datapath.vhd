--RESET attivo basso
--ENABLE attivi alti

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is 
	port(CLK, RST_n: in std_logic;	--CLOCK,RESET
		  DATA_OUT_MEM_A : in signed(7 downto 0);		--Dato in uscita dalla memoria A
			EN_FF_1, EN_FF_2, EN_FF_3, EN_FF_4 : in std_logic;
			SEL_MUX1,SEL_MUX2 : in std_logic_vector(1 downto 0);	--Selettori MUX1 e MUX2 (rispettivamente in IN1 ed IN2)
		  EN_ADDER, RST_ADDER, SUB_ADDER : in std_logic;
			EN_CNT_1, EN_CNT_2 : in std_logic;
			EN_ROUND : in std_logic;
			
			TC_CNT_1 : out std_logic;		--Terminal counter a 1023
			OUT_ROUND : out signed(7 downto 0);
			ADDRESS_MEM	: out std_logic_vector(9 downto 0);	 --Uscita per l'indirizzo sia della Memoria A che B
			OUTPUT_PORT : out signed(10 downto 0)	--Uscita che indica le Y positive calcolate
		  );
end entity;

architecture behaviour of Datapath is

-- SHIFT_R_1
-- SHIFT_R_2
-- SHIFT_L_4

component Adder
	generic(N : integer:=11);
	port(RST,EN,SUB_ADDER: in std_logic;
	     IN_1,IN_2 : in signed(N-1 downto 0);
	     DATA_OUT : out signed(N-1 downto 0));
end component;

component counter_Nbit
	generic(N : integer := 16);
	port(EN, CLK, RST : in std_logic;
		   OUT_CNT : out std_logic_vector(N-1 downto 0));
end component;

component Counter_positivi
	port(CLK,RST,EN : in std_logic;
	  	 OUT_CNT : out unsigned(10 downto 0));
end component;

component Mux3to1 
	port(IN1,IN2,IN3 : in signed(11 downto 0);
	     S : in std_logic_vector(1 downto 0); 
	     OUT_DATA : out signed(11 downto 0));
end component;

component reg_sig
	GENERIC ( N : integer:=11);
	PORT (CLK, EN, RST : IN STD_LOGIC;
				D : IN SIGNED(N-1 DOWNTO 0);
				Q : OUT SIGNED(N-1 DOWNTO 0));
end component;

component rounder
	port(CLK, EN, RST : in std_logic;
		   IN_ROUND : in signed(11 downto 0);
			 OUT_ROUND : out signed(7 downto 0));
end component;

signal TC_COUNTER : std_logic_vector(9 downto 0);
signal D_FF_1, Q_FF_1, Q_FF_2, Q_FF_3, Q_FF_4 : signed(11 downto 0);
signal OUT_DATA_MUX1, OUT_DATA_MUX2, OUT_ADDER: signed(11 downto 0);
signal OUT_CNT_2 : signed(10 downto 0);
-- OUT_SHIFT_R_1, OUT_SHIFT_L_4, OUT_SHIFT_R_2
begin

	
	ff_1 : reg_sig generic map(N=>12)
						 port map(CLK, EN_FF_1, RST_n, D_FF_1, Q_FF_1);	 
	ff_2 : reg_sig generic map(N=>12)
						 port map(CLK, EN_FF_2, RST_n, Q_FF_1, Q_FF_2);
						 
	mux_1: mux3to1 port map(Q_FF_3, OUT_SHIFT_R_1, OUT_SHIFT_L_4, SEL_MUX1, OUT_DATA_MUX1);
	mux_2: mux3to1 port map(Q_FF_1, Q_FF_2, OUT_SHIFT_R_2, SEL_MUX2, OUT_DATA_MUX2);
	
	sommatore : adder generic map(N=>12)
										port map(RST_n, EN_ADDER, SUB_ADDER, OUT_DATA_MUX1, OUT_DATA_MUX2, OUT_ADDER);
	ff_3 :  reg_sig generic map(N=>12)
									port map(CLK, EN_FF_3, RST_n, OUT_ADDER, Q_FF_3);
	ff_4 :  reg_sig generic map(N=>12)
									port map(CLK, EN_FF_4, RST_n, OUT_ADDER, Q_FF_4);
					
	rounding: rounder port map(CLK, EN_ROUND, RST_n, OUT_ADDER, OUT_ROUND);
	
	cnt_1 : counter_Nbit generic map(N=>10)
											 port map(EN_CNT_1, CLK, RST_n, OUT_CNT_1);
	cnt_2: counter_positivi port map(CLK, RST_n, EN_CNT_2, OUT_CNT_2);
	
	OUTPUT_PORT <= OUT_CNT_2;
	ADDRESS_MEM <= OUT_CNT_1;
					 
	TC_CNT_1 <= TC_COUNTER(9) and TC_COUNTER(8) and TC_COUNTER(7) and TC_COUNTER(6) and 
							TC_COUNTER(5) and TC_COUNTER(4) and TC_COUNTER(3) and TC_COUNTER(2) and
							TC_COUNTER(1) and TC_COUNTER(0);	--SEGNALE DEL TERMINAL COUNTER
	
	D_FF_1 <= DATA_OUT_MEM_A(7) & DATA_OUT_MEM_A(7) & DATA_OUT_MEM_A(7) & DATA_OUT_MEM_A(7) & DATA_OUT_MEM_A;	 --ESPANSIONE DELL' INGRESSO
end architecture;