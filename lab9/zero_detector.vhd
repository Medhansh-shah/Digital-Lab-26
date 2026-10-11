library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity zero_detector is
    port (
        Y      : in  std_logic_vector(3 downto 0);
        y_eq_0 : out std_logic
    );
end entity zero_detector;

architecture dataflow of zero_detector is
begin

	 y_eq_0 <= '1' when unsigned(Y) = 0 else '0' ;

end architecture dataflow;