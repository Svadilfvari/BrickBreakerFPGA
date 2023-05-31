----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 11:15:07
-- Design Name: 
-- Module Name: test_move - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_move is
--  Port ( );
end test_move;

architecture Behavioral of test_move is

signal qa,qb,rot_a,rot_b,rot_right,rot_left: std_logic;
signal reset, clk25: std_logic:='0';

begin
commande : entity work.move 
	           port map (
	           clk25 =>clk25 ,
	           reset =>reset,
	           qa=>qa,
               qb=>qb,
               rot_left=>rot_left,
               rot_right =>rot_right
           );
clk25<=not clk25 after 25 ns;
Reset <='1' after 15 ns;
qa<='0' after 30 ns,'1' after 40 ns  ;qb<='1' after 20ns, '0' after 40 ns;


end;
