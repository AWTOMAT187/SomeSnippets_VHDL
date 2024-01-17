LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplex_test is
END entity; 
architecture behaveorial of multiplex_test is
	
	COMPONENT multiplex is
		port(
			a : IN STD_LOGIC_VEctOR(3 to 0);
			b : IN STD_LOGIC_VEctOR (3 to 0);
			s : IN STD_LOGIC ;
			c : OUT  STD_LOGIC_VEctOR (3 to 0)
			);
	END COMPONENT;
	
	
	
			SIGNAL test_a : STD_LOGIC_VECTOR (3 to 0):= "0000";
			SIGNAL test_b : STD_LOGIC_VEctOR (3 to 0):= "0000";
			SIGNAL test_s : STD_LOGIC := '0';
			SIGNAL test_c : STD_LOGIC_VEctOR (3 to 0);
			
	begin
	dut : multiplex
	PORT MAP (
			a=>test_a,
			b=>test_b,
			c=>test_c,
			s=>test_s
			);
			
			
	PROCESS	begin
		
	WAIT FOR 10 ns;
	
		
	for q in 0 to 1 loop
		
		for i in 1 to 15 loop
			test_a <= test_a+"0001";
			WAIT FOR 10 ns;
			for j in 1 to 15 loop 
				test_b <= test_b +"0001";
				WAIT FOR 10 ns;
			end loop;
		end loop;	
		test_s<= '1';
	end loop;
	
	
	REPORT "End of testbench.";	
	WAIT;
	
	END PROCESS;
END architecture;
		
		
	
	