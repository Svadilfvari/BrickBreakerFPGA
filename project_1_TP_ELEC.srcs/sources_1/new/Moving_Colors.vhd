----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2021 12:15:10
-- Design Name: 
-- Module Name: Moving_Colors - Behavioral
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

entity Moving_Colors is
    Port ( clk100 : in STD_LOGIC;
           Reset : in STD_LOGIC;
           BLUE_Out : out STD_LOGIC_VECTOR (3 downto 0);
           GREEN_Out : out STD_LOGIC_VECTOR (3 downto 0);
           RED_Out : out STD_LOGIC_VECTOR (3 downto 0));
end Moving_Colors;

architecture Behavioral of Moving_Colors is

signal clock_20Hz, max : std_logic;
signal com : std_logic_vector(1 downto 0);
signal comparaison_rouge,comparaison_vert,comparaison_bleu :std_logic;
signal Com_rouge, Com_vert, Com_bleu:std_logic_vector(1 downto 0); 
begin

Diviseur:   entity work.clk_Div_20
                port map(
                    clock_100Mhz => clk100,
                    reset => reset,
                    clock_20Hz => clock_20Hz);

Compteur_b:   entity work.Compt_bleu_5bits
                port map(
                clk20 => clock_20Hz,
                reset => reset,
                Com_bleu=>Com_bleu,
                comparaison_bleu=>comparaison_bleu,
                BLUE_Out=>BLUE_Out
               );
Compteur_r:   entity work.Compt_red_5bits
                port map(
                clk20 => clock_20Hz,
                reset => reset,
                Com_red=>Com_rouge,
                comparaison_rouge=>comparaison_rouge,
                RED_Out=>RED_Out
               );
Compteur_g:   entity work.Compt_green_5bits
                port map(
                clk20 => clock_20Hz,
                reset => reset,
                Com_green=>Com_vert,
                comparaison_vert=>comparaison_vert,
                GREEN_Out=>GREEN_Out
               );








MAE:        entity work.MAE
                port map(
                Clk100 => Clk100,
                raz => Reset,
                comparaison_rouge=>comparaison_rouge,
                comparaison_vert=>comparaison_vert,
                comparaison_bleu=>comparaison_bleu,
                commande_red=>Com_rouge, 
                commande_green=>Com_vert,
                commande_bleue=>Com_bleu                 );

end Behavioral;