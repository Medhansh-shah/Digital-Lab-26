library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity halfadder is
	port(
		A, B : in std_logic;
		Y, Cout : out std_logic
	);
end entity;

architecture flow of halfadder is
	begin
		G1 : XOR_2
			port map(
				A => A,
				B => B,
				Y => Y
			);
		G2 : AND_2
			port map(
				A => A,
				B => B,
				Y => Cout
			);
end architecture;
		