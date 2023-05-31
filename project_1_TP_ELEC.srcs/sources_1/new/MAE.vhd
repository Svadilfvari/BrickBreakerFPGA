
library IEEE;
use IEEE.std_logic_1164.all;

entity MAE is
port( clk100,raz: in std_logic;
		comparaison_rouge,comparaison_vert,comparaison_bleu: in std_logic;
		commande_red, commande_green,  commande_bleue : out std_logic_vector(2 downto 0));
end MAE; 



architecture Moore3 of MAE is
-- Definition d’un type etat
type etat is(S0,S1,S2);
signal EP, EF: etat;
signal  comparaison : std_logic_vector(1 downto 0) ;
begin

comparaison <= "00" when comparaison_vert <= '1';
comparaison <= "01" when comparaison_bleu <= '1';
comparaison <= "10" when comparaison_rouge <= '1';





-- Process du Registre d’etats
process(clk100,raz)
begin

if raz='0' then EP <= S0;
 elsif rising_edge(clk100) then EP <= EF;
end if;
end process;

-- Combinatoire des etats

process(EP,comparaison)
begin

case (EP) is
 when S0 => EF<=S0; if Comparaison<="00" then EF<=S1 ; end if;
 when S1 => EF<=S1; if comparaison <= "01" then EF<=S2; end if;
 when S2 => EF<=s2;if  comparaison <= "10" then EF<=S0; end if;
end case;
end process;


-- Combinatoire des sorties
process(EP)
begin

case (EP) is
 when S0 =>commande_green<="01";commande_red<="10";commande_bleue<="11";--RED_OUT<="1111"; GREEN_out<="0000"; BLEUE_out<="0000"
 when S1 =>commande_green<="10";commande_red<="11";commande_bleue<="01";--RED_OUT<="0000"; GREEN_out<="1111"; BLEUE_out<="0000";
 when S2 =>commande_green<="11";commande_red<="01";commande_bleue<="10";--  RED_OUT<="0000"; GREEN_out<="0000"; BLEUE_out<="1111";

end case;
end process;
end Moore3;






