----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2021 11:08:17
-- Design Name: 
-- Module Name: Clk25MHz - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClkDiv is
    Port ( clk100,reset : in  STD_LOGIC;    -- Horloge 100 Mhz et Reset Asynchrone
           clk25 : out  STD_LOGIC);            -- Horloge 25 MHz
end ClkDiv;

architecture Behavioral of ClkDiv is

-- Registre Horloge 25 MHz
signal clk: std_logic_vector(1 downto 0);

begin

-- Affectation Port de Sortie
clk25<=clk(1);

--------------------------------------------
-- DIVISION PAR 4 DE L'HORLOGE 100 MHZ
process(clk100,reset)

    begin

        if reset = '0' then 

            clk <= "00";

        elsif rising_edge(clk100) then

            clk <= clk + '1';

        end if;

end process;


end Behavioral;
