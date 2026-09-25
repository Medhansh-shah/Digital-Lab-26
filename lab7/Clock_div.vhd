library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ClockDiv is
    port (
        clk_in       : in  std_logic;
        reset        : in  std_logic;
        clk_out_5MHz : out std_logic;
        clk_out_2Hz  : out std_logic
    );
end ClockDiv;

architecture Behavioral of ClockDiv is

    -- 50 MHz -> 5 MHz
    -- Output toggles every 5 input clock cycles
    signal count_5MHz : integer range 1 to 5 := 1;

    -- 50 MHz -> 2 Hz
    -- Output toggles every 12,500,000 input clock cycles
    signal count_2Hz : integer range 1 to 12500000 := 1;

    signal clk_5MHz : std_logic := '0';
    signal clk_2Hz  : std_logic := '0';

begin

    process(clk_in, reset)
    begin
        if reset = '1' then
            count_5MHz <= 1;
            count_2Hz  <= 1;
            clk_5MHz   <= '0';
            clk_2Hz    <= '0';

        elsif rising_edge(clk_in) then

            -- 50 MHz -> 5 MHz
            if count_5MHz = 5 then
                count_5MHz <= 1;
                clk_5MHz <= not clk_5MHz;
            else
                count_5MHz <= count_5MHz + 1;
            end if;

            -- 50 MHz -> 2 Hz
            if count_2Hz = 12500000 then
                count_2Hz <= 1;
                clk_2Hz <= not clk_2Hz;
            else
                count_2Hz <= count_2Hz + 1;
            end if;

        end if;
    end process;

    clk_out_5MHz <= clk_5MHz;
    clk_out_2Hz  <= clk_2Hz;

end Behavioral;