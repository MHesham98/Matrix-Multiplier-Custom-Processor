library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity matrix_controller is
port (i_rst, j_rst, k_rst, i_ld, j_ld, k_ld, result_rst, result_wr : out std_logic;
    reset, start, clk, i_sig, j_sig, k_sig : in std_logic;
    plus_selector : out std_logic_vector(1 downto 0));
end matrix_controller;

architecture rtl of matrix_controller is
  type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12);
  signal current_state : state_type ;
  signal next_state : state_type ;
begin
  process(clk,reset)
  begin
    if (reset = '1') then
      current_state <= s0;
    elsif (rising_edge(clk)) then
      current_state <= next_state;
    end if;
  end process;

  process (current_state, start, i_sig, j_sig, k_sig)
  begin
    case current_state is
    when s0 =>
      i_rst <= '0';
      j_rst <= '0';
      k_rst <= '0';
      i_ld <= '0';
      j_ld <= '0';
      k_ld <= '0';
      result_rst <= '0';
      result_wr <= '0'; 
      plus_selector <= "00";
      if (start = '1') then
        next_state <= s2;
      else
        next_state <= s1;
      end if;

    when s1 =>
        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";
        
        next_state <= s0;

    when s2 =>

        i_rst <= '1';
        j_rst <= '1';
        k_rst <= '1';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";

        next_state <= s3;


    when s3 =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";
        if (i_sig = '1') then
        next_state <= s4;
        else
        next_state <= s0;
        end if;

    when s4 =>

        i_rst <= '0';
        j_rst <= '1';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";

        next_state <= s5;


    when s5 =>
   
        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";
        if (j_sig = '1') then
        next_state <= s6;
        else
        next_state <= s12;
        end if;

    when s6 =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '1';
        result_wr <= '1'; 
        plus_selector <= "00";

        next_state <= s7;


     
    when s7 =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '1';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";

        next_state <= s8;



      
    when s8 =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";
        if (k_sig = '1') then
        next_state <= s9;
        else
        next_state <= s11;
        end if;

    when s9 =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '1'; 
        plus_selector <= "00";

        next_state <= s10;

    when s10 =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '1';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "10";

        next_state <= s8;

       

    when s11 =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '1';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "01";

        next_state <= s5;

    when s12 =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '1';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";

        next_state <= s3;

    when others =>

        i_rst <= '0';
        j_rst <= '0';
        k_rst <= '0';
        i_ld <= '0';
        j_ld <= '0';
        k_ld <= '0';
        result_rst <= '0';
        result_wr <= '0'; 
        plus_selector <= "00";
        
        next_state <= s0;

    end case;
  end process;
end rtl;