library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_r_2 is
	port(in_shift_r_2: in signed (11 downto 0);
			 out_shift_r_2: out signed (11 downto 0));
end entity;

architecture structural of shift_r_2 is
begin
out_shift_r_2(11)<= in_shift_r_2(11);
out_shift_r_2(10)<= in_shift_r_2(11);
out_shift_r_2(9)<= in_shift_r_2(11);
out_shift_r_2(8)<= in_shift_r_2(10);
out_shift_r_2(7)<= in_shift_r_2(9);
out_shift_r_2(6)<= in_shift_r_2(8);
out_shift_r_2(5)<= in_shift_r_2(7);
out_shift_r_2(4)<= in_shift_r_2(6);
out_shift_r_2(3)<= in_shift_r_2(5);
out_shift_r_2(2)<= in_shift_r_2(4);
out_shift_r_2(1)<= in_shift_r_2(3);
out_shift_r_2(0)<= in_shift_r_2(2);

end architecture;