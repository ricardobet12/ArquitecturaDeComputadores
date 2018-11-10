LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_procesador_conectado IS
END TB_procesador_conectado;
 
ARCHITECTURE behavior OF TB_procesador_conectado IS 

    COMPONENT Procesador_conectado
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         Salida_procesador : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Salida_procesador : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Procesador_conectado PORT MAP (
          rst => rst,
          clk => clk,
          Salida_procesador => Salida_procesador
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
		rst <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		rst <= '0';	
      wait;
   end process;

END;
