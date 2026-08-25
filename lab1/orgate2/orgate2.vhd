library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity orgate2 is 
	port(
		A,B : in std_logic;
		Y : out std_logic
	);
end entity orgate2;

architecture flow of orgate2 is
	signal s1 : std_logic;
	begin
	G1 : NOR_2
		port map(
			A => A,
			B => B,
			Y => s1
		);
	G2 : NOR_2
		port map(
			A => s1,
			B => s1,
			Y => Y
		);
end architecture flow;
