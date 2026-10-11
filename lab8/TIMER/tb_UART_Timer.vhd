library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_UART_Timer is
end entity tb_UART_Timer;

architecture sim of tb_UART_Timer is

    component UART_Timer is
        generic (
            g_CLKS_PER_BIT : integer := 521
        );
        port (
            i_Clk       : in  std_logic;
            i_Reset     : in  std_logic;
            i_RX_Serial : in  std_logic;
            o_LED       : out std_logic_vector(7 downto 0)
        );
    end component;

    constant c_CLK_PERIOD : time := 20 ns;
    constant c_BIT_PERIOD : time := 104.167 us;

    signal tb_clk       : std_logic := '0';
    signal tb_reset     : std_logic := '1';
    signal tb_rx_serial : std_logic := '1';
    signal tb_led       : std_logic_vector(7 downto 0);

    procedure UART_WRITE_BYTE (
        i_data_in       : in  std_logic_vector(7 downto 0);
        signal o_serial : out std_logic
    ) is
    begin
        o_serial <= '0';
        wait for c_BIT_PERIOD;

        for i in 0 to 7 loop
            o_serial <= i_data_in(i);
            wait for c_BIT_PERIOD;
        end loop;

        o_serial <= '1';
        wait for c_BIT_PERIOD;
    end procedure;

begin

    UUT : UART_Timer
        port map (
            i_Clk       => tb_clk,
            i_Reset     => tb_reset,
            i_RX_Serial => tb_rx_serial,
            o_LED       => tb_led
        );

    p_Clk_Gen : process
    begin
        while true loop
            tb_clk <= '0';
            wait for c_CLK_PERIOD / 2;
            tb_clk <= '1';
            wait for c_CLK_PERIOD / 2;
        end loop;
    end process;

    p_Stimulus : process
    begin
        tb_reset     <= '1';
        tb_rx_serial <= '1';
        wait for 100 ns;
        tb_reset     <= '0';
        wait for 100 us;

        UART_WRITE_BYTE(x"31", tb_rx_serial);
        wait for 1 ms;

        UART_WRITE_BYTE(x"35", tb_rx_serial);
        wait for 1 ms;

        UART_WRITE_BYTE(x"0D", tb_rx_serial);

        wait for 20 sec;

        wait;
    end process;

end architecture sim;