library ieee;
use ieee.std_logic_1164.all;

entity comparator_tb is
end entity comparator_tb;

architecture sim of comparator_tb is

    signal X : std_logic_vector(3 downto 0);
    signal Y : std_logic_vector(3 downto 0);
    signal x_lt_y : std_logic;

begin

    uut : entity work.comparator
        port map (
            X => X,
            Y => Y,
            x_lt_y => x_lt_y
        );

    process
    begin

        X <= "0011";  -- 3
        Y <= "1001";  -- 9
        wait for 10 ns;

        X <= "1010";  -- 10
        Y <= "0011";  -- 3
        wait for 10 ns;

        X <= "0101";  -- 5
        Y <= "0101";  -- 5
        wait for 10 ns;

        wait;

    end process;

end architecture sim;