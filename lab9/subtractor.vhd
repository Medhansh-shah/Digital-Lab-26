library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtractor is
    port (
        A : in  std_logic_vector(3 downto 0);
        B : in  std_logic_vector(3 downto 0);
        D : out std_logic_vector(3 downto 0)
    );
end entity subtractor;

architecture struct of subtractor is
begin 
	D <= std_logic_vector(unsigned(A) - unsigned(B));
end struct;