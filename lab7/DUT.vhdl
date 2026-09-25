library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(
        input_vector  : in  std_logic_vector(9 downto 0);
        output_vector : out std_logic_vector(7 downto 0)
    );
end entity DUT;

architecture DutWrap of DUT is

    component UART is
        generic (
            g_CLKS_PER_BIT : integer := 521
        );
        port(
            i_Clk       : in  std_logic;
            i_RX_Serial : in  std_logic;
            o_LED       : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    UART_System : UART
        generic map(
            g_CLKS_PER_BIT => 521
        )
        port map(
            i_Clk       => input_vector(0),
            i_RX_Serial => input_vector(1),
            o_LED       => output_vector
        );

end DutWrap;