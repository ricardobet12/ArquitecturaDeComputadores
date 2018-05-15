----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:38:56 04/05/2018 
-- Design Name: 
-- Module Name:    Pc - Behavioral 
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pc is
    Port ( entrada_Pc : in  STD_LOGIC_VECTOR (0 downto 31);
           reloj : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salida_Pc : out  STD_LOGIC_VECTOR (0 downto 31));
end Pc;

architecture Behavioral of Pc is

begin
	process (entrada_Pc, reset, reloj)
	begin
		if (reset = '1')then
	
		else
			if(rising_edge(reloj))then
				salida_Pc <= entrada_Pc;
			end if;
		end if;
	end process;
	
end Behavioral;

