LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY reg_sig IS
	GENERIC ( N : integer:=11);
	PORT (CLK, EN, RST : IN STD_LOGIC;
				D : IN SIGNED(N-1 DOWNTO 0);
				Q : OUT SIGNED(N-1 DOWNTO 0));
END reg_sig;

ARCHITECTURE Behavior OF reg_sig IS
BEGIN
	PROCESS (CLK, RST)
	BEGIN
		IF (RST = '0') THEN
			Q <= (OTHERS => '0');
		ELSIF (CLK'EVENT AND CLK = '1') THEN
			IF EN = '1' THEN
				Q <= D;
			END IF;
		END IF;
	END PROCESS;
END Behavior;