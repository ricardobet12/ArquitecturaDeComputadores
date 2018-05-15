
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Control_Unit IS
END TB_Control_Unit;
 
ARCHITECTURE PrimerProcesadorR OF TB_Control_Unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control_Unit
    PORT(
         Op3 : IN  std_logic_vector(5 downto 0);
         Op : IN  std_logic_vector(1 downto 0);
         ALUOP : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Op3 : std_logic_vector(5 downto 0) := (others => '0');
   signal Op : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal ALUOP : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control_Unit PORT MAP (
          Op3 => Op3,
          Op => Op,
          ALUOP => ALUOP
        );
 

   -- Stimulus process
   stim_proc: process
   begin
      Op <= "00";
		Op3 <= "000100";
      wait for 10 ns;
		


      -- insert stimulus here 

      wait;
   end process;

END;
