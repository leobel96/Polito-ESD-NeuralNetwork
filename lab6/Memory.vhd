-- Memoria di signed (1024 righe 8 colonne)
-- CLK -> Clock
-- RST -> Reset
-- EN -> Enable 
-- WR -> Write
-- RD -> Read
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Memory is
	port(CLK,RST,CS,WR,RD : in std_logic;
	     ADRESS : in std_logic_vector(10 downto 0);
	     DATA_IN : in signed(7 downto 0);
	     DATA_OUT : out signed(7 downto 0)
	     );
end entity;

architecture behaviour of Memory is

type MEM is array(0 to 1023) of signed(7 downto 0);
signal MEMORIA : MEM;

begin
	RW : process(CLK,CS,RD,WR,RST)	
		begin
		if RST = '0' then
		elsif CLK'event and CLK = '1' then
			if CS = '1' then
				if WR = '0' then
					MEMORIA(to_integer(unsigned(ADRESS))) <= DATA_IN;
				end if;
				if RD = '1' then
					DATA_OUT <= MEMORIA(to_integer(unsigned(ADRESS)));
				end if;
			end if;
		end if;
	end process;
end architecture;
