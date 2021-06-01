----------------------------------------------------------------------------------
-- Student: Robert Mezei, EE16/2017: 
-- 
-- Create Date: 05/14/2021 01:00:18 PM
-- Module Name: booth_multiply - Behavioral
-- Project Name: Booth Multiplier

-- Description: This HDL code implements multiplication of signed integers using Booth's Algorithm. 

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity booth_multiply is
  generic(WIDTH: integer := 8);
  Port (
    --clock and reset
    clk: in std_logic;
    rst: in std_logic;
    --inpu data inteface
    a_in: in signed(WIDTH-1 downto 0);
    b_in: in signed(WIDTH-1 downto 0);
    --output data interface
    r_out: out signed(WIDTH*2-1 downto 0);
    --command interface
    start: in std_logic;
    --status interface
    ready: out std_logic
     );
end booth_multiply;

architecture Behavioral of booth_multiply is
    --controlpath module FSM states:
    type state_type is (idle, load, op0, if1, if2, if3, op1, op2);
    
    signal state_next, state_reg: state_type;                   --controlpath state register input/output
    signal A_next, A_reg: signed(WIDTH*2 downto 0);             -- register A input/output
    signal S_next, S_reg: signed(WIDTH*2 downto 0);             -- register S input/output
    signal P_next, P_reg: signed(WIDTH*2 downto 0);             -- register P input/output
    signal temp_next, temp_reg: signed(WIDTH*2 downto 0);       --register temp input/output
    signal r_next, r_reg: signed(WIDTH*2-1 downto 0);           -- register res input/output
    signal i_next, i_reg: unsigned(3 downto 0);                 -- register i input/output
begin

    --state and data registers:
    process(clk,rst)  
    begin       
        if(rst = '1') then
            state_reg <= idle;
            A_reg <= (others => '0');
            S_reg <= (others => '0');
            P_reg <= (others => '0');
            temp_reg <= (others => '0');
            r_reg <= (others => '0');
            i_reg <= (others => '0');
        elsif (rising_edge(clk)) then
            state_reg <= state_next;
            A_reg <= A_next;
            S_reg <= S_next;
            P_reg <= P_next;
            temp_reg <= temp_next;
            r_reg <= r_next;
            i_reg <= i_next;
        end if;
    end process;
    
    --combinatorial circuits:
    process(start, state_reg, a_in, b_in, i_reg, A_reg, S_reg, P_reg, temp_reg) 
    begin
    --default assignments:
    ready <= '0';
    A_next <= A_reg;
    S_next <= S_reg;
    P_next <= P_reg;
    r_next <= r_reg;
    i_next <= i_reg;
    temp_next <= temp_reg;
    state_next <= state_reg;
    case state_reg is
        
        when idle =>
            ready <= '1';
            if (start = '1') then
                state_next <= load;
                r_next <= (others => '0');
            else
                state_next <= idle;
            end if;
        when load =>
            A_next <= a_in & "000000000";
            S_next <= -a_in & "000000000";
            P_next <= "00000000" & b_in & '0';
            temp_next <= (others => '0');
            i_next <= "1000";
            state_next <= op0;
        when op0 => 
            i_next <= i_reg - 1;
            if(i_reg = "0000")then              
                state_next <= idle;
            else
                if( P_reg(1 downto 0) = "01")then      
                    state_next <= if1;
                elsif(P_reg(1 downto 0) = "10")then       
                    state_next <= if2;
                else
                    state_next <= if3;
                end if;
            end if;
        when if1 =>
            temp_next <= P_reg + A_reg;
            state_next <= op1;
        when if2 =>
            temp_next <= P_reg + S_reg;
            state_next <= op1;
        when if3 =>
            temp_next <= P_reg;
            state_next <= op1;       
        when op1 =>
            P_next <=  shift_right(temp_reg, 1);
            state_next <= op2;
        when op2 =>
            r_next <= P_reg(WIDTH*2 downto 1);
            state_next <= op0;
    end case;
    end process;
    
    --system output:
    r_out <= r_reg;
    
end Behavioral;

