library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity alu_beh is
    port (
        S : in  std_logic_vector(1 downto 0);
        A : in  std_logic_vector(3 downto 0);
        B : in  std_logic_vector(3 downto 0);
        Y : out std_logic_vector(7 downto 0)
    );
end entity;
 
architecture arch of alu_beh is
 
    function Shift(A, B : std_logic_vector(3 downto 0))
        return std_logic_vector is
 
        variable A_extended : unsigned(7 downto 0) := (others => '0');
        variable result     : unsigned(7 downto 0) := (others => '0');
 
    begin
 
        A_extended(3 downto 0) := unsigned(A);
 
        for i in 0 to 3 loop
 
            if B(i) = '1' then
                result := result + shift_left(A_extended, i);
            end if;
 
        end loop;
 
        return std_logic_vector(result);
 
    end function;
 
begin
 
    process(A, B, S)
 
        variable A_reverse : std_logic_vector(3 downto 0);
        variable AB         : std_logic_vector(7 downto 0);
        variable parity     : std_logic;
        variable count      : integer;
        variable temp       : unsigned(7 downto 0);
 
    begin
 
        Y <= (others => '0');
  
        if S = "00" then
 
            A_reverse(3) := A(0);
            A_reverse(2) := A(1);
            A_reverse(1) := A(2);
            A_reverse(0) := A(3);
 
            temp := resize(unsigned(A_reverse), 8)
                    + resize(unsigned(B), 8);
 
            Y <= std_logic_vector(temp);
 
 
        elsif S = "01" then
 
            AB := A & B;
 
            parity := '0';
 
            for i in 0 to 7 loop
                parity := parity xor AB(i);
            end loop;
 
            Y <= (others => '0');
            Y(0) <= parity;
 
 
        elsif S = "10" then
 
            AB := A & B;
 
            count := 0;
 
            for i in 0 to 7 loop
                if AB(i) = '1' then
                    count := count + 1;
                end if;
            end loop;
 
            Y <= std_logic_vector(to_unsigned(count, 8));
 
 
        elsif S = "11" then
 
            Y <= Shift(A, B);
 
        end if;
 
    end process;
 
end architecture;