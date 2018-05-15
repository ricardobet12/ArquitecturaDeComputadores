LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_IM IS
END tb_IM;
 
ARCHITECTURE PrimerProcesadorR OF tb_IM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IM
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         outInstruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal outInstruction : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IM PORT MAP (
          address => address,
          clk => clk,
          reset => reset,
          outInstruction => outInstruction
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      address<= "11111111111111111111111111111111";
      wait for 10 ns;
	   address<= "00000000000000000000000000000100";
      wait for 10 ns;
		address<= "00000000000111111111111111111111";
      wait for 10 ns;
		address<= "00000000000000000000000011111111";
      wait for 10 ns;
		address<= "00000000000000000000000000000000";
		wait;

      wait;
   end process;

END;
