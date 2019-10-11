library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity mux_four_two is
  port (
    a, b, c, d : in std_logic_vector(7 downto 0);
    sel : in std_logic_vector(1 downto 0);
    y : out std_logic_vector(7 downto 0)

  ) ;
end mux_four_two;

architecture rtl of mux_four_two is
begin
    process( a, b, c, d, sel )
        begin
            case( sel ) is
            
                when "00" => y <= a;
                when "01" => y <= b;
                when "10" => y <= c;
                when others => y <= d; 
    
            end case ;
            
        end process ; -- 
end rtl ; -- rtl