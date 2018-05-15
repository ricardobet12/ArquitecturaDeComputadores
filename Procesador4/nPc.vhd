library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity nPc is
    Port ( entrada_nPC : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida_nPC : out  STD_LOGIC_VECTOR (31 downto 0));
end nPc;

architecture PrimerProcesadorR of nPc is

begin
	process (entrada_nPC, reset, clk)
	begin
		if (reset = '1')then
		salida_nPC <= "00000000000000000000000000000000";
		else
			if(rising_edge(clk))then
				salida_nPC <= entrada_nPC;
			end if;
		end if;
	end process;


end PrimerProcesadorR;

