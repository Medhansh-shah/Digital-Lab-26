library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity xor_gate is
    port(
        A, B : in std_logic;
        Y    : out std_logic
    );
end entity xor_gate;

architecture flow of xor_gate is
    signal s1, s2, s3, s4 : std_logic;
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
            A => A,
            B => B,
            Y => s3
        );

    G4 : NOR_2
        port map(
            A => s1,
            B => s2,
            Y => s4
        );

    G5 : NOR_2
        port map(
            A => s3,
            B => s4,
            Y => Y
        );

end architecture flow;