library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity pencoder is
	port(
		A, B, C, D : in std_logic;
		Y1, Y0, V : out std_logic
	);
end entity;

architecture flow of pencoder is
	signal s1, s2, s3, s4 : std_logic;
	begin
		G1 : OR_2 port map(
			A => A,
			B => B,
			Y => s1
		);
		G2 : OR_2 port map(
			A => C,
			B => D,
			Y => s2
		);
		G3 : OR_2 port map(
			A => s1,
			B => s2,
			Y => V
		);
		G4 : INVERTER port map(
			A => B,
			Y => s3
		);
		G5 : AND_2 port map(
			A => s3,
			B => C,
			Y => s4
		);
		G6 : OR_2 port map(
			A => s4,
			B => A,
			Y => Y0
		);
		G7 : OR_2 port map(
			A => A,
			B => B,
			Y => Y1
		);
end architecture;