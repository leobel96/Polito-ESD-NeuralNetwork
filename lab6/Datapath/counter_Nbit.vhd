library ieee;
use ieee.std_logic_1164.all;

entity counter_Nbit is
	generic(N : integer := 16);
	port(EN, CLK, RST : in std_logic;
		   OUT_CNT : out std_logic_vector(N-1 downto 0));
end entity;

architecture structural of counter_Nbit is
	component tflipflop
		port (t, clock, clear : in std_logic;
					Q_neg, Q: buffer std_logic);
	end component;
	
	signal Q, Q_neg, T : std_logic_vector(N-1 downto 0);
	
	begin
	T(0) <= EN;
	GEN_CNT: for i in 0 to N-1 generate
		GEN_IF: if i > 0 generate
			T(i) <= T(i-1) and Q(i-1);
		end generate;
		TFF_X : tflipflop port map(T(i), CLK, RST, Q_neg(i), Q(i));
	end generate;
	OUT_CNT <= Q;
end architecture;