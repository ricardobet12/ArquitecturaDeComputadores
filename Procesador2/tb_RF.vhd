LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY tb_RF IS
END tb_RF;
 
ARCHITECTURE PrimerProcesadorR OF tb_RF IS 
 
    COMPONENT RF
    PORT(
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rd : IN  std_logic_vector(4 downto 0);
         Reset : IN  std_logic;
         DWR : IN  std_logic_vector(31 downto 0);
         CRs1 : OUT  std_logic_vector(31 downto 0);
         CRs2 : OUT  std_logic_vector(31 downto 0);
			Crd : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rd : std_logic_vector(4 downto 0) := (others => '0');
   signal Reset : std_logic := '0';
   signal DWR : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal CRs1 : std_logic_vector(31 downto 0);
   signal CRs2 : std_logic_vector(31 downto 0);
	signal Crd : std_logic_vector(31 downto 0);

   -- Clock period definitions
  -- constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rd => Rd,
          Reset => Reset,
          DWR => DWR,
          CRs1 => CRs1,
          CRs2 => CRs2,
			 Crd => Crd
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		 Rs1 <= "11111";
		Rs2 <= "00001";
		Rd <= "00001";
		Reset <= '0';
		DWR <= "11111111111111111111111111111111";
      wait for 100 ns;	

     -- wait for clk_period*10;

      -- insert stimulus here 
      wait;
   end process;
END;
