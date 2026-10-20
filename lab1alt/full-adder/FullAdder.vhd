library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity FullAdder is
	port (
		A, B, Cin : in std_logic;
		Y, Cout : out std_logic
	);
end entity;

architecture flow of FullAdder is
	signal s1, s2, s3, s4 : std_logic;
	begin
		G1 : XOR_2
			port map(
				A => A,
				B => B,
				Y => s1
			);
		G2 : XOR_2
			port map(
				A => s1,
				B => Cin,
				Y => Y
			);
		G3 : AND_2
			port map(
				A => A,
				B => B,
				Y => s2
			);
		G4 : OR_2
			port map(
				A => A,
				B => B,
				Y => s3
			);
		G5 : AND_2
			port map(
				A => Cin,
				B => s3,
				Y => s4
			);
		G6 : OR_2
			port map(
				A  => s2,
				B => s4,
				Y => Cout
			);
end architecture;