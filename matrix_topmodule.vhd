library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity matrix_topmodule is
  port(clk,reset,start: in std_logic;
  result : out std_logic_vector(15 downto 0);
  i,j : out std_logic_vector(7 downto 0));
end matrix_topmodule;

architecture struct of matrix_topmodule is
  signal i_rst, j_rst, k_rst, i_ld, j_ld, k_ld, result_rst, result_wr, i_sig, j_sig, k_sig : std_logic;
  signal plus_selector : std_logic_vector(1 downto 0);


component matrix_datapath
port (
    clk, i_rst, j_rst, k_rst, i_ld, j_ld, k_ld, result_rst, result_wr : in std_logic;
    i_sig, j_sig, k_sig : out std_logic;
    plus_selector : in std_logic_vector(1 downto 0);
    current_result : out std_logic_vector(15 downto 0);
    i : out std_logic_vector(7 downto 0);
    j : out std_logic_vector(7 downto 0)
) ;
end component;

component matrix_controller
    port (i_rst, j_rst, k_rst, i_ld, j_ld, k_ld, result_rst, result_wr : out std_logic;
        reset, start, clk, i_sig, j_sig, k_sig : in std_logic;
        plus_selector : out std_logic_vector(1 downto 0));
end component;



begin
  u0 : matrix_datapath port map (clk, i_rst, j_rst, k_rst, i_ld, j_ld, k_ld, result_rst, result_wr, i_sig, j_sig, k_sig, plus_selector, result,i,j);
  u1 : matrix_controller port map (i_rst, j_rst, k_rst, i_ld, j_ld, k_ld, result_rst, result_wr, reset, start, clk, i_sig, j_sig, k_sig, plus_selector);
end struct;