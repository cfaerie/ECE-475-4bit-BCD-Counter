----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:19 09/27/2016 
-- Design Name: 
-- Module Name:    BCDcounter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;


entity AND_3 is
port (A,B,C: in bit;
      D: out bit);
end AND_3; 

architecture BEHAVIORAL of AND_3 is
begin
  D <= (A AND B AND C);
end BEHAVIORAL;




entity JK_FF is
   port( J,K: in  bit;
         Clock: in bit;
         Output: out bit;
			Outputprime: out bit
			);
end JK_FF;

architecture Behavioral of JK_FF is
   signal temp: bit;
begin
   process (Clock) 
   begin
      if (Clock='1') then                 
            if (J='0' and K='0') then
               temp <= temp;
            elsif (J='0' and K='1') then
               temp <= '0';
            elsif (J='1' and K='0') then
               temp <= '1';
            elsif (J='1' and K='1') then
               temp <= not (temp);
            end if;
         end if;
			
   end process;
   Output <= temp;
	Outputprime<= not temp;
end Behavioral;

Entity counter is
  port( count: in bit; Z0, Z1, Z2, Z3: out bit); 
End counter;
Architecture counter_str of counter is	  
component JK_FF is
				port (J, K, Clock: in bit; Output, Outputprime:out bit);
	  end component;
	  component And_3 is
				port (A, B, C: in bit; D:out bit);
	  end component;
	  
	  signal S1, S2, S3, S4, SA, SB, SC, SD: bit; --A is JK flip flop output bit 1, B is JK flip flopoutput bit 2...
 
Begin
A1: And_3  port map (SB, SA,'1', S1); --Q2 AND Q1
A2: And_3  port map (SA, SB, SC, S2); --Q1 AND Q2 AND Q3
 
JK1: JK_FF port map ('1', '1', count, SA, open);--correct waveform
JK2: JK_FF port map (SA, SA, count, SB, open);
JK3: JK_FF port map (S1, S1, count, SC, S4);
JK4: JK_FF port map (S2, S2,  count, SD, open);

Z0<=SA;
Z1<=SB;
Z2<=SC;
Z3<=SD;

End counter_str;
