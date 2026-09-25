library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	
	begin

    UUT : entity work.Sequence_generator2
        port map(
            reset => input_vector(1),
            clock => input_vector(0),
            y     => output_vector(0)
        );
end DutWrap;

