LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY VA_test is 

END ENTITY;

ARCHITECTURE behaveioral OF VA_test IS 
	COMPONENT va_entity IS
	PORT(
		va_a: IN STD_LOGIC;
		va_b: IN STD_LOGIC;
		va_cin: IN STD_LOGIC;
		va_s: OUT STD_LOGIC;
		va_cout: OUT STD_LOGIC
		);
	END COMPONENT;
	
	SIGNAL a_test: STD_LOGIC := '0';
	SIGNAL b_test: STD_LOGIC := '0';
	SIGNAL cin_test: STD_LOGIC := '0';
	SIGNAL s_test: STD_LOGIC;
	SIGNAL cout_test: STD_LOGIC;
	
	BEGIN

	dut: va_entity
	PORT MAP(
	va_a => a_test,
	va_b => b_test,
	va_cin => cin_test,
	va_s => s_test,
	va_cout=> cout_test
	);

		PROCESS BEGIN
			a_test <= '0';
			b_test <= '0';
			cin_test <= '0';
			WAIT FOR 10 NS;
			a_test <= '1';
			WAIT FOR 10 NS;
			a_test <= '0';
			b_test <= '1';
			WAIT FOR 10 NS;
			a_test <= '1';
			WAIT FOR 10 NS;
			a_test <= '0';
			b_test <= '0';
			cin_test <= '1';
			WAIT FOR 10 NS;
			a_test <= '1';
			WAIT FOR 10 NS;
			a_test <= '0';
			b_test <= '1';
			WAIT FOR 10 NS;
			a_test <= '1';
			WAIT FOR 10 NS;
			REPORT "End of testbench.";
			WAIT;
		END PROCESS;
END ARCHITECTURE;