library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.Gates.all;

entity mux2x1 is
    Port (
        I0 : in std_logic;
        I1 : in std_logic;
        S : in std_logic;
        Y : out std_logic
    );
end mux2x1;

architecture Structural of mux2x1 is

    signal w1, w2, w3 : std_logic;

begin

    g1: NOR_2 port map(S, S, w1);
    g2: AND_2 port map(I0, w1, w2);
    g3: AND_2 port map(I1, S, w3);
    g4: OR_2 port map(w2, w3, Y);

end Structural;