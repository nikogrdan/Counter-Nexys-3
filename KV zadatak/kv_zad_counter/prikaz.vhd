----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:44:48 05/15/2024 
-- Design Name: 
-- Module Name:    prikaz - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity prikaz is
port(
	pok: in std_logic_vector (1 downto 0);
	broj: in integer range 30 to 210;
	pokaznik: out std_logic_vector (6 downto 0)
);
end prikaz;

architecture Behavioral of prikaz is
signal result: integer range 0 to 9;
begin
result<=(broj MOD 10) when pok="00" else
		  ((broj/10) MOD 10) when pok="01" else
		  ((broj/100) MOD 10) when pok="10";
with result select
pokaznik<="0000001" when 0,
			 "1111001" when 1,
			 "0010010" when 2,
			 "0000110" when 3,
			 "1001100" when 4,
			 "0100100" when 5,
			 "0100000" when 6,
	       "0001111" when 7,
          "0000000" when 8,
          "0000100" when others;
end Behavioral;

