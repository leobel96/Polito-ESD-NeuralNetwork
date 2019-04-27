library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SHIFT_L_4 is 
port (Q_FF_1: in signed (7 downto 0);
	  output_l_shift_4: out signed (11 downto 0));
end entity;

architecture structural of SHIFT_L_4 is
begin
output_l_shift_4(11)<= Q_FF_1(7);
output_l_shift_4(10)<= Q_FF_1(6);
output_l_shift_4(9)<= Q_FF_1(5);
output_l_shift_4(8)<= Q_FF_1(4);
output_l_shift_4(7)<= Q_FF_1(3);
output_l_shift_4(6)<= Q_FF_1(2);
output_l_shift_4(5)<= Q_FF_1(1);
output_l_shift_4(4)<= Q_FF_1(0);
output_l_shift_4(3)<= '0';
output_l_shift_4(2)<= '0';
output_l_shift_4(1)<= '0';
output_l_shift_4(0)<= '0';
end architecture;
