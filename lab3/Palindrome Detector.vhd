library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Palindrome_Detector is
  port(x4,x3,x2,x1,x0 : in std_logic; y : out std_logic);
end entity;

architecture Structural of Palindrome_Detector is
  signal w1, w2 : std_logic;
begin
  u1: XNOR_2 port map(A => x4, B => x0, Y => w1);
  u2: XNOR_2 port map(A => x3, B => x1, Y => w2);
  u3: AND_2 port map(A => w1, B => w2, Y => y);
end Structural;