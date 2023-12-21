library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity anode_picker is
  Port (dig: in std_logic_vector (2 downto 0);
  anode: out std_logic_vector (7 downto 0)
  );
end anode_picker;

architecture Behavioral of anode_picker is
begin	 


    anode <= "11111110" WHEN dig = "000" ELSE -- 0
	         "11111101" WHEN dig = "001" ELSE -- 1
	         "11111011" WHEN dig = "010" ELSE -- 2
	         "11110111" WHEN dig = "011" ELSE -- 3
	         "11101111" WHEN dig = "100" ELSE -- 4
	         "11011111" WHEN dig = "101" ELSE -- 5
	         "11111111";

end Behavioral;
