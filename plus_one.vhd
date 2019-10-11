library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity plus_one is
  port (
    a : in std_logic_vector(7 downto 0);
    b : out std_logic_vector(7 downto 0)
  ) ;
end plus_one;

architecture rtl of plus_one is
begin
    b <= unsigned(a) + '1'; 
end rtl ; -- rtl