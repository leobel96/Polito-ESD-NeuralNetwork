library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_r_1 is
	port (in_shift_r_1: in signed (7 downto 0);
			  out_shift_r_1: out signed (11 downto 0));
end entity;

architecture structural of shift_r_1 is
begin
out_shift_r_1(11)<=in_shift_r_1(7);
out_shift_r_1(10)<=in_shift_r_1(7);
out_shift_r_1(9)<=in_shift_r_1(7);
out_shift_r_1(8)<=in_shift_r_1(7);
out_shift_r_1(7)<=in_shift_r_1(7); 
out_shift_r_1(6)<=in_shift_r_1(7); 
out_shift_r_1(5)<=in_shift_r_1(6);
out_shift_r_1(4)<=in_shift_r_1(5);
out_shift_r_1(3)<=in_shift_r_1(4);
out_shift_r_1(2)<=in_shift_r_1(3);
out_shift_r_1(1)<=in_shift_r_1(2);
out_shift_r_1(0)<=in_shift_r_1(1);
end architecture;