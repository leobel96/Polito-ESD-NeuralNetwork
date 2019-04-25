LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FSM IS
	PORT( CLK : IN STD_LOGIC;
				START, TC_CNT_1, OUT_ROUND_7 : IN STD_LOGIC;
        RESET, EN_CNT_1, CS_MEM_A, WR_MEM_A,
				RD_MEM_A, CS_MEM_B, WR_MEM_B, RD_MEM_B,	EN_FF_1,
				EN_FF_2, EN_FF_3, EN_FF_4, EN_ADDER_1, SUB_ADDER_1, 
				EN_ROUND, EN_CNT_2, DONE : OUT STD_LOGIC;
				SEL_MUX_1, SEL_MUX_2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END FSM;

ARCHITECTURE Behavioural OF FSM IS
	
	TYPE State_type IS (IDLE, S1, S2, S3, S4, S5, S6, S7, S8);
	SIGNAL PS, NS: State_type;

	BEGIN
	
	stateProgression: PROCESS(CLK, START, PS, OUT_ROUND_7, TC_CNT_1) --individuo il next state
		BEGIN
		CASE PS IS
			WHEN IDLE=>	
				IF(START = '1') THEN 
					NS <= S1;
				ELSE
					NS <= IDLE;
				END IF;
						
			WHEN S1=>	
				IF(TC_CNT_1 = '1') THEN 
					NS <= S2;
				ELSE 
					NS <= S1;
				END IF;
								
			WHEN S2=>	
				NS <= S3;
												
			WHEN S3=>	 
				NS <= S4;
								
			WHEN S4=>
				NS <= S5;
								
			WHEN S5=>	
				IF(OUT_ROUND_7 = '0') THEN 
					NS <= S6;
				ELSE
					NS <= S7;
				END IF;
								
			WHEN S6=>	
				IF(TC_CNT_1 = '1') THEN
					NS <= S8;
				ELSE
					NS <= S2;
				END IF;
				
			WHEN S7=>	
				IF(TC_CNT_1 = '1') THEN
					NS <= S8;
				ELSE
					NS <= S2;
				END IF;
								
			WHEN S8=>
				IF(START = '1') THEN
					NS <= IDLE;
				ELSE
					NS <= S8;
				END IF;
								
			WHEN OTHERS => 
				NS <= IDLE;
				
		END CASE;					   
	END PROCESS;
				   
	stateUpdate: PROCESS(CLK) -- aggiorno present state
		BEGIN
			IF CLK'EVENT AND CLK='1' THEN
					PS<=NS;
			END IF;
	END PROCESS;
	
  outputUpdate: PROCESS(PS, CLK) -- aggiorno le uscite
		BEGIN
		
		RESET <= '1';
		EN_CNT_1 <= '0';
		CS_MEM_A <= '0';
		WR_MEM_A <= '1';
		RD_MEM_A <= '0';
		CS_MEM_B <= '0';
		WR_MEM_B <= '1';
		RD_MEM_B <= '0';
		EN_FF_1 <= '0';
		EN_FF_2 <= '0';
		EN_FF_3 <= '0';
		EN_FF_4 <= '0';
		EN_ADDER_1 <= '0';
		SUB_ADDER_1 <= '0';
		EN_ROUND <= '0';
		EN_CNT_2 <= '0';
		SEL_MUX_1 <= "00";
		SEL_MUX_2 <= "00";
		DONE <= '0';
		
		CASE PS IS
			WHEN IDLE=>	
				RESET <= '0';
								
			WHEN S1=>	
				CS_MEM_A <= '1';
				WR_MEM_A <= '0';
				EN_CNT_1 <= '1';
												
			WHEN S2=>	 
				SEL_MUX_1 <= "01";
				SEL_MUX_2 <= "01";
				CS_MEM_A <= '1';
				RD_MEM_A <= '1';
				SUB_ADDER_1 <= '1';
				EN_ADDER_1 <= '1';
				EN_FF_1 <= '1';
				EN_FF_2 <= '1';
				EN_FF_3 <= '1';
				
			WHEN S3=>	 
				SEL_MUX_1 <= "10";
				SEL_MUX_2 <= "00";
				EN_FF_4 <= '1';
				SUB_ADDER_1 <= '1';
				EN_ADDER_1 <= '1';
								
			WHEN S4=>
				SEL_MUX_1 <= "00";
				SEL_MUX_2 <= "10";
				EN_ADDER_1 <= '1';
				EN_ROUND <= '1';
								
			WHEN S5=>	
				CS_MEM_B <= '1';
				WR_MEM_B <= '0';
								
			WHEN S6=>	
				EN_CNT_2 <= '1';
				EN_CNT_1 <= '1';
								
			WHEN S7=>	
				EN_CNT_1 <= '1';
				
			WHEN S8=>
				DONE <= '1';
								
			WHEN OTHERS =>
		
		END CASE;
	END PROCESS;
	
END Behavioural;
