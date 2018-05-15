
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Control_Unit is
    Port ( Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           Op : in  STD_LOGIC_VECTOR (1 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (5 downto 0) := (others=>'0')
			  );
end Control_Unit;

architecture PrimerProcesadorR of Control_Unit is

begin
	
	process(Op3,Op)
	begin
		case Op is
			--when "00" => -- Branch or SETHI
				
			when "01" => -- CALL
			
			when "10" => -- Arithmetic Logic or Access memory
				case Op3 is
					when "000000" => -- ADD
						ALUOP <= "000000";
					when "010000" => -- ADDCC
						ALUOP <= "010000";
						
					when "001000" => -- ADDXCC
						ALUOP <= "001000";
						
					when "010001" => -- ANDCC
						ALUOP <= "010001";
					when "000100" => -- SUB
						ALUOP <= "000100";
						
					when "000010" => -- OR
						ALUOP <= "000010";
						
					when "010010" => -- ORCC
						ALUOP <= "010010";
					when "010110" => -- ORNCC
						ALUOP <= "010110";
					when "000110" => -- ORN
						ALUOP <= "000110";
						
					when "000001" => -- AND
						ALUOP <= "000001";
						
					when "010100" => -- SUBcc
						ALUOP <= "010100";
					when "011100" => -- SUBxcc
						ALUOP <= "011100";
					
					when "000011" => -- XOR
						ALUOP <= "000011";
					when "000111" => -- XNOR
						ALUOP <= "000111";
					when "010011" => -- XORCC
						ALUOP <= "010011";
					when "010111" => -- NXORCC
						ALUOP <= "010111";
						
					when "111100" => -- SAVE
						ALUOP <= "111100";
						
					when "111101" => -- RESTORE
						ALUOP <= "111101";
					
					when others => -- NOP
				end case;
			when others => -- Arithmetic Logic or Access memory
		end case;
	end process;

end PrimerProcesadorR;
