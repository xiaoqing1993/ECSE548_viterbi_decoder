library verilog;
use verilog.vl_types.all;
entity six_bit_kogge_stone_adder is
    port(
        A               : in     vl_logic_vector(5 downto 0);
        B               : in     vl_logic_vector(5 downto 0);
        cin             : in     vl_logic;
        S               : out    vl_logic_vector(5 downto 0);
        probe           : out    vl_logic_vector(5 downto 0)
    );
end six_bit_kogge_stone_adder;
