LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_PSR_Modifier IS
END tb_PSR_Modifier;
 
ARCHITECTURE behavior OF tb_PSR_Modifier IS 

    COMPONENT PSR_Modifier
    PORT(
         muxOut : IN  std_logic_vector(31 downto 0);
         UcOut : IN  std_logic_vector(5 downto 0);
         aluOut : IN  std_logic_vector(31 downto 0);
         rfOut1 : IN  std_logic_vector(31 downto 0);
         nzvc : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal muxOut : std_logic_vector(31 downto 0) := (others => '0');
   signal UcOut : std_logic_vector(5 downto 0) := (others => '0');
   signal aluOut : std_logic_vector(31 downto 0) := (others => '0');
   signal rfOut1 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal nzvc : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR_Modifier PORT MAP (
          muxOut => muxOut,
          UcOut => UcOut,
          aluOut => aluOut,
          rfOut1 => rfOut1,
          nzvc => nzvc
        );

   -- Stimulus process
   stim_proc: process
   begin	
	
	UcOut <= "011000";
	aluOut <="11111111111111111111111111111111";
	rfOut1 <="11111111111111111111111111111111";
	muxOut <="11111111111111111111111111111111";
      wait for 100 ns;	

      wait;
   end process;

END;