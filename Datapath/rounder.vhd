library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rounder is
	port(CLK, EN, RST : in std_logic;
		   IN_ROUND : in signed(11 downto 0);
			 OUT_ROUND : out signed(7 downto 0));
end entity;

architecture behaviour of rounder is
signal Comparison : std_logic;
begin
	Comparison <= (IN_ROUND(11) xor IN_ROUND(10)) xor (IN_ROUND(9) xor IN_ROUND(8));
	process(CLK,EN,RST,Comparison,IN_ROUND)
		begin
		
		if RST = '0' then
			OUT_ROUND <= (others =>'0');
		elsif CLK'event and CLK = '1' then
			if EN = '1' then
				if(Comparison = '1') then	
					if IN_ROUND(11) = '1' then
						OUT_ROUND <= "10000000";
					else	
						OUT_ROUND <= "01111111";
					end if;
				 else
					OUT_ROUND <= IN_ROUND(11) & IN_ROUND(6 downto 0);
				end if;
			end if;
		 end if;
	end process;
end architecture;