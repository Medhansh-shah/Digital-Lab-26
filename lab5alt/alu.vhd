library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	port(
		S : in std_logic_vector(1 downto 0);
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		Y : out std_logic_vector(7 downto 0)
	);
end entity;
		
architecture behave of alu is
	function Shift(A, B : std_logic_vector(3 downto 0)) return std_logic_vector is
		variable A_ext : std_logic_vector(7 downto 0) := (others => '0');
		variable shift_amt : integer;
		variable res : std_logic_vector(7 downto 0);
		begin
			A_ext(3 downto 0) := A;
			shift_amt := to_integer(unsigned(B(2 downto 0)));
			for i in 0 to 7 loop
				if B(3) = '0' then 
					--shift left
					res((i + shift_amt) mod 8) := A_ext(i);
				else
					res((i - shift_amt) mod 8) := A_ext(i);
				end if;
			end loop;
		return res;
	end function;

	function Gray(A : std_logic_vector(7 downto 0)) return std_logic_vector is
		variable res : std_logic_vector(7 downto 0);
		begin
			res := A xor std_logic_vector(shift_right(unsigned(A), 1));
		return res;
	end function;

	function Hammer(A, B : std_logic_vector(3 downto 0)) return std_logic_vector is
		variable diff : std_logic_vector(3 downto 0);
		variable count : integer := 0;
		begin
			diff := A xor B;
			for i in 0 to 3 loop
				if diff(i) = '1' then
					count := count + 1;	
				end if;
			end loop;

		return std_logic_vector(to_unsigned(count, 8));
	end function;

	function ShiftAdd(A, B : std_logic_vector(3 downto 0)) return std_logic_vector is
		variable multiplicand : unsigned(7 downto 0) := (others => '0');
		variable product : unsigned(7 downto 0) := (others => '0');
		begin
			multiplicand(3 downto 0) := unsigned(A);

			for i in 0 to 3 loop
				if B(i) = '1' then
					product := product + shift_left(multiplicand, i);
				end if;
			end loop;
		return std_logic_vector(product);
	end function;

	begin
		process(A, B, S)
		begin
			case S is
				when "00" => 
					Y <= Shift(A, B);

				when "01" =>
					Y <= Gray(A & B);
				when "10" =>
					Y <= Hammer(A, B);
				when "11" =>
					Y <= ShiftAdd(A, B);
				when others =>
					Y <= (others => '0');	
			end case;
		end process;
end architecture;