-- =====================================================================
-- pascal_top.vhd   (set this as the Top-Level Entity in Quartus)
-- EE214 Problem Set 10 : Pascal Triangle Row Generation
-- Synchronizes the asynchronous board inputs, turns START into a single
-- clock pulse, and connects the controller FSM to the datapath.
-- =====================================================================
library ieee;
use ieee.std_logic_1164.all;

entity pascal_top is
    generic (
        TIMER_MAX : natural := 99_999_999   -- 2 s at 50 MHz
    );
    port (
        clk   : in  std_logic;                     -- 50 MHz board clock
        rst   : in  std_logic;                     -- active high
        start : in  std_logic;                     -- active high
        sw    : in  std_logic_vector(7 downto 0);  -- row number n
        led   : out std_logic_vector(7 downto 0)
    );
end entity pascal_top;

architecture structural of pascal_top is
    -- two-flop synchronizers
    signal rst_meta,   rst_sync   : std_logic := '0';
    signal start_meta, start_sync : std_logic := '0';
    signal start_prev             : std_logic := '0';
    signal sw_meta,    sw_sync    : std_logic_vector(7 downto 0) := (others => '0');

    signal start_pulse : std_logic;

    -- controller <-> datapath
    signal init_s, count_en_s, advance_s, err_set_s : std_logic;
    signal last_s, timer_done_s, n_valid_s          : std_logic;
begin
    sync : process (clk)
    begin
        if rising_edge(clk) then
            rst_meta   <= rst;
            rst_sync   <= rst_meta;
            start_meta <= start;
            start_sync <= start_meta;
            start_prev <= start_sync;
            sw_meta    <= sw;
            sw_sync    <= sw_meta;
        end if;
    end process sync;

    -- Rising-edge detect: holding START produces only one request.
    -- Bounces after the first edge land in COMP/DONE, where START is ignored.
    start_pulse <= start_sync and not start_prev;

    u_fsm : entity work.pascal_fsm
        port map (
            clk          => clk,
            rst          => rst_sync,
            start        => start_pulse,
            last         => last_s,
            timer_done   => timer_done_s,
            n_valid      => n_valid_s,
            init         => init_s,
            count_enable => count_en_s,
            advance      => advance_s,
            err_set      => err_set_s
        );

    u_dp : entity work.pascal_datapath
        generic map (
            TIMER_MAX => TIMER_MAX
        )
        port map (
            clk          => clk,
            rst          => rst_sync,
            sw           => sw_sync,
            init         => init_s,
            count_enable => count_en_s,
            advance      => advance_s,
            err_set      => err_set_s,
            last         => last_s,
            timer_done   => timer_done_s,
            n_valid      => n_valid_s,
            led          => led
        );
end architecture structural;
