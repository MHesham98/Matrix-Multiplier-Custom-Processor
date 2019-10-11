library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity matA_8bit is
    port(
    row : in std_logic_vector(7 downto 0);
    col : in std_logic_vector(7 downto 0);
    dout : out std_logic_vector(7 downto 0));
    end matA_8bit;

architecture rtl of matA_8bit is
    type rom_type is array (0 to 3, 0 to 4) of
    std_logic_vector (7 downto 0);
    constant in_array : rom_type := (
    ("00000000", 
    "00000001",
    "00000011",
    "00000111",
    "00000000"),
    
    ("00001000",
    "00001001",
    "00001010",
    "00000100",
    "00000000"),
    
    ("00000010",
    "00000001",
    "00000000",
    "00000010",
    "00000000"),

    ("00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000")
    );
    begin
    dout <= in_array(conv_integer(unsigned(row)), conv_integer(unsigned(col)));
    end rtl;