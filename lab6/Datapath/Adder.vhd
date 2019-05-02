-- Sommatore e sottratore
-- SUB_ADDER seleziona quale delle due operazioni effettuare

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder is
	generic(N : integer:=11);
	port(SUB_ADDER: in std_logic;
	     IN_1,IN_2 : in signed(N-1 downto 0);
	     DATA_OUT : out signed(N-1 downto 0));
end entity;

architecture behaviour of Adder is

begin
	DATA_OUT <= IN_1 + IN_2 when SUB_ADDER = '0' else
							IN_1 - IN_2;
end architecture;