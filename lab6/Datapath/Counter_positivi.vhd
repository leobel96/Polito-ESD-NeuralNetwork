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
				 IN_1_HA,IN_2_HA : in unsigned(N-1 downto 0);
				 OUT_HA : out unsigned(N-1 downto 0));
	end component;

	signal OUT_REG, OUT_HA : unsigned(10 downto 0);
	
	begin
	
	HalfAdder : HA generic map(N=>11)
								 port map(RST, EN, "00000000001", OUT_REG, OUT_HA);
	reg : reg_unsigned generic map(N =>11)
						 port map(EN, OUT_HA, CLK, RST, OUT_REG);
	
	OUT_CNT <= OUT_REG;

end architecture;