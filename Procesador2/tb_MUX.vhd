
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_MUX IS
END tb_MUX;
 
ARCHITECTURE behavior OF tb_MUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         entrada1 : IN  std_logic_vector(31 downto 0);
         imm : IN  std_logic_vector(12 downto 0);
         senal_1 : IN  std_logic;
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada1 : std_logic_vector(31 downto 0) := (others => '0');
   signal imm : std_logic_vector(12 downto 0) := (others => '0');
   signal senal_1 : std_logic := '0';

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          entrada1 => entrada1,
          imm => imm,
          senal_1 => senal_1,
          salida => salida
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      entrada1 <= "00000000000000000000000000000011";
		senal_1 <= '1';
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
