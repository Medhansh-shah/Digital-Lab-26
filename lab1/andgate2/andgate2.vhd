library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity andgate2 is
	port(
		A,B : in std_logic;
		Y : out std_logic
	);
end entity andgate2;

architecture flow of andgate2 is 
	signal s1,s2 : std_logic;
	begin
	G1 : NOR_2
		port map(
			A => A,
			B => A,
			Y => s1
		);
	G2 : NOR_2
		port map(
			A => B,
			B => B,
			Y => s2
		);
	G3 : NOR_2
		port map(
			A => s1,
			B => s2,
			Y => Y
		);
end architecture flow;
