library verilog;
use verilog.vl_types.all;
entity interfaceCC is
    port(
        S               : out    vl_logic_vector(6 downto 0);
        displayUnidade  : out    vl_logic_vector(6 downto 0);
        displayDezena   : out    vl_logic_vector(6 downto 0);
        saidaComparador : in     vl_logic;
        clk             : in     vl_logic
    );
end interfaceCC;
