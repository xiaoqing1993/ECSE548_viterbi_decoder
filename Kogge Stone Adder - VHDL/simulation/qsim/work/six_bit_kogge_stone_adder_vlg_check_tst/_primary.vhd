library verilog;
use verilog.vl_types.all;
entity six_bit_kogge_stone_adder_vlg_check_tst is
    port(
        probe           : in     vl_logic_vector(5 downto 0);
        S               : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end six_bit_kogge_stone_adder_vlg_check_tst;
