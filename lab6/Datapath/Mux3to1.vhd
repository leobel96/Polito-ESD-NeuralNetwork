library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux3to1 is
	port(IN1,IN2,IN3 : in signed(11 downto 0);
	     S : in std_logic_vector(1 downto 0); 
	     OUT_DATA : out signed(11 downto 0)
	     );
end entity;

architecture behaviour of Mux3to1 is
begin
		OUT_DATA <=  IN1 when S = "00" else
						 IN2 when S = "01" else
						 IN3 when S = "10" else
						 IN1 when S = "11";		
end architecture;
