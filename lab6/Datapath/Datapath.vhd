--RESET attivo basso
--ENABLE attivi alti

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is 
	port(CLK,RST_n: in std_logic;											--CLOCK,RESET
		  SEL_MUX1,SEL_MUX2 : in std_logic_vector(1 downto 0);	--Selettori MUX1 e MUX2 (rispettivamente in IN1 ed IN2)
		  EN_COUNTER_p : in std_logic;									--Enable del contatore
		  EN_SUM_p : in std_logic;											--Enable del sommaotore
		  EN_R_p : in std_logic;											--Enable del rounding
		  EN_P_p : in std_logic; 											--Enable del contatore di numeri positivi
		  EN_FF1_p,EN_FF2_p,EN_FF3_p,EN_FF4_p : in std_logic; 	--Enable FF's
		  ADD_SUB : in std_logic;											--Bit per la scelta della somma o sottrazione '0' per la somma ,'1' per la sottrazione
		  DATA_IN : in signed(7 downto 0);								--Dato in ingresso dalla memoria A
		  TC : out std_logic;												--Terminal counter a 1023
		  DATA_OUT : buffer signed(7 downto 0);						--Dato in uscita alla memoria B
		  ADRESS_OUT : out std_logic_vector(9 downto 0);			--Uscita per l'indirizzo sia della Memoria A che B
		  CONT_POSITIVI : out signed(9 downto 0)						--Uscita che indica le Y positive calcolate
		  );
end entity;

architecture behaviour of Datapath is

component Mux3to1 
	port(IN1,IN2,IN3 : in signed(11 downto 0);
	     S : in std_logic_vector(1 downto 0); 
	     OUT_DATA : out signed(11 downto 0)
	     );
end component;

component regn 
	GENERIC ( N : integer:=11);
	PORT (EN : IN std_logic;
			R : IN SIGNED(N-1 DOWNTO 0);
			Clock, Resetn : IN STD_LOGIC;
			Q : OUT SIGNED(N-1 DOWNTO 0));
end component;

component counter_Nbit 
	generic(N : integer := 16);
	port(enable, clock, clear : in std_logic;
		   TC : out std_logic_vector(N-1 downto 0));
end component;

component Adder 
	generic(N : integer:=11);
	port(RST,EN,S: in std_logic;
	     DATA1,DATA2 : in signed(N-1 downto 0);
	     DATA_OUT : out signed(N-1 downto 0)
	     );
end component;

component rounder
	port(CLK,EN_R,RST : in std_logic;
		   DATA_IN : in signed(11 downto 0);
			DATA_OUT : out signed(7 downto 0)
			);
end component;

component Counter_positivi 
	port(CLK,RST,EN : in std_logic;
		  DATA_IN : in signed(7 downto 0);
	  	  DATA_OUT : buffer signed(9 downto 0)
		  );
end component;

signal TC_COUNTER : std_logic_vector(9 downto 0);
signal D_IN,N,N1,N2,S_OUTDIVIDED,N1_MPX: signed(11 downto 0);
signal OUT_DATA_MUX1,OUT_DATA_MUX2,SUM,S_OUT,S_OUT1: signed(11 downto 0);

begin

	counter : counter_Nbit generic map(N=>10)
								  port map(EN_COUNTER_p,CLK,RST_n,TC_COUNTER);
	
	ff1 : regn generic map(N=>12)
					 port map(EN_FF1_p,D_IN,CLK,RST_n,N1);	 
	ff2 : regn generic map(N=>12)
					 port map(EN_FF2_p,N1,CLK,RST_n,N2);
	
					 
	mux_in1: mux3to1 port map(S_OUT,N,N1_MPX,SEL_MUX1,OUT_DATA_MUX1);
	mux_in2: mux3to1 port map(S_OUTDIVIDED,N1,N2,SEL_MUX2,OUT_DATA_MUX2);
	
	sommatore : adder generic map(N=>12)
							port map(RST_n,EN_SUM_p,ADD_SUB,OUT_DATA_MUX1,OUT_DATA_MUX2,SUM);
	ff3 :  regn generic map(N=>12)
						 port map(EN_FF3_p,SUM,CLK,RST_n,S_OUT);
	ff4 :  regn generic map(N=>12)
						 port map(EN_FF4_p,SUM,CLK,RST_n,S_OUT1);
					
	rounding: rounder port map(CLK,EN_R_p,RST_n,SUM,DATA_OUT);
	
	positivo: counter_positivi port map(CLK,RST_n,EN_P_p,DATA_OUT,CONT_POSITIVI);
	
	ADRESS_OUT <= TC_COUNTER;				 
	TC <= TC_COUNTER(9) and TC_COUNTER(8) and TC_COUNTER(7) and TC_COUNTER(6) and 
			TC_COUNTER(5) and TC_COUNTER(4) and TC_COUNTER(3) and TC_COUNTER(2) and
			TC_COUNTER(1) and TC_COUNTER(0);																		--SEGNALE DEL TERMINAL COUNTER
	N <=DATA_IN(7) & DATA_IN(7) & DATA_IN(7) & DATA_IN(7) & DATA_IN(7) & DATA_IN(6 downto 0); --DIVIDO PER 2(x0.5)
	D_IN <= DATA_IN(7) & DATA_IN(7) & DATA_IN(7) & DATA_IN(7) & DATA_IN;				 				--ESPANSIONE DEL INGRESSO
	S_OUTDIVIDED <= S_OUT1(11) & S_OUT1(11) & S_OUT1(11 downto 2);										--DIVISIONE DELLA USCITA DEL SOMMATORE PER 4
	N1_MPX <= N(7 downto 0) & "0000";
end architecture;