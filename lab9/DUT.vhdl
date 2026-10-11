-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(10 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
   component gcd_top is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        start   : in  std_logic;
        A       : in  std_logic_vector(3 downto 0);
        B       : in  std_logic_vector(3 downto 0);
        ready   : out std_logic;
        gcd_out : out std_logic_vector(3 downto 0)
    );
end component gcd_top;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: gcd_top
			port map (
            rst     => input_vector(10),
            clk     => input_vector(9),
            start   => input_vector(8),
            A       => input_vector(7 downto 4),
            B       => input_vector(3 downto 0),
            ready   => output_vector(4),
            gcd_out => output_vector(3 downto 0)
        );
end DutWrap;