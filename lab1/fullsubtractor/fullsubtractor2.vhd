library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity fullsubtractor2 is
    port(
        A, B, Bin : in std_logic;
        D, Borrow : out std_logic
    );
end entity fullsubtractor2;

architecture flow of fullsubtractor2 is

    component xor_gate is
        port(
            A, B : in std_logic;
            Y    : out std_logic
        );
    end component;

    signal x      : std_logic;
    signal nb     : std_logic;
    signal t1     : std_logic;
    signal t2     : std_logic;
    signal nt1    : std_logic;
    signal nt2    : std_logic;

begin

    G1 : xor_gate
        port map(
            A => A,
            B => B,
            Y => x
        );

    G2 : xor_gate
        port map(
            A => x,
            B => Bin,
            Y => D
        );

    G3 : NOR_2
        port map(
            A => B,
            B => B,
            Y => nb
        );

    G4 : NOR_2
        port map(
            A => A,
            B => nb,
            Y => t1
        );

    G6 : NOR_2
        port map(
            A => Bin,
            B => Bin,
            Y => nt2
        );

    G7 : NOR_2
        port map(
            A => x,
            B => nt2,
            Y => t2
        );
	 
	 G8 : NOR_2
        port map(
            A => t1,
            B => t2,
            Y => nt1
        );

    G9 : NOR_2
        port map(
            A => nt1,
            B => nt1,
            Y => Borrow
        );

end architecture flow;