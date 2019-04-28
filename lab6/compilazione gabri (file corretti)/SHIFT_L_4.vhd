library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_l_4 is 
port (Q_FF_1: in signed (7 downto 0);
	  out_shift_l_4: out signed (11 downto 0));
end entity;

architecture structural of shift_l_4 is
begin
out_shift_l_4(11)<= Q_FF_1(7);
out_shift_l_4(10)<= Q_FF_1(6);
out_shift_l_4(9)<= Q_FF_1(5);
out_shift_l_4(8)<= Q_FF_1(4);
out_shift_l_4(7)<= Q_FF_1(3);
out_shift_l_4(6)<= Q_FF_1(2);
out_shift_l_4(5)<= Q_FF_1(1);
out_shift_l_4(4)<= Q_FF_1(0);
out_shift_l_4(3)<= '0';
out_shift_l_4(2)<= '0';
out_shift_l_4(1)<= '0';
out_shift_l_4(0)<= '0';
end architecture;
