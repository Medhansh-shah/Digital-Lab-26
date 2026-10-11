library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ClockDiv is
    Port ( 
        clk_in : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk_out_5MHz : out STD_LOGIC;
        clk_out_1Hz : out STD_LOGIC;
        clk_out_5Hz : out STD_LOGIC
    );
end ClockDiv;

architecture Behavioral of ClockDiv is
    constant MAX_5MHz : integer := 5;
    constant MAX_1Hz : integer := 25000000;
    constant MAX_5Hz : integer := 5000000;

    signal count_5MHz : integer range 1 to MAX_5MHz := 1;
    signal count_1Hz : integer range 1 to MAX_1Hz := 1;
    signal count_5Hz : integer range 1 to MAX_5Hz := 1;

    signal clk_5MHz_reg : STD_LOGIC := '0';
    signal clk_1Hz_reg : STD_LOGIC := '0';
    signal clk_5Hz_reg : STD_LOGIC := '0';
begin
    clk_out_5MHz <= clk_5MHz_reg;
    clk_out_1Hz <= clk_1Hz_reg;
    clk_out_5Hz <= clk_5Hz_reg;

    process(clk_in, reset)
    begin
        if reset = '1' then
            count_5MHz <= 1;
            clk_5MHz_reg <= '0';
        elsif rising_edge(clk_in) then
            if count_5MHz = MAX_5MHz then
                count_5MHz <= 1;
                clk_5MHz_reg <= not clk_5MHz_reg;
            else
                count_5MHz <= count_5MHz + 1;
            end if;
        end if;
    end process;

    process(clk_in, reset)
    begin
        if reset = '1' then
            count_1Hz <= 1;
            clk_1Hz_reg <= '0';
        elsif rising_edge(clk_in) then
            if count_1Hz = MAX_1Hz then
                count_1Hz <= 1;
                clk_1Hz_reg <= not clk_1Hz_reg;
            else
                count_1Hz <= count_1Hz + 1;
            end if;
        end if;
    end process;

    process(clk_in, reset)
    begin
        if reset = '1' then
            count_5Hz <= 1;
            clk_5Hz_reg <= '0';
        elsif rising_edge(clk_in) then
            if count_5Hz = MAX_5Hz then
                count_5Hz <= 1;
                clk_5Hz_reg <= not clk_5Hz_reg;
            else
                count_5Hz <= count_5Hz + 1;
            end if;
        end if;
    end process;
end Behavioral;