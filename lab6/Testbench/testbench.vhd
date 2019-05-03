LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;                               

ENTITY testbench IS
END testbench;

ARCHITECTURE behavioural OF testbench IS                                                
	SIGNAL CLK : STD_LOGIC;
	SIGNAL DATA_IN : SIGNED(7 DOWNTO 0);
	SIGNAL DONE : STD_LOGIC;
	SIGNAL OUTPUT_PORT : UNSIGNED(10 DOWNTO 0);
	SIGNAL RST : STD_LOGIC;
	SIGNAL START : STD_LOGIC;
	SIGNAL EN_READ : STD_LOGIC;

	component LAB6
		port(CLK,START,RST : in std_logic;
				 DATA_IN : in signed(7 downto 0);
				 DONE : out std_logic;
				 OUTPUT_PORT : out unsigned(10 downto 0));
	end component;

	BEGIN
		DUT: LAB6 PORT MAP (CLK, START, RST, DATA_IN, DONE, OUTPUT_PORT);

	file_read: process(clk)
		variable input_line : line;
		variable input_tmp : integer := 0;
		file input_file : text; --creo un oggetto di tipo text che contiene l'intero file
		begin
			file_open(input_file, "inputs.txt", read_mode);
			if(rising_edge(clk)) then
				if EN_READ = '1' then
					if not endfile(input_file) then  --se non ha finito di leggere il file
						readline(input_file, input_line); --salva una riga del file in input_line
						read(input_line,input_tmp); --salva il numero nella riga in input_tmp
						data_in <= to_signed(input_tmp,8); --converti input_tmp in signed
						-- file_close(input_file);
					end if;
				end if;
			end if;
	end process;

		
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
			EN_READ <= '0';
			
			wait for 4 ns;
			RST <= '1';

			wait for 2 ns;
			START <= '1';
			EN_READ <= '1';
			
			wait for 2ns;
			START <= '0';
			

			wait;
	END PROCESS;                                          
END behavioural;