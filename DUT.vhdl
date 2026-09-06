-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
	component MagnitudeComparator is
		port(
			B3, B2, B1, B0 : in std_logic;
			C : out std_logic
		);
	end component MagnitudeComparator;

begin

	MC1: MagnitudeComparator
		port map(
			B3 => input_vector(3),
			B2 => input_vector(2),
			B1 => input_vector(1),
			B0 => input_vector(0),
			
			C => output_vector(0)
		);


end DutWrap;

