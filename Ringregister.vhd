library ieee;
use ieee.std_logic_1164.all;



ENTITY Ringregister is 
	port(
		clk: IN STD_LOGIC ;
		key: IN STD_LOGIC;
		sw: IN STD_LOGIC_VECTOR(17 downto 0);
		ledr: OUT STD_LOGIC_VECTOR(17 downto 0);

end Ringregister;

architecture verhalten of Ringregister is 
	signal reg_speicher: STD_LOGIC_VECTOR(17 downto 0);
	
begin
	process(clk, reset) begin 
		if reset = '0' then 
			reg_speicher<=sw;
		elsif falling_edge(clk) then
			reg_speicher<=reg_speicher(16 downto 0) & reg_speicher(17); --reg_speicher[17] wird um ein LINKSSHIFT verschoben
		end if;
	END process;
	ledr<= reg_speicher;
END verhalten;
		
		
			
			
			