----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:28:11 04/07/2018 
-- Design Name: 
-- Module Name:    OC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Control_Unit is
    Port ( Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           Op : in  STD_LOGIC_VECTOR (1 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (5 downto 0) := (others=>'0')
			  );
end Control_Unit;

architecture Behavioral of UC is

begin
	
	process(Op3,Op)
	begin
		case Op is
			when "00" => -- Branch or SETHI
				
			when "01" => -- CALL
			
			when "10" => 
				case Op3 is
					when "000000" => -- ADD
						ALUOP <= "000000";
					when "000100" => -- SUB
						ALUOP <= "000100";
					when "000010" => -- OR
						ALUOP <= "000010";
					when "000110" => -- ORN
						ALUOP <= "000110";
					when "000001" => -- AND
						ALUOP <= "000001";
					when "000101" => -- ANDN
						ALUOP <= "000101";
					when "000011" => -- XOR
						ALUOP <= "000011";
					when "000111" => -- XNOR
						ALUOP <= "000111";
					when others => -- NOP
				end case;
			when others => 
		end case;
	end process;

end Behavioral;