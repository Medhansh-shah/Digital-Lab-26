library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity rotator is
    port(
        L : in std_logic;
        CT : in std_logic_vector(2 downto 0);
        A : in std_logic_vector(7 downto 0);
        S : out std_logic_vector(7 downto 0)
    );
end entity;

architecture flow of rotator is
    component mux is
        port(
            X1, X0 : in std_logic;
            S : in std_logic;
            Y : out std_logic
        );
    end component;

    signal B : std_logic_vector(7 downto 0);
    signal C : std_logic_vector(7 downto 0);
    signal D : std_logic_vector(7 downto 0);
    signal E : std_logic_vector(7 downto 0);

    begin
        
        reverse1 : for i in 0 to 7 generate
            comp : mux port map(X1 => A(7 - i), X0 => A(i), S => L, Y => B(i));
        end generate;

        shift4 : for i in 0 to 7 generate
            comp : mux port map(X1 => B((i + 4) mod 8), X0 => B(i), S => CT(2), Y => C(i));
        end generate;

        shift2 : for i in 0 to 7 generate
            comp : mux port map(X1 => C((i + 2) mod 8), X0 => C(i), S => CT(1), Y => D(i));
        end generate;

        shift1 : for i in 0 to 7 generate
            comp: mux port map(X1 => D((i + 1) mod 8), X0 => D(i), S => CT(0), Y => E(i));
        end generate;

        reverse2 : for i in 0 to 7 generate
            comp : mux port map(X1 => E(7 - i), X0 => E(i), S => L, Y => S(i));
        end generate;
end architecture;