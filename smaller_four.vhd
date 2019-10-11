library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity smaller_four is
    port (
      a : in std_logic_vector(7 downto 0);
      b : out std_logic
    ) ;
  end smaller_four;
  
  architecture rtl of smaller_four is
  begin
      process(a)    
      begin
          if(a < "00000100") then
                b <= '1';
          else
                b <= '0';
          end if;
      end process;
  
  end rtl ; -- rtl