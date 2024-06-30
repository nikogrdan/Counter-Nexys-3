----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:23:42 05/15/2024 
-- Design Name: 
-- Module Name:    djeljitelj_frek - Behavioral 
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
entity djeljitelj_frek is
generic(nfCLK: natural);
port(
clk: in std_logic;
clk_o: buffer std_logic
);
end djeljitelj_frek;

architecture Behavioral of djeljitelj_frek is
begin
process(clk)
variable temp: integer range 0 to nfCLK/2:=0;
begin
if(clk'event and clk='1') then
	temp:=temp+1;
		if(temp>=nfCLK/2) then
		clk_o<=not clk_o;
		temp:=0;
		end if;
end if;
end process;
end Behavioral;

