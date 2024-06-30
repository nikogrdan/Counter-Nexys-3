----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:29:16 05/15/2024 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
entity counter is
port(
clk,ss,set: in std_logic;
broj: out integer range 30 to 210
);
end counter;

architecture Behavioral of counter is
signal prijenos: integer range 30 to 210;
begin
process(clk,ss,set)
variable temp: integer range 30 to 210:=30;
begin
	if(ss='0') then
		temp:=temp;
	elsif(set='1') then
		temp:=110;
	elsif(clk'event and clk='1') then
		if(temp=210) then
			temp:=30;
		else
			temp:=temp+1;
		end if;
	end if;
prijenos<=temp;
end process;
broj<=prijenos;
end Behavioral;

