
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_procesador2 IS
END test_procesador2;
 
ARCHITECTURE behavior OF test_procesador2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesador2
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         resultadoProcesador : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal resultadoProcesador : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesador2 PORT MAP (
          reset => reset,
          clk => clk,
          resultadoProcesador => resultadoProcesador
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
      reset <= '1';
      wait for 100 ns;	
		reset <= '0';
      
      -- insert stimulus here 

      wait;
   end process;

END;
