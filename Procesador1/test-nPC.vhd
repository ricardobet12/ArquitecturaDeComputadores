--------------------------------------------------------------------------------
-- Company: 
-- Engineer:  Ricardo betancourth bolivar
--
-- Create Date:   19:56:11 04/02/2018
-- Design Name:   
-- Module Name:   C:/Users/Richy/Desktop/Proyectos ISE/Procesador1/test-nPC.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nPc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY test_nPC IS
END test_nPC;
 
ARCHITECTURE PrimerProcesadorR OF test_nPC IS 
 
   
    COMPONENT nPc
    PORT(
         entrada_nPC : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         salida_nPC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Entradas
   signal entrada_nPC : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Salidas
   signal salida_nPC : std_logic_vector(31 downto 0);

   -- Periodos del reloj
   constant clk_period : time := 20 ns;
 
BEGIN
 
   uut: nPc PORT MAP (
          entrada_nPC => entrada_nPC,
          reset => reset,
          clk => clk,
          salida_nPC => salida_nPC
        );

   
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Simulacion del proceso
   stim_proc: process
   begin		
		reset <= '1';
      wait for 100 ns;
		reset <= '0';
		entrada_nPC <= "00000000000000000000000000000111";
		wait for 100 ns;
		entrada_nPC <= "00000000000000000000000000000101";
		wait for 100 ns;
		entrada_nPC <= "00000000000000000000000000000100";
		
   
      wait;
   end process;

END;
