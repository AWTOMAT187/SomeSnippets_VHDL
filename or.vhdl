LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or_entity is
PORT(
	a: IN STD_LOGIC;
	b: IN STD_LOGIC;
	c: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE behaveioural of or_entity is
BEGIN

c <= a AND b;

END ARCHITECTURE;