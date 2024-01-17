LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY HA_entity is
PORT(
	a: IN STD_LOGIC;
	b: IN STD_LOGIC;
	c: OUT STD_LOGIC;
	s: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE behaveioural of HA_entity is
BEGIN
s <= a XOR b;
c <= a AND b;

END ARCHITECTURE;