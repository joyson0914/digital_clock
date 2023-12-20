library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity decoder is
  Port (  digit0,digit1,digit2,digit3,digit4,digit5: in std_logic_vector   (3 downto 0);
  dig : in std_logic_vector (2 downto 0);
  segments: out std_logic_vector (7 downto 0)
 );
end decoder;

architecture Behavioral of decoder is

type display is array (0 to 9) of std_logic_vector (7 downto 0);
constant converter : display :=
		("11000000","11111001","10100100","10110000","10011001","10010010","10000010","11111000",
		 "10000000","10010000");

signal temp : std_logic_vector (7 downto 0);
begin
process(dig ,temp)
begin
if dig = "000" then
temp<= converter(to_integer(unsigned(digit0)));
elsif dig = "001" then
temp<= converter(to_integer(unsigned(digit1)));
elsif dig = "010" then
temp<= converter(to_integer(unsigned(digit2)));
elsif dig = "011" then
temp<= converter(to_integer(unsigned(digit3)));
elsif dig = "100" then
temp<= converter(to_integer(unsigned(digit4)));
elsif dig = "101" then
temp<= converter(to_integer(unsigned(digit5)));
end if;

end process;

segments<=temp;

end Behavioral;