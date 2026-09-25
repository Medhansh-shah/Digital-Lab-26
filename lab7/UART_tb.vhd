library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity UART_tb is 
end UART_tb; 

architecture Behavioral of UART_tb is 
    signal clk : std_logic := '0'; 
    signal rx_serial : std_logic := '1'; 
    signal led : std_logic_vector(7 downto 0); 
    
    constant CLK_PERIOD : time := 20 ns; 
    constant BAUD_RATE : integer := 9600; 
    constant BIT_PERIOD : time := 104.167 us; 
begin 
    uut : entity work.UART 
        generic map ( 
            g_CLKS_PER_BIT => 521 
        ) 
        port map ( 
            i_Clk => clk, 
            i_RX_Serial => rx_serial, 
            o_LED => led 
        ); 

    clk_process : process 
    begin 
        while true loop 
            clk <= '0'; 
            wait for CLK_PERIOD / 2; 
            clk <= '1'; 
            wait for CLK_PERIOD / 2; 
        end loop; 
    end process; 

    uart_send : process 
        procedure send_byte( 
            constant data : in std_logic_vector(7 downto 0) 
        ) is 
        begin 
            rx_serial <= '0'; 
            wait for BIT_PERIOD; 
            for i in 0 to 7 loop 
                rx_serial <= data(i); 
                wait for BIT_PERIOD; 
            end loop; 
            rx_serial <= '1'; 
            wait for BIT_PERIOD; 
        end procedure; 
    begin 
        rx_serial <= '1'; 
        wait for 1 ms; 
        
        send_byte(x"35"); 
        wait for 1 sec; 
        
        send_byte(x"33"); 
        wait for 1 sec; 
        
        send_byte(x"39"); 
        wait for 1 sec; 
        
        wait; 
    end process; 
end Behavioral;
