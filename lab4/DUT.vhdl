-- DUT wrapper for the BCD Adder
-- TRACEFILE input : A3 A2 A1 A0 B3 B2 B1 B0
-- TRACEFILE output: Y4 Y3 Y2 Y1 Y0

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(
        input_vector  : in  std_logic_vector(7 downto 0);
        output_vector : out std_logic_vector(4 downto 0)
    );
end entity DUT;

architecture DutWrap of DUT is

    component bcdadder is
        port(
            A0, A1, A2, A3 : in  std_logic;
            B0, B1, B2, B3 : in  std_logic;
            Cin             : in  std_logic;
            S0, S1, S2, S3 : out std_logic;
            Cout            : out std_logic
        );
    end component;

begin

    BCD1 : bcdadder
        port map(
            A0   => input_vector(4),
            A1   => input_vector(5),
            A2   => input_vector(6),
            A3   => input_vector(7),

            B0   => input_vector(0),
            B1   => input_vector(1),
            B2   => input_vector(2),
            B3   => input_vector(3),

            -- The tracefile contains only A and B, so Cin is fixed at 0.
            Cin  => '0',

            -- Output order required by the tracefile is Y4 Y3 Y2 Y1 Y0.
            S0   => output_vector(0),
            S1   => output_vector(1),
            S2   => output_vector(2),
            S3   => output_vector(3),
            Cout => output_vector(4)
        );

end DutWrap;
