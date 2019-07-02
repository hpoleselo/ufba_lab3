library verilog;
use verilog.vl_types.all;
entity interfaceCC is
    port(
        S               : out    vl_logic_vector(6 downto 0);
        display_unidade : out    vl_logic_vector(6 downto 0);
        display_dezena  : out    vl_logic_vector(6 downto 0);
        entrada         : in     vl_logic;
        clk             : in     vl_logic
    );
end interfaceCC;
