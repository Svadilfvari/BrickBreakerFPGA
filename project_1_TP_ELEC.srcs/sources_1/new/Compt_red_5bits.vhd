library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Compt_red_5bits is 
      port ( Clk20, Reset : in std_logic; 
      		Com_red : in std_logic_vector (1 downto 0);
            comparaison_rouge : out std_logic;
            RED_Out : out  std_logic_vector (3 downto 0));
end  Compt_red_5bits;


architecture arc of  Compt_red_5bits is 

signal comp_int: std_logic; 

begin

	-- Description Registre
    process(Clk20,Reset)
    	variable temp: std_logic_vector(4 downto 0);
	begin
    
		-- Initialisation ASynchrone
        if Reset='0' then temp := "11111";
        -- Sinon, à chaque front d'horloge
  
        elsif rising_edge(Clk20) then
       		 case (Com_red) is  
                   when "01" => temp :=  temp+1;
				   when "10" => temp := temp-1;
				   when "11" => temp :=  temp;
         		   when others => NULL;
        	 end case;
            
            
        end if;
       if (temp >"11111") then comp_int<='1' ;
       end if;
       comparaison_rouge<=comp_int;
        RED_Out<=temp(4 downto 1);
    end process;
    

 -- Mise à jour du port de sortie    
        

end arc;