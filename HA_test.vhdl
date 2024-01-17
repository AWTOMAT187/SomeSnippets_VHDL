LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Testbench hat kein Interface zur Aussenwelt, die
-- Testbench soll ja gerade die Aussenwelt simulieren
 ENTITY HA_test IS

 END ENTITY;

 ARCHITECTURE behavioural OF HA_test IS

 -- Die Interfacebeschriebung des Moduls, das wir testen
 COMPONENT HA_entity IS
 PORT(
 a: IN STD_LOGIC;
 b: IN STD_LOGIC;
 c: OUT STD_LOGIC;
 s: OUT STD_LOGIC
 );
 END COMPONENT;

 -- Eingabesignale des DUT
 SIGNAL a_test : STD_LOGIC := '0';
 SIGNAL b_test : STD_LOGIC := '0';

 -- Ausgabesignale des DUT
SIGNAL c_test : STD_LOGIC;
SIGNAL s_test: STD_LOGIC;
 BEGIN

 -- Instanziierung des DUT
 dut : HA_entity
 PORT MAP (
 a => a_test,
 b => b_test,
 c => c_test,
 s => s_test
 );

 -- Hier startet das eigentliche Testprozedere
 PROCESS BEGIN

 a_test <= '0';
 b_test <= '0';

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