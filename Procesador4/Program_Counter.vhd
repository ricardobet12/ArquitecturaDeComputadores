----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:33:24 04/05/2018 
-- Design Name: 
-- Module Name:    Program_Counter - Behavioral 
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

entity Program_Counter is
    Port ( 	
				entrada_direccion : in  STD_LOGIC_VECTOR (0 downto 31);
           reset : in  STD_LOGIC;
           salida_direccion  : inout  STD_LOGIC_VECTOR (0 downto 31));
end Program_Counter;

architecture Behavioral of Program_Counter is

begin


	process(reloj, reset)
	begin
	
		if reset = '1' then
			salira_direccion<= (others=>'0');
		elsif rising_edge(reloj) then
			salida_direccion <= entrada_dirreccion;
		end if;
		
	end process;

end Behavioral;

