LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY va_entity IS
PORT(
va_a : IN STD_LOGIC;
va_b : IN STD_LOGIC;
va_cin : IN STD_LOGIC;
va_s : OUT STD_LOGIC;
va_cout: OUT STD_LOGIC
);
END ENTITY;
ARCHITECTURE behavioural OF va_entity IS
-- Schnittstelle der Halbaddierer
COMPONENT ha_entity IS
PORT(
a: IN STD_LOGIC;
b: IN STD_LOGIC;
s: OUT STD_LOGIC;
c: OUT STD_LOGIC
);
END COMPONENT;
COMPONENT or_entity IS
PORT(
a: IN STD_LOGIC;
b: IN STD_LOGIC;
c: OUT STD_LOGIC
);
END COMPONENT;
-- Eingabesignale der Halbaddierer
SIGNAL ha1_a : STD_LOGIC := '0';
SIGNAL ha2_a : STD_LOGIC := '0';
SIGNAL ha1_b : STD_LOGIC := '0';
SIGNAL ha2_b : STD_LOGIC := '0';
-- Ausgabesignale der Halbaddierer
SIGNAL ha1_s : STD_LOGIC;
SIGNAL ha2_s : STD_LOGIC;
SIGNAL ha1_c : STD_LOGIC;
SIGNAL ha2_c : STD_LOGIC;
-- Ein- und Ausgabesignale des ODER-Moduls
SIGNAL or_a : STD_LOGIC := '0';
SIGNAL or_b : STD_LOGIC := '0';
SIGNAL or_c : STD_LOGIC;
BEGIN
-- Instanziierung des ersten Halbaddierers
ha1 : ha_entity
PORT MAP (
a => ha1_a,
b => ha1_b,
s => ha1_s,
c => ha1_c
);
-- Instanziierung des zweiten Halbaddierers
ha2 : ha_entity
PORT MAP (
a => ha2_a,
b => ha2_b,
s => ha2_s,
c => ha2_c
);
-- Instanziierung des ODER-Moduls
--or_gate : or_entity
--PORT MAP (
--a => or_a,
--b => or_b,
--c => or_c
--);
-- Restliche Verdrahtung der Signale
ha1_a <= va_a;
ha1_b <= va_b;
ha2_a <= ha1_s;
ha2_b <= va_cin;
va_s <= ha2_s;
va_cout<= ha1_c OR ha2_c;


--or_a <= ha1_c;
--or_b <= ha2_c;
--va_cout <= or_c;
END ARCHITECTURE;