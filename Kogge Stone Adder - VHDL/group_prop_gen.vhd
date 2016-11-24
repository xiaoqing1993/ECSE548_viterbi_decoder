library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity group_prop_gen is
	port ( P0, P1, G0, G1 : in std_logic;
			 P2, G2 : out std_logic
			 );
end group_prop_gen;

architecture arch of group_prop_gen is 
begin 
	P2 <=  P1 and P0;
	G2 <=  G1 or (G0 and P1);
end arch;

