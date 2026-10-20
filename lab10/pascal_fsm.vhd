-- =====================================================================
-- pascal_fsm.vhd
-- EE214 Problem Set 10 : Pascal Triangle Row Generation
-- Controller FSM with three states: IDLE, COMP, DONE.
-- Outputs are one-bit enables to the datapath (state bits != control bits).
-- =====================================================================
library ieee;
use ieee.std_logic_1164.all;

entity pascal_fsm is
    port (
        clk          : in  std_logic;
        rst          : in  std_logic;   -- synchronous, active high
        start        : in  std_logic;   -- one-cycle start pulse
        -- status from datapath
        last         : in  std_logic;
        timer_done   : in  std_logic;
        n_valid      : in  std_logic;
        -- control to datapath
        init         : out std_logic;
        count_enable : out std_logic;
        advance      : out std_logic;
        err_set      : out std_logic
    );
end entity pascal_fsm;

architecture behavioral of pascal_fsm is
    type state_t is (IDLE, COMP, DONE);
    signal state : state_t := IDLE;
begin
    -- State register and next-state logic
    state_reg : process (clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= IDLE;
            else
                case state is
                    when IDLE =>
                        if start = '1' then
                            if n_valid = '1' then
                                state <= COMP;
                            else
                                state <= DONE;   -- invalid n: show error code and wait for reset
                            end if;
                        end if;

                    when COMP =>
                        if last = '1' then
                            state <= DONE;
                        end if;

                    when DONE =>
                        state <= DONE;           -- hold until reset
                end case;
            end if;
        end if;
    end process state_reg;

    -- Control outputs
    init         <= '1' when (state = IDLE and start = '1' and n_valid = '1') else '0';
    err_set      <= '1' when (state = IDLE and start = '1' and n_valid = '0') else '0';
    count_enable <= '1' when (state = COMP and last = '0' and timer_done = '0') else '0';
    advance      <= '1' when (state = COMP and last = '0' and timer_done = '1') else '0';
end architecture behavioral;
