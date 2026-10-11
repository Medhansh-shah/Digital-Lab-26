library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
    port (
        X : in  std_logic_vector(3 downto 0);
        Y : in  std_logic_vector(3 downto 0);
        x_lt_y : out std_logic
    );
end entity comparator;

architecture struct of comparator is
begin 
	x_lt_y <= '1' when unsigned(X) < unsigned(Y) else '0' ;
end struct;