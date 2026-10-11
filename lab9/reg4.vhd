library ieee;
use ieee.std_logic_1164.all;

entity reg4 is
    port (
        clk   : in  std_logic;
        rst   : in  std_logic;                    
        load  : in  std_logic;                    
        d_in  : in  std_logic_vector(3 downto 0); 
        d_out : out std_logic_vector(3 downto 0)  
    );
end entity reg4;

architecture behavioral of reg4 is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            d_out <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                d_out <= d_in;
            end if;
        end if;
    end process;
end architecture behavioral;