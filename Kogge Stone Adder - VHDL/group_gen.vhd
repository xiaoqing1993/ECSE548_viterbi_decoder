library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity group_gen is
	port ( P1, G0, G1 : in std_logic;
			 G2 : out std_logic
			 );
end group_gen;

architecture arch of group_gen is 
begin 
	G2 <=  G1 or (G0 and P1);
end arch;
