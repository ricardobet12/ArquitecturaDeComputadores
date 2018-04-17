--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:11:26 04/03/2018
-- Design Name:   
-- Module Name:   C:/Users/Richy/Desktop/Proyectos ISE/Procesador1/tbSumar1.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Suma
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbSumar1 IS
END tbSumar1;
 
ARCHITECTURE PrimerProcesadorR OF tbSumar1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Suma
    PORT(
         entrada2 : IN  std_logic_vector(31 downto 0);
         entrada1 : IN  std_logic_vector(31 downto 0);
         salida1 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada2 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada1 : std_logic_vector(31 downto 0) := (others => '0');
	--nueva señal 
	--signal sumar:std_logic_vector(31 downto 0);
	
 	--Outputs
   signal salida1 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   
   -- COMENTAR RELOJ constant <clock>_period : time := 10 ns;
 
BEGIN
	
	-- Instantiate the Unit Under Test (UUT)
   uut: Suma PORT MAP (
          entrada2 => entrada2,
          entrada1 => entrada1,
          salida1 => salida1
        );
		  
	

   -- Clock process definitions
   --<clock>_process :process
   --begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
	
   begin		
		entrada1 <= x"00000001";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		--entrada1 <= sumar;
		entrada1 <= entrada1;
		entrada2 <= "00000000000000000000000000000101";
		wait for 100 ns;
		
		
    --  wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
