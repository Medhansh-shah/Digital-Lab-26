library ieee;
use ieee.std_logic_1164.all;

entity Clock_Divider_tb is
end Clock_Divider_tb;

architecture Behavioral of Clock_Divider_tb is
    signal clk_in : std_logic := '0';
    signal reset : std_logic := '1';
    signal clk_out_5MHz : std_logic;
    signal clk_out_2Hz : std_logic;
begin

    uut : entity work.ClockDiv
        port map (
            clk_in => clk_in,
            reset => reset,
            clk_out_5MHz => clk_out_5MHz,
            clk_out_2Hz => clk_out_2Hz
        );

    clk_process : process
    begin
        while true loop
            clk_in <= '0';
            wait for 10 ns;
            clk_in <= '1';
            wait for 10 ns;
        end loop;
    end process;

    stimulus : process
    begin
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 1 us;
        wait for 500 ms;
        wait;
    end process;

end Behavioral;
