
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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

