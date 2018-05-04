
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR_Modifier is
    Port ( muxOut : in  STD_LOGIC_VECTOR (31 downto 0);
           UcOut : in  STD_LOGIC_VECTOR (5 downto 0);
           aluOut : in  STD_LOGIC_VECTOR (31 downto 0);
           rfOut1 : in  STD_LOGIC_VECTOR (31 downto 0);
           nzvc : out  STD_LOGIC_VECTOR (3 downto 0));
end PSR_Modifier;

architecture Behavioral of PSR_Modifier is
begin
process (rfOut1, muxOut, aluOut, UcOut)
        begin
					--ANDCC - ANDNCC - ORCC - ORNCC - XORCC - XNORCC
					if(UcOut="010001" or UcOut="010101" or UcOut="010010" or UcOut="010110" or 
						UcOut="010011" or UcOut="010111")then
							 nzvc(3) <= aluOut(31);
                    if aluOut = "00000000000000000000000000000000" then 
                        nzvc(2) <= '1';
                    else
                        nzvc(2) <= '0';
                    end if;
                    nzvc(1) <='0'; 
                    nzvc(0) <='0';
                else
						
                -- ADDcc or ADDxcc
                if UcOut = "010000" or UcOut = "011000" then
                    nzvc(3) <= aluOut(31);
                    if aluOut = "00000000000000000000000000000000" then 
                        nzvc(2) <= '1';
                    else
                        nzvc(2) <= '0';
                    end if;
                    nzvc(1) <= (rfOut1(31) and muxOut(31) and (not aluOut(31))) or ((not rfOut1(31)) and (not muxOut(31)) and aluOut(31));
                    nzvc(0) <= (rfOut1(31) and muxOut(31)) or ((not aluOut(31)) and (rfOut1(31) or muxOut(31)));
                else
                
                --SUBcc or SUBxcc
                if UcOut = "010100" or UcOut = "011100" then
                    nzvc(3) <= aluOut(31);
                    if aluOut = "00000000000000000000000000000000" then 
                        nzvc(2) <= '1';
                    else
                        nzvc(2) <= '0';
                    end if;
                    nzvc(1) <= (rfOut1(31) and (not muxOut(31)) and (not aluOut(31))) or ((not rfOut1(31)) and muxOut(31) and aluOut(31));
                    nzvc(0) <= ((not rfOut1(31)) and muxOut(31)) or (aluOut(31) and ((not rfOut1(31)) or muxOut(31)));
                end if; 
				end if; 
			end if; 					 
end process;
end Behavioral;