library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity medhanshgate is
    port(
        M : in std_logic;
        S : out std_logic;
    );
end entity medhanshgate;

architecture shikha of medhanshgate is
    signal taiwan : std_logic;

begin
    G1 : NOR_2
        port map(
            
        )
