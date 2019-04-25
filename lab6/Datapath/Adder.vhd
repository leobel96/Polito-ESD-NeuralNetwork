-- Sommatore e sottratore
-- SUB_ADDER seleziona quale delle due operazioni effettuare
-- RST -> Reset attivo basso
-- EN -> Enable
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder is
	generic(N : integer:=11);
	port(RST,EN,SUB_ADDER: in std_logic;
	     IN_1,IN_2 : in signed(N-1 downto 0);
	     DATA_OUT : out signed(N-1 downto 0));
end entity;

architecture behaviour of Adder is

begin
	process(EN,RST,SUB_ADDER,IN_1,IN_2)
	begin
		if RST = '0' then
			DATA_OUT <= (others => '0');
		else
			if EN = '1' then
				if SUB_ADDER = '0' then
					DATA_OUT <= IN_1 + IN_2;
				end if;
				
				if SUB_ADDER = '1' then
					DATA_OUT <= IN_1 - IN_2;
				end if;
			end if;
		end if;
	end process;
end architecture;
