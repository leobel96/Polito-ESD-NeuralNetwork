library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_r_1 is
	port (data_out_mem_a: in signed (7 downto 0);
			  out_shift_r_1: out signed (7 downto 0));
end entity;

architecture structural of shift_r_1 is
begin
out_shift_r_1(7)<=data_out_mem_a(7); 
out_shift_r_1(6)<=data_out_mem_a(7); 
out_shift_r_1(5)<=data_out_mem_a(6);
out_shift_r_1(4)<=data_out_mem_a(5);
out_shift_r_1(3)<=data_out_mem_a(4);
out_shift_r_1(2)<=data_out_mem_a(3);
out_shift_r_1(1)<=data_out_mem_a(2);
out_shift_r_1(0)<=data_out_mem_a(1);
end architecture;