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
    Port ( 
			  Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Reset : in  STD_LOGIC;
           DWR : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0) := (others=>'0');
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0) := (others=>'0');
			  Crd : out  STD_LOGIC_VECTOR (31 downto 0) := (others=>'0')
			  );
			  
end RF;

architecture PrimerProcesadorR of RF is

type memory_type is array (0 to 31) of std_logic_vector (31 downto 0);
	signal memory : memory_type := ( x"00000000");
										
begin
process(Rs1,Rs2,Rd,Reset,DWR)
		
begin
	if(reset = '1')then
				CRs1 <= (others=>'0');
				CRs2 <= (others=>'0');
			
				memory <= (others => x"00000000");
			else
				CRs1 <= memory(conv_integer(Rs1)); --asigna al registro fuente 1 a la alu
				CRs2 <= memory(conv_integer(Rs2)); --debe ir al multiplexor para compararse con el inmediato
				Crd <= memory(conv_integer(Rd));
				
			if(Rd  /= "00000")then
					memory(conv_integer(Rd)) <= DWR;
					
			end if;
	end if;
end process;
end PrimerProcesadorR;