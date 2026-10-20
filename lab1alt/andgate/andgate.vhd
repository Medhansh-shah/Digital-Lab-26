library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;
-- here work means working library

entity ANDGATE is
    port(
        A, B : in std_logic;
        Y : out std_logic
    );
end entity ANDGATE;

architecture flow of ANDGATE is
    signal s1 : std_logic;
    begin
    G1 : NAND_2
        port map (
            A => A,
            B => B,
            Y => s1
        );
    G2 : NAND_2
        port map (
            A => s1,
            B => s1,
            Y => Y
        );
end architecture flow;