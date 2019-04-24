LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY reg_unsigned IS
GENERIC ( N : integer:=11);
PORT (EN : in std_logic;
		R : IN UNSIGNED(N-1 DOWNTO 0);
		Clock, Resetn : IN STD_LOGIC;
		Q : OUT UNSIGNED(N-1 DOWNTO 0));
END reg_unsigned;

ARCHITECTURE Behavior OF reg_unsigned IS
BEGIN
	PROCESS (Clock, Resetn)
	BEGIN
		IF (Resetn = '0') THEN
			Q <= (OTHERS => '0');
		ELSIF (Clock'EVENT AND Clock = '1') THEN
			IF EN = '1' THEN
				Q <= R;
			END IF;
		END IF;
	END PROCESS;
END Behavior;