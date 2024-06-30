----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:38:42 05/15/2024 
-- Design Name: 
-- Module Name:    counter_pokaznik - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_pokaznik is
port(
	clk: in std_logic;
	pok: out std_logic_vector(1 downto 0)
);
end counter_pokaznik;

architecture Behavioral of counter_pokaznik is
signal prijenos: std_logic_vector(1 downto 0);
begin
process(clk)
variable temp: std_logic_vector(1 downto 0) := "00";
begin
if(clk'event and clk='1') then
	if(temp="11") then
		temp:="00";
	else
		temp:=temp+1;
	end if;
end if;
prijenos<=temp;
end process;
pok<=prijenos;
end Behavioral;

