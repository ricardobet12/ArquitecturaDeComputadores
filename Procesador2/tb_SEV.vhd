
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_SEV IS
END tb_SEV;
 
ARCHITECTURE PrimerProcesadorR OF tb_SEV IS 
 
    COMPONENT SEV
    PORT(
         imm : IN  std_logic_vector(12 downto 0);
         salidaImm : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal imm : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal salidaImm : std_logic_vector(31 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEV PORT MAP (
          imm => imm,
          salidaImm => salidaImm
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      imm <= "1000000000001";
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;