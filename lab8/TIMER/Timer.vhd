library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_Timer is
    generic ( g_CLKS_PER_BIT : integer := 521 );
    port (
        i_Clk       : in  std_logic;
        i_Reset     : in  std_logic;
        i_RX_Serial : in  std_logic;
        o_LED       : out std_logic_vector(7 downto 0)
    );
end UART_Timer;

architecture rtl of UART_Timer is
    signal clk_5MHz, clk_1Hz, clk_5Hz : std_logic;

    type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits, s_RX_Stop_Bit, s_Cleanup);
    signal r_SM_Main : t_SM_Main := s_Idle;
    signal r_RX_Data_R, r_RX_Data, r_RX_DV : std_logic := '0';
    signal r_Clk_Count : integer range 0 to g_CLKS_PER_BIT - 1 := 0;
    signal r_Bit_Index : integer range 0 to 7 := 0;
    signal r_RX_Byte   : std_logic_vector(7 downto 0) := (others => '0');

    type t_Timer_State is (S_DIGIT_1, S_DIGIT_2, S_DIGIT_3, S_PROCEED, S_DONE);
    signal r_Timer_State : t_Timer_State := S_DIGIT_1;
    signal r_Accumulator : integer := 0;
    signal r_Timer_Count : integer range 0 to 255 := 0;

    component ClockDiv is
        port (
            clk_in, reset : in std_logic;
            clk_out_5MHz, clk_out_1Hz, clk_out_5Hz : out std_logic
        );
    end component;
	
	 signal r_1Hz_d1 : std_logic := '0';
    signal r_1Hz_d2 : std_logic := '0';
    signal tick_1Hz : std_logic;
	 
begin
	
    Inst_ClockDiv: ClockDiv port map (i_Clk, i_Reset, clk_5MHz, clk_1Hz, clk_5Hz);
	 -- 1 Hz Edge Detector (Synchronized to 5 MHz domain)
   
	process(clk_5MHz)
    begin
        if rising_edge(clk_5MHz) then
            r_1Hz_d1 <= clk_1Hz;
            r_1Hz_d2 <= r_1Hz_d1;
        end if;
    end process;
    
    tick_1Hz <= r_1Hz_d1 and (not r_1Hz_d2);

    -- 1.UART Receiver
    p_UART_RX: process (clk_5MHz, i_Reset)
    begin
        if i_Reset = '1' then
            r_SM_Main <= s_Idle; r_RX_DV <= '0'; r_Clk_Count <= 0; r_Bit_Index <= 0;
        elsif rising_edge(clk_5MHz) then
            r_RX_Data_R <= i_RX_Serial; r_RX_Data <= r_RX_Data_R; r_RX_DV <= '0';
            case r_SM_Main is
                when s_Idle =>
                    if r_RX_Data = '0' then r_SM_Main <= s_RX_Start_Bit; end if;
                when s_RX_Start_Bit =>
                    if r_Clk_Count = (g_CLKS_PER_BIT-1)/2 then
                        r_Clk_Count <= 0;
                        if r_RX_Data = '0' then r_SM_Main <= s_RX_Data_Bits; else r_SM_Main <= s_Idle; end if;
                    else r_Clk_Count <= r_Clk_Count + 1; end if;
                when s_RX_Data_Bits =>
                    if r_Clk_Count < g_CLKS_PER_BIT-1 then r_Clk_Count <= r_Clk_Count + 1;
                    else
                        r_Clk_Count <= 0; r_RX_Byte(r_Bit_Index) <= r_RX_Data;
                        if r_Bit_Index < 7 then r_Bit_Index <= r_Bit_Index + 1; else r_Bit_Index <= 0; r_SM_Main <= s_RX_Stop_Bit; end if;
                    end if;
                when s_RX_Stop_Bit =>
                    if r_Clk_Count < g_CLKS_PER_BIT-1 then r_Clk_Count <= r_Clk_Count + 1;
                    else r_RX_DV <= '1'; r_Clk_Count <= 0; r_SM_Main <= s_Cleanup; end if;
                when s_Cleanup =>
                    r_SM_Main <= s_Idle;
            end case;
        end if;
    end process;

    -- 2.Input Parser FSM
   p_Timer_FSM: process (clk_5MHz, i_Reset)
        variable v_digit : integer;
    begin
        if i_Reset = '1' then
            r_Timer_State <= S_DIGIT_1; 
            r_Accumulator <= 0; 
            r_Timer_Count <= 0;
            o_LED         <= (others => '0'); -- Reset LEDs

        elsif rising_edge(clk_5MHz) then
            v_digit := to_integer(unsigned(r_RX_Byte)) - 48;
            
            case r_Timer_State is
            
                when S_DIGIT_1 =>
                    o_LED <= (others => '0'); -- Keep LEDs off during input
                    if r_RX_DV = '1' then
                        if r_RX_Byte >= x"30" and r_RX_Byte <= x"39" then
                            r_Accumulator <= v_digit; 
                            r_Timer_State <= S_DIGIT_2;
                        elsif r_RX_Byte = x"0D" or r_RX_Byte = x"0A" then
                            r_Timer_State <= S_PROCEED; 
                        end if;
                    end if;

                when S_DIGIT_2 =>
                    o_LED <= (others => '0'); -- Keep LEDs off
                    if r_RX_DV = '1' then
                        if r_RX_Byte = x"0D" or r_RX_Byte = x"0A" then
                            r_Timer_State <= S_PROCEED; 
                        elsif r_RX_Byte >= x"30" and r_RX_Byte <= x"39" then
                            r_Accumulator <= (r_Accumulator * 10) + v_digit;
                            r_Timer_State <= S_DIGIT_3;
                        else 
                            r_Accumulator <= 0; 
                            r_Timer_State <= S_DIGIT_1; 
                        end if;
                    end if;

                when S_DIGIT_3 =>
                    o_LED <= (others => '0'); -- Keep LEDs off
                    if r_RX_DV = '1' then
                        if r_RX_Byte = x"0D" or r_RX_Byte = x"0A" then
                            r_Timer_State <= S_PROCEED; 
                        elsif r_RX_Byte >= x"30" and r_RX_Byte <= x"39" then
                            r_Accumulator <= (r_Accumulator * 10) + v_digit;
                            r_Timer_State <= S_PROCEED; 
                        else 
                            r_Accumulator <= 0; 
                            r_Timer_State <= S_DIGIT_1; 
                        end if;
                    end if;

                when S_PROCEED =>
                    -- Continuously update LEDs with countdown value[cite: 4]
                    o_LED <= std_logic_vector(to_unsigned(r_Timer_Count, 8));

                    -- Phase A: Validation
                    if r_Accumulator > 0 then
                        if r_Accumulator <= 255 then 
                            r_Timer_Count <= r_Accumulator; 
                            r_Accumulator <= 0; 
                        else 
                            r_Timer_State <= S_DIGIT_1; 
                            r_Timer_Count <= 0; 
                            r_Accumulator <= 0; 
                        end if;

                    -- Phase B: Active Countdown
                    elsif r_Timer_Count > 0 then
                        if tick_1Hz = '1' then
                            if r_Timer_Count = 1 then
                                r_Timer_Count <= 0;
                                r_Timer_State <= S_DONE;
                            else
                                r_Timer_Count <= r_Timer_Count - 1;
                            end if;
                        end if;
                        
                    -- Phase C: Fallback
                    else
                        r_Timer_State <= S_DIGIT_1;
                    end if;

                when S_DONE =>
                    -- The 5 MHz clock samples the 5 Hz square wave to toggle LEDs[cite: 4]
                    if clk_5Hz = '1' then
                        o_LED <= (others => '1');
                    else
                        o_LED <= (others => '0');
                    end if;

            end case;
        end if;
    end process;
end architecture rtl;