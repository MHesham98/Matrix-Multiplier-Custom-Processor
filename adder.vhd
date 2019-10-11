library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity adder is
  port (
   a, b : in std_logic_vector(15 downto 0);
   c : out std_logic_vector(15 downto 0) 
  );
end adder;


architecture rtl of adder is
begin
    c <= unsigned(a)+unsigned(b);
end rtl ; -- rtl