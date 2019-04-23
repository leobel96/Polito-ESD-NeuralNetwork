-- Composto da un sommatore ed un registro


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter_positivi is
	port(CLK,RST,EN : in std_logic;
		  DATA_IN : in signed(7 downto 0);
	  	  DATA_OUT : buffer signed(9 downto 0)
		  );
end entity;

architecture behaviour of Counter_positivi is
	component regn 
	GENERIC ( N : integer:=11);
	PORT (EN : in std_logic;
			R : IN SIGNED(N-1 DOWNTO 0);
			Clock, Resetn : IN STD_LOGIC;
			Q : OUT SIGNED(N-1 DOWNTO 0));
	end component;
	
	component Adder 
	generic(N : integer:=11);
	port(RST,EN,S: in std_logic;
	     DATA1,DATA2 : in signed(N-1 downto 0);
	     DATA_OUT : out signed(N-1 downto 0)
	     );
	end component;

	signal DATO1,D_OUT: signed(9 downto 0);
	
begin
	Contatore : Adder generic map(N=>10)
							port map(RST,EN,'0',DATO1,DATA_OUT,D_OUT);
	reg : regn generic map(N =>10)
					port map(EN,D_OUT,CLK,RST,DATA_OUT);
	DATO1 <= "000000000" & not DATA_IN(7);
end architecture;