----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:49:25 04/05/2018 
-- Design Name: 
-- Module Name:    Pn - Behavioral 
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

entity Pn is
    Port ( entrada_Pc : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida_Pc : out  STD_LOGIC_VECTOR (31 downto 0));
end Pn;

architecture Behavioral of Pn is

begin

process (entrada_Pc, reset, clk)
	begin
		if (reset = '1')then
		salida_Pc <= "00000000000000000000000000000000";
		else
			if(rising_edge(clk))then
				salida_Pc <= entrada_Pc;
			end if;
		end if;
	end process;

end Behavioral;

