library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL;

entity counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  houradder	: in std_logic_vector (1 downto 0);
			  minuteadder: in std_logic_vector (1 downto 0) ;
           anode : out std_logic_vector(7 downto 0);
			  segments : out std_logic_vector (7 downto 0)
           );
end counter;

architecture counter of counter is

component clk_1hz 
port(clk: in std_logic ;
clk1: out std_logic 
);
end component;

component clk_1khz
port (clk: in std_logic ;
clk2: out std_logic 
);
end component;

component mod6counter
port (clk2: in std_logic;
dig: out std_logic_vector (2 downto 0));
end component;

component clock_counter
port(clk1: in std_logic ;
reset: in std_logic ;
houradder: in std_logic_vector (1 downto 0);
minuteadder: in std_logic_vector (1 downto 0);
digit0,digit1,digit2,digit3,digit4,digit5: out std_logic_vector   (3 downto 0));
end component;

component anode_picker
port (dig: in std_logic_vector (2 downto 0);
anode: out std_logic_vector (7 downto 0));
end component;

component decoder
port ( dig: in std_logic_vector (2 downto 0);
digit0,digit1,digit2,digit3,digit4,digit5: in std_logic_vector   (3 downto 0);
segments: out std_logic_vector (7 downto 0));
end component;

signal 	clk1 : std_logic :='0';
signal clk2: std_logic :='0';
signal dig: std_logic_vector (2 downto 0);
signal digit0,digit1,digit2,digit3,digit4,digit5:  std_logic_vector   (3 downto 0);

begin

comp1:clk_1hz PORT MAP(
clk, clk1
);

comp2: clk_1khz PORT MAP(
clk, clk2);

comp3: mod6counter  PORT MAP(
clk2, dig );

comp4: clock_counter PORT MAP(
clk1, reset, houradder, minuteadder,digit0,digit1,digit2,digit3,digit4,digit5);

comp5: anode_picker PORT MAP(
dig , anode);

comp6: decoder PORT MAP(
dig,digit0,digit1,digit2,digit3,digit4,digit5,segments);


end counter;
