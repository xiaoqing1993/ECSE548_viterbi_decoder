library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity six_bit_kogge_stone_adder is
	port ( A, B : in std_logic_vector(5 downto 0);
			 cin : in std_logic;
			 S : out std_logic_vector(5 downto 0);  -- no carry out needed
			 probe : out std_logic_vector(5 downto 0)  -- test probe
			 );
end six_bit_kogge_stone_adder;

architecture arch of six_bit_kogge_stone_adder is 

component bit_prop_gen    -- big propogation/generation block
	port ( A, B : in std_logic;
			 P, G : out std_logic
			 );
end component;

component group_prop_gen  -- group propogation/generation block
	port ( P0, P1, G0, G1 : in std_logic;
			 P2, G2 : out std_logic
			 );
end component;

component group_gen       -- group generation (only) block
	port ( P1, G0, G1 : in std_logic;
			 G2 : out std_logic
			 );
end component;


signal P1,G1,P2,G2,P3,G3,G4 : std_logic_vector(5 downto 0);  -- P1,G1 = first row wires; P2,G2 = second row wires; P3,G3 = third row wires; G4 = fourth row wires
                                                             -- yes, there are wasted wires, too lazy
-- BPG : bit_prop_gen port map (a,b,p,g);                 --port map templates
-- GPG : group_prop_gen port map (p0,p1,g0,g1, p2, g2);
-- GG : group_gen port map (p1,g0,g1,g2);

begin

BPG1 : bit_prop_gen port map (A(0),B(0),P1(0),G1(0));
BPG2 : bit_prop_gen port map (A(1),B(1),P1(1),G1(1));
BPG3 : bit_prop_gen port map (A(2),B(2),P1(2),G1(2));
BPG4 : bit_prop_gen port map (A(3),B(3),P1(3),G1(3));
BPG5 : bit_prop_gen port map (A(4),B(4),P1(4),G1(4));
BPG6 : bit_prop_gen port map (A(5),B(5),P1(5),G1(5));

GG1 : group_gen port map (P1(0),cin,G1(0),G4(0));
GPG2 : group_prop_gen port map (P1(0),P1(1),G1(0),G1(1), P2(0), G2(0));
GPG3 : group_prop_gen port map (P1(1),P1(2),G1(1),G1(2), P2(1), G2(1));
GPG4 : group_prop_gen port map (P1(2),P1(3),G1(2),G1(3), P2(2), G2(2));
GPG5 : group_prop_gen port map (P1(3),P1(4),G1(3),G1(4), P2(3), G2(3));
--GPG6 : group_prop_gen port map (P1(4),P1(5),G1(4),G1(5), P2(4), G2(4));

GG2 : group_gen port map (P2(0),cin,G2(0),G4(1));
GG3 : group_gen port map (P2(1),G4(0),G2(1),G4(2));
GPG7 : group_prop_gen port map (P2(0),P2(2),G2(0),G2(2), P3(0), G3(0));
GPG8 : group_prop_gen port map (P2(1),P2(3),G2(1),G2(3), P3(1), G3(1)); 
--GPG9 : group_prop_gen port map (P2(4),P2(2),G2(4),G2(2), P3(2), G3(2));

GG4 : group_gen port map (P3(0),cin,G3(0),G4(3)); 
GG5 : group_gen port map (P3(1),G4(0),G3(1),G4(4));
--GG6 : group_gen port map (P3(2),G4(1),G3(2),G4(5));

S(0) <= cin xor P1(0);
S(1) <= G4(0) xor P1(1);
S(2) <= G4(1) xor P1(2);
S(3) <= G4(2) xor P1(3);
S(4) <= G4(3) xor P1(4);
S(5) <= G4(4) xor P1(5);

probe <= G3; -- test signals with probe


end arch;