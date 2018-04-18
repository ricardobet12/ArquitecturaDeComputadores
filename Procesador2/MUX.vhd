
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (31 downto 0);
           imm : in  STD_LOGIC_VECTOR (31 downto 0);
           senal_1 : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
process(entrada1,imm,senal_1)
begin
	if(senal_1 = '1')then
		salida <= entrada1;
	else
		salida <= imm;
	end if;
end process;

end Behavioral;

