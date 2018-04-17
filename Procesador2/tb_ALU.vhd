
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE PrimerProcesadorR OF tb_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Op1 : IN  std_logic_vector(31 downto 0);
         Op2 : IN  std_logic_vector(31 downto 0);
         ALUOP : IN  std_logic_vector(5 downto 0);
         ALUResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Op1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Op2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUOP : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal ALUResult : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Op1 => Op1,
          Op2 => Op2,
          ALUOP => ALUOP,
          ALUResult => ALUResult
        );

   -- Stimulus process
   stim_proc: process
   begin
		ALUOP <= "000001"; -- +
		Op1 <= "00000000000000000000000000000011";
		Op2 <= "00000000000000000000000000000100";
      wait for 10 ns;
		
		
   end process;

END;