use std.textio.all;
signal data_in : signed(7 downto 0);

file_read: process(reset,clk)
  variable input_line : line;
  variable input_tmp : integer := 0;
  file input_file : text open read_mode is "inputs.txt"; --creo un oggetto di tipo text che contiene l'intero file
  
  begin
    if(reset = '1')then
      data_in <= (others => '0');
    elsif(rising_edge(clk))then
      if not endfile(input_file)then  --se non ha finito di leggere il file
        readline(input_file, input_line); --salva una riga del file in input_line
        read(input_line,input_tmp); --salva il numero nella riga in input_tmp
        data_in <= to_signed(input_tmp,8); --converti input_tmp in signed
      end if;
    end if;
end process;
