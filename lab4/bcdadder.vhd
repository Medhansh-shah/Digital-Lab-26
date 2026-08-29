library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity bcdadder is
    Port (
        A0, A1, A2, A3 : in  std_logic;
        B0, B1, B2, B3 : in  std_logic;
        Cin             : in  std_logic;
        S0, S1, S2, S3 : out std_logic;
        Cout            : out std_logic
    );
end bcdadder;


architecture Structural of bcdadder is

    component FULL_ADDER is
        port(
            A    : in  std_logic;
            B    : in  std_logic;
            Cin  : in  std_logic;
            S    : out std_logic;
            Cout : out std_logic
        );
    end component;

    signal X0, X1, X2, X3 : std_logic;
    signal C1, C2, C3, C4 : std_logic;

    signal T1, T2 : std_logic;
    signal K, K_temp : std_logic;

    signal Y0, Y1, Y2, Y3 : std_logic;
    signal C5, C6, C7, C8 : std_logic;


begin

    FA0 : FULL_ADDER
        port map(
            A    => A0,
            B    => B0,
            Cin  => Cin,
            S    => X0,
            Cout => C1
        );


    FA1 : FULL_ADDER
        port map(
            A    => A1,
            B    => B1,
            Cin  => C1,
            S    => X1,
            Cout => C2
        );


    FA2 : FULL_ADDER
        port map(
            A    => A2,
            B    => B2,
            Cin  => C2,
            S    => X2,
            Cout => C3
        );


    FA3 : FULL_ADDER
        port map(
            A    => A3,
            B    => B3,
            Cin  => C3,
            S    => X3,
            Cout => C4
        );


    AND1 : AND_2
        port map(
            A => X3,
            B => X2,
            Y => T1
        );


    AND2 : AND_2
        port map(
            A => X3,
            B => X1,
            Y => T2
        );


    OR1 : OR_2
        port map(
            A => T1,
            B => T2,
            Y => K_temp
        );


    OR2 : OR_2
        port map(
            A => K_temp,
            B => C4,
            Y => K
        );


    FA4 : FULL_ADDER
        port map(
            A    => X0,
            B    => '0',
            Cin  => '0',
            S    => Y0,
            Cout => C5
        );


    FA5 : FULL_ADDER
        port map(
            A    => X1,
            B    => K,
            Cin  => C5,
            S    => Y1,
            Cout => C6
        );


    FA6 : FULL_ADDER
        port map(
            A    => X2,
            B    => K,
            Cin  => C6,
            S    => Y2,
            Cout => C7
        );


    FA7 : FULL_ADDER
        port map(
            A    => X3,
            B    => '0',
            Cin  => C7,
            S    => Y3,
            Cout => C8
        );


    S0 <= Y0;
    S1 <= Y1;
    S2 <= Y2;
    S3 <= Y3;

    Cout <= C8;


end Structural;