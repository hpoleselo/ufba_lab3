library verilog;
use verilog.vl_types.all;
entity interfaceCC_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        saidaComparador : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end interfaceCC_vlg_sample_tst;
