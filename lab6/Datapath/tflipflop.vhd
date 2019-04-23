library ieee;
use ieee.std_logic_1164.all;

entity tflipflop is
	port (t, clock, clear : in std_logic;
				Q_neg, Q: buffer std_logic);
end entity;

architecture structural of tflipflop is
	signal D : std_logic;
	component dflipflop
		port (D, Clock, Resetn : in STD_LOGIC;
					Q : out STD_LOGIC);
	end component;
	
	begin
	D <= (not(t) and Q) or (t and Q_neg);
	ff : dflipflop port map(D, clock, clear, Q);
	Q_neg <= not(Q);
end architecture;
	  
	  