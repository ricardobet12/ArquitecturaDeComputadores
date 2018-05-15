library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SEV is
    Port ( imm : in  STD_LOGIC_VECTOR (12 downto 0);
           salidaImm : out  STD_LOGIC_VECTOR (31 downto 0));
end SEV;

architecture PrimerProcesadorR of SEV is

begin

process(imm)
	begin
		if(imm(12) = '0')then
			salidaImm(12 downto 0) <= imm;
			salidaImm(31 downto 13) <= "0000000000000000000";
		else
			salidaImm(12 downto 0) <= imm;
			salidaImm(31 downto 13) <= "1111111111111111111";
		end if;
end process;

end PrimerProcesadorR;

