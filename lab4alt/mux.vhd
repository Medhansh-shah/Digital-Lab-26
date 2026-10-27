library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity mux is
    port(
        X1, X0 : in std_logic;
        S : in std_logic;
        Y : out std_logic
    );
end entity;

architecture flow of mux is
    signal s1, s2, s3 : std_logic;
    begin
        G1 : inverter port map(A => S, Y => s1);
        G2 : and_2 port map(A => s1, B => X0, Y => s2);
        G3 : and_2 port map(A => X1, B => S, Y => s3);
        G4 : or_2 port map(A => s2, B => s3, Y => Y);
end architecture;