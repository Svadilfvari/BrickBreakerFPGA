
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clk_div_20 IS

PORT
(
clock_100Mhz,reset : IN STD_LOGIC;


clock_20Hz : OUT STD_LOGIC);

END clk_div_20;

ARCHITECTURE a OF clk_div_20 IS


SIGNAL count_2Mhz :STD_LOGIC_VECTOR(1 DOWNTO 0); 
SIGNAL count_4Mhz: STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL count_200Khz, count_20Khz, count_2Khz : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL count_200hz, count_20hz : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clock_4Mhz_int, clock_2Mhz_int, clock_200Khz_int, clock_20Khz_int, clock_2Khz_int,clock_200hz_int, clock_20Hz_int: STD_LOGIC:='0';


BEGIN


PROCESS(clock_100Mhz,reset)
BEGIN
-- Divise par 25
  if reset = '0' then 

             count_4Mhz <= (others=>'0');
  elsif rising_edge(clock_100Mhz) then
			IF count_4Mhz < 24 THEN
				count_4Mhz <= count_4Mhz + 1;
			ELSE
				count_4Mhz <= "00000" ;
   			END IF;
   
   		IF count_4Mhz < 12 THEN
			clock_4Mhz_int <= '0';
   		ELSE
			clock_4Mhz_int <= '1' ;	
   		END IF;

	end if;
    --Assignment of signals 
	
	
	
	clock_20hz <= clock_20hz_int;
--end of the assignment
clock_2Mhz_int<= count_2Mhz(0);
 

END PROCESS;


    

--Divise par 2 

process(clock_4Mhz_int,reset)

    begin

        if reset = '0' then 

             count_2Mhz <= "00";

        elsif rising_edge(clock_4Mhz_int) then

             count_2Mhz <= count_2Mhz+ '1';

        end if;

end process;

-- Divise par 10
process(clock_2Mhz_int,reset)

    begin

        if reset = '0' then 

             count_200khz <= "000";
       
       elsif rising_edge(clock_2Mhz_int) then   
			if count_200Khz /=4 THEN
			  	count_200Khz <= count_200Khz + 1;
			ELSE
			  	count_200khz <= "000";
			 	clock_200Khz_int <= NOT clock_200Khz_int;
			END IF;
        end if;
END PROCESS;

-- Divise par 10
process(clock_200khz_int,reset)

    begin

        if reset = '0' then 

             count_20khz <= "000";
        elsif rising_edge(clock_200khz_int) then    
			if count_20Khz /= 4 THEN
			 	 count_20Khz <= count_20Khz + 1;
			ELSE
			  	count_20khz <= "000";
			  	clock_20Khz_int <= NOT clock_20Khz_int;
			END IF;
        END IF;
END PROCESS;

-- Divise par 10
process(clock_20Khz_int,reset)

    begin

        if reset = '0' then 

             count_2khz <= "000";
        elsif rising_edge(clock_20khz_int) then     
			if count_2khz /= 4 THEN
				  count_2khz <= count_2khz + 1;
			ELSE
				  count_2khz <= "000";
			  	  clock_2khz_int <= NOT clock_2khz_int;
			END IF;
        END IF;
END PROCESS;
-- Divise par 10
process(clock_2Khz_int,reset)

    begin

        if reset = '0' then 

             count_200hz <= "000";
        elsif rising_edge(clock_2khz_int) then 
			if count_200hz /= 4 THEN
			 	count_200hz <= count_200hz + 1;
			ELSE
				count_200hz <= "000";
			  	clock_200hz_int <= NOT clock_200hz_int;
			END IF;
        END IF;
END PROCESS;

-- Divise par 10 (HORLOGE DE 20HZ)
process(clock_200hz_int,reset)

    begin

        if reset = '0' then 
		
             count_20hz <= "000";
        elsif rising_edge(clock_200hz_int) then 
			if count_20hz /= 4 THEN
				  count_20hz <= count_20hz + 1;
			ELSE
			 	 count_20hz <= "000";
			 	 clock_20hz_int <= NOT clock_20hz_int;
			END IF;
        END IF;
END PROCESS;

end a; 