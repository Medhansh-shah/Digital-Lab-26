-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component mux4b is
     port(
		  A0, A1, A2, A3 : in std_logic;
		  B0, B1, B2, B3 : in std_logic;
		  C0, C1, C2, C3 : in std_logic;
		  D0, D1, D2, D3 : in std_logic;
        S1, S2         : in std_logic;
        Y1, Y2, Y3, Y4 : out std_logic
      );
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux4b
			port map (
					-- order of inputs
					S1 => input_vector(0),
					S2 => input_vector(1),
					A0 => input_vector(2),
					A1 => input_vector(3),
					A2 => input_vector(4),
					A3 => input_vector(5),
					B0 => input_vector(6),
					B1 => input_vector(7),
					B2 => input_vector(8),
					B3 => input_vector(9),
					C0 => input_vector(10),
					C1 => input_vector(11),
					C2 => input_vector(12),
					C3 => input_vector(13),
					D0 => input_vector(14),
					D1 => input_vector(15),
					D2 => input_vector(16),
					D3 => input_vector(17),
               -- order of output
					Y1     => output_vector(0),
					Y2     => output_vector(1),
					Y3     => output_vector(2),
					Y4     => output_vector(3));
end DutWrap;