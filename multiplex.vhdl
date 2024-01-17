LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY multiplex IS
	port(
		a : IN STD_LOGIC_VEctOR(3 downto 0);
		b : IN STD_LOGIC_VEctOR (3 downto 0);
		s : IN STD_LOGIC ;
		c : OUT  STD_LOGIC_VEctOR (3 downto 0)
		);
END ENTITY;

	

ARCHITECTURE behaveioral of multiplex is
		
		SIGNAL UND_c : STD_LOGIC_VEctOR (3 downto 0);
		SIGNAL ODER_c: STD_LOGIC_VEctOR (3 downto 0);
BEGIN
		
		UND_c <= a AND b;
		ODER_c <= a OR b;
		
		with s SELECT c <=
		UND_c WHEN '0',
		ODER_c WHEN '1',
		(OTHERS => 'U') WHEN OTHERS;
		
		
		
		
END architecture;