-- Composto da un sommatore ed un registro

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter_positivi is
	port(CLK,RST,EN : in std_logic;
	  	DATA_OUT : out unsigned(10 downto 0));
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
		port(RST,EN,S: in std_logic;
				 DATA1,DATA2 : in std_logic_vector(N-1 downto 0);
				 DATA_OUT : out std_logic_vector(N-1 downto 0));
	end component;

	signal ADDER_IN, ADDER_OUT : std_logic_vector(10 downto 0);
	signal REG_OUT_UN, REG_IN_UN : signed(10 downto 0);
	
	begin
	REG_IN_SIG <= unsigned(ADDER_OUT);
	ADDER_IN <= std_logic_vector(REG_OUT_UN);
	
	HalfAdder : HA generic map(N=>11)
							port map(RST, EN, "00000000001", ADDER_IN, ADDER_OUT);
	reg : regn generic map(N =>11)
						 port map(EN, REG_IN_UN, CLK, RST, REG_OUT_UN);
	
	DATA_OUT <= REG_OUT_UN;

end architecture;