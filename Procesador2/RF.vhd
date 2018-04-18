
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity RF is
    Port ( 
			  Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Reset : in  STD_LOGIC;
           DWR : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0); 
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  Crd : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
			  
end RF;

architecture Behavioral of RF is

type memory_type is array (0 to 31) of std_logic_vector (31 downto 0);
	signal memory: memory_type := ( x"00000000",
												x"00000001",
												x"00000002",
												x"00000003",
												x"00000004",
												x"00000005",
												x"00000006",
												x"00000007",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A",
												x"0000000A"
												);									
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
end Behavioral;