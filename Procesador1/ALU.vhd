----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:48:14 04/09/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( Op1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Op2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUResult : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture PrimerProcesadorR of Arithmetic_Logic_Unit is

begin

	process(Op1, Op2, ALUOP)
	begin
		case ALUOP is
			when "000000" => -- Add
				ALUResult <= Op1 + Op2;
			when "000100" => -- Sub
				ALUResult <= Op1 - Op2;
			when "000010" => -- OR
				ALUResult <= Op1 or Op2;
			when "000110" => -- ORN
				ALUResult <= Op1 or not(Op2);
			when "000001" => -- AND
				ALUResult <= Op1 and Op2;
			when "000101" => -- ANDN
				ALUResult <= Op1 and not(Op2);
			when "000011" => -- XOR
				ALUResult <= Op1 xor Op2;
			when "000111" => -- XNOR
				ALUResult <= Op1 xor not(Op2);
			when others =>
		end case;
	end process;

end PrimerProcesadorR;
