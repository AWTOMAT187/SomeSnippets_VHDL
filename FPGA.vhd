library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FPGA is 
	port(
			clk_50: IN STD_LOGIC;
			key: IN STD_LOGIC_Vector(3 downto 0);
			ledr: OUT STD_LOGIC_Vector(17 downto 0);
		);
END FPGA;

architecture Struktur of FPGA is
begin 
t: entity work.Teiler generic map(4) 
	port map(
			key(3),
			clock_50,
			ledr(0)
			);
end Struktur;