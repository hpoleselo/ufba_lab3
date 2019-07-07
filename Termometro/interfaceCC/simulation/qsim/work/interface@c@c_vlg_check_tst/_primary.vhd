library verilog;
use verilog.vl_types.all;
entity interfaceCC_vlg_check_tst is
    port(
        displayDezena   : in     vl_logic_vector(6 downto 0);
        displayUnidade  : in     vl_logic_vector(6 downto 0);
        S               : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end interfaceCC_vlg_check_tst;
