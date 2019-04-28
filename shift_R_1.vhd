library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity shift_r_1 is
port ( Q_FF_1: in signed (7 downto 0);
out_shift_r_1: out signed (7 downto 0));
end entity;

architecture structural of shift_r_1 is
begin
out_shift_r_1(7)<=Q_FF_1(7); 
out_shift_r_1(6)='0'; 
out_shift_r_1(5)<=Q_FF_1(6);
out_shift_r_1(4)<=Q_FF_1(5);
out_shift_r_1(3)<=Q_FF_1(4);
out_shift_r_1(2)<=Q_FF_1(3);
out_shift_r_1(1)<=Q_FF_1(2);
out_shift_r_1(0)<=Q_FF_1(1);
end architecture;