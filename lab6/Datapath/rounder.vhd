library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rounder is
	port(CLK,EN_R,RST : in std_logic;
		   DATA_IN : in signed(11 downto 0);
			DATA_OUT : out signed(7 downto 0)
			);
end entity;

architecture behaviour of rounder is
signal Comparison : std_logic;
begin
	Comparison <= (DATA_IN(11) xor DATA_IN(10)) xor (DATA_IN(9) xor DATA_IN(8));
	process(CLK,EN_R,RST,Comparison,DATA_IN)
		begin
		
		if RST = '0' then
			DATA_OUT <= (others =>'0');
		elsif CLK'event and CLK = '1' then
			if EN_R = '1' then
				if(Comparison = '1') then	
					if DATA_IN(11) = '1' then
						DATA_OUT <= "10000000";
					else	
						DATA_OUT <= "01111111";
					end if;
				 else
					DATA_OUT <= DATA_IN(7 downto 0);
				end if;
			else
				DATA_OUT <= (others =>'0');
			end if;
		 end if;
	end process;
end architecture;