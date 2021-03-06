-- Memoria di signed (1024 righe 8 colonne)
-- CLK -> Clock
-- RST -> Reset
-- CS -> Enable 
-- WR -> Write (active low)
-- RD -> Read
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Memory is
	port(CLK, CS, WR, RD : in std_logic;
	     ADDRESS_MEM : in std_logic_vector(9 downto 0);
	     DATA_IN : in signed(7 downto 0);
	     DATA_OUT : out signed(7 downto 0));
end entity;

architecture behaviour of Memory is

type MEM is array(0 to 1023) of signed(7 downto 0);
signal MEMORIA : MEM;

begin
	RW : process(CLK, CS, RD, WR)	
		begin
		if CLK'event and CLK = '1' then
			if CS = '1' then
				if WR = '0' then
					MEMORIA(to_integer(unsigned(ADDRESS_MEM))) <= DATA_IN;
				end if;
				if RD = '1' then
					DATA_OUT <= MEMORIA(to_integer(unsigned(ADDRESS_MEM)));
				end if;
			end if;
		end if;
	end process;
end architecture;
