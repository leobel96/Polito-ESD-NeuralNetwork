LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY FSM IS
	PORT( CLK,RST: IN STD_LOGIC;
				START, TC_CNT_1 : IN STD_LOGIC;
				OUT_ROUND : IN signed(7 DOWNTO 0);
        RESET, EN_CNT_1, CS_MEM_A, WR_MEM_A,
				RD_MEM_A, CS_MEM_B, WR_MEM_B, RD_MEM_B,	EN_REG_1,
				EN_REG_2, EN_REG_3, EN_REG_4, SUB_ADDER_1, 
				EN_ROUND, EN_CNT_2, SEL_MUX_2, DONE : OUT STD_LOGIC;
				SEL_MUX_1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END FSM;

ARCHITECTURE Behavioural OF FSM IS
	
	TYPE State_type IS (IDLE, FILL_MEM_A, ENABLE_MEM_A, OPERATION_1, OPERATION_2, OPERATION_3, WRITE_MEM_B, POSITIVE_OUT, NOT_POSITIVE_OUT, END_STATE);
	SIGNAL PS, NS: State_type;

	BEGIN
	
	stateProgression: PROCESS(CLK, START, PS, OUT_ROUND, TC_CNT_1) --individuo il next state
		BEGIN
		CASE PS IS
			WHEN IDLE=>	
				IF(START = '1') THEN 
					NS <= FILL_MEM_A;
				ELSE
					NS <= IDLE;
				END IF;
						
			WHEN FILL_MEM_A=>	
				IF(TC_CNT_1 = '1') THEN 
					NS <= ENABLE_MEM_A;
				ELSE 
					NS <= FILL_MEM_A;
				END IF;
			
			WHEN ENABLE_MEM_A=>	
				NS <= OPERATION_1;
								
			WHEN OPERATION_1=>	
				NS <= OPERATION_2;
												
			WHEN OPERATION_2=>	 
				NS <= OPERATION_3;
								
			WHEN OPERATION_3=>
				NS <= WRITE_MEM_B;
								
			WHEN WRITE_MEM_B=>	
				IF(OUT_ROUND(7) = '0' and not (OUT_ROUND = "00000000")) THEN 
					NS <= POSITIVE_OUT;
				ELSE
					NS <= NOT_POSITIVE_OUT;
				END IF;
								
			WHEN POSITIVE_OUT=>	
				IF(TC_CNT_1 = '1') THEN
					NS <= END_STATE;
				ELSE
					NS <= ENABLE_MEM_A;
				END IF;
				
			WHEN NOT_POSITIVE_OUT=>	
				IF(TC_CNT_1 = '1') THEN
					NS <= END_STATE;
				ELSE
					NS <= ENABLE_MEM_A;
				END IF;
								
			WHEN END_STATE=>
				IF(START = '1') THEN
					NS <= IDLE;
				ELSE
					NS <= END_STATE;
				END IF;
								
			WHEN OTHERS => 
				NS <= IDLE;
				
		END CASE;					   
	END PROCESS;
				   
	stateUpdate: PROCESS(CLK,RST) -- aggiorno present state
		BEGIN
			IF RST = '0' then
				PS <= IDLE;
			ELSIF CLK'EVENT AND CLK='1' THEN
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
		EN_REG_1 <= '0';
		EN_REG_2 <= '0';
		EN_REG_3 <= '0';
		EN_REG_4 <= '0';
		SUB_ADDER_1 <= '0';
		EN_ROUND <= '0';
		EN_CNT_2 <= '0';
		SEL_MUX_1 <= "00";
		SEL_MUX_2 <= '0';
		DONE <= '0';
		
		CASE PS IS
			WHEN IDLE=>	
				RESET <= '0';
								
			WHEN FILL_MEM_A=>	
				CS_MEM_A <= '1';
				WR_MEM_A <= '0';
				EN_CNT_1 <= '1';
				
			WHEN ENABLE_MEM_A=>
				CS_MEM_A <= '1';
				RD_MEM_A <= '1';
												
			WHEN OPERATION_1=>	 
				SEL_MUX_1 <= "01";
				SUB_ADDER_1 <= '1';
				EN_REG_1 <= '1';
				EN_REG_2 <= '1';
				EN_REG_3 <= '1';
				
			WHEN OPERATION_2=>	 
				SEL_MUX_1 <= "10";
				EN_REG_4 <= '1';
				SUB_ADDER_1 <= '1';
								
			WHEN OPERATION_3=>
				SEL_MUX_1 <= "00";
				SEL_MUX_2 <= '1';
				EN_ROUND <= '1';
								
			WHEN WRITE_MEM_B=>	
				CS_MEM_B <= '1';
				WR_MEM_B <= '0';
								
			WHEN POSITIVE_OUT=>	
				EN_CNT_2 <= '1';
				EN_CNT_1 <= '1';
								
			WHEN NOT_POSITIVE_OUT=>	
				EN_CNT_1 <= '1';
				
			WHEN END_STATE=>
				DONE <= '1';
								
			WHEN OTHERS =>
		
		END CASE;
	END PROCESS;
	
END Behavioural;
