library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux4to1 is
	port(IN1, IN2, IN3, IN4 : in signed(11 downto 0);
	     SEL : in std_logic_vector(1 downto 0); 
	     OUT_DATA : out signed(11 downto 0));
end entity;

architecture behaviour of Mux4to1 is
begin
		OUT_DATA <=  IN1 when SEL = "00" else
								 IN2 when SEL = "01" else
								 IN3 when SEL = "10" else
								 IN4;	
end architecture;
