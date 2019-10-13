library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity matrix_tb is
end matrix_tb ;

architecture behav of matrix_tb is
  constant clockperiod: time:=100 ns;
  signal clk: std_logic:='0';
  signal reset,start: std_logic;
  signal result : std_logic_vector(15 downto 0);
  signal i,j : std_logic_vector(7 downto 0);

  component matrix_topmodule is
    port(clk,reset,start: in std_logic;
    result : out std_logic_vector(15 downto 0);
    i : out std_logic_vector(7 downto 0);
    j : out std_logic_vector(7 downto 0)); 
  end component;

  begin
    clk <= not clk after clockperiod /2;
    reset <= '1' , '0' after 70 ns;
    start <= '0' , '1' after 220 ns, '0' after 520 ns;
    u0: matrix_topmodule port map(clk, reset, start, result,i,j);
  end behav;