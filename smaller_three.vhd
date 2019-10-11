library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity smaller_three is
    port (
      a : in std_logic_vector(7 downto 0);
      b : out std_logic
    ) ;
  end smaller_three;
  
  architecture rtl of smaller_three is
  begin
      process(a)    
      begin
          if(a < "00000011") then
                b <= '1';
          else
                b <= '0';
          end if;
      end process;
  
  end rtl ; -- rtl