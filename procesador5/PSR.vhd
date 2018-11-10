library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR is
    Port ( nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
	        rst : in STD_LOGIC;
			  clk: in  STD_LOGIC;
			  cwp: in STD_LOGIC_VECTOR (1 downto 0);
			  ncwp: out STD_LOGIC_VECTOR (1 downto 0);
			  c: out STD_LOGIC);
end PSR;

architecture Behavioral of PSR is
begin
process(rst,nzvc,cwp)
begin
   if(rst='1')then
		
		c <= '0';
	else
		if(rising_edge(clk))then
			c <= nzvc(0);
		end if;
	end if;
	
end process;
ncwp <= cwp;	
end Behavioral;



