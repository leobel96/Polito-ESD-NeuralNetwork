LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
ENTITY FSM IS
	PORT( CLK,RST: IN STD_LOGIC;
				START, TC_CNT_1 : IN STD_LOGIC;
				OUT_ROUND : IN signed(7 DOWNTO 0);
        RESET, EN_CNT_1, CS_MEM_A, WR_MEM_A,
				RD_MEM_A, CS_MEM_B, WR_MEM_B, RD_MEM_B,	EN_FF_1,
				EN_FF_2, EN_FF_3, EN_FF_4, SUB_ADDER_1, 
				EN_ROUND, EN_CNT_2, DONE : OUT STD_LOGIC;
				SEL_MUX_1, SEL_MUX_2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END FSM;

ARCHITECTURE Behavioural OF FSM IS
	
	TYPE State_type IS (IDLE, S1, S2, S3, S4, S5, S6, S7, S8);
	SIGNAL PS, NS: State_type;

	BEGIN
	
	stateProgression: PROCESS(CLK, START, PS, OUT_ROUND, TC_CNT_1) --individuo il next state
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
				IF(OUT_ROUND(7) = '0' and not (OUT_ROUND = "00000000")) THEN 
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
				   
	stateUpdate: PROCESS(CLK,RST) -- aggiorno present state
		BEGIN
			IF RST = '0' then
				PS <= S1;
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
		EN_FF_1 <= '0';
		EN_FF_2 <= '0';
		EN_FF_3 <= '0';
		EN_FF_4 <= '0';
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
				EN_FF_1 <= '1';
				EN_FF_2 <= '1';
				EN_FF_3 <= '1';
				
			WHEN S3=>	 
				SEL_MUX_1 <= "10";
				SEL_MUX_2 <= "00";
				EN_FF_4 <= '1';
				SUB_ADDER_1 <= '1';
								
			WHEN S4=>
				SEL_MUX_1 <= "00";
				SEL_MUX_2 <= "10";
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
