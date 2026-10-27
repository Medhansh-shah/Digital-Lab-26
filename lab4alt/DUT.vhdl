-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(11 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
	component rotator
        port(
			  L : in std_logic;
			  CT : in std_logic_vector(2 downto 0);
			  A : in std_logic_vector(7 downto 0);
			  S : out std_logic_vector(7 downto 0)
			);
   end component;

begin

	add_instance : rotator
		port map(
				L => input_vector(11),
				CT => input_vector(10 downto 8),
				A => input_vector(7 downto 0),
				S => output_vector(7 downto 0)
        );

end DutWrap;

