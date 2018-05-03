
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR is
    Port ( NZVC : in  STD_LOGIC_VECTOR (3 downto 0);
           psrOutToAlu : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end PSR;

architecture Behavioral of PSR is

begin
process(reset, clk, NZVC)
        begin
        
            if (reset= '1') then         
                 psrOutToAlu <= '0';
            else
                if (rising_edge(clk)) then
                    psrOutToAlu <= NZVC(0);
                end if;
            end if;
    end process;

end Behavioral;

