library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity encoder is
	port(
		A, B, C, D, En : in std_logic;
		Y1, Y0 : out std_logic
	);
end entity;

architecture flow of encoder is
	signal s1, s2 : std_logic;
	begin
		G1 : OR_2
			port map(
				A => A,
				B => B,
				Y => s1
			);
		G2 : OR_2
			port map(
				A => A,
				B => C,
				Y => s2
			);
		G3 : AND_2
			port map(
				A => s1,
				B => En,
				Y => Y1
			);
		G4: AND_2
			port map(
				A => s2,
				B => En,
				Y => Y0
			);
end architecture;