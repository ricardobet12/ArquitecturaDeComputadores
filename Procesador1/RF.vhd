----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:29:30 04/05/2018 
-- Design Name: 
-- Module Name:    RF - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF is
    Port ( clk : in STD_LOGIC;
			  Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Reset : in  STD_LOGIC;
			  EnableWriting : in STD_LOGIC;
           DWR : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0) := (others=>'0');
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0) := (others=>'0')
			  );
			  
end RF;

architecture PrimerProcesadorR of RF is

type memory_type is array (0 to 39) of std_logic_vector (31 downto 0);
	signal memory : memory_type := (others => (others=>'0'));


begin

process(clk,Rs1,Rs2,Rd,Reset,EnableWriting,DWR)
	begin
		
		if Reset = '1' then
				memory <= (others => x"00000000");
				CRs1 <= (others=>'0');
				CRs2 <= (others=>'0');
		else
		
			if(rising_edge(clk)) then
				
				if EnableWriting = '1' then
					memory(conv_integer(Rd)) <= DWR;
				end if;
				
				CRs1 <= memory(conv_integer(Rs1));
				CRs2 <= memory(conv_integer(Rs2));
				
				-- Se debe resetear el valor del registro %g0 por que siempre debe valer ceros --
				memory(0) <= (others => '0');
			end if;
			
		end if;
		
	end process;		

end PrimerProcesadorR;