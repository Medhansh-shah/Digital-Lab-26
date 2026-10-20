-- =====================================================================
-- pascal_datapath.vhd
-- EE214 Problem Set 10 : Pascal Triangle Row Generation
-- Datapath: registers n, k, C, timer, err + arithmetic + comparators.
--   C(k+1) = C(k) * (n - k) / (k + 1),  C(0) = 1
-- All register updates happen on the rising edge of the 50 MHz clock.
-- A register holds its value whenever its update enable is '0'.
-- =====================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pascal_datapath is
    generic (
        -- 2 s at 50 MHz = 100,000,000 cycles -> count 0 .. 99,999,999
        TIMER_MAX : natural := 99_999_999
    );
    port (
        clk          : in  std_logic;
        rst          : in  std_logic;                     -- synchronous, active high
        sw           : in  std_logic_vector(7 downto 0);  -- row number n
        -- control from FSM
        init         : in  std_logic;
        count_enable : in  std_logic;
        advance      : in  std_logic;
        err_set      : in  std_logic;
        -- status to FSM
        last         : out std_logic;   -- k = n
        timer_done   : out std_logic;   -- timer = TIMER_MAX
        n_valid      : out std_logic;   -- 3 <= sw <= 10
        -- display
        led          : out std_logic_vector(7 downto 0)
    );
end entity pascal_datapath;

architecture behavioral of pascal_datapath is
    signal n_reg     : unsigned(3 downto 0)  := (others => '0');
    signal k_reg     : unsigned(3 downto 0)  := (others => '0');
    signal c_reg     : unsigned(7 downto 0)  := (others => '0');
    signal timer_reg : unsigned(26 downto 0) := (others => '0');
    signal err_reg   : std_logic := '0';

    signal sw_u      : unsigned(7 downto 0);
    signal product   : unsigned(11 downto 0);  -- max 210 * 6 = 1260 < 4096
    signal c_next    : unsigned(11 downto 0);
begin
    sw_u <= unsigned(sw);

    -- Rows 3..10 are the only rows whose every coefficient fits in 8 bits
    n_valid <= '1' when (sw_u >= 3 and sw_u <= 10) else '0';

    -- Next coefficient (exact integer division: C*(n-k) is always divisible by k+1)
    product <= c_reg * (n_reg - k_reg);
    c_next  <= product / (k_reg + 1);

    -- Status comparators
    last       <= '1' when k_reg = n_reg else '0';
    timer_done <= '1' when timer_reg = to_unsigned(TIMER_MAX, timer_reg'length) else '0';

    -- 255 never occurs in rows 3..10 (max is 252), so all-ones is an unambiguous error code
    led <= (others => '1') when err_reg = '1' else std_logic_vector(c_reg);

    regs : process (clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                n_reg     <= (others => '0');
                k_reg     <= (others => '0');
                c_reg     <= (others => '0');
                timer_reg <= (others => '0');
                err_reg   <= '0';
            elsif init = '1' then
                n_reg     <= sw_u(3 downto 0);
                k_reg     <= (others => '0');
                c_reg     <= to_unsigned(1, c_reg'length);
                timer_reg <= (others => '0');
                err_reg   <= '0';
            elsif err_set = '1' then
                err_reg   <= '1';
            elsif advance = '1' then
                c_reg     <= c_next(7 downto 0);
                k_reg     <= k_reg + 1;
                timer_reg <= (others => '0');
            elsif count_enable = '1' then
                timer_reg <= timer_reg + 1;
            end if;
        end if;
    end process regs;
end architecture behavioral;
