-- Sommatore e sottratore
-- S seleziona quale delle due operazioni effettuare
-- RST -> Reset attivo basso
-- EN -> Enable
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder is
	generic(N : integer:=11);
	port(RST,EN,S: in std_logic;
	     DATA1,DATA2 : in signed(N-1 downto 0);
	     DATA_OUT : out signed(N-1 downto 0)
	     );
end entity;

architecture behaviour of Adder is

begin
	process(EN,RST,S,DATA1,DATA2)
	begin
		if RST = '0' then
			DATA_OUT <= (others => '0');
		else
			if EN = '1' then
				if S = '0' then
					DATA_OUT <= DATA1 + DATA2;
				end if;
				
				if S = '1' then
					DATA_OUT <= DATA1 - DATA2;
				end if;
			end if;
		end if;
	end process;
end architecture;
