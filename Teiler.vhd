library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Teiler is 
	generic (n: positive);
	port(
			reset: IN STD_LOGIC;
			clk_in: IN STD_LOGIC;
			clk_out: OUT STD_LOGIC;
			);
			
END Teiler;

architecture verhalten  of Teiler is 
	signal z: natural range 0 to n/2-1; 
	signal clk: STD_LOGIC; 
	
begin 

	process(clk,reset) begin
		if reset = '0' then 
			clk<= '0' ;
			z<=0;
		elsif rising_edge(clk) then 
			if z>=n/2-1 then 
				clk<= not clk;
				z<=0;
			else 
				z<=z+1;
			end if;
		end if;
	end process;
	
	clk_out<=clk;
	
end Verhalten;	
	