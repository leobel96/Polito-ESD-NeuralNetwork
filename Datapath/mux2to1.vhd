library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux2to1 is
	port(IN1, IN2 : in signed(11 downto 0);
	     SEL : in std_logic; 
	     OUT_DATA : out signed(11 downto 0));
end entity;

architecture behavioural of Mux2to1 is
begin
		OUT_DATA <= IN1 when SEL = '0' else
								IN2;
end architecture;
