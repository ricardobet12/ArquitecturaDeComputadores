
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port ( Op1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Op2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (5 downto 0);
			  CARRY : in  STD_LOGIC;
           ALUResult : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end ALU;

architecture PrimerProcesadorR of ALU is

begin

	process(Op1, Op2, ALUOP)
	begin
		case ALUOP is
		
			when "000001" => -- ADD
				ALUResult <= op1 + op2;
					
			when "000011" => -- AND
				ALUResult <= op1 and op2;
				
			when "010001" => -- ANDCC
				ALUResult <= op1 and op2;
				
			when "000100" => -- NAND
				ALUResult <= not(op1 and op2);
				
			when "000010" => -- OR
				ALUResult <= op1 or op2;
				
			when "000110" => -- NOR
				ALUResult <= not(op1 or op2);
				
			when "000111" => -- XOR
				ALUResult <= op1 xor op2;
				
				
			when "010000" => -- ADDcc
				ALUResult <= op1 + op2;
				
			when "001000" => -- ADDX
				ALUResult <= op1 + op2;
				
			when "001011" => -- ADDXcc
				ALUResult <= op1 + op2;
				
			when "001100" => -- SUBcc
				ALUResult <= op1 - op2;
				
			when "001101" => -- SUBX
				ALUResult <= op1 - op2 - CARRY;
				
			when "001110" => -- SUBXcc
				ALUResult <= op1 - op2;			
		
			when others => 
			
			ALUResult <= (others=>'0');
			
		end case;
		
	end process;

end PrimerProcesadorR;