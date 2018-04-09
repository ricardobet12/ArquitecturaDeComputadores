----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:16 04/03/2018 
-- Design Name: 
-- Module Name:    Suma - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Suma is
    Port ( entrada2 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada1 : in  STD_LOGIC_VECTOR (31 downto 0);
           salida1 : out  STD_LOGIC_VECTOR (31 downto 0));
end Suma;

architecture PrimerProcesadorR of Suma is


begin

PROCESS (entrada2, entrada1) IS
BEGIN
	salida1 <= std_logic_vector(UNSIGNED(entrada2) + UNSIGNED(entrada1));
END PROCESS;

end PrimerProcesadorR;

