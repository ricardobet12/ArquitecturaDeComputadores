
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR is
    Port ( NZVC : in  STD_LOGIC_VECTOR (3 downto 0);
           psrOutToAlu : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  ncwp: in STD_LOGIC_VECTOR (1 downto 0);--Permite el cambio de ventana
			  cwp: out STD_LOGIC_VECTOR (1 downto 0));
end PSR;

architecture Behavioral of PSR is

begin
process(reset, clk, NZVC)
        begin
        
            if (reset= '1') then         
                 psrOutToAlu <= '0';
					  cwp<="00";
            else
                if (rising_edge(clk)) then
                    psrOutToAlu <= NZVC(0);
						  cwp<=ncwp;
                end if;
            end if;
    end process;

end Behavioral;

