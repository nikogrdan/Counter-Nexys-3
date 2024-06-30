----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:54:51 05/15/2024 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
entity main is
port(
	clk,ss,set: in std_logic;
	pokaz: out std_logic_vector (6 downto 0)
);
end main;

architecture Structural of main is
signal clk1,clk2: std_logic;
signal broj: integer range 30 to 210;
signal broj1: integer range 30 to 210;
signal prikaz: std_logic_vector (1 downto 0);
begin
s1: entity work.djeljitelj_frek generic map(100_000_000) port map(clk,clk1); --daje frekvenciju 1 hz
s2: entity work.djeljitelj_frek generic map(500_000) port map(clk,clk2); --daje frekvenciju 200hz
s3: entity work.counter port map(clk1,ss,set,broj); --brojac
s4: entity work.counter_pokaznik port map(clk2,prikaz);
s5: entity work.prikaz port map(prikaz,broj,pokaz);
end Structural;

