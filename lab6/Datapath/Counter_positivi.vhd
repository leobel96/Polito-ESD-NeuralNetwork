-- Composto da un sommatore ed un registro

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter_positivi is
	port(CLK,RST,EN : in std_logic;
	  	 OUT_CNT : out unsigned(10 downto 0));
end entity;

architecture behaviour of Counter_positivi is
	component reg_unsigned
		GENERIC ( N : integer:=11);
		PORT (EN : in std_logic;
					R : IN UNSIGNED(N-1 DOWNTO 0);
					Clock, Resetn : IN STD_LOGIC;
					Q : OUT UNSIGNED(N-1 DOWNTO 0));
	end component;
	
	component HA
		generic(N : integer:=11);
		port(RST,EN: in std_logic;
				 IN_1_HA,IN_2_HA : in std_logic_vector(N-1 downto 0);
				 OUT_HA : out std_logic_vector(N-1 downto 0));
	end component;

	signal IN_2_HA, OUT_HA : std_logic_vector(10 downto 0);
	signal REG_OUT_UN, REG_IN_UN : signed(10 downto 0);
	
	begin
	REG_IN_SIG <= unsigned(OUT_HA);
	IN_2_HA <= std_logic_vector(REG_OUT_UN);
	
	HalfAdder : HA generic map(N=>11)
								 port map(RST, EN, "00000000001", IN_2_HA, OUT_HA);
	reg : regn generic map(N =>11)
						 port map(EN, REG_IN_UN, CLK, RST, REG_OUT_UN);
	
	OUT_CNT <= REG_OUT_UN;

end architecture;