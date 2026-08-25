library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4b is
    Port (
        A0, A1, A2, A3 : in std_logic;
		  B0, B1, B2, B3 : in std_logic;
		  C0, C1, C2, C3 : in std_logic;
		  D0, D1, D2, D3 : in std_logic;
        S1, S2         : in std_logic;
        Y1, Y2, Y3, Y4 : out std_logic
    );
end mux4b;

architecture Structural of mux4b is

component mux4x1 is
    port(
        I0 : in std_logic;
        I1 : in std_logic;
		  I2 : in std_logic;
		  I3 : in std_logic;
        S1  : in std_logic;
		  S2  : in std_logic;
        Y  : out std_logic
    );
end component;

begin

M1 : mux4x1 port map(A0,B0,C0,D0,S1,S2,Y1);
M2 : mux4x1 port map(A1,B1,C1,D1,S1,S2,Y2);
M3 : mux4x1 port map(A2,B2,C2,D2,S1,S2,Y3);
M4 : mux4x1 port map(A3,B3,C3,D3,S1,S2,Y4);

end Structural;