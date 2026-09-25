library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UART is
  generic (
    g_CLKS_PER_BIT : integer := 521
  );
  port (
    i_Clk       : in  std_logic;
    i_RX_Serial : in  std_logic;
    o_LED       : out std_logic_vector(7 downto 0)
  );
end UART;

architecture rtl of UART is

  signal clk_5MHz : std_logic;
  signal clk_2Hz  : std_logic;

  type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits,
                     s_RX_Stop_Bit, s_Cleanup);
  signal r_SM_Main   : t_SM_Main := s_Idle;
  signal r_RX_Data_R : std_logic := '0';
  signal r_RX_Data   : std_logic := '0';

  signal r_Clk_Count : integer range 0 to g_CLKS_PER_BIT-1 := 0;
  signal r_Bit_Index : integer range 0 to 7 := 0;
  signal r_RX_Byte   : std_logic_vector(7 downto 0) := (others => '0');
  signal r_RX_DV     : std_logic := '0';

  signal r_N_Limit   : integer range 1 to 9 := 9;
  signal r_Counter   : integer range 0 to 15 := 0; 

  component ClockDiv is
    port (
      clk_in       : in  std_logic;
      reset        : in  std_logic;
      clk_out_5MHz : out std_logic;
      clk_out_2Hz  : out std_logic
    );
  end component;

begin

  u_clk_div : ClockDiv
    port map (
      clk_in       => i_Clk,
      reset        => '0',
      clk_out_5MHz => clk_5MHz,
      clk_out_2Hz  => clk_2Hz
    );

  p_SAMPLE : process (clk_5MHz)
  begin
    if rising_edge(clk_5MHz) then
      r_RX_Data_R <= i_RX_Serial;
      r_RX_Data   <= r_RX_Data_R; 
    end if; 
  end process p_SAMPLE;

  p_UART_RX : process (clk_5MHz)
  begin
    if rising_edge(clk_5MHz) then
      case r_SM_Main is
        when s_Idle =>
          r_RX_DV     <= '0';
          r_Clk_Count <= 0;
          r_Bit_Index <= 0;

          if r_RX_Data = '0' then
            r_SM_Main <= s_RX_Start_Bit;
          else
            r_SM_Main <= s_Idle;
          end if;

        when s_RX_Start_Bit =>
          if r_Clk_Count = (g_CLKS_PER_BIT-1)/2 then
            if r_RX_Data = '0' then
              r_Clk_Count <= 0;
              r_SM_Main   <= s_RX_Data_Bits;
            else
              r_SM_Main   <= s_Idle;
            end if;
          else
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Start_Bit;
          end if;

        when s_RX_Data_Bits =>
          if r_Clk_Count < g_CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Data_Bits;
          else
            r_Clk_Count            <= 0;
            r_RX_Byte(r_Bit_Index) <= r_RX_Data;

            if r_Bit_Index < 7 then
              r_Bit_Index <= r_Bit_Index + 1;
              r_SM_Main   <= s_RX_Data_Bits;
            else
              r_Bit_Index <= 0;
              r_SM_Main   <= s_RX_Stop_Bit;
            end if;
          end if;

        when s_RX_Stop_Bit =>
          if r_Clk_Count < g_CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Stop_Bit;
          else
            r_RX_DV     <= '1';
            r_Clk_Count <= 0;
            r_SM_Main   <= s_Cleanup;
          end if;

        when s_Cleanup =>
          r_SM_Main <= s_Idle;
          r_RX_DV   <= '0';

        when others =>
          r_SM_Main <= s_Idle;

      end case;
    end if;
  end process p_UART_RX;

  p_SET_LIMIT : process (clk_5MHz)
  begin
    if rising_edge(clk_5MHz) then
      if r_RX_DV = '1' then
        case r_RX_Byte is
        
          when x"31" =>
            r_N_Limit <= 1;

          when x"32" =>
            r_N_Limit <= 2;

          when x"33" =>
            r_N_Limit <= 3;

          when x"34" =>
            r_N_Limit <= 4;

          when x"35" =>
            r_N_Limit <= 5;

          when x"36" =>
            r_N_Limit <= 6;

          when x"37" =>
            r_N_Limit <= 7;

          when x"38" =>
            r_N_Limit <= 8;

          when x"39" =>
            r_N_Limit <= 9;

          when others =>
            null;

        end case;
      end if;
    end if;
  end process p_SET_LIMIT;

  p_COUNTER : process (clk_2Hz)
  begin
    if rising_edge(clk_2Hz) then

      if r_Counter >= r_N_Limit - 1 then
        r_Counter <= 0;
      else
        r_Counter <= r_Counter + 1;
      end if;

    end if;
  end process p_COUNTER;

  o_LED <= std_logic_vector(to_unsigned(r_Counter, 8));

end rtl;