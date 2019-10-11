library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity result_16bit is
    port(clk, wr, reset : in std_logic; --used to reset one entry not the full ram
    row : in std_logic_vector(7 downto 0);
    col : in std_logic_vector(7 downto 0);
    din : in std_logic_vector(15 downto 0);
    dout : out std_logic_vector(15 downto 0));
    end result_16bit;

    architecture rtl of result_16bit is
        type ram_type is array (0 to 3, 0 to 3) of --array 3x3
        std_logic_vector(15 downto 0);
        signal program: ram_type;
        begin
        process(clk)
        begin
        if (rising_edge(clk)) then
        if (wr = '1') then
            if(reset = '1') then
                program(conv_integer(unsigned(row)), conv_integer(unsigned(col))) <= (others=>'0');
            else
                program(conv_integer(unsigned(row)), conv_integer(unsigned(col))) <= din; --write
            end if;
        end if;
        end if;
        end process;
        dout <= program(conv_integer(unsigned(row)), conv_integer(unsigned(col))); --read
        end rtl;