LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;                                

ENTITY testbench IS
END testbench;

ARCHITECTURE behavioural OF testbench IS                                                
	SIGNAL CLK : STD_LOGIC;
	SIGNAL DATA_IN : SIGNED(7 DOWNTO 0);
	SIGNAL DATA_OUT : SIGNED(7 DOWNTO 0);
	SIGNAL DONE : STD_LOGIC;
	SIGNAL OUTPUT_PORT : UNSIGNED(10 DOWNTO 0);
	SIGNAL RST : STD_LOGIC;
	SIGNAL START : STD_LOGIC;

	component LAB6
		port(CLK,START,RST : in std_logic;
				 DATA_IN : in signed(7 downto 0);
				 DATA_OUT : out signed(7 downto 0);
				 DONE : out std_logic;
				 OUTPUT_PORT : out unsigned(10 downto 0));
	end component;

	BEGIN
		DUT: LAB6 PORT MAP (CLK, START, RST, DATA_IN, DATA_OUT, DONE, OUTPUT_PORT);
		
	clock : PROCESS                                               
		BEGIN                                                        
			clk <= '0';
			wait for 1 ns;
			clk <= '1';
			wait for 1 ns;
	END PROCESS clock;    
																				 
	always : PROCESS                                              																																								
		BEGIN                                                         
			RST <= '0';
			START <= '0';
			DATA_IN <="00000000";
			
			wait for 4 ns;
			RST <= '1';
			
			wait for 2 ns;
			START <= '1';
			
			DATA_IN<="00000100"; 
			
			wait for 2 ns;
			DATA_IN<="00000010"; 
			
			wait for 2 ns;
			DATA_IN<="00000011"; 
			
			wait for 2 ns;
			DATA_IN<="00000100"; 
			
			wait for 2 ns;
			DATA_IN<="00000101"; 
			
			wait for 2 ns;
			DATA_IN<="00000110"; 
			
			wait for 2 ns;
			DATA_IN<="00000111";
			wait;
	END PROCESS;                                          
END behavioural;