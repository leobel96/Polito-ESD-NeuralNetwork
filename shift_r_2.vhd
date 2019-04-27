library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity shift_r_2 is
port( Q_FF_4: in signed (11 downto 0);
out_shift_r_2: out signed (11 downto 0));
end entity;
architecture structural of shift_r_2 is
begin
out_shift_r_2(11)<= Q_FF_4(11);
out_shift_r_2(10)<= '0';
out_shift_r_2(9)<= '0';
out_shift_r_2(8)<= Q_FF_4(10);
out_shift_r_2(7)<= Q_FF_4(9);
out_shift_r_2(6)<= Q_FF_4(8);
out_shift_r_2(5)<= Q_FF_4(7);
out_shift_r_2(4)<= Q_FF_4(6);
out_shift_r_2(3)<= Q_FF_4(5);
out_shift_r_2(2)<= Q_FF_4(4);
out_shift_r_2(1)<= Q_FF_4(3);
out_shift_r_2(0)<= Q_FF_4(2);

end architecture;