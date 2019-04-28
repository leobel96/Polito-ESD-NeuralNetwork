-- RST -> Reset attivo basso
-- EN -> Enable
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HA is
	generic(N : integer:=11);
	port(RST,EN: in std_logic;
	     IN_1_HA,IN_2_HA : in unsigned(N-1 downto 0);
	     OUT_HA : out unsigned(N-1 downto 0));
end entity;

architecture behaviour of HA is

begin
	process(EN,RST,IN_1_HA,IN_2_HA)
	begin
		if RST = '0' then
			OUT_HA <= (others => '0');
		else
			if EN = '1' then
				OUT_HA <= IN_1_HA + IN_2_HA;
			end if;
		end if;
	end process;
end architecture;
