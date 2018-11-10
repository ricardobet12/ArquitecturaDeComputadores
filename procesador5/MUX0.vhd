library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX0 is
    Port ( SDR : in  STD_LOGIC;
           S_DM : in  STD_LOGIC_VECTOR (31 downto 0);
           S_Alu : in  STD_LOGIC_VECTOR (31 downto 0);
           S_To_RF : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX0;

architecture Behavioral of MUX0 is

begin
process(S_DM,S_Alu,SDR)
begin
	if(SDR = '0')then
		S_To_RF <= S_Alu;
	elsif(SDR = '1')then	
		S_To_RF <= S_DM;
	end if;
end process;

end Behavioral;

