library verilog;
use verilog.vl_types.all;
entity six_bit_kogge_stone_adder_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(5 downto 0);
        B               : in     vl_logic_vector(5 downto 0);
        cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end six_bit_kogge_stone_adder_vlg_sample_tst;
