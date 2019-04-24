-- RST -> Reset attivo basso
-- EN -> Enable
library ieee;
use ieee.std_logic_1164.all;

entity HA is
	generic(N : integer:=11);
	port(RST,EN: in std_logic;
	     DATA1,DATA2 : in std_logic_vector(N-1 downto 0);
	     DATA_OUT : out std_logic_vector(N-1 downto 0));
end entity;

architecture behaviour of HA is

begin
	process(EN,RST,S,DATA1,DATA2)
	begin
		if RST = '0' then
			DATA_OUT <= (others => '0');
		else
			if EN = '1' then
				DATA_OUT <= DATA1 + DATA2;
			end if;
		end if;
	end process;
end architecture;
