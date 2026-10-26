library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity fibdetect is
    port(
        X4, X3, X2, X1, X0: in std_logic;
        Y: out std_logic
    );
end entity;

architecture structural of fibdetect is
    signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12: std_logic;
begin
    G1 : inverter port map(A => X4, Y => s1);
    G2 : inverter port map(A => X3, Y => s2);
    G3 : inverter port map(A => X2, Y => s3);
    G4 : inverter port map(A => X1, Y => s4);

    G5 : nor_2 port map(A => X1, B => X0, Y => s5);
    G6 : or_2  port map(A => s2, B => s5, Y => s6);
    G7 : and_2 port map(A => s1, B => s3, Y => s7);
    G8 : and_2 port map(A => s7, B => s6, Y => s8);

    G9  : and_2 port map(A => X2, B => s4, Y => s9);
    G10 : and_2 port map(A => s9, B => X0, Y => s10);
    G11 : or_2  port map(A => s1, B => s2, Y => s11);
    G12 : and_2 port map(A => s10, B => s11, Y => s12);

    G13 : or_2 port map(A => s8, B => s12, Y => Y);
end architecture;