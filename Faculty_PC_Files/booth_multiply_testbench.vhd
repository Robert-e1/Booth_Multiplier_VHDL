----------------------------------------------------------------------------------
-- Student: Robert Mezei, EE16/2017
-- 
-- Create Date: 05/30/2021 12:39:27 PM
-- Module Name: Tb_Booth_Multiply - Behavioral
-- Description: This is a Testbench script for testing the Booth Multiplier module implemented in "booth_multiply.vhd".

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Tb_Booth_Multiply is
--  Port ( );
end Tb_Booth_Multiply;

architecture Behavioral of Tb_Booth_Multiply is
--signals:
    signal s_clk: std_logic := '0';
    signal s_rst, s_start, s_ready: std_logic;
    signal s_a, s_b: signed(7 downto 0);
    signal s_r: signed(15 downto 0);
    
    constant num_cycles : integer := 320; 
begin
--instantiate DUT:
    BOOTH_MULTIPLIER: entity work. booth_multiply
    port map
    (
        clk => s_clk,
        rst => s_rst,
        start => s_start,
        ready => s_ready,
        a_in => s_a,
        b_in => s_b,
        r_out => s_r
    );
    
--generate test signals:
    input_and_reset:process
    begin
         
        s_rst <= '1', '0' after 50ns, '1' after 25000ns, '0' after 25050ns;  
        
        s_start <= '0', '1' after 60 ns, '0' after 160ns, '1' after 1550ns, '0' after 1650ns, '1' after 3950ns, '0' after 4050ns,
                   '1' after 8050ns, '0' after 8150ns, '1' after 12050ns, '0' after 12150ns, '1' after 16050ns, '0' after 16150ns,
                   '1' after 20050ns, '0' after 20150ns;  
        
        --input a_in sequence: -8, 6, -10, 0, 53, 69, 127
        s_a <= "11111000", "00000110" after 400ns, "11110110" after 3600ns, "00000000" after 8000ns, "00110101" after 12000ns, "01000101" after 16000ns,
               "01111111" after 20000ns;        
        --input b_in sequence: 8, 6, 8, 127, 0, 12, 127
        s_b <= "00001000", "00000110" after 400ns, "00001000" after 3600ns, "01111111" after 8000ns, "00000000" after 12000ns, "00001100" after 16000ns,
               "01111111" after 20000ns;
    
    wait;
    end process;
    
    clk:process
    begin
        for i in 1 to num_cycles loop
            s_clk <= not s_clk;
            wait for 50 ns;
            s_clk <= not s_clk;
            wait for 50 ns;
        end loop;
        wait;  -- simulation stops here
    end process;

end Behavioral;

