library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity FULL_ADDER is
    port(
        A    : in  std_logic;
        B    : in  std_logic;
        Cin  : in  std_logic;
        S    : out std_logic;
        Cout : out std_logic
    );
end entity FULL_ADDER;


architecture Structural of FULL_ADDER is

    signal X  : std_logic;
    signal C1 : std_logic;
    signal C2 : std_logic;

begin

    -- First Half Adder
    HA1 : HALF_ADDER
        port map(
            A => A,
            B => B,
            S => X,
            C => C1
        );

    -- Second Half Adder
    HA2 : HALF_ADDER
        port map(
            A => X,
            B => Cin,
            S => S,
            C => C2
        );

    -- Final carry
    OR1 : OR_2
        port map(
            A => C1,
            B => C2,
            Y => Cout
        );

end Structural;