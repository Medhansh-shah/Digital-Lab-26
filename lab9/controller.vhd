library ieee;
use ieee.std_logic_1164.all;

entity controller is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        start   : in  std_logic;
        
        -- Status inputs from Datapath
        x_lt_y  : in  std_logic;
        y_eq_0  : in  std_logic;
        
        -- Control outputs to Datapath
        ld_x    : out std_logic;
        ld_y    : out std_logic;
        swap_en : out std_logic;
        
        -- Status output to Top-Level
        ready   : out std_logic
    );
end entity controller;

architecture behavioral of controller is

    type state_type is (S_IDLE, S_LOOP);
    signal current_state, next_state : state_type;

begin

    -- State Register (Asynchronous Reset)
    process(clk, rst)
    begin
        if rst = '1' then
            current_state <= S_IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- Next State and Output Logic
    process(current_state, start, y_eq_0, x_lt_y)
    begin
        -- Default assignments to avoid latches
        ld_x    <= '0';
        ld_y    <= '0';
        swap_en <= '0';
        ready   <= '0';
        next_state <= current_state;

        case current_state is

            when S_IDLE =>
                if start = '1' then
                    ld_x <= '1';       -- Load A into X
                    ld_y <= '1';       -- Load B into Y
                    next_state <= S_LOOP;
                end if;

            when S_LOOP =>
                if y_eq_0 = '1' then
                    -- GCD Computation Complete!
                    ready <= '1';
                    next_state <= S_IDLE;
                elsif x_lt_y = '1' then
                    -- Swap condition: X < Y
                    ld_x    <= '1';
                    ld_y    <= '1';
                    swap_en <= '1';
                    next_state <= S_LOOP;
                else
                    -- Subtraction condition: X >= Y
                    ld_x    <= '1';    -- Update X with (X - Y)
                    ld_y    <= '0';    -- Hold Y unchanged
                    swap_en <= '0';
                    next_state <= S_LOOP;
                end if;

        end case;
    end process;

end architecture behavioral;