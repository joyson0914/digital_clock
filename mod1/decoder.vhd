library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity decoder is
  Port (
    digit0, digit1, digit2, digit3, digit4, digit5: in std_logic_vector(3 downto 0);
    dig : in std_logic_vector(2 downto 0);
    segments: out std_logic_vector(7 downto 0)
  );
end decoder;

architecture Behavioral of decoder is

  type display is array (0 to 9) of std_logic_vector(7 downto 0);
  constant converter: display := (
    "11000000", "11111001", "10100100", "10110000", "10011001",
    "10010010", "10000010", "11111000", "10000000", "10010000"
  );

  signal temp: std_logic_vector(7 downto 0) := (others => '0'); -- Initialize to '0'
  signal digit: std_logic_vector(3 downto 0);

begin
  digit <= digit0 when dig = "000" else
                    digit1 when dig = "001" else
                    digit2 when dig = "010" else
                    digit3 when dig = "011" else
                    digit4 when dig = "100" else
                    digit5;

  process(digit)
  begin
    temp <= converter(to_integer(unsigned(digit)));
  end process;

  segments <= temp;

end Behavioral;
