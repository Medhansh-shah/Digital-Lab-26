library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(4 downto 0);
        output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
component Palindrome_Detector is
  port(x4,x3,x2,x1,x0 : in std_logic; y : out std_logic);
end component;

begin

   pd_instance: Palindrome_Detector port map(
       x4 => input_vector(4), x3 => input_vector(3),
       x2 => input_vector(2), x1 => input_vector(1),
       x0 => input_vector(0), y => output_vector(0));

end DutWrap;