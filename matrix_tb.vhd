library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity matrix_tb is
end matrix_tb ;

architecture behav of matrix_tb is
  constant clockperiod: time:=100 ns;
  signal clk: std_logic:='0';
  signal reset,start: std_logic;

  component matrix_topmodule is
    port(clk,reset,start: in std_logic); 
  end component;

  begin
    clk <= not clk after clockperiod /2;
    reset <= '1' , '0' after 70 ns;
    start <= '0' , '1' after 220 ns, '0' after 520 ns;
    u0: matrix_topmodule port map(clk,reset,start);
  end behav;