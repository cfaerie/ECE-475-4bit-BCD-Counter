--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:07:37 09/27/2016
-- Design Name:   
-- Module Name:   C:/Temp/ECE475Lab2.0/Test9.vhd
-- Project Name:  ECE475Lab2.0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
 
ENTITY Test9 IS
END Test9;
 
ARCHITECTURE behavior OF Test9 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         count : IN  bit;
         Z0 : OUT  bit;
         Z1 : OUT  bit;
         Z2 : OUT  bit;
         Z3 : OUT  bit
        );
    END COMPONENT;
    

   --Inputs
   signal count : bit := '0';

 	--Outputs
   signal Z0 : bit;
   signal Z1 : bit;
   signal Z2 : bit;
   signal Z3 : bit;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          count => count,
          Z0 => Z0,
          Z1 => Z1,
          Z2 => Z2,
          Z3 => Z3
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;
      count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
      wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;	
		count<='1';
		wait for 50 ns;	
		count<='0';
		wait for 50 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
