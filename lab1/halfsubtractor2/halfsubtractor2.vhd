library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity halfsubtractor2 is
    port(
        A, B : in std_logic;
        D, Borrow : out std_logic
    );
end entity halfsubtractor2;

architecture flow of halfsubtractor2 is

    component xor_gate is
        port(
            A, B : in std_logic;
            Y    : out std_logic
        );
    end component;

    signal s1 : std_logic;

begin

    G1 : xor_gate
        port map(
            A => A,
            B => B,
            Y => D
        );

    G2 : NOR_2
        port map(
            A => B,
            B => B,
            Y => s1
        );

    G3 : NOR_2
        port map(
            A => A,
            B => s1,
            Y => Borrow
        );

end architecture flow;