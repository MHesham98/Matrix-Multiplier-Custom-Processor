library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity matrix_datapath is
  port (
    clk, i_rst, j_rst, k_rst, i_ld, j_ld, k_ld, result_rst, result_wr : in std_logic;
    i_sig, j_sig, k_sig : out std_logic;
    plus_selector : in std_logic_vector(1 downto 0);
    current_result : out std_logic_vector(15 downto 0);
    i : out std_logic_vector(7 downto 0);
    j : out std_logic_vector(7 downto 0)
  ) ;
end matrix_datapath;


architecture struct of matrix_datapath is

    signal plus_one_input, plus_one_output, i_out, j_out, k_out, matA_out, matB_out : std_logic_vector(7 downto 0);
    signal adder_input, adder_output, result_output : std_logic_vector(15 downto 0);

    component reg_8bit
        port(clk,reset,load : in std_logic;
           d: in std_logic_vector (7 downto 0);
           q: out std_logic_vector (7 downto 0));
    end component;

    component result_16bit 
        port(clk, wr, reset : in std_logic; --used to reset one entry not the full ram
        row : in std_logic_vector(7 downto 0);
        col : in std_logic_vector(7 downto 0);
        din : in std_logic_vector(15 downto 0);
        dout : out std_logic_vector(15 downto 0));
    end component;

    component matA_8bit
        port(
        row : in std_logic_vector(7 downto 0);
        col : in std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0));
    end component;

    component matB_8bit is
        port(
        row : in std_logic_vector(7 downto 0);
        col : in std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0));
    end component;

    component smaller_four
        port (
          a : in std_logic_vector(7 downto 0);
          b : out std_logic
        ) ;
    end component;

    component smaller_three
        port (
          a : in std_logic_vector(7 downto 0);
          b : out std_logic
        ) ;
    end component;

    component plus_one
        port (
          a : in std_logic_vector(7 downto 0);
          b : out std_logic_vector(7 downto 0)
        ) ;
    end component;

    component multiplier
        port (
         a, b : in std_logic_vector(7 downto 0);
         c : out std_logic_vector(15 downto 0) 
        );
    end component;

    component adder
        port (
         a, b : in std_logic_vector(15 downto 0);
         c : out std_logic_vector(15 downto 0) 
        );
      end component;

    component mux_four_two
        port (
          a, b, c, d : in std_logic_vector(7 downto 0);
          sel : in std_logic_vector(1 downto 0);
          y : out std_logic_vector(7 downto 0)
      
        ) ;
    end component;
      

begin

  current_result <= result_output;
  i <= i_out;
  j <= j_out;

    u0 : reg_8bit port map (clk, i_rst, i_ld, plus_one_output, i_out); -- i
    u1 : reg_8bit port map (clk, j_rst, j_ld, plus_one_output, j_out); -- j
    u2 : reg_8bit port map (clk, k_rst, k_ld, plus_one_output, k_out); -- k

    u3: mux_four_two port map (i_out, j_out, k_out, (others => '0'), plus_selector, plus_one_input); -- plus one mux
    u4: plus_one port map (plus_one_input, plus_one_output); --plus one

    u5: smaller_three port map (i_out, i_sig); -- i while loop signal
    u6: smaller_three port map (j_out, j_sig); -- j while loop signal
    u7: smaller_four port map (k_out, k_sig); -- k while loop signal

    u8: matA_8bit port map (i_out, k_out, matA_out);
    u9: matB_8bit port map (k_out, j_out, matB_out);

    u10: multiplier port map (matA_out, matB_out, adder_input);
    u11: adder port map (adder_input, result_output, adder_output);
    u12: result_16bit port map (clk, result_wr, result_rst, i_out, j_out, adder_output, result_output);

end struct ; -- struct